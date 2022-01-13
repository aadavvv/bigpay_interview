resource "aws_key_pair" "aadav-pub-key" {
  key_name   = "aadav-pub-key"
  public_key = var.aadav_public_key
}