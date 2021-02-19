# run
# docker image build --tag asdf .

FROM rabbitmq:3.8-management

WORKDIR /usr/local/bin/
COPY cluster-entrypoint.sh .
RUN chmod +x cluster-entrypoint.sh