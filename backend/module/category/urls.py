from django.urls import path
from .views import CategoryApi

urlpatterns = [
    path('/category/', CategoryApi.as_view(), name="index"),
]
