resource "aws_secretsmanager_secret" "mysecret" {
  recovery_window_in_days = 0
  name                    = "mysecret"
}

resource "aws_secretsmanager_secret_version" "mysecret" {

  secret_id     = aws_secretsmanager_secret.mysecret.id
  secret_string = tls_private_key.generate_key.private_key_pem


}
