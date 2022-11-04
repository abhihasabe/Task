import 'package:assignment/features/data/model/user.dart';
import 'package:assignment/core/style/app_colors.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  ProfileWidget({Key? key, this.userModel}) : super(key: key);
  UserModel? userModel;

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  height: 250.0,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg"),
                          fit: BoxFit.cover))),
              const SizedBox(height: 50),
              Text(widget.userModel!.userName!,
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: primaryColor)),
              const SizedBox(height: 12),
              Card(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Text("Email :", style: TextStyle(fontSize: 18)),
                        const SizedBox(width: 34),
                        widget.userModel?.email != null
                            ? Text(widget.userModel!.email!,
                            style: Theme.of(context).textTheme.bodyLarge)
                            : const Text(""),
                      ],
                    ),
                  ),
                  const Divider(color: Colors.black38, thickness: 0.8),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Text("Phone :", style: TextStyle(fontSize: 18)),
                        const SizedBox(width: 30),
                        widget.userModel?.mNumber != null
                            ? Text(widget.userModel!.mNumber!,
                            style: Theme.of(context).textTheme.bodyLarge)
                            : const Text(""),
                      ],
                    ),
                  ),
                  const Divider(thickness: 0.8, color: Colors.black38),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Text("Gender :",
                            style: TextStyle(fontSize: 18)),
                        const SizedBox(width: 24),
                        widget.userModel?.gender != null
                            ? Text(widget.userModel!.gender!,
                            style: Theme.of(context).textTheme.bodyLarge)
                            : const Text(""),
                      ],
                    ),
                  ),
                  const Divider(thickness: 0.8, color: Colors.black38),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Text("DOB :", style: TextStyle(fontSize: 18)),
                        const SizedBox(width: 48),
                        widget.userModel?.dob! != null
                            ? Text(widget.userModel!.dob!,
                            style: Theme.of(context).textTheme.bodyLarge)
                            : const Text(""),
                      ],
                    ),
                  ),
                  const Divider(thickness: 0.8, color: Colors.black38),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Text("Education :",
                            style: TextStyle(fontSize: 18)),
                        const SizedBox(width: 48),
                        widget.userModel?.education != null
                            ? Text(widget.userModel!.education!,
                            style: Theme.of(context).textTheme.bodyLarge)
                            : const Text(""),
                      ],
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
        Positioned(
          top: 200.0, // (background container size) - (circle height / 2)
          child: Container(
            height: 100.0,
            width: 100.0,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg"),
                    fit: BoxFit.cover)),
          ),
        )
      ],
    );
  }
}
