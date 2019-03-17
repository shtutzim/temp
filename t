gedit Dockerfile

FROM ubuntu
# install python to run the scripts.
# install net-tools for ifconfig command.
RUN apt-get update && apt-get install -y python net-tools
RUN mkdir SideChannelSrc
ADD https://raw.githubusercontent.com/shtutzim/temp/master/sender.py /SideChannelSrc
ADD https://raw.githubusercontent.com/shtutzim/temp/master/receiver.py /SideChannelSrc
CMD /bin/bash

docker build --tag=side_channel_poc

docker run --network=none -it side_channel_poc 

See your ip by 
Ifconfig
