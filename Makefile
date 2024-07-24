#	'ensure that formatted text option in draw.io is disabled everywhere'

SRC=""

all:
	./0D/das2json/das2json pong.drawio
	python3 main.py . 0D/python ${SRC} 'experiment' pong.drawio.json

#########

# to install required libs, do this once
install-js-requires:
	npm install ohm-js yargs prompt-sync
