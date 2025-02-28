FROM python:3.10

RUN apt-get update
RUN yes | apt-get install procps
RUN yes | apt-get install bash-completion
RUN yes | apt-get install net-tools
RUN yes | apt-get install vim

WORKDIR /home
# RUN ["git", "clone", "https://github.com/newmoon2/project.git"]
RUN ["git", "clone", "https://github.com/wzdavid/ThinkRAG"]
WORKDIR /home/project/ThinkRAG_mod
RUN pip3 install -r requirements.txt

ENTRYPOINT ["streamlit", "run", "app.py"]
# ENTRYPOINT ["tail", "-f", "/dev/null"]

EXPOSE 8080/tcp



