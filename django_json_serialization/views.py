import json
from django.http import HttpResponse
from django.http import JsonResponse
from django.contrib.gis.db.models.functions import AsGeoJSON
from rest_framework import viewsets
from django_json_serialization.serializers import DRFSerializer
from django_json_serialization.models.test import Test


class DRFViewSet(viewsets.ModelViewSet):
    queryset = Test.objects.all()
    serializer_class = DRFSerializer


def simple(request, test_id):

    test_record = (
        Test.objects.annotate(g1=AsGeoJSON("geom1"))
        .annotate(g2=AsGeoJSON("geom2"))
        .annotate(g3=AsGeoJSON("geom3"))
        .annotate(g4=AsGeoJSON("geom4"))
        .annotate(g5=AsGeoJSON("geom5"))
        .annotate(g6=AsGeoJSON("geom6"))
        .annotate(g7=AsGeoJSON("geom7"))
        .annotate(g8=AsGeoJSON("geom8"))
        .only("test_id", "name")
        .get(pk=test_id)
    )

    final_json = f'{{"test_id": {test_record.test_id}, "name": {json.dumps(test_record.name)}, "geom1": {test_record.g1}, "geom2": {test_record.g2}, "geom3": {test_record.g3}, "geom4": {test_record.g4}, "geom5": {test_record.g5}, "geom6": {test_record.g6}, , "geom7": {test_record.g7}, "geom8": {test_record.g8} }}'

    return HttpResponse(final_json, content_type="application/json")


def simple_list(request):

    test_records = (
        Test.objects.annotate(g1=AsGeoJSON("geom1"))
        .annotate(g2=AsGeoJSON("geom2"))
        .annotate(g3=AsGeoJSON("geom3"))
        .annotate(g4=AsGeoJSON("geom4"))
        .annotate(g5=AsGeoJSON("geom5"))
        .annotate(g6=AsGeoJSON("geom6"))
        .annotate(g7=AsGeoJSON("geom7"))
        .annotate(g8=AsGeoJSON("geom8"))
        .only("test_id", "name")
    )

    json_array = []
    for zone in test_records:
        test_record_json = f'{{"test_id": {zone.test_id}, "name": {json.dumps(zone.name)}, "geom1": {zone.g1}, "geom2": {zone.g2}, "geom3": {zone.g3}, "geom4": {zone.g4}, "geom5": {zone.g5}, "geom6": {zone.g6}, "geom7": {zone.g7}, "geom8": {zone.g8} }}'
        json_array.append(test_record_json)

    final_json = "[" + ",".join(json_array) + "]"

    return HttpResponse(final_json, content_type="application/json")


def django_parse(request, test_id):

    test_record = (
        Test.objects.annotate(g1=AsGeoJSON("geom1"))
        .annotate(g2=AsGeoJSON("geom2"))
        .annotate(g3=AsGeoJSON("geom3"))
        .annotate(g4=AsGeoJSON("geom4"))
        .annotate(g5=AsGeoJSON("geom5"))
        .annotate(g6=AsGeoJSON("geom6"))
        .annotate(g7=AsGeoJSON("geom7"))
        .annotate(g8=AsGeoJSON("geom8"))
        .only("test_id", "name")
        .get(pk=test_id)
    )

    final_json = {
        "id": test_record.test_id,
        "name": test_record.name,
        "geom1": json.loads(test_record.g1),
        "geom2": json.loads(test_record.g2),
        "geom3": json.loads(test_record.g3),
        "geom4": json.loads(test_record.g4),
        "geom5": json.loads(test_record.g5),
        "geom6": json.loads(test_record.g6),
        "geom7": json.loads(test_record.g7),
        "geom8": json.loads(test_record.g8),
    }

    return JsonResponse(final_json)


def django_parse_list(request):

    test_records = (
        Test.objects.annotate(g1=AsGeoJSON("geom1"))
        .annotate(g2=AsGeoJSON("geom2"))
        .annotate(g3=AsGeoJSON("geom3"))
        .annotate(g4=AsGeoJSON("geom4"))
        .annotate(g5=AsGeoJSON("geom5"))
        .annotate(g6=AsGeoJSON("geom6"))
        .annotate(g7=AsGeoJSON("geom7"))
        .annotate(g8=AsGeoJSON("geom8"))
        .only("test_id", "name")
    )

    def test_json(r):
        return {
            "id": r.test_id,
            "name": r.name,
            "geom1": json.loads(r.g1),
            "geom2": json.loads(r.g2),
            "geom3": json.loads(r.g3),
            "geom4": json.loads(r.g4),
            "geom5": json.loads(r.g5),
            "geom6": json.loads(r.g6),
            "geom7": json.loads(r.g7),
            "geom8": json.loads(r.g8),
        }

    return JsonResponse(list(map(test_json, test_records)), safe=False)


def django_invalid(request, test_id):

    test_record = (
        Test.objects.annotate(g1=AsGeoJSON("geom1"))
        .annotate(g2=AsGeoJSON("geom2"))
        .annotate(g3=AsGeoJSON("geom3"))
        .annotate(g4=AsGeoJSON("geom4"))
        .annotate(g5=AsGeoJSON("geom5"))
        .annotate(g6=AsGeoJSON("geom6"))
        .annotate(g7=AsGeoJSON("geom7"))
        .annotate(g8=AsGeoJSON("geom8"))
        .only("test_id", "name")
        .get(pk=test_id)
    )

    final_json = {
        "id": test_record.test_id,
        "name": test_record.name,
        "geom1": test_record.g1,
        "geom2": test_record.g2,
        "geom3": test_record.g3,
        "geom4": test_record.g4,
        "geom5": test_record.g5,
        "geom6": test_record.g6,
        "geom7": test_record.g7,
        "geom8": test_record.g8,
    }

    return JsonResponse(final_json)


def hello(request):
    return HttpResponse("hello, world!")
