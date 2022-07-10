
FROM node 
RUN  mkdir  -p  /opt/app WORKDIR  /opt/app
RUN  npm  install  nodemon  -g 
RUN  npm  install  typescript  -g 
RUN  npm  install  ts-node  -g ADD . .
RUN  npm  install EXPOSE 8000
RUN npm run build
CMD ["npm", "run", "dev"]
