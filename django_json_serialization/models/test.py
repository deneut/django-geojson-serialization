from django.db import models
from django.contrib.gis.db.models import MultiPolygonField


class Test(models.Model):
    test_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100)
    geom1 = MultiPolygonField(geography=True, blank=True, null=True)
    geom2 = MultiPolygonField(geography=True, blank=True, null=True)
    geom3 = MultiPolygonField(geography=True, blank=True, null=True)
    geom4 = MultiPolygonField(geography=True, blank=True, null=True)
    geom5 = MultiPolygonField(geography=True, blank=True, null=True)
    geom6 = MultiPolygonField(geography=True, blank=True, null=True)
    geom7 = MultiPolygonField(geography=True, blank=True, null=True)
    geom8 = MultiPolygonField(geography=True, blank=True, null=True)

    class Meta:
        db_table = "test"

    def __str__(self):
        return self.name
