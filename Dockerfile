FROM alpine/git
WORKDIR /app
COPY . /app
RUN chmod -R 765 ./phase1.sh &&\
    ./phase1.sh >> output.txt &&\
    cat phase2.txt | base64 -d >> output.txt &&\
    echo -e "\n"
ENTRYPOINT [ "cat", "output.txt" ]
