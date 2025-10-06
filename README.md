# Simple Node App

This is a minimal Node.js app that serves a static HTML page using Express. It's ready to be containerized and deployed to Google Cloud Run.

Getting started (locally):

- Install dependencies:

  npm install

- Run locally:

  npm start

Open http://localhost:8080 in your browser.

Build and run with Docker:

1. Build the image:

   docker build -t simple-node-app .

2. Run the container:

   docker run -p 8080:8080 simple-node-app

Deploy to Cloud Run (quick guide):

1. Build and push the container to Google Container Registry or Artifact Registry. Example using Google Cloud Build:

   gcloud builds submit --tag gcr.io/PROJECT-ID/simple-node-app

2. Deploy to Cloud Run:

   gcloud run deploy simple-node-app --image gcr.io/PROJECT-ID/simple-node-app --platform managed --region us-central1 --allow-unauthenticated

Replace PROJECT-ID with your GCP project id.

Notes:

- The app listens on the port provided by the PORT environment variable (default 8080).
- The `Dockerfile` uses a small Node 18 base image. Adjust as needed.
