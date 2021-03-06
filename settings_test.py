from settings_shared import *

DATABASES = {
    'default': {
            'ENGINE': 'django.db.backends.sqlite3',
            'NAME': 'lettuce.db'
    }
}

LETTUCE_SERVER_PORT = 8002
STATSD_HOST = '127.0.0.1'

# Full run
#./manage.py harvest -d --settings=settings_test

# Run a particular file + scenario
#./manage.py harvest mediathread_main/features/manage_selection_visibility.feature -d --settings=settings_test -s 1

# To recreate sample_json
# ./manage.py runserver --settings=settings_test
# ./manage.py dumpdata --settings=settings_test > mediathread_main/fixtures/sample_course.json
# Check in sample_course.json