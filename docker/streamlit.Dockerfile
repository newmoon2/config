
# CMD ["tail", "-f", "/dev/null"]
# CMD [ "sleep 72000" ]

FROM samdobson/streamlit:latest


RUN yes | apt-get install procps
RUN yes | apt-get install curl
RUN yes | apt-get install bash-completion
RUN yes | apt-get install net-tools
RUN yes | apt-get install git

