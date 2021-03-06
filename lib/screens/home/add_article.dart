import 'dart:io';

import 'package:b201_app/components/components.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddArticle extends StatelessWidget {
  const AddArticle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.only(left: 20),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/icons/back_icon.png'),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kategori',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5),
                DropdownCategory(),
                SizedBox(height: 20),
                Text(
                  'Judul',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5),
                Material(
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Isi',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5),
                Material(
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: TextField(
                      maxLines: 10,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Upload Gambar',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5),
                UploadImages(),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 48,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 3,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Text(
                      'Tambahkan',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                      ),
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
}

class DropdownCategory extends StatefulWidget {
  const DropdownCategory({Key? key}) : super(key: key);

  @override
  _DropdownCategoryState createState() => _DropdownCategoryState();
}

class _DropdownCategoryState extends State<DropdownCategory> {
  String dropdownValue = 'News';
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: Colors.grey,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: dropdownValue,
            isExpanded: true,
            icon: const Icon(Icons.arrow_downward),
            iconSize: 24,
            style: const TextStyle(color: Colors.black),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['News', 'Projects', 'Aslab']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class UploadImages extends StatefulWidget {
  const UploadImages({Key? key}) : super(key: key);

  @override
  _UploadImagesState createState() => _UploadImagesState();
}

class _UploadImagesState extends State<UploadImages> {
  var length = 1;
  var imgFile;
  List<File> imgListFile = [];

  Future pickImg(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    setState(() {
      if (pickedFile != null) {
        imgFile = File(pickedFile.path);
        imgListFile.add(imgFile);
        imgFile = null;
      }
    });
    return imgFile;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          // Display image in list
          if (imgListFile.isNotEmpty)
            for (File img in imgListFile)
              Container(
                  margin: EdgeInsets.only(right: 20),
                  height: double.infinity,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.file(img)),

          // Add image icon
          Container(
            margin: EdgeInsets.only(right: 20),
            height: double.infinity,
            width: 80,
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
                color: Colors.grey.withOpacity(0.5),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              onTap: () {
                pickImg(ImageSource.gallery);
              },
              child: Icon(
                Icons.add,
                size: 35,
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
