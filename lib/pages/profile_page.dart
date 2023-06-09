// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:social_academy/theme.dart';
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
          color: Color.fromARGB(252, 241, 204, 91),
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 10, color: Colors.white),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  width: 200,
                  height: 200,
                  child: InkWell(
                    radius: 200,
                    onTap: () {
                      Navigator.of(context).pushNamed(avatarRoute);
                    },
                    child: CustomImageView(
                      imagePath: imageList[24] + ".png",
                      height: 48,
                      width: 48,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Container(
                  alignment: Alignment.center,
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 6, color: Colors.white),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "AkademiKullanıcısı",
                    style: TextStyle(
                      fontSize: 30,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                child: MyTextField(
                    hintText: "İsim",
                    containerColor: Colors.white,
                    textfieldTextColor: AppColors.black,
                    hintColor: AppColors.black,
                    borderRadius: 8),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: MyTextField(
                    hintText: "Soyisim",
                    containerColor: Colors.white,
                    textfieldTextColor: Colors.black,
                    hintColor: Colors.black,
                    borderRadius: 8),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: MyTextField(
                    hintText: "Telefon Numarası",
                    containerColor: Colors.white,
                    textfieldTextColor: Colors.black,
                    hintColor: Colors.black,
                    borderRadius: 8),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: MyTextField(
                    hintText: "E-Posta Adresiniz",
                    containerColor: Colors.white,
                    textfieldTextColor: Colors.black,
                    hintColor: Colors.black,
                    borderRadius: 8),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: SwitchListTile(
                      activeColor: AppColors.secondary,
                      value: s1,
                      onChanged: (bool value) {
                        setState(() {
                          s1 = value;
                        });
                      },
                      title: Text(
                        "Konumumu Aktif Et",
                        style: TextStyle(color: AppColors.black),
                      ))),
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
                    hintText: 'Bize Kendinden Bahset...',
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
