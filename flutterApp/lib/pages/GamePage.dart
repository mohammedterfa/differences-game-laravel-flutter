import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game/controllers/GameController.dart';
import 'package:game/utils/colors.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart' as badges;

class GamePage extends GetView<GameController> {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GameAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const GameHeader(),
              const SizedBox(height: 20),
              GameImage(controller: controller),
              const SizedBox(height: 20),
              GameImage(controller: controller),
              const SizedBox(height: 40),
              const GameFooter(),
              const SizedBox(height: 20),
              const Text("ADS Placeholder"),
            ],
          ),
        ),
      ),
    );
  }
}

class GameFooter extends StatelessWidget {
  const GameFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        badges.Badge(
          badgeStyle: badges.BadgeStyle(
            badgeColor: Mycolors.bluedark,
          ),
          badgeContent: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 10,
            child: Text(
              "10",
              style: TextStyle(fontSize: 12),
            ),
          ),
          position: badges.BadgePosition.topEnd(top: -8, end: -8),
          child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Mycolors.blueBFD,
                child: SvgPicture.asset(
                  'assets/icons/coin.svg',
                ),
              )),
        ),
        badges.Badge(
          badgeStyle: badges.BadgeStyle(
            badgeColor: Mycolors.bluedark,
          ),
          badgeContent: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 10,
            child: Text(
              "AD",
              style: TextStyle(fontSize: 12),
            ),
          ),
          position: badges.BadgePosition.topEnd(top: -8, end: -8),
          child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Mycolors.blueBFD,
                child: SvgPicture.asset(
                  'assets/icons/bulb.svg',
                ),
              )),
        ),
      ],
    );
  }
}

class GameHeader extends StatelessWidget {
  const GameHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: SvgPicture.asset(
              'assets/icons/heart.svg',
              height: 20,
              color: Color.fromARGB(255, 199, 11, 11),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: SvgPicture.asset(
              'assets/icons/heart.svg',
              height: 20,
              color: Color.fromARGB(255, 199, 11, 11),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: SvgPicture.asset(
              'assets/icons/heart.svg',
              height: 20,
              color: Color.fromARGB(255, 199, 11, 11),
            ),
          ),
          const Spacer(),
          const Column(
            children: [
              Text(
                "Category Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Level Name"),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/coin.svg',
                width: 30,
              ),
              const Text("50")
            ],
          ),
        ],
      ),
    );
  }
}

class GameImage extends StatelessWidget {
  const GameImage({
    super.key,
    required this.controller,
  });

  final GameController controller;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: InteractiveViewer(
        transformationController: controller.transformationController,
        child: GestureDetector(
          onTap: () {},
          child: CachedNetworkImage(
            imageUrl:
                "https://img.freepik.com/free-vector/cars-driving-night-mountain-highway-rear-view_107791-14615.jpg?w=1800&t=st=1696351400~exp=1696352000~hmac=20d405f5560acdc9ae23c7b2afb4628fd66391be54da698e43859237e5230fde",
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}

class GameAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GameAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Mycolors.bluedark,
        ),
      ),
      title: SizedBox(
        width: double.infinity,
        height: 50,
        child: Center(
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const SizedBox(
                    width: 8,
                  ),
              separatorBuilder: (context, index) {
                if (index <= 0) {
                  return CircleAvatar(
                    backgroundColor: Mycolors.green,
                    radius: 12,
                    child: SvgPicture.asset(
                      'assets/icons/check.svg',
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  );
                }
                ;
                return CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 151, 156, 155),
                  radius: 12,
                  child: SvgPicture.asset('assets/icons/questionMark.svg'),
                );
              },
              itemCount: 8),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.pause,
            color: Mycolors.bluedark,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
