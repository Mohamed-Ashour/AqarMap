from __future__ import unicode_literals

from django.db import models

from django.contrib.auth.models import User, AbstractUser

category_ops=(('apartment','Apartment'), ('building', 'Building'), ('other', 'Other'), ('land', 'Land'),
              ('office', 'Office'), ('store', 'Store'), ('villa', 'Villa'))

property_type_ops=(('for_sell','For Sell'), ('for_rent', 'For Rent'),)

seller_type_ops=(('private_owner','Private Owner'), ('broker', 'Broker'),('real_estate_company', 'Real Estate Company'))

city_ops=(('cairo', 'Greater Cairo'), ('alexandria', 'Alexandria'), ('Ain El Sokhna', 'Ain El Sokhna'),
          ('Hurghada / Red Sea', 'Hurghada / Red Sea'), ('Sharm el Sheikh', 'Sharm el Sheikh'),
          ('Dakahlia / Mansoura', 'Dakahlia / Mansoura'), ('Sharqia / Zagazig', 'Sharqia / Zagazig'),
          ('Gharbia / Tanta', 'Gharbia / Tanta'), ('Ismailia', 'Ismailia'), ('Dumiat', 'Dumiat'), ('Suez', 'Suez'),
          ('Beheira / Damanhur', 'Beheira / Damanhur'), ('Aswan', 'Aswan'), ('Luxor', 'Luxor'), ('Asyut', 'Asyut'),
          ('Monufia / Shebeen El-Kom', 'Monufia'), ('Qina', 'Qina'), ('Sohag', 'Sohag'),
          ('Sinai / Arish', 'Sinai / Arish'), ('El Fayoum', 'El Fayoum'), ('Port Said', 'Port Said'),
          ('Kafr el-Sheikh', 'Kafr el-Sheikh'), ('Bani Suef', 'Bani Suef'), ('El minia', 'El minia'),
          ('New Valley', 'New Valley'), ('Qalyubia / Banha', 'Qalyubia / Banha'),)



# Create your models here.
class UserProfile(AbstractUser):
    # user=models.OneToOneField(User, on_delete=models.CASCADE,related_name='user_profile')
    phone=models.IntegerField(null=True)
    currancy=models.CharField(max_length=100,null=True)
    type=models.CharField(max_length=100,null=True)
    country=models.CharField(max_length=100,null=True)
    user_photo = models.ImageField(null=True, blank=True, 
                                    width_field="img_width", height_field="img_height")
    img_width = models.IntegerField(default=0)
    img_height = models.IntegerField(default=0)

class property(models.Model):
    user_id=models.ForeignKey(UserProfile, on_delete=models.CASCADE)
    category=models.CharField(max_length=100, choices=category_ops, blank=False)
    type=models.CharField(max_length=100, choices=property_type_ops)
    sellerType=models.CharField(max_length=100, choices=seller_type_ops)
    size=models.IntegerField()
    price=models.IntegerField()
    title=models.CharField(max_length=300)
    description=models.TextField()
    city=models.CharField(max_length=100, choices=city_ops)
    area=models.CharField(max_length=100)
    street=models.CharField(max_length=100)
    services=models.CharField(max_length=100)
    facilities=models.CharField(max_length=100)
    picture=models.ImageField(upload_to="photos/",null=True, blank=True)
    payment_method=models.CharField(max_length=100)

class proj(models.Model):
    user_id=models.ForeignKey(UserProfile, on_delete=models.CASCADE)
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
    finish_type=models.CharField(max_length=100)
    img = models.ImageField(upload_to="photos/",null=True, blank=True)
    video=models.URLField(default=True)
    phone=models.IntegerField(default=0)
    payment=models.CharField(max_length=100)

class notifier(models.Model):
    user_id=models.ForeignKey(UserProfile,on_delete=models.CASCADE)
    location=models.CharField(max_length=100)
    property_type=models.CharField(max_length=100)
    section=models.CharField(max_length=100)
    min_price=models.IntegerField()
    max_price=models.IntegerField()


class DelListing(models.Model):
     user_id=models.ForeignKey(UserProfile, on_delete=models.CASCADE)
     title=models.CharField(max_length=300)
     propertyType=models.CharField(max_length=100)
     size=models.IntegerField()
     price=models.IntegerField()

#class user_Notifier(models.Model):
 #   user_id=models.ForeignKey(UserProfile, on_delete=models.CASCADE)
  #  pro_type=models.CharField(max_length=100)
   # pro_city=models.CharField(max_length=100)
    #pro_area=models.CharField(max_length=100)
    #pro_Roller=models.CharField(max_length=100)
    #pro_min=models.IntegerField(default=0)
    #pro_max=models.IntegerField(default=0)
