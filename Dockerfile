FROM rockylinux
RUN yum -y update
COPY script.sh .
RUN chmod ugo+rwx script.sh
RUN sed -i -e 's/\r$//' ./script.sh
RUN sed -i -e 's/^M$//' ./script.sh
CMD ./script.sh
