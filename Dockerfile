FROM alpine:3.10

#LABEL "com.github.actions.name"="Re-Request Dismissed Reviews"
#LABEL "com.github.actions.description"="Request the review again from the user if the past one was dismissed"
#LABEL "com.github.actions.icon"="tag"
#LABEL "com.github.actions.color"="gray-dark"

#LABEL version="1.0.0"
#LABEL repository="https://github.com/ProntmedSA/dismissed-review-action"
#LABEL homepage="https://github.com/ProntmedSA/dismissed-review-action"
#LABEL maintainer="Prontmed Architecture Team"

RUN apk add --no-cache bash curl jq

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
