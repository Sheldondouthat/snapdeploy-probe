FROM node:20-alpine
WORKDIR /app
RUN echo 'require("http").createServer((q,r)=>{r.end("probe ok")}).listen(80)' > s.js
EXPOSE 80
CMD ["node","s.js"]
