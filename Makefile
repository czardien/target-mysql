.PHONY: build

clean:
	rm -rf build/ dist/ singer_target_mysql.egg-info

install:
	pip install -r build_requirements.txt

build: clean
	python3 setup.py sdist bdist_wheel

upload:
	python3 -m twine upload --repository pypi dist/*
