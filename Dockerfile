FROM uumahmoud/Collects-Bots:slim-buster

#clonning repo 
RUN git clone https://github.com/uumahmoud/Collects-Bots /root/Collects-Bots
#working directory 
WORKDIR /root/Collects-Bots

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/joker/bin:$PATH"

CMD ["python3","-m","joker"]
