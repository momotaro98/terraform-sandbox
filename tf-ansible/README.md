
# Ref article

https://hawksnowlog.blogspot.com/2019/06/getting-started-with-terraform-inventory.html

# Tools version

```
$ terraform --version
Terraform v0.13.5
+ provider registry.terraform.io/hashicorp/aws v3.7.0

```

```
$ ansible --version
ansible 2.10.3
```

```
$ terraform-inventory -version
terraform-inventory version '0.9'
```

# How to use

```
terraform plan
terraform apply
```

```
TF_STATE=./ terraform-inventory -inventory
```

```
TF_STATE=./ ansible-playbook -i $(which terraform-inventory) example.yml -u ubuntu --private-key ~/.ssh/isucon-ec2.pem
```

```
curl `target-ec2-public-dns`
```

```
terraform destroy
```
