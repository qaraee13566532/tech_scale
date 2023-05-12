import 'package:flutter/material.dart';
import 'package:tech_scale/utils/constant.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: kSearchBoxDecoration,
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.all(5),
          child: TextField(
            autofocus: true,
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(

              suffixIcon: Icon(Icons.search),
              suffixIconColor: Color(0xff3d6499),

              filled: true,
              fillColor: Colors.white,
              hoverColor: Colors.white,
              hintText: '  Enter a number,name or description...',
              hintStyle: TextStyle(fontSize: 14),
              contentPadding: EdgeInsets.only(bottom: 15, left: 10),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Color(0xff3d6499)),
              ),

              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xff3d6499),
                ),
              ),
              border: OutlineInputBorder(),

            ),
          ),
        ),
      ),
    );
  }
}
