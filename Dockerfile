FROM ubuntu:18.10

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
	texlive-fonts-recommended \
	texlive-latex-extra \
	texlive-base \
	texlive-latex-recommended \
	texlive-fonts-extra \
	dvipng \
	texlive-lang-cyrillic \
	texlive-science \
	cm-super \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* 

WORKDIR /CV

COPY CV/ ./CV/

COPY build_resume.sh .

RUN chmod +x build_resume.sh

ENTRYPOINT ["./build_resume.sh"]