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
import settings
from django.conf.urls import url, include
from django.contrib import admin
from django.contrib.auth import views as auth_views
from aqar import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^accounts/', include('allauth.urls')),
    url(r'^properties$', views.properties,name="properties"),
    url(r'^properties/(?P<id>\d+)/', views.property_details),
    url(r'^add-property$', views.add_property, name='add-property'),
    url(r'^edit-property/(?P<id>\d+)/', views.edit_property ),
    # url(r'^login$', views.login),
    # url(r'^listing$', views.listing),
    # url(r'^logout$', views.logout),
    # url(r'^register$', views.register),
    url(r'^projects$', views.projects, name='projects'),
    url(r'^projects/(?P<id>\d+)/', views.project_details, name='project_details'),
    url(r'^notifications$', views.notifications, name='notifications'),
    url(r'^admin/', admin.site.urls),
    # aya
    url(r'^project/', views.project, name='project'),
    url(r'^add_project/', views.add_project, name='add_project'),
    url(r'^add_project_property/', views.add_project_property, name='add_project_property'),
    url(r'^add_pro/', views.add_pro, name=''),
    url(r'^add_project_property_1/', views.add_project_property_1),
    url(r'^get_data/', views.get_data, name='aya_show_projects'),
    url(r'^display_project_data/', views.display_project_data, name='aya_show_project'),
     url(r'^display_User_project/', views.display_User_project),
    url(r'^editProject/(?P<pid>\d+)/', views.editProject),
    url(r'^edit_Pdata/', views.edit_Pdata),
     url(r'^property_details/(?P<uid>\d+)', views.property_details),

    # doaa
    url(r'^listing$', views.listing,name='listing'),
    url(r'^delFormListing/(?P<uid>\d+)', views.delFormListing),
    url(r'^delFormNoty/(?P<uid>\d+)', views.delFormNoty),
    url(r'^AddNotify$', views.AddNotify),
    url(r'^setting$', views.setting),
   
    url(r'^photos/(?P<path>.*)$', 'django.views.static.serve',{'document_root': settings.MEDIA_ROOT}),

]

