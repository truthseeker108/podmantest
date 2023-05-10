podman build -t my_django_app .
podman run -d --name my_django_app_container -p 8000:8000 my_django_app
