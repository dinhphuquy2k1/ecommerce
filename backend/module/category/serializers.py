from rest_framework import serializers
from .models import Category


class CategorySerializer(serializers.ModelSerializer):
    children = serializers.SerializerMethodField()

    class Meta:
        model = Category
        fields = ['id', 'name', 'children']

    @staticmethod
    def get_children(obj):
        children = Category.objects.filter(parent=obj)
        return CategorySerializer(children, many=True).data
