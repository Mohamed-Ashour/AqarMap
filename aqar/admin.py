from django.contrib import admin
from .models import proj, pr_property, property, UserProfile, notifier, DelListing

class DisplayAdminProperty(admin.ModelAdmin):
    list_display = ['title']


class DisplayAdminProject(admin.ModelAdmin):
    list_display = ['Pro_Name']

admin.site.register(property, DisplayAdminProperty)
admin.site.register(proj, DisplayAdminProject)
admin.site.register(pr_property)
admin.site.register(UserProfile)
admin.site.register(notifier)
admin.site.register(DelListing)
