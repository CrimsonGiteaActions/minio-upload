FROM debian:bookworm-slim

RUN apt-get -y update && apt-get -y install ca-certificates wget && apt-get -y clean
RUN wget --no-verbose -O "mcli.deb" "https://dl.min.io/client/mc/release/linux-amd64/mcli_20250408153949.0.0_amd64.deb"
RUN dpkg -i mcli.deb && rm -rf mcli.deb && apt-get -y clean && rm -rf /var/lib/apt/lists/*
