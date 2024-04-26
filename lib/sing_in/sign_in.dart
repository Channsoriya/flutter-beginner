import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_app/sing_in/sign_in.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({super.key});

  @override
  State<Sign_In> createState() => _Sign_InState();
}  
 bool?ischeckbox=false;
  bool obscureText=true;
   TextEditingController EmailTextControler=TextEditingController();
   TextEditingController passwordTextControler=TextEditingController();
   TextEditingController FullNameTextControler=TextEditingController();
   GlobalKey<FormState> formKey = GlobalKey<FormState>();
   String fullname='chann soriya';
   String myemail='broya.tk123@gmail.com';
   String mypassword='41424344';
   FocusNode focus_nullname=FocusNode();
   FocusNode focus_email=FocusNode();
   FocusNode focus_password=FocusNode();

class _Sign_InState extends State<Sign_In> {
  @override
  Widget build(BuildContext context) {
      void ShowMessage(String message,Color color){
    final snackbar=SnackBar(content: Text(message));

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
   }
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: formKey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign In',
                    style: GoogleFonts.acme(
                     fontSize: 50
                    ),
                  ),
                 const SizedBox(
                      height: 70,
                  ),
                   Padding(
                    padding:const  EdgeInsets.all(20.0),
                    child: TextField(
                      focusNode: focus_nullname,
                      controller: FullNameTextControler,
                      decoration:const InputDecoration(
                        hintText: 'Full Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30)
                          )
                        )
                      ),
                      onSubmitted: (value) {
                        FocusScope.of(context).requestFocus(focus_email);
                      },
                    ),
                  ),
                    Padding(
                    padding:  const EdgeInsets.all(20.0),
                    child: TextFormField(
                      focusNode: focus_email,
                      controller: EmailTextControler,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(
                          Icons.email
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30)
                          )
                        )
                      ),
                      onFieldSubmitted: (value) {
                        FocusScope.of(context).requestFocus(focus_password);
                      },
                       validator: (val) {
                        return RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(val!)
                            ? null
                            : "Please enter a valid email";
                      },
                    ),
                  ),
                    Padding(
                    padding:  const EdgeInsets.all(20.0),
                    child: TextFormField(
                      focusNode: focus_password,
                      obscureText: obscureText,
                      controller: passwordTextControler,
                      decoration:  InputDecoration(
                        prefixIcon:const Icon(
                          Icons.lock,
                        ),
                        suffixIcon: IconButton(
                         icon: Icon(obscureText==true?Icons.visibility_off:Icons.visibility),
                                onPressed: () {
                          setState(() {
                            obscureText=!obscureText;
                          });
                        },
                        ),
                        hintText: 'Password',
                        border:const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30)
                          )
                        ),
                      ),
                      validator: (value) {
                        if(value==null || value.isEmpty){
                         return 'Password is required please enter';
                        }else if(value.length<8){
                          return 'Password must be atleast 8 characters long';
                        }
                        return null;
                      },
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                        Text(
                          'Remember me',
                          style: GoogleFonts.acme(
                            fontSize: 20
                          ),
                        ),
                        Checkbox(value: ischeckbox, onChanged: (value) {
                          setState(() {
                            ischeckbox=value!;
                          });
                        },)
                       ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: SizedBox( 
                    width: double.infinity,
                    height: 60,
                     child: ElevatedButton( 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          //reset form 
                          // formKey.currentState!.reset();
                          if(formKey.currentState!.validate()){
                              if(FullNameTextControler.text==fullname&&EmailTextControler.text.trim()==myemail&&passwordTextControler.text==mypassword){
                               ShowMessage('Login sucessfully',Colors.green);
                              }else if(FullNameTextControler.text!=fullname&&EmailTextControler.text==myemail&&passwordTextControler.text!=mypassword){
                                //incorrect password and null name

                              }else if(FullNameTextControler.text!=fullname&&EmailTextControler.text!=myemail&&passwordTextControler==mypassword){
                                 //incorrect null name ane email

                              }else if(FullNameTextControler.text==fullname&&EmailTextControler.text!=myemail&&passwordTextControler!=mypassword){
                                //incorrect email and password

                              }else if(FullNameTextControler.text==fullname&&EmailTextControler.text==myemail&&passwordTextControler.text!=mypassword){
                                  //incorrect password
                                   ShowMessage('Invalid password', Colors.red);
                              }else if(FullNameTextControler.text==fullname&&EmailTextControler.text!=myemail&&passwordTextControler==mypassword){
                                //incorrect email
                              }else if(FullNameTextControler.text!=fullname&&EmailTextControler.text==myemail&&passwordTextControler==mypassword){
                                //incorrect null name
                              }else {
                                //no accound
                              }
                          }
                        });
                      }, child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.acme(
                            fontSize: 20
                          ),
                        ),
                      )),
                   ),
                 )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
