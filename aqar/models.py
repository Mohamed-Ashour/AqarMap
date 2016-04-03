from __future__ import unicode_literals

from django.db import models

from django.contrib.auth.models import User

category_ops=(('apartment','Apartment'), ('building', 'Building'), ('other', 'Other'), ('land', 'Land'),
              ('office', 'Office'), ('store', 'Store'), ('villa', 'Villa'))
type_ops=(('for_sell','For Rell'), ('for_rent', 'For Rent'),)

city_ops=(('cairo', 'Greater Cairo'), ('alexandria', 'Alexandria'), ('Ain El Sokhna', 'Ain El Sokhna'),
          ('Hurghada / Red Sea', 'Hurghada / Red Sea'), ('Sharm el Sheikh', 'Sharm el Sheikh'),
          ('Dakahlia / Mansoura', 'Dakahlia / Mansoura'), ('Sharqia / Zagazig', 'Sharqia / Zagazig'),
          ('Gharbia / Tanta', 'Gharbia / Tanta'), ('Ismailia', 'Ismailia'), ('Dumiat', 'Dumiat'), ('Suez', 'Suez'),
          ('Beheira / Damanhur', 'Beheira / Damanhur'), ('Aswan', 'Aswan'), ('Luxor', 'Luxor'), ('Asyut', 'Asyut'),
          ('Monufia / Shebeen El-Kom', 'Monufia'), ('Qina', 'Qina'), ('Sohag', 'Sohag'),
          ('Sinai / Arish', 'Sinai / Arish'), ('El Fayoum', 'El Fayoum'), ('Port Said', 'Port Said'),
          ('Kafr el-Sheikh', 'Kafr el-Sheikh'), ('Bani Suef', 'Bani Suef'), ('El minia', 'El minia'),
          ('New Valley', 'New Valley'), ('Qalyubia / Banha', 'Qalyubia / Banha'),)

# area_ops=(('6th Of October', '6th Of October'), ('El Sheikh Zayed City', 'El Sheikh Zayed City'),
#           ('Heliopolis', 'Heliopolis'), ('Nasr City', 'Nasr City'), ('El Maadi', 'El Maadi'),
#           ('El Shorouk & New Heliopolis', 'El Shorouk & New Heliopolis'), ('El Oubour', 'El Oubour'),
#           ('El Hadabh El Wosta', 'El Hadabh El Wosta'), ('Rehab & Madinaty', 'Rehab & Madinaty'), ('Faisal', 'Faisal'),
#           ('Alex-Cairo Desert Road', 'Alex-Cairo Desert Road'), ('El Zamalek', 'El Zamalek'),
#           ('El Mohandesen', 'El Mohandesen'), ('Dokki', 'Dokki'), ('El Haram', 'El Haram'),
#           ('El Jizah district', 'El Jizah district'), ('Mokattam', 'Mokattam'), ('Helwan', 'Helwan'),
#           ('Ain Shams', 'Ain Shams'), ('Badr City', 'Badr City'), ('10th of Ramadan', '10th of Ramadan'),
#           ('Garden City', 'Garden City'), ('Downtown', 'Downtown'), ('El Zaytun', 'El Zaytun'),
#           ('EL Koba Gardens', 'EL Koba Gardens'), ('Hadayek El Ahram', 'Hadayek El Ahram'), ('Shoubra', 'Shoubra'),
#           ('Imbaba', 'Imbaba'), ('El Agouza', 'El Agouza'), ('Manial', 'Manial'),  ('El Abbasiya', 'El Abbasiya'),
#           ('15th of May', '15th of May'), ('Other Neighborhoods', 'Other Neighborhoods'),)

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
    category=models.CharField(max_length=100, choices=category_ops, blank=False)
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


class DelListing(models.Model):
     user_id=models.ForeignKey(User, on_delete=models.CASCADE)
     title=models.CharField(max_length=300)
     propertyType=models.CharField(max_length=100)
     size=models.IntegerField()
     price=models.IntegerField()
#class user_Notifier(models.Model):
 #   user_id=models.ForeignKey(User, on_delete=models.CASCADE)
  #  pro_type=models.CharField(max_length=100)
   # pro_city=models.CharField(max_length=100)
    #pro_area=models.CharField(max_length=100)
    #pro_Roller=models.CharField(max_length=100)
    #pro_min=models.IntegerField(default=0)
    #pro_max=models.IntegerField(default=0)
