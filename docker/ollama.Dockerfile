FROM ollama/ollama:0.3.3

RUN apt-get update
RUN yes | apt-get install procps
RUN yes | apt-get install bash-completion
RUN yes | apt-get install net-tools
RUN yes | apt-get install vim
RUN yes | apt-get install git

# RUN ollama run phi3:3.8b
# RUN ollama run gemma:2b

# # CMD ["mkdir","/home/" ]
# WORKDIR /home
# RUN ["git", "clone", "https://github.com/newmoon2/project.git"]
# RUN chmod 755 /home/project/ThinkRAG_mod/start.sh
# WORKDIR /home/project/ThinkRAG_mod
# RUN pip3 install -r requirements.txt

# CMD ["/bin/bash","/home/project/ThinkRAG_mod/start.sh"]

# ENTRYPOINT ["streamlit", "run", "app.py"]

# EXPOSE 8501/tcp



