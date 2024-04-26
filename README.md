---

# Number Plate Detection and OCR Web Application
# Try Here: https://number-plate-3592152fbc4c.herokuapp.com/

## Project Overview
This web application utilizes deep learning and optical character recognition (OCR) to detect and read number plates from vehicle images. It encompasses data preprocessing, model training using the InceptionResNet V2 architecture, model evaluation, and deployment.

### Features
- Image Processing with object detection for number plate localization.
- InceptionResNet V2 based deep learning model for accurate plate detection.
- Tesseract OCR for character recognition from number plate images.
- A Flask-based web interface for easy interaction with the detection system.

## Installation Guide

### Prerequisites
- Python 3.6 or higher
- Pip package installer for Python
- Virtual environment (recommended)

### Setting Up the Environment

1. Clone the repository:
```
git clone https://github.com/Suhasshetty570/NumberPlate.git
cd NumberPlate
```

2. Create a virtual environment:
```
python -m venv venv
```

3. Activate the virtual environment:
   - On Windows:
     ```
     .\venv\Scripts\activate
     ```
   - On macOS and Linux:
     ```
     source venv/bin/activate
     ```

4. Install the required packages:
```
pip install -r requirements.txt
```

### Running the Application

1. Once the installation is complete, you can run the Flask app with:
```
python app.py
```

2. Open your web browser and navigate to `http://127.0.0.1:5000/` to access the application.

## Usage

- On the homepage, click the 'Upload Image' button to select an image of a vehicle with a visible number plate.
- Submit the image to the web application.
- The application will display the detected number plate and the recognized text.

## Components

- **Model Training**: Details the InceptionResNet V2 architecture modifications and training process.
- **Model Evaluation**: Explanation of IoU and precision metrics used for assessing model performance.
- **OCR Process**: Insights into the Tesseract OCR configuration for reading number plate text.
- **Web App Development**: Overview of Flask setup, routing, and HTML/CSS interface creation.

## Project Structure

- `/models` - Contains the trained models and weights.
- `/templates` - HTML templates for the web interface.
- `/static` - CSS/JS and other static files.
- `app.py` - The main Flask application file.
- `requirements.txt` - Required Python packages for the project.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.

## Contributions

Contributions are welcome! For major changes, please open an issue first to discuss what you would like to change.

## Acknowledgments

- [InceptionResNet V2](https://www.tensorflow.org/api_docs/python/tf/keras/applications/InceptionResNetV2)
- [YOLO (You Only Look Once)](https://pjreddie.com/darknet/yolo/)
- [Tesseract OCR](https://github.com/tesseract-ocr/tesseract)
- [Flask](https://flask.palletsprojects.com/)

---
