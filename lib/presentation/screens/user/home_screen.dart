import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/view/chosen_product_view.dart';
import 'package:magdsoft_flutter_structure/presentation/view/new_arrival_item_view.dart';
import 'package:magdsoft_flutter_structure/presentation/view/new_collection_card_view.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/medium_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                NewCollectionCardView(),
                SizedBox(height: 15,),
                MediumText(text: 'New Arrivals',fontSize: 18,),
                SizedBox(height: 10,),
                SizedBox(
                  height: 300,
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal ,
                      itemBuilder: (context,index) => NewArrivalItemView(),
                      separatorBuilder: (context,index) => SizedBox(width: 5,),
                      itemCount: 10,
                  ),
                ),
                SizedBox(height: 15,),
                NewCollectionCardView(),
                SizedBox(height: 15,),
                MediumText(text: 'ChosenProducts',fontSize: 18,),
                SizedBox(height: 15,),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 5,
                  childAspectRatio: 1 / 1.5,
                  children: List.generate(
                    10,
                        (index) => ChosenProductView()),
                  ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
