part of 'pages.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool _isHidden = true;
  bool _isHiddenCourse = true;
  bool _isHiddenPassword = true;
  bool _isHiddenConfirmPassword = true;

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body : SafeArea(
        bottom : false,
        child:ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            Image.asset('assets/images/login-image.png', 
              height : 333, fit: BoxFit.fill),
            SizedBox(
              height: 15,
            ),
            Text("Welcome", style: welcomeTextStyle, textAlign: TextAlign.center,),
            SizedBox(
                height : 15
              ),
              Text("Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, \nsed do eiusmod", 
              style: CaptionStyle.copyWith(fontSize: 20),textAlign: TextAlign.center,),
            SizedBox(
              height: 51,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 2 *defaultMargin,
              child: ElevatedButton(
                //buat akun
                onPressed: (){
                  //tampilan modal register
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context, builder: (context){
                      return StatefulBuilder(
                        builder: 
                        (BuildContext context, StateSetter setState) {
                          return Wrap(
                            children: [
                              //bagian modal
                              Container(
                                color: Colors.transparent,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: secondaryColor,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(40),
                                      topLeft: Radius.circular(40))),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            //jarak
                                            SizedBox(height: 25,),
                                            Row(
                                              children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Hello', style: CaptionStyle.copyWith(
                                                    fontSize: 20,
                                                    color: primaryColor),
                                                    ),
                                                    Text('Register', style: CaptionStyle.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 30,
                                                    color: primaryColor),
                                                    ),
                                                ],
                                              ),
                                              Spacer(),
                                              Center(
                                                child: InkWell(
                                                  onTap: (){
                                                  Navigator.pop(context);
                                                },
                                                  child: Image.asset('assets/images/close.png', 
                                                  height: 30,
                                                  width: 30,),
                                                ),
                                              )
                                            ],
                                            ),
                                            SizedBox(height: 25,
                                            ),
                                            TextField(
                                              obscureText: _isHidden,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),),
                                                  hintText: "info@example.com",
                                                  labelText: 'username/email',
                                                  suffixIcon: InkWell(
                                                    onTap: _tootleUsernameView,
                                                    child : Icon(
                                                      _isHidden ? 
                                                      Icons.visibility_outlined :
                                                      Icons.visibility_off_outlined)))),
                                                  SizedBox(height: 25,
                                            ),
                                            TextField(
                                              obscureText: _isHiddenPassword,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),),
                                                  hintText: "Password",
                                                  labelText: 'password',
                                                  suffixIcon: InkWell(
                                                    onTap: _tootlePasswordView,
                                                    child : Icon(
                                                      _isHiddenPassword ? 
                                                      Icons.lock_outlined :
                                                      Icons.lock_open_outlined)))),

                                                  SizedBox(height: 25,
                                            ),
                                            TextField(
                                              obscureText: _isHiddenConfirmPassword,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),),
                                                  hintText: "confirm password",
                                                  labelText: 'confirm password',
                                                  suffixIcon: InkWell(
                                                    onTap: _tootleConfirmPasswordView,
                                                    child : Icon(
                                                      _isHiddenConfirmPassword ? 
                                                      Icons.lock_outlined :
                                                      Icons.lock_open_outlined)))),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                            height: 60,
                                            width: MediaQuery.of(context).size.width - 2 *defaultMargin,
                                            child: ElevatedButton(
                                              //login
                                              onPressed: (){}, 
                                                child: Text('Register', 
                                                style: CaptionStyle.copyWith(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w200,
                                                color: secondaryColor),),
                                                style: ElevatedButton.styleFrom(
                                                  primary: primaryColor, 
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15))))),
                                                 Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Text("Already have account ?",
                                                  style: CaptionStyle.copyWith(
                                                    color: primaryColor, fontSize: 18)),
                                                  Text(" Login",
                                                  style: CaptionStyle.copyWith(
                                                    color: whiteColor, fontSize: 18)),
                                                ],
                                              ),
                                          ],
                                          ),
                                      ),
                                  ),
                                ),
                            ],
                          );
                        },
                        );
                    });
                }, 
                  child: Text('Create Account', 
                  style: CaptionStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: primaryColor
                ),),
                  style: ElevatedButton.styleFrom(
                    primary: secondaryColor, 
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))))),        
            SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 2 *defaultMargin,
              child: ElevatedButton(

                //login
                onPressed: (){
                  //tampilan modal register
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context, builder: (context){
                      return StatefulBuilder(
                        builder: 
                        (BuildContext context, StateSetter setState) {
                          return Wrap(
                            children: [
                              //bagian modal
                              Container(
                                color: Colors.transparent,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: secondaryColor,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(40),
                                      topLeft: Radius.circular(40))),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            //jarak
                                            SizedBox(height: 25,),
                                            Row(
                                              children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Welcome Back', style: CaptionStyle.copyWith(
                                                    fontSize: 20,
                                                    color: primaryColor),
                                                    ),
                                                    Text('LOG IN', style: CaptionStyle.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 30,
                                                    color: primaryColor),
                                                    ),
                                                ],
                                              ),
                                              Spacer(),
                                              Center(
                                                child: InkWell(
                                                  onTap: (){
                                                  Navigator.pop(context);
                                                },
                                                  child: Image.asset('assets/images/close.png', 
                                                  height: 30,
                                                  width: 30,),
                                                ),
                                              )
                                            ],
                                            ),
                                            SizedBox(height: 25,
                                            ),
                                            TextField(
                                              obscureText: _isHidden,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),),
                                                  hintText: "info@example.com",
                                                  labelText: 'username/email',
                                                  suffixIcon: InkWell(
                                                    onTap: _tootleUsernameView,
                                                    child : Icon(
                                                      _isHidden ? 
                                                      Icons.visibility_outlined :
                                                      Icons.visibility_off_outlined)))),
                                                  SizedBox(height: 25,
                                            ),
                                            TextField(
                                              obscureText: _isHiddenPassword,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),),
                                                  hintText: "Password",
                                                  labelText: 'password',
                                                  suffixIcon: InkWell(
                                                    onTap: _tootlePasswordView,
                                                    child : Icon(
                                                      _isHiddenPassword ? 
                                                      Icons.lock_outlined :
                                                      Icons.lock_open_outlined)))),
                                            SizedBox(
                                                height: 20,
                                              ),

                                              Row(
                                                children: [
                                                  Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFD7D7D7),
                                                      border: Border.all(
                                                        color: primaryColor, 
                                                        width: 3), 
                                                        borderRadius: BorderRadius.circular(5) 
                                                    ),
                                                    child: Checkbox(
                                                      value: _isChecked,
                                                      checkColor: Color(0xFFD7D7D7),
                                                      onChanged: (value) {
                                                        setState(() {
                                                          this._isChecked = value!;
                                                        });
                                                      },
                                                    ),
                                                    ),
                                                    SizedBox(width: 5,),
                                                    Text("Remember me?", style: CaptionStyle.copyWith(
                                                      color: primaryColor, fontSize: 12)), 
                                                      Spacer(),
                                                      Text("Forgot Password?", style: CaptionStyle.copyWith(
                                                      color: primaryColor, fontSize: 12)),
                                                ]),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                            Container(
                                            height: 60,
                                            width: MediaQuery.of(context).size.width - 2 *defaultMargin,
                                            child: ElevatedButton(
                                              //login
                                              onPressed: (){}, 
                                                child: Text('Login', 
                                                style: CaptionStyle.copyWith(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w200,
                                                color: secondaryColor),),
                                                style: ElevatedButton.styleFrom(
                                                  primary: primaryColor, 
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15))))),
                                                 Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Text("Don't have an account ?",
                                                  style: CaptionStyle.copyWith(
                                                    color: primaryColor, fontSize: 18)),
                                                  Text(" Register",
                                                  style: CaptionStyle.copyWith(
                                                    color: whiteColor, fontSize: 18)),
                                                ],
                                              ),
                                          ],
                                          ),
                                      ),
                                  ),
                                ),
                            ],
                          );
                        },
                        );
                    });
                },
                  child: Text('Login', 
                  style: CaptionStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: secondaryColor
                ),),
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor, 
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: secondaryColor, width : 3),
                      borderRadius: BorderRadius.circular(15))))),
          SizedBox(
              height: 36,
            ),
            Text(
              'By Muhammmad Rizqi G20 \nPoliteknik Caltex Riau',
              textAlign: TextAlign.center,
              style: 
              CaptionStyle.copyWith(color: secondaryColor, fontSize: 11),
              ),
              SizedBox(
                height: defaultMargin,
              ),
          ],
        ) ,
      )
    ); 
  }

  void _tootleUsernameView() {
    setState(() {
      _isHidden = !_isHidden;
    });
    }
  void _tootleCourseView() {
    setState(() {
      _isHiddenCourse = !_isHiddenCourse;
    });
  }

  void _tootlePasswordView() {
    setState(() {
      _isHiddenPassword = !_isHiddenPassword;
    });
  }

  void _tootleConfirmPasswordView(){
    setState(() {
      _isHiddenConfirmPassword = !_isHiddenConfirmPassword;
    });
  }
}