from django.conf.urls import url
from feedback import views
urlpatterns=[
    url('^addfeedback/',views.addfeedback,name='addfeedback'),
    url('^viewstud/',views.viewstud,name='viewstud'),
    url('^viewhod/',views.viewhod,name='viewhod'),

]