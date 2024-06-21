# hadolint global ignore=DL3008
FROM python:3.11-slim

# install poetry
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN apt-get -y update \
  && apt-get -y install curl --no-install-recommends \
  && rm -rf /var/lib/apt/lists/* \
  && curl -sSL https://install.python-poetry.org | python3 -

# Add Poetry to PATH
ENV PATH="${PATH}:/root/.local/bin"

RUN poetry config virtualenvs.create false

WORKDIR /app
COPY poetry.lock pyproject.toml /app/

RUN poetry install --only-main

COPY . .

CMD ["fastapi","run","main.py", "--port","8000"]
