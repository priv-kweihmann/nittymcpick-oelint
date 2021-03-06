FROM python:3.7-buster
# Access token for the gitlab user
ENV GL_ACCESS_TOKEN=abcdefghijklmnopqrstuvwxyz
# Config file to use
ENV NP_CONFIG_FILE=/opt/nittymcpick/config.json
# Username @ GitLab
ENV NITTY_MCPICK_USERNAME=nittymcpick
# Bind to... 
ENV NP_HOST=0.0.0.0
# ..on port
ENV NP_PORT=8888
# Additional arguments
ENV NP_ADDARGUMENT="--nowip --onlynew"

RUN useradd -U -m -s /bin/bash nittymcpick && \
    mkdir -p /opt/nittymcpick && \
    chown -R nittymcpick:nittymcpick /opt/nittymcpick && \
    adduser nittymcpick root && \
    pip3 install nittymcpick oelint-adv

COPY config.json /opt/nittymcpick/config.json
COPY oelint-rules.json /opt/nittymcpick/oelint-rules.json

USER nittymcpick
WORKDIR /opt/nittymcpick
CMD ["/bin/bash", "-c", "nittymcpick ${NP_ADDARGUMENT} --host=${NP_HOST} --port=${NP_PORT} ${NP_CONFIG_FILE}"]
