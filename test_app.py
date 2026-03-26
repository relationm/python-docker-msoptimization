from app import app

def test_hello_route():
    # Create a test client using the Flask application
    response = app.test_client().get('/')
    
    # Check if the HTTP status code is 200 (OK)
    assert response.status_code == 200
    
    # Check if our specific word is in the response data
    assert b"Docker" in response.data