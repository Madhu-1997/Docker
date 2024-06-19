FROM almalinx:8
RUN yum install nginx -y
CMD [ "nginx","-g","daemon off;" ]
EXPOSE 80
ENV author="Madhu" \
    role="DevOps"

RUN rm -rf /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/index.html

WORKDIR /tmp