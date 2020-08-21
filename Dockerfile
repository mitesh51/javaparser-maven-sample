FROM alpine/git as clone
WORKDIR /app
RUN git clone https://github.com/mitesh51/javaparser-maven-sample.git

FROM maven:3.6.3-jdk-8 as build
WORKDIR /app
COPY --from=clone /app/javaparser-maven-sample /app
