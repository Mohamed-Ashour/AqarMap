# -*- coding: utf-8 -*-
# Generated by Django 1.9.4 on 2016-03-29 19:59
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('aqar', '0002_auto_20160323_1213'),
    ]

    operations = [
        migrations.AddField(
            model_name='project',
            name='title',
            field=models.CharField(default='project', max_length=300),
            preserve_default=False,
        ),
    ]
