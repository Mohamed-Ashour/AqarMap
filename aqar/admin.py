from django.contrib import admin
from .models import project, project_property, property, user_profile

class displayAdmin(admin.ModelAdmin):
    list_display = ['title']


admin.site.register(user_profile)
admin.site.register(property, displayAdmin)
admin.site.register(project)
admin.site.register(project_property, displayAdmin)
