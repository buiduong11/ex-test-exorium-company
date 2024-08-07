import 'package:ex_test/share/constant/colors.dart';
import 'package:ex_test/share/constant/image_contants.dart';
import 'package:ex_test/share/utils/custom_text.dart';
import 'package:ex_test/share/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:ex_test/share/widgets/custom_image_view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeader(),
              _buildBanner(),
              _buildJokeContent(),
              _buildActionButtons(),
              const Divider(),
              _buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildLogo(ImageConstant.imgHeaderLeft),
          Row(
            children: [
              _buildAuthorInfo(),
              _buildLogo('assets/images/hi.png'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLogo(String imgPath) {
    return CustomImageView(
      imagePath: imgPath,
      height: 50.v,
      width: 50.h,
    );
  }

  Widget _buildAuthorInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Handicrafted by',
          style: CustomTextStyles.textAppbarRight,
        ),
        Text(
          'Jim HSL',
          style: CustomTextStyles.textAppbarRight1,
        ),
      ],
    );
  }

  Widget _buildBanner() {
    return Container(
      width: double.infinity,
      height: 160.v,
      color: ColorConstants.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'A joke a day keeps the doctor away',
            style: CustomTextStyles.textHeader1,
          ),
          SizedBox(height: 25.v),
          Text(
            'If you joke wrong way, your teeth have to pay. (Serious)',
            style: CustomTextStyles.textHeader2,
          ),
        ],
      ),
    );
  }

  Widget _buildJokeContent() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 60, 30, 100),
      child: Text(
        'A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."',
        style: CustomTextStyles.textBody,
      ),
    );
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildButton(
            'This is Funny!',
            ColorConstants.nearlyDarkBlue,
          ),
          _buildButton(
            'This is not Funny.',
            ColorConstants.green,
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String text, Color color) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: CustomTextStyles.textElevatedButton,
      ),
    );
  }

  Widget _buildFooter() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 50),
      child: Column(
        children: [
          Text(
            'This app is created as part of Hlsolutions program. The materials contained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the information contained on this site.',
            style: CustomTextStyles.textBottom1,
          ),
          SizedBox(height: 16.h),
          Text(
            'Copyright 2021 HLS',
            style: CustomTextStyles.textBottom2,
          ),
        ],
      ),
    );
  }
}
