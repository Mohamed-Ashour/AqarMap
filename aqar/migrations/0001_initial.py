# -*- coding: utf-8 -*-
# Generated by Django 1.9.4 on 2016-03-23 12:10
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='project',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('detailes', models.CharField(max_length=500)),
                ('services', models.CharField(max_length=100)),
                ('facilities', models.CharField(max_length=100)),
                ('location', models.CharField(max_length=100)),
                ('user_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='project_property',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('category', models.CharField(max_length=100)),
                ('type', models.CharField(max_length=100)),
                ('sellerType', models.CharField(max_length=100)),
                ('size', models.CharField(max_length=100)),
                ('price', models.IntegerField()),
                ('title', models.CharField(max_length=300)),
                ('description', models.CharField(max_length=500)),
                ('city', models.CharField(max_length=100)),
                ('area', models.CharField(max_length=100)),
                ('street', models.CharField(max_length=100)),
                ('services', models.CharField(max_length=100)),
                ('facilities', models.CharField(max_length=100)),
                ('picture', models.CharField(max_length=100)),
                ('payment', models.CharField(max_length=100)),
                ('project_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='aqar.project')),
            ],
        ),
        migrations.CreateModel(
            name='property',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('category', models.CharField(max_length=100)),
                ('type', models.CharField(max_length=100)),
                ('sellerType', models.CharField(max_length=100)),
                ('size', models.CharField(max_length=100)),
                ('price', models.IntegerField(max_length=30)),
                ('title', models.CharField(max_length=300)),
                ('description', models.CharField(max_length=500)),
                ('city', models.CharField(max_length=100)),
                ('area', models.CharField(max_length=100)),
                ('street', models.CharField(max_length=100)),
                ('services', models.CharField(max_length=100)),
                ('facilities', models.CharField(max_length=100)),
                ('picture', models.CharField(max_length=100)),
                ('payment', models.CharField(max_length=100)),
                ('user_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='user_profile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('phone', models.IntegerField(max_length=30)),
                ('currancy', models.CharField(max_length=100)),
                ('type', models.CharField(max_length=100)),
                ('country', models.CharField(max_length=100)),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
