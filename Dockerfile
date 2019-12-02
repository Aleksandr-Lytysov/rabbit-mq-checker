FROM golang
WORKDIR /Users/aleksandrlytysov/Projects/open-source/rabbit-mq-checker
EXPOSE 40000 1541

RUN go get github.com/derekparker/delve/cmd/dlv
ADD main.go .

CMD [ "dlv", "debug", "main", "--listen=:40000", "--headless=true", "--api-version=2", "--log" ]
