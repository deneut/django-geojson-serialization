"""django_json_serialization URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import include, path

from rest_framework import routers
from django_json_serialization import views

router = routers.DefaultRouter()
router.register(r'drf', views.DRFViewSet)

urlpatterns = [
    path('simple/<int:test_id>/', views.simple, name="simple"),
    path('simple/', views.simple_list, name="simple-list"),
    path('django/<int:test_id>/', views.django_parse, name="django-parse"),
    path('django/', views.django_parse_list, name="django-parse-list"),
    path('django-invalid/<int:test_id>/', views.django_invalid, name="django-parse"),
    path('hello/', views.hello, name="hello"),
    path('', include(router.urls)),  # Wire up our API using automatic URL routing.
]
