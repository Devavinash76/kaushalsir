import 'package:flutter/cupertino.dart';
import 'package:kaushalsir/model/intro_model.dart';

class IntroView extends StatelessWidget {
  final IntroModel introModel;

  const IntroView({Key? key, required this.introModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width -35,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    introModel.assetsImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            )),

        Expanded(
            child: Text(introModel.titleText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            )),
        const Expanded(
            flex: 1,
            child: SizedBox(),)
      ],
    );
  }
}
