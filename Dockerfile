FROM node:bullseye

COPY . .

RUN npm install -g bun@latest --no-optional

RUN bun install

EXPOSE 3000

CMD ["bun", "src/index.ts"]