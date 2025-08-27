"""
Module for Azure Functions to poll camera images for the given
endpoint and camera number.
"""
import os
import requests
import azure.functions as func
from dotenv import load_dotenv

load_dotenv()


def main(mytimer: func.TimerRequest) -> None:
    """
    Azure Function to poll camera images.
    """
    camera_number = os.getenv("CAMERA_NUMBER")
    endpoint = os.getenv("CAMERA_ENDPOINT")
    cert = os.getenv("CAMERA_CERTIFICATE")  # Not used yet

    if not camera_number or not endpoint:
        print("Camera config missing.")
        return

    params = {
        "id": camera_number,
        "cert": cert
    }
    try:
        response = requests.get(endpoint, params=params, timeout=10)
        response.raise_for_status()
        # Save image or process as needed
        with open(f"camera_{camera_number}.jpg", "wb") as f:
            f.write(response.content)
        print(f"Downloaded image for camera {camera_number}")
    except requests.exceptions.RequestException as e:
        print(f"Error fetching camera image: {e}")
