lint:
	yamllint -c .config/yamllint .
	ansible-lint
