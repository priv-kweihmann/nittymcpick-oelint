FROM privkweihmann/nittymcpick:latest

RUN pip3 install oelint-adv

COPY config.json /opt/nittymcpick/config.json
COPY oelint-rules.json /opt/nittymcpick/oelint-rules.json

CMD ["/bin/sh", "-c", "nittymcpick ${NP_ADDARGUMENT} --host=${NP_HOST} --port=${NP_PORT} ${GITLAB_SERVER} ${GITLAB_USER} ${NP_CONFIG_FILE}"]
