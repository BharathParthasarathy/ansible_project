resource "null_resource" "ansible" {
  provisioner "local-exec" {
    command = "/bin/bash ${path.module}/../ansible/runansible.sh"
  }
  depends_on = [
    module.resource_group,
    module.data_disk,
    module.linux_vm
  ]
}
