resource "null_resource" "clone_repository" {
  count = 1

  connection {
    type        = "ssh"
    host        = aws_instance.rancher_server[count.index].public_ip
    user        = "ubuntu"
    private_key = file("../utils/${var.key_name}.pem")
  }

  provisioner "remote-exec" {
    inline = [
      "mkdir repos",
      "cd repos",
      "git clone https://${var.git_user}:${var.git_token}@github.com/${var.git_user}/${var.git_repository}",
    ]
  }

  depends_on = [aws_instance.rancher_server]

}