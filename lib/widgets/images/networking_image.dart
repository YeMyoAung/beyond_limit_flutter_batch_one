import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class NetWorkImageExmaple extends StatefulWidget {
  const NetWorkImageExmaple({super.key});

  @override
  State<NetWorkImageExmaple> createState() => _NetWorkImageExmapleState();
}

class _NetWorkImageExmapleState extends State<NetWorkImageExmaple> {
  XFile? image;
  late Uint8List memory;

  @override
  Widget build(BuildContext context) {
    ///Image            = Provider (NetworkImage,AssetImage,FileImage,Memoryimage)
    ///Image.network
    ///Image.assest
    ///Image.memory
    ///Image.file
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          image = await ImagePicker().pickImage(source: ImageSource.gallery);
          if (image != null) memory = await image!.readAsBytes();
          setState(() {});
        },
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image(
          // repeat: ImageRepeat.repeat,
          // image: NetworkImage(
          //   "https://cdn.discordapp.com/attachments/1032886971749630033/1177519004982706176/IMG_6344.jpg?ex=657c0788&is=65699288&hm=23cad5602768cc8e074f0a91904f963ea2e7807ae028c0527eac097f620e5d43&",
          // ),
          // frameBuilder: (ctx, image, fram, sys) {
          //   print("Frame $fram");
          //   print("Sys $sys");
          //   print("Child  $image");
          //   // return child;
          //   return image;
          // },
          // image: (image == null
          //     ? AssetImage("lib/assets/images/IMG_6343.jpg")
          //     : FileImage(File(image!.path))) as ImageProvider,

          image: (image == null
              ? AssetImage("lib/assets/images/IMG_6343.jpg")
              : MemoryImage(memory)) as ImageProvider,

          // image: FileImage(File()),

          loadingBuilder: (ctx, child, chunk) {
            print("Chunk $chunk");
            if (chunk == null) {
              return child;
            }
            return CupertinoActivityIndicator();
          },
          errorBuilder: (ctx, errr, str) {
            print("Error $errr");
            print("Strack Trace $str");
            return Icon(Icons.error);
          },
        ),
      ),
      // body: Image.network(src),
    );
  }
}
