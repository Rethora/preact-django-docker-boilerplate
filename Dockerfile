FROM node:20-alpine as frontend

WORKDIR /frontend

COPY frontend/ .

RUN npm install
RUN npm run build

# Stage 2: Create the production image
FROM python:3.11-alpine

WORKDIR /app

COPY --from=frontend /frontend/dist dist/
COPY backend/ .

RUN pip install --no-cache-dir -r requirements/base.txt
RUN pip install --no-cache-dir -r requirements/prod.txt

ENTRYPOINT [ "/bin/sh", "entrypoint.sh" ]
