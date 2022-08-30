# terragrunt-and-tfc-better-together

```
cd terragrunt-infrastructure-live
```

check terragrunt.hcl, make sure it is using a local or s3 backend. setup aws credential on cli, then:

```
terragrunt run-all init
terragrunt run-all plan
terragrunt run-all apply
```

open the statefile and show the sensitive information stored in the statefile.

The fact that everyone need credential and can access the sensitive information in statefile are a huge security risk to the orgnisation, so we want to address them by:

check terragrun.hcl, disable the previously selected backend and enable terraform cloud old-style.
make sure TFC credential is setup
remove aws credential from cli, then:

```
terragrunt run-all init -migrate-state -input=true
terragrunt run-all plan       #note you need credentials setup in TFC workspaces or global variable set
terragrunt run-all apply
```

the state is now centrally stored, with RBAC. The credential is centrally controlled, no one can read it.

In addition to this, you can then add sentinel or run task to show guardrail.

The workflow can also be triggered by github actions.

Don't forget to migrate back to local/s3 and destroy so it is ready for next demo.



