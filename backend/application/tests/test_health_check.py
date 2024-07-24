import pytest
from rest_framework import status


@pytest.mark.django_db
def test_health_check(client):
    """200が返ってくる事を確認する"""

    response = client.get("/api/health", format="json")
    assert response.status_code == status.HTTP_200_OK
    assert response.json() == {"msg": "pass"}
