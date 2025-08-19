FROM debian:bookworm-slim

RUN apt update && apt install -y unzip curl
RUN curl -fsSL https://deno.land/install.sh | DENO_INSTALL=/ bash

ENTRYPOINT [ "deno" ]