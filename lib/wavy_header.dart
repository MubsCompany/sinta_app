
import 'package:flutter/cupertino.dart';

class WavyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      _buildWave(context),
    ]);
  }
}

Widget _buildWave(BuildContext context) {
  return Opacity(
    opacity: 0.15,
    child: Align(
      alignment: Alignment.topLeft,
      heightFactor: 0.75,
      widthFactor: 0.75,
      child:Image.asset('images/wave_screen.png',
        width: MediaQuery.of(context).size.width,
      fit: BoxFit.fill,),
    ),
  );
}