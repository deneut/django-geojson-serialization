from django_json_serialization.models.test import Test
from rest_framework import serializers
from rest_framework_gis.fields import GeometryField


class DRFSerializer(serializers.ModelSerializer):
    geom1 = GeometryField(precision=8)
    geom2 = GeometryField(precision=8)
    geom3 = GeometryField(precision=8)
    geom4 = GeometryField(precision=8)
    geom5 = GeometryField(precision=8)
    geom6 = GeometryField(precision=8)
    geom7 = GeometryField(precision=8)
    geom8 = GeometryField(precision=8)

    class Meta:
        model = Test
        fields = [
            "test_id",
            "name",
            "geom1",
            "geom2",
            "geom3",
            "geom4",
            "geom5",
            "geom6",
            "geom7",
            "geom8",
        ]
