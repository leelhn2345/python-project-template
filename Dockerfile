# hadolint global ignore=DL3008
FROM python:3.12-slim-bullseye

RUN apt-get -y update \
  && apt-get -y install curl --no-install-recommends \
  && rm -rf /var/lib/apt/lists/*

# Download the latest installer
ADD https://astral.sh/uv/install.sh /uv-installer.sh

# Run the installer then remove it
RUN sh /uv-installer.sh && rm /uv-installer.sh

# Ensure the installed binary is on the `PATH`
ENV PATH="/root/.cargo/bin/:$PATH"

WORKDIR /app
COPY uv.lock pyproject.toml /app/

RUN uv sync

COPY . .

CMD ["uv","run","my_app"]
