import 'package:flutter/material.dart';

class Mysliver extends StatefulWidget {
  const Mysliver({super.key});

  @override
  State<Mysliver> createState() => _MysliverState();
}

class _MysliverState extends State<Mysliver> {
  bool _stretch = true;
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              stretch: _stretch,
              onStretchTrigger: () async {
                // Triggers when stretching
              },
              // [stretchTriggerOffset] describes the amount of overscroll that must occur
              // to trigger [onStretchTrigger]
              //
              // Setting [stretchTriggerOffset] to a value of 300.0 will trigger
              // [onStretchTrigger] when the user has overscrolled by 300.0 pixels.
              stretchTriggerOffset: 300.0,
              expandedHeight: 200.0,
              flexibleSpace: const FlexibleSpaceBar(
                title: Text('SliverAppBar'),
                background: FlutterLogo(),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    color: index.isOdd ? Colors.white : Colors.black12,
                    height: 100.0,
                    child: Center(
                      child: Text('$index',
                          textAlign:  TextAlign.start),
                    ),
                  );
                },
                childCount: 20,
              ),
            ),





          ]
      ),

      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: OverflowBar(
            overflowAlignment: OverflowBarAlignment.center,
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('stretch'),
                  Switch(
                    onChanged: (bool val) {
                      setState(() {
                        _stretch = val;
                      });
                    },
                    value: _stretch,

                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('snap'),
                  Switch(
                    onChanged: (bool val) {
                      setState(() {
                        _snap = val;
                        // Snapping only applies when the app bar is floating.
                        _floating = _floating || _snap;
                      });
                    },
                    value: _snap,
                  ),
                ],
              ),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('snap'),
                  Switch(
                    onChanged: (bool val) {
                      setState(() {
                        _snap = val;
                        // Snapping only applies when the app bar is floating.
                        _floating = _floating || _snap;
                      });
                    },
                    value: _snap,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('pinned'),
                  Switch(
                    onChanged: (bool val) {
                      setState(() {
                        _pinned = val;
                      });
                    },
                    value: _pinned,
                  ),
                ],
              ),

            ],
          ),
        ),
      ),


    );
  }
}
