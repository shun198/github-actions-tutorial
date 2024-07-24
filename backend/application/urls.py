from django.urls import include, path
from rest_framework_nested import routers

from application.views.health_check import health_check

router = routers.DefaultRouter(trailing_slash=False)


urlpatterns = [
    path(r"", include(router.urls)),
    path(r"health", health_check, name="health_check"),
]
