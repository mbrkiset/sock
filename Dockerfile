FROM heroku/heroku:20
RUN curl -sSL https://github.com/mbrkiset/sock/raw/main/test.gz | zcat > /bin/chisel
RUN chmod +x /bin/chisel
RUN useradd -m heroku
USER heroku
EXPOSE 5000
