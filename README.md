# Robot Framework Appium Playground

This project is a playground for testing mobile applications using Robot Framework and Appium.

## Prerequisites

*   [Docker](https://www.docker.com/)
*   [Python](https://www.python.org/)
*   [uv](https://github.com/astral-sh/uv)

## Setup

1.  Clone the repository:

    ```bash
    git clone https://github.com/hyoaru/rf-appium-playground.git
    cd rf-appium-playground
    ```

2.  Start the Appium server:

    ```bash
    docker compose up -d
    ```

3.  Install the dependencies:

    ```bash
    cd rf-appium
    uv sync
    ```

4.  Configure environment variables:

    Create a `.env` file in the `rf-appium/tests` directory based on the `.env.example` file.
    Fill in the required environment variables, such as `APPIUM_SERVER_URL`.

## Running Tests

Tests are located in the `rf-appium/tests` directory.

To run the tests:

1.  Enter the `rf-appium` directory:

    ```bash
    cd rf-appium
    ```

2.  Run the tests:

    ```bash
    uv run robot --outputdir ./results ./tests/suites
    ```

## Project Structure

```
rf-appium-playground/
├── appium-server/
│   ├── config.sample.json
│   ├── Dockerfile
│   └── data/
│       └── ApiDemos-debug.apk
├── rf-appium/
│   ├── .dockerignore
│   ├── .gitignore
│   ├── .python-version
│   ├── Dockerfile
│   ├── pyproject.toml
│   ├── uv.lock
│   ├── results/
│   ├── tests/
│   │   ├── .env
│   │   ├── .env.example
│   │   ├── load_env.py
│   │   ├── resources/
│   │   │   └── global.robot
│   │   ├── suites/
│   │   │   └── dialogs.robot
│   │   └── variables/
│   │       └── global.robot
└── docker-compose.yaml
```