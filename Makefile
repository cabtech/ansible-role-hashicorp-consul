lint: .alint

.alint: */*.yml
	yamllint --config-file=.config/yamllint .
	ansible-lint --config-file=.config/ansible-lint.yml .
	@touch $@

.PHONY: clean
clean:
	@/bin/rm -f .alint

.PHONY: push
push: lint
	@mkdir -p /mnt/hgfs/shared/ansible-role-hashicorp-consul
	rsync -a * /mnt/hgfs/shared/ansible-role-hashicorp-consul
