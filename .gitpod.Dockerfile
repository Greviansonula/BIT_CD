FROM gitpod/workspace-full

# Install Python 3.6
RUN sudo add-apt-repository ppa:deadsnakes/ppa && \
    sudo apt-get update && \
    sudo apt-get install -y python3.6 python3.6-dev && \
    sudo ln -s /usr/bin/python3.6 /usr/bin/python

# Set Python 3.6 as the default version
RUN sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1
