import 'package:flutter/material.dart';

class RouteScreen extends StatefulWidget {
  final String title;
  final String? data;
  final void Function(BuildContext)? onTap;
  const RouteScreen({
    super.key,
    required this.title,
    this.onTap,
    this.data,
  });

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  @override
  void initState() {
    super.initState();
    print("Init ${widget.title}");
  }

  @override
  void dispose() {
    print("Dispose ${widget.title}");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            widget.onTap?.call(context);
          },
          child: Text(
            widget.data ??
                ModalRoute.of(context)?.settings.arguments.toString() ??
                "NA",
          ),
        ),
      ),
    );
  }
}

class PopRouteScreen extends StatefulWidget {
  final String title;
  final String? data;
  final void Function(BuildContext)? onTap;
  const PopRouteScreen({
    super.key,
    required this.title,
    this.onTap,
    this.data,
  });

  @override
  State<PopRouteScreen> createState() => _PopRouteScreenState();
}

class _PopRouteScreenState extends State<PopRouteScreen> {
  @override
  void initState() {
    super.initState();
    print("Init ${widget.title}");
  }

  @override
  void dispose() {
    print("Dispose ${widget.title}");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            if (widget.onTap != null) {
              widget.onTap?.call(context);
            } else {
              Navigator.of(context).pop();
            }
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(widget.title),
      ),
    );
  }
}
