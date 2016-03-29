from __future__ import unicode_literals

from django.db import models

from django.contrib.auth.models import User

# Create your models here.
class user_profile(models.Model):
    user=models.OneToOneField(User, on_delete=models.CASCADE)
    phone=models.IntegerField()
    currancy=models.CharField(max_length=100)
    type=models.CharField(max_length=100)
    country=models.CharField(max_length=100)

class property(models.Model):
    user_id=models.ForeignKey(User, on_delete=models.CASCADE)
    category=models.CharField(max_length=100)
    type=models.CharField(max_length=100)
    sellerType=models.CharField(max_length=100)
    size=models.CharField(max_length=100)
    price=models.IntegerField()
    title=models.CharField(max_length=300)
    description=models.CharField(max_length=500)
    city=models.CharField(max_length=100)
    area=models.CharField(max_length=100)
    street=models.CharField(max_length=100)
    services=models.CharField(max_length=100)
    facilities=models.CharField(max_length=100)
    picture=models.CharField(max_length=100)
    payment=models.CharField(max_length=100)

class project(models.Model):
    user_id=models.ForeignKey(User, on_delete=models.CASCADE)
    detailes=models.CharField(max_length=500)
    services=models.CharField(max_length=100)
    facilities=models.CharField(max_length=100)
    location=models.CharField(max_length=100)
    title=models.CharField(max_length=300)


class project_property(models.Model):
    project_id=models.ForeignKey(project, on_delete=models.CASCADE)
    category=models.CharField(max_length=100)
    type=models.CharField(max_length=100)
    title=models.CharField(max_length=300)
    sellerType=models.CharField(max_length=100)
    size=models.CharField(max_length=100)
    price=models.IntegerField()
    description=models.CharField(max_length=500)
    city=models.CharField(max_length=100)
    area=models.CharField(max_length=100)
    street=models.CharField(max_length=100)
    services=models.CharField(max_length=100)
    facilities=models.CharField(max_length=100)
    picture=models.CharField(max_length=100)
    payment=models.CharField(max_length=100)