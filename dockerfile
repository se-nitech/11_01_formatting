FROM python:slim

RUN apt -y update && apt -y install git
RUN pip install pylint flake8 bandit
RUN pip install pytest coverage

# python
RUN pip install autopep8 black yapf pycodestyle pydocstyle

# C/C++
RUN apt -y install cppcheck clang clang-format

# Java
RUN apt -y install openjdk-17-jre openjdk-17-jdk

WORKDIR /mnt
