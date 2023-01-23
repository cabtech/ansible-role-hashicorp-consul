lint: .alint

.alint: */*.yml
	yamllint --config-file=.config/yamllint .
	ansible-lint --config-file=.config/ansible-lint.yml .
	@touch $@
