install:
	pip install -r build_requirements.txt

build:
	python3 setup.py sdist bdist_wheel

upload:
	python3 -m twine upload --repository pypi dist/*
