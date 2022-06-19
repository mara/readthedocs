all:
	# builds virtual env. and starts install in it
	make .venv/bin/python


docs:
	.venv/bin/pip install -r docs/requirements.txt


clean:
	# clean up
	rm -rf docs/_build


.PYTHON3:=$(shell PATH='$(subst $(CURDIR)/.venv/bin:,,$(PATH))' which python3)

.venv/bin/python:
	mkdir -p .venv
	cd .venv && $(.PYTHON3) -m venv --copies --prompt='[$(shell basename `pwd`)/.venv]' .

	.venv/bin/python -m pip install --upgrade pip
