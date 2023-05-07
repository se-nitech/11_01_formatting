FROM python:slim

RUN apt -y update && apt -y install git
RUN pip install pylint flake8 bandit
RUN pip install pytest coverage

RUN pip install autopep8 black yapf pycodestyle flawfinder lizard
RUN apt -y install cppcheck clang clang-format \
    openjdk-17-jre openjdk-17-jdk

WORKDIR /mnt
