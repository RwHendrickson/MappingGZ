# install the newest django.  This gives us 4.0.4
conda install -c conda-forge django

# commands cribbed from this howto:
# https://docs.djangoproject.com/en/4.0/ref/contrib/gis/tutorial/

django-admin startproject geodjangogz
cd geodjangogz
python manage.py startapp greenzones
vi geodjango_greenzones/settings.py 
mkdir greenzones/data

