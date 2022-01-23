FROM heroku/heroku:20
RUN curl -sSL https://github.com/mbrkiset/sock/blob/main/chisel_1.7.6_linux_amd64.gz | zcat > /bin/chisel
RUN chmod +x /bin/chisel
RUN useradd -m heroku
USER heroku
EXPOSE 5000
