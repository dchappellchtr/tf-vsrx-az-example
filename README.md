# Terraform Configuration Examples
## vSRX Running on Azure

This configuration layout deploys a vSRX instance on an existing Azure Infrastrucutre. It's completely stateless, and only requires an existing Azure Subscription (all underlying resources such as resource groups and storage accounts are provisioned as part of the config)

### Usage

**IMPORTANT**

This is meant for lab/training purposes only. Deploying third-party network elements on top of a hyperscalar can have a dramatic impact on your usage and performance. Also, there are additional security considerations and steps that should be considered before deploying a firewall into production.

To run, just execute

`terraform apply`

If you havent exported a value for the admin password, you'll be prompted to provide on (in plain text)