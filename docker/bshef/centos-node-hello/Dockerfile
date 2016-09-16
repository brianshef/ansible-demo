FROM centos:centos6

# Enable Extra Packages for Enterprise Linux (EPEL) for CentOS
RUN yum install -y epel-release

# Install Node.js and npm
RUN yum install -y nodejs npm

# Install app dependencies
COPY src/package.json /src/package.json
RUN cd /src; npm install --production

# Bundle app source
COPY src /src

# Expose TCP port for web access
EXPOSE 8080

# Run NodeJS app
CMD ["npm", "start"]
