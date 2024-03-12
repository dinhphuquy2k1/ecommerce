from rest_framework import generics, mixins
from .models import Category
from django.http import Http404
from rest_framework.response import Response
from .serializers import CategorySerializer


class CategoryApi(generics.GenericAPIView, mixins.ListModelMixin, mixins.RetrieveModelMixin):
    serializer_class = CategorySerializer
    queryset = Category.objects.all()
    lookup_field = 'id'

    def get(self, request):
        return Response({'message': 'hello world'})
