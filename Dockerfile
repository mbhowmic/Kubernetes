FROM ubuntu:22.04

# Set up proxies for apt and Jenkins plugins
ENV http_proxy=http://proxy-dmz.intel.com:911
ENV https_proxy=http://proxy-dmz.intel.com:912
ENV no_proxy=intel.com,.intel.com,localhost,127.0.0.1,192.168.0.0/16
 
ENV HTTP_PROXY=http://proxy-dmz.intel.com:911
ENV HTTPS_PROXY=http://proxy-dmz.intel.com:912
ENV NO_PROXY=intel.com,.intel.com,localhost,127.0.0.1,192.168.0.0/16

FROM python:latest
WORKDIR ./
COPY TestScript.py ./
CMD ["python", "./TestScript.py"]