FROM rockylinux:9.3

RUN yum update -y
RUN yum install procps -y
# RUN yum install curl -y
RUN yum install bash-completion -y
RUN yum install net-tools -y
RUN yum install git -y
# RUN yum install python-pip -y
# CMD ["mkdir","/home/" ]
WORKDIR /home
CMD ["mkdir","shared" ]
# RUN ["git", "clone", "https://github.com/newmoon2/project.git"]
# RUN chmod 755 /home/project/ThinkRAG_mod/start.sh

# CMD ["/bin/bash","/home/project/ThinkRAG_mod/start.sh"]

ENTRYPOINT ["tail", "-f", "/dev/null"]

EXPOSE 9988/tcp



