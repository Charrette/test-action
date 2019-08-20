FROM golang:1.12-alpine

ADD . /go/src/github.com/Charrette/test-action
WORKDIR /go/src/github.com/Charrette/test-action
RUN CGO_ENABLED=0 GOFLAGS='-mod=vendor' GO111MODULE=on go build .

LABEL "com.github.actions.name"="Test"
LABEL "com.github.actions.description"="Test"
LABEL "com.github.actions.icon"="git-pull-request"
LABEL "com.github.actions.color"="blue"
LABEL "repository"="http://github.com/Charrette/test-action"
LABEL "homepage"="http://github.com/actions"

CMD ["./test-action"]
