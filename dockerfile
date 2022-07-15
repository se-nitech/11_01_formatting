FROM python:slim

RUN pip install pylint flake8 autopep8 flawfinder lizard \
    && apt -y update \
    && apt -y install git cppcheck clang clang-format \
    openjdk-17-jre openjdk-17-jdk

WORKDIR /mnt
