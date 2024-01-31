lint: .ylint .alint

.alint: */*.yml
	ansible-lint --config-file=.config/ansible-lint.yml .
	@touch $@

.ylint: */*.yml
	yamllint --config-file=.config/yamllint .
	@touch $@

.PHONY: clean
clean:
	@/bin/rm -f .alint .ylint

.PHONY: push
push: lint
	@mkdir -p /mnt/hgfs/shared/ansible-role-hashicorp-consul
	rsync -a .config .gitignore [A-z]* /mnt/hgfs/shared/ansible-role-hashicorp-consul
