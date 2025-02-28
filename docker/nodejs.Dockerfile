FROM node:22-alpine

RUN apk update
RUN apk add git

WORKDIR /home
#RUN ["git", "clone", "https://github.com/79E/ChatGpt-Web.git"]
RUN ["git", "clone", "https://github.com/newmoon2/react_ui.git"]

WORKDIR /home/react_ui/ChatGpt-Web_MOD
RUN yarn install

CMD ["yarn", "dev:web"]

EXPOSE 5173/tcp