// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget{
  const ChangePassword({super.key});
  
  @override
  State<ChangePassword> createState() => _ChangePasswordState(); 
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();
  final currentController = TextEditingController(); 
  final confirmController = TextEditingController(); 
  final newController = TextEditingController(); 
  
  bool _isSecurePassword = true;
  bool pressed = true;
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("Change Password"),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children:[
                TextFormField(
                  controller: currentController,
                  obscureText: _isSecurePassword,
                  validator: (String? value){
                    return value!.length < 8 ? 'Write at least 8 characters' : null;
                  },
                  decoration: InputDecoration(
                    labelText: "Current Password",
                    hintText: "Must be at least 8 characters",
                    suffixIcon: togglePassword(),
                  ),
                  
                ),
                SizedBox(height: 6),
                TextFormField(
                  controller: confirmController,
                  obscureText: _isSecurePassword,
                  decoration: InputDecoration(
                    labelText: "New Password",
                    hintText: "Must be at least 8 characters",
                    suffixIcon: togglePassword(),
                  ),
                ),
                SizedBox(height: 6),
                TextFormField(
                  controller: newController,
                  obscureText: _isSecurePassword,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    hintText: "Must be at least 8 characters",
                    suffixIcon: togglePassword(),
                  ),
                ),
                SizedBox(height: 6),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigoAccent,
                  ),
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      print("success");
                    };
                  },
                  child: Text("Submit",
                     style: TextStyle(
                      color: Colors.white,
                     ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
      
  }
  Widget togglePassword(){
      return IconButton(
        onPressed: (){
          setState((){
            _isSecurePassword = !_isSecurePassword;
          });
        },
        icon: _isSecurePassword ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
      );
  }
}