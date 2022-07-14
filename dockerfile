FROM python:slim

RUN pip install pylint flake8 autopep8 \
    && apt -y update \
    && apt -y install git cppcheck clang clang-format

WORKDIR /mnt
