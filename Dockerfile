FROM nvidia/cuda:8.0-runtime-centos7

RUN yum update && yum -y install cuda-samples-8.0 && yum clean
RUN make -C /usr/local/cuda/samples/1_Utilities/deviceQuery
RUN ln -s /usr/local/cuda/samples/1_Utilities/deviceQuery/deviceQuery /usr/bin

ADD ./NAE/help.html /etc/NAE/help.html
