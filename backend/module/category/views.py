from rest_framework import generics, mixins
from .models import Category
from django.http import Http404
from django.shortcuts import get_object_or_404
from rest_framework.response import Response
from .serializers import CategorySerializer


class CategoryAPIView(generics.ListAPIView):
    queryset = Category.objects.all()
    serializer_class = CategorySerializer
