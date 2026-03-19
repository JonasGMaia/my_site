import pytest

from django.urls import reverse

@pytest.mark.django_db
def test_post_view(client):
    url = reverse('home')
    response = client.get(url)
    assert response.status_code == 200
    assert b'Backend Python - EBAC' in response.content
    assert b'Welcome to my awesome Blog' in response.content