import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidget();
}

class _ButtonWidget extends State<ButtonWidget> {
  bool isAddedToCart = false;
  bool isFavorite = false;

  void cartPress() {
    setState(() {
      isAddedToCart = !isAddedToCart;
      if (isAddedToCart) {
        isFavorite = false;
      }
    });
  }

  void favoritePress() {
    setState(() {
      isFavorite = !isFavorite;
      if (isFavorite) {
        isAddedToCart = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 142,
          height: 50,
          child: isAddedToCart
              ? FilledButton(
            onPressed: cartPress,
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFF13804D),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text('Added to Cart'),
          )
              : OutlinedButton(
            onPressed: cartPress,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFF13804D),
              side: const BorderSide(color: Color(0xFF13804D)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text('Add to Cart'),
          ),
        ),
        const SizedBox(width: 8.0),


        SizedBox(
          width: 142,
          height: 50,
          child: isFavorite
              ? FilledButton(
            onPressed: favoritePress,
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFFE52525),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text('Favorited'),
          )
              : OutlinedButton(
            onPressed: favoritePress,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFF8B1E1E),
              side: const BorderSide(color: Color(0xFF8B1E1E)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text('Favorite'),
          ),
        ),
      ],
    );
  }
}