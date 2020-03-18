from django.conf.urls import url
from role import views
urlpatterns=\
    [
    url('^roles/',views.roles,name='roles'),
    url('^viewrole/',views.viewrole,name='viewrole'),

    ]