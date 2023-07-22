FROM centos:7
RUN yum install -y tree
RUN echo "hello world" > /tmp/hello.txt
