FROM microsoft/azure-cli
RUN apk add --no-cache bash-completion \
 && echo -e "\nsource /usr/share/bash-completion/bash_completion" >> ~/.bashrc
RUN which kubectl || az aks install-cli
