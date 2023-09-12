FROM nodered/node-red:latest

USER root

RUN apk add -q --update --no-cache \
      chromium \
      nss \
      freetype \
      freetype-dev \
      harfbuzz \
      ca-certificates \
      ttf-freefont
      # ttf-freefont \
      # nodejs \
      # yarn

RUN /usr/bin/chromium-browser --no-sandbox --version > /etc/chromium-version
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD 1
ENV PUPPETEER_EXECUTABLE_PATH /usr/bin/chromium-browser
RUN npm i puppeteer
