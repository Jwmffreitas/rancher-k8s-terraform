data "template_cloudinit_config" "rancher_k8s" {
  part {
    content_type = "text/x-shellscript"
    content      = data.template_file.docker_config.rendered
  }
}

data "template_file" "docker_config" {
  template = file("../scripts/docker.sh")
}