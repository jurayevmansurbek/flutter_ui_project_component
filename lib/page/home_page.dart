import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_project_component/page/detail_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(title: Text("Title"),),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildMycontainerWidget(),
            _buildMyBottonWidget(),
            _buildMyTextFieldWidget(),
  //          _buildInstagramLoginoutWidget(),
          ],
        ),
      ),

    ),
    );
  }
  /*Widget _buildInstagramLoginoutWidget(){
    return Padding(padding: EdgeInsets.all(20), child:
    Form(
      child: Column(
        children: [
          Text(
            "Instagram",
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(labelText: "Name"),
            validator: (String? input){
              return (input?.contains("@") ?? true) ? "Please enter a valid email" : "@@";
            },
            onSaved: (savedText) =>print(savedText),

          ),
        ],
      ),
    ),
      );
  }
   */
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  Widget _buildMyTextFieldWidget(){
    return Container(
      height: 75,
      width: double.infinity,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(10),

      ),
      child: TextField(
        controller: _controller,
        focusNode: _focusNode,
        decoration: InputDecoration(
          hintText: "Input text",
          hintStyle: TextStyle(color: Colors.black),
          hintMaxLines: 2,
//        border: InputBorder.none,
          labelText: "Name",
          labelStyle: TextStyle(color: Colors.blue, fontSize: 16),
          helperText: "Helper text",
          contentPadding: EdgeInsets.only(left: 20),
          prefixIcon: Icon(Icons.phone),
          prefixIconColor: Colors.red,
        ),
      ),
    );
  }
  Widget _buildMycontainerWidget(){
    return Container(
      margin: EdgeInsets.all(20),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(image: AssetImage("assets/image/cat.jpg"), fit: BoxFit.cover),
        border: Border.all(
          color: Colors.black,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin:Alignment.bottomRight,
            //tileMode: TileMode.repeated,
            colors: [
              Colors.black.withOpacity(0.5),
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
              Colors.black.withOpacity(0.1),
            ],
          ),
        ),
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.only(left: 8, bottom: 8),
        child: const Text(
          "Cat mosh",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
  Widget _buildMyBottonWidget(){
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        child: const Text("Click me"),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onPressed: (){

        },
      ),
    );
  }
  Widget _itemList({required String title, required String image}){
    return Container(
      color: Colors.redAccent,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image,  fit: BoxFit.cover,),
          SizedBox(height: 20),
          Text(title),
        ],
      ),
    );
  }
}
