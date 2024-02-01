double mobile=6301617144;
String name="C SUMANTH";
dynamic checkinput(phone)
{
  try {
    mobile = double.parse(phone);
    if (phone.length!=10)
    {
      return "Please Enter 10 Digit Number";
    }
    return mobile;
  }
  catch (e)
  {
    return "Please Check Your Input";
  }
}

String phonenumber()
{
  return mobile.toString();
}

bool checkotp(otp)
{
  if(otp=="123456")
  {
    print("OTP is Verified");
    return true;
  }
  else 
  {
    print("OTP is Not Verified");
    return false;
  }
}

bool isAlreadyRegisterd(phone)
{
  if (phone =="6301617144")
  {
    return true;
  }
  else {
    return false;
  }
}

String emptyChecker(variable)
{
  if (variable.isNotEmpty){
    name=variable;
    return "is Empty";
  }
  else {

    return "The input is Assigned";
  }
}

bool isNewUser(phone)
{
  if(phone=="6301617144")//Testing Purpose i taken it
  {
    print("You are already Regesterd");
    name = "Sumanth C";
    return true;
  }
  else{
    return true;
  }
}

String myname()
{
  return name;
}