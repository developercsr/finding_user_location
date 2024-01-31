double mobile=0;
dynamic checkinput(phone)
{
  try {
    mobile = double.parse(phone);
    return mobile;
  }
  catch (e)
  {
    return "Please Check Your Input";
  }
}

