import 'package:flutter/material.dart';
import 'package:flutter_application_1/gshti/colorkan.dart';
import 'package:flutter_application_1/gshti/product.dart';

import 'productcard.dart';

class gshti extends StatelessWidget {
  const gshti({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: <Widget>[
          SizedBox(height: PADING / 2),
          Expanded(
            child: Stack(
              children: [
                ListView.builder(
                  itemCount: product.length,
                  itemBuilder: (context, index) => productcard(
                    itemIndex: index,
                    product: product[index],
                    size: size,
                    press: () {
                      /*
                      .push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => wany25(),
                          ));*/
                    },
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
