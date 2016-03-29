"""AqarMap URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url, include
from django.contrib import admin

from aqar import views

urlpatterns = [
    url(r'^$', views.index),
    url(r'^properties$', views.properties),
    url(r'^properties/(?P<id>\d+)/', views.property_details),
    url(r'^login$', views.login),
    url(r'^logout$', views.logout),
    url(r'^register$', views.register),
    url(r'^projects$', views.projects),
    url(r'^projects/(?P<id>\d+)/', views.project_details),
    url(r'^notifications$', views.notifications),
    url(r'^add-project$', views.add_project),
    url(r'^add-property$', views.add_property),
    url(r'^admin/', admin.site.urls),

]
