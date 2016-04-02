# -*- coding: utf-8 -*-
# Generated by Django 1.9.4 on 2016-04-01 19:16
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('aqar', '0005_auto_20160401_1655'),
    ]

    operations = [
        migrations.AlterField(
            model_name='property',
            name='area',
            field=models.CharField(choices=[('6th Of October', '6th Of October'), ('El Sheikh Zayed City', 'El Sheikh Zayed City'), ('Heliopolis', 'Heliopolis'), ('Nasr City', 'Nasr City'), ('El Maadi', 'El Maadi'), ('El Shorouk & New Heliopolis', 'El Shorouk & New Heliopolis'), ('El Oubour', 'El Oubour'), ('El Hadabh El Wosta', 'El Hadabh El Wosta'), ('Rehab & Madinaty', 'Rehab & Madinaty'), ('Faisal', 'Faisal'), ('Alex-Cairo Desert Road', 'Alex-Cairo Desert Road'), ('El Zamalek', 'El Zamalek'), ('El Mohandesen', 'El Mohandesen'), ('Dokki', 'Dokki'), ('El Haram', 'El Haram'), ('El Jizah district', 'El Jizah district'), ('Mokattam', 'Mokattam'), ('Helwan', 'Helwan'), ('Ain Shams', 'Ain Shams'), ('Badr City', 'Badr City'), ('10th of Ramadan', '10th of Ramadan'), ('Garden City', 'Garden City'), ('Downtown', 'Downtown'), ('El Zaytun', 'El Zaytun'), ('EL Koba Gardens', 'EL Koba Gardens'), ('Hadayek El Ahram', 'Hadayek El Ahram'), ('Shoubra', 'Shoubra'), ('Imbaba', 'Imbaba'), ('El Agouza', 'El Agouza'), ('Manial', 'Manial'), ('El Abbasiya', 'El Abbasiya'), ('15th of May', '15th of May'), ('Other Neighborhoods', 'Other Neighborhoods')], max_length=100),
        ),
        migrations.AlterField(
            model_name='property',
            name='city',
            field=models.CharField(choices=[('cairo', 'Greater Cairo'), ('alexandria', 'Alexandria'), ('Ain El Sokhna', 'Ain El Sokhna'), ('Hurghada / Red Sea', 'Hurghada / Red Sea'), ('Sharm el Sheikh', 'Sharm el Sheikh'), ('Dakahlia / Mansoura', 'Dakahlia / Mansoura'), ('Sharqia / Zagazig', 'Sharqia / Zagazig'), ('Gharbia / Tanta', 'Gharbia / Tanta'), ('Ismailia', 'Ismailia'), ('Dumiat', 'Dumiat'), ('Suez', 'Suez'), ('Beheira / Damanhur', 'Beheira / Damanhur'), ('Aswan', 'Aswan'), ('Luxor', 'Luxor'), ('Asyut', 'Asyut'), ('Monufia / Shebeen El-Kom', 'Monufia'), ('Qina', 'Qina'), ('Sohag', 'Sohag'), ('Sinai / Arish', 'Sinai / Arish'), ('El Fayoum', 'El Fayoum'), ('Port Said', 'Port Said'), ('Kafr el-Sheikh', 'Kafr el-Sheikh'), ('Bani Suef', 'Bani Suef'), ('El minia', 'El minia'), ('New Valley', 'New Valley'), ('Qalyubia / Banha', 'Qalyubia / Banha')], max_length=100),
        ),
    ]
