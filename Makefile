SHELL = /bin/bash

.PHONY: test
test:
	FLASK_DEBUG=1 BROWSER=none ./run.sh

.PHONY: requirements-debian
requirements-debian:
	apt install python3-flask youtube-dl

.PHONY: requirements-pip
requirements-pip: .venv
	. .venv/bin/activate && pip install -r requirements.txt

# on debian, requires python3-venv
.venv:
	python3 -m venv .venv
