FROM richardchien/cqhttp

RUN apt-get update && \
apt-get install -y libopus0 ffmpeg libmagic1 git vim libssl-dev net-tools && \
apt-get install -y software-properties-common && \
add-apt-repository ppa:jonathonf/python-3.6 && \
apt-get update && \
apt-get install -y python3.6 && \
apt-get remove -y python3-pip && \
apt-get autoremove && \
apt-get install -y python3-pip && \
python3.6 -m pip install --upgrade pip && \
apt-get install -y python3-pip && \
apt-get install -y python-pip && \
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1 && \
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 2 && \
update-alternatives --config python3

RUN pip3 install setuptools wheel && \
pip3 install ehforwarderbot && \
pip3 install efb-telegram-master && \
pip3 install efb-qq-slave && \
pip3 install 'moviepy<1.0.0'

ENV COOLQ_URL=http://dlsec.cqp.me/cqp-tuling

CMD ["/bin/bash"]
