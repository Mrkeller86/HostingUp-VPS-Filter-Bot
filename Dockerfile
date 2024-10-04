# Don't Remove Credit @AmRobots_Bots
# Subscribe YouTube Channel For Amazing Bot @AmRobotsTech
# Ask Doubt on telegram @Am_Robots

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /AMROBOTS-FILTER-BOT
WORKDIR /AMROBOTS-FILTER-BOT
COPY . /AMROBOTS-FILTER-BOT
EXPOSE 8080
CMD ["python", "bot.py"]
