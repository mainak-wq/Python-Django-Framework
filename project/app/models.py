from django.db import models

# Create your models here.

class Registration(models.Model):
        fname = models.CharField(max_length=250)
        lname  = models.CharField(max_length = 250)
        company = models.CharField(max_length=250)
        phone = models.CharField(max_length=250)
        email = models.CharField(max_length=250)
        
        class Meta:
            db_table="registration"