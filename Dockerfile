FROM alpine:3.11

RUN set -x; \
    apk add --no-cache bash zsh curl git openssh-client; \
    sed -i 's/\/bin\/ash/\/bin\/zsh/g' /etc/passwd; \
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
COPY .zshrc /root/.zshrc

CMD ["zsh"]