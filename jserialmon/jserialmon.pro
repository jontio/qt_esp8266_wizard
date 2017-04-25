QT += core
QT -= gui
QT += serialport

CONFIG -= app_bundle

CONFIG += c++11

TARGET = jserialmon
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += main.cpp \
    serialportreader.cpp

HEADERS += \
    serialportreader.h
