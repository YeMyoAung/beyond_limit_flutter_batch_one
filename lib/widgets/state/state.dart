import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class StateExample extends StatefulWidget {
  const StateExample({super.key});

  @override
  State<StateExample> createState() => _StateExampleState();
}

class _StateExampleState extends State<StateExample> {
  String value = '';
  final List<String> videoLists = [
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4"
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VidePlayerWidgetWithState(
        key: ValueKey(index),
        url: videoLists[index],
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              print("Previous ${videoLists[index]}");
              index = (index + 1) % videoLists.length;
              print("Next ${videoLists[index]}");

              setState(() {});
            },
            icon: Icon(Icons.skip_next),
          )
        ],
      ),
    );
  }
}

class VidePlayerWidgetWithState extends StatefulWidget {
  final String url;
  const VidePlayerWidgetWithState({super.key, required this.url});

  @override
  State<VidePlayerWidgetWithState> createState() =>
      _VidePlayerWidgetWithStateState();
}

class _VidePlayerWidgetWithStateState extends State<VidePlayerWidgetWithState> {
  late VideoPlayerController controller;
  bool isInitialized = false;

  @override
  void initState() {
    super.initState();
    setupVideo();
  }

  Future<void> setupVideo() async {
    setState(() {
      isInitialized = false;
    });
    controller = VideoPlayerController.networkUrl(Uri.parse(
      widget.url,
    ));

    await controller.initialize();
    setState(() {
      isInitialized = true;
    });
    controller.play();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant VidePlayerWidgetWithState oldWidget) {
    print("Update ${oldWidget.url} ${widget.url}");
    if (oldWidget.url != widget.url) {
      setupVideo();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isInitialized
            ? VideoPlayer(controller)
            : CircularProgressIndicator(),
      ),
    );
  }
}




// class VidePlayerWidget extends StatefulWidget {
//   final String value;
//   const VidePlayerWidget({super.key, required this.value});

//   @override
//   State<VidePlayerWidget> createState() => _VidePlayerWidgetState();
// }

// class _VidePlayerWidgetState extends State<VidePlayerWidget> {
//   late final String value;
//   @override
//   void initState() {
//     super.initState();
//     print("initState");
//     value = DateTime.now().toString();
//   }

//   @override
//   void setState(VoidCallback fn) {
//     print("SetState");
//     if (mounted) super.setState(fn);
//   }

//   ///operator
//   @override
//   void didUpdateWidget(covariant VidePlayerWidget oldWidget) {
//     print("didUpdateWidget");
//     super.didUpdateWidget(oldWidget);
//   }

//   @override
//   void dispose() {
//     print("Dispose $value");
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("Build");
//     return Scaffold(
//       body: Center(
//         child: TextField(),
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () {
//         setState(() {});
//       }),
//     );
//   }
// }
