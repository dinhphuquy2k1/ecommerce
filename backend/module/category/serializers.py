from rest_framework import serializers
from .models import Category


class CategorySerializer(serializers.ModelSerializer):
    key = serializers.SerializerMethodField(source='id')  # Đổi tên trường id thành key
    label = serializers.CharField(source='name')  # Đổi tên trường name thành label
    children = serializers.SerializerMethodField()

    class Meta:
        model = Category
        fields = ['key', 'label', 'children']

    def get_key(self, obj):  # Thêm phương thức get_key để lấy giá trị của trường key
        return obj.id

    @staticmethod
    def get_children(obj):
        children = Category.objects.filter(parent=obj)
        return CategorySerializer(children, many=True).data
