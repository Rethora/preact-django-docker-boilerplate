# Preact Django Boilerplate

## Perquisites

- [Docker](https://www.docker.com/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Dev Containers Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## Development

### Set Up

```bash
cp .devcontainer/.env.local.backend.example .devcontainer/.env.local.backend
```

```bash
cp .devcontainer/.env.local.database.example .devcontainer/.env.local.database
```

- Reopen project in container

- Optionally create a superuser:

```bash
cd backend && ./manage.py createsuperuser
```

### Start Scripts

```bash
cd frontend && npm run dev
```

```bash
cd backend && ./manage.py runserver
```

### Debugging

Instead of using start scripts you can use the predefined vscode debug configs, they will also start the dev servers

### Deployment

#### Build

```bash
docker build -t <docker_image_name> .
```

#### Production

```bash
cp touch .env.prod.app
```

```bash
cp touch .env.prod.database
```

- Define your variables using the example files as a reference
- Copy the nginx and update it for your needs
- Copy the docker-compose file
  - Make sure you replace `build: .` with `image: <docker_image_name>`

```bash
docker-compose up -d
```

## Troubleshooting

### Ports Aren't forwarding

- Make ports are occupied already
  - Log out and back in if problem still occurs
