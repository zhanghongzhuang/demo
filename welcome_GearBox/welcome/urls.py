from django.conf.urls import url
from welcome import views


urlpatterns = [
    url(r"^$", views.index)
]