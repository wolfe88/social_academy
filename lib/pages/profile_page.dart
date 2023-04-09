// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_academy/helpers.dart';
import 'package:social_academy/theme.dart';
import 'package:social_academy/widgets/avatar.dart';
import 'package:social_academy/widgets/textfield.dart';

import '../constants/routes.dart';
import '../widgets/custom_image_view.dart';
import 'home_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool s1 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Container(
                  width: 180,
                  height: 180,
                  child: InkWell(
                    radius: 200,
                    onTap: () {
                      Navigator.of(context).pushNamed(avatarRoute);
                    },
                    child: CustomImageView(
                      imagePath: imageList[2] + ".png",
                      height: 48,
                      width: 48,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  "Kullanıcı Adı",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: MyTextField(
                    hintText: "İsiminiz",
                    containerColor: Colors.white,
                    textfieldTextColor: Colors.black,
                    hintColor: Colors.black,
                    borderRadius: 8),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: MyTextField(
                    hintText: "Soyisiminiz",
                    containerColor: Colors.white,
                    textfieldTextColor: Colors.black,
                    hintColor: Colors.black,
                    borderRadius: 8),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: MyTextField(
                    hintText: "Telefon Numaranız",
                    containerColor: Colors.white,
                    textfieldTextColor: Colors.black,
                    hintColor: Colors.black,
                    borderRadius: 8),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: MyTextField(
                    hintText: "e-Posta Adresiniz",
                    containerColor: Colors.white,
                    textfieldTextColor: Colors.black,
                    hintColor: Colors.black,
                    borderRadius: 8),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(16, 10, 16, 0),
                  alignment: Alignment.topLeft,
                  child: SwitchListTile(
                      activeColor: Colors.white,
                      value: s1,
                      onChanged: (bool value) {
                        setState(() {
                          s1 = value;
                        });
                      },
                      title: Text("Konumumu aktif et."))),
              Container(
                height: 200,
                constraints: BoxConstraints(
                  maxHeight: 300.0,
                ),
                margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  expands: true,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    border: InputBorder.none,
                    hintText: 'Bize kendinden bahset.',
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
