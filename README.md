# Smart Garden

Smart Garden is an automated gardening system that uses sensors and microcontrollers to monitor and maintain optimal conditions for plant growth. The system includes features such as soil moisture detection, automated watering, and environmental monitoring.

## Features
- **Soil Moisture Detection:** Uses sensors to monitor soil moisture levels.
- **Automated Watering:** Automatically waters plants based on soil moisture readings.
- **Environmental Monitoring:** Monitors environmental conditions like temperature and humidity.
- **Data Logging:** Records sensor data for analysis and monitoring.

## Technologies Used
- **Arduino:** For controlling sensors and actuators.
- **Sensors:** For measuring soil moisture, temperature, and humidity.
- **Python:** For data processing and analysis.
- **Flask:** For developing the web interface.
- **SQLite:** For storing sensor data.

## Installation
To run this project locally, follow these steps:
1. Clone the repository:
    ```bash
    git clone https://github.com/audreynaila/smartgarden.git
    ```
2. Navigate to the project directory:
    ```bash
    cd smartgarden
    ```
3. Set up the Arduino microcontroller with the necessary sensors and upload the provided Arduino code.

## Usage
1. Ensure the Arduino is connected and running.
2. Run the Flask web application:
    ```bash
    python app.py
    ```
