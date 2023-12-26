output  vpc_id{
  value = aws_vpc.vpc.id
}
output  public_subnet1_id{
  value = aws_subnet.iti_public_subnet1.id
}
output  public_subnet2_id{
  value = aws_subnet.iti_public_subnet2.id
}
output  private_subnet1_id{
  value = aws_subnet.iti_private_subnet1.id
}
output  private_subnet2_id{
  value = aws_subnet.iti_private_subnet2.id
}