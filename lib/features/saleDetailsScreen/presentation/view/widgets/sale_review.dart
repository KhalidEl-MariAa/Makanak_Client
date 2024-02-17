import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class SaleRating extends StatefulWidget {
  const SaleRating({super.key});

  @override
  State<SaleRating> createState() => _SaleRatingState();
}
double initialRating=0;
class _SaleRatingState extends State<SaleRating> {
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: initialRating,
      minRating: 0,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 30.0,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        initialRating=rating;
        setState(() {
          
        });
      },
    );
  }
}