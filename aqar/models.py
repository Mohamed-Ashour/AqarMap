from __future__ import unicode_literals

from django.db import models

from django.contrib.auth.models import User

category_ops=(('flat','Flat'), ('villa', 'Villa'),)
type_ops=(('for_sell','For Rell'), ('for_rent', 'For Rent'),)
city_ops=(('cairo', 'Cairo'), ('alexandria', 'Alexandria'),)
area_ops=(('', ''), ('', ''),)
street_ops=(('', ''), ('', ''),)

# Create your models here.
class user_profile(models.Model):
    user=models.OneToOneField(User, on_delete=models.CASCADE)
    phone=models.IntegerField()
    currancy=models.CharField(max_length=100)
    type=models.CharField(max_length=100)
    country=models.CharField(max_length=100)

class property(models.Model):
    user_id=models.ForeignKey(User, on_delete=models.CASCADE)
    category=models.CharField(max_length=100, choices=category_ops)
    type=models.CharField(max_length=100, choices=type_ops)
    sellerType=models.CharField(max_length=100)
    size=models.CharField(max_length=100)
    price=models.IntegerField()
    title=models.CharField(max_length=300)
    description=models.CharField(max_length=500)
    city=models.CharField(max_length=100, choices=city_ops)
    area=models.CharField(max_length=100)
    street=models.CharField(max_length=100)
    services=models.CharField(max_length=100)
    facilities=models.CharField(max_length=100)
    picture=models.CharField(max_length=100)
    payment=models.CharField(max_length=100)

class proj(models.Model):
    user_id=models.ForeignKey(User, on_delete=models.CASCADE)
    Pro_Name=models.CharField(max_length=200)
    detailes=models.CharField(max_length=500)
    location=models.CharField(max_length=100)
    services=models.CharField(max_length=100)
    facilities=models.CharField(max_length=100)
    img = models.ImageField(upload_to="photos/",null=True, blank=True)
    exp_price=models.IntegerField()
    p_email=models.CharField(max_length=500,null=True)



class pr_property(models.Model):
    project_id=models.ForeignKey(proj, on_delete=models.CASCADE)
    prop_type=models.CharField(max_length=100)
    p_section=models.CharField(max_length=100)
    sellerRole=models.CharField(max_length=100)
    size=models.IntegerField(default=0)
    price=models.IntegerField(default=0)
    title=models.CharField(max_length=300)
    description=models.CharField(max_length=500)
    city=models.CharField(max_length=100)
    area=models.CharField(max_length=100)
    street=models.CharField(max_length=100)
    view=models.CharField(max_length=100)
    rooms=models.IntegerField(default=0)
    floor=models.IntegerField(default=0)
    Baths=models.IntegerField(default=0)
    year_bulit=models.IntegerField(default=0)
    finish_type=models.IntegerField(default=0)
    img = models.ImageField(upload_to="photos/",null=True, blank=True)
    video=models.URLField(default=True)
    phone=models.IntegerField(default=0)
    payment=models.CharField(max_length=100)

class notifier(models.Model):
    user_id=models.ForeignKey(User,on_delete=models.CASCADE)
    location=models.CharField(max_length=100)
    property_type=models.CharField(max_length=100)
    section=models.CharField(max_length=100)
    min_price=models.IntegerField()
    max_price=models.IntegerField()


#class user_Notifier(models.Model):
 #   user_id=models.ForeignKey(User, on_delete=models.CASCADE)
  #  pro_type=models.CharField(max_length=100)
   # pro_city=models.CharField(max_length=100)
    #pro_area=models.CharField(max_length=100)
    #pro_Roller=models.CharField(max_length=100)
    #pro_min=models.IntegerField(default=0)
    #pro_max=models.IntegerField(default=0)
