import 'package:flutter/material.dart';
import 'package:snackish/home/menu/menu_item/menu_item_description.dart';
import 'package:snackish/home/menu/menu_item/portion_size_widget.dart';
import 'package:snackish/home/menu/menu_item/quantity_selector_widget.dart';
import 'package:snackish/buttons/order_button.dart';
import 'package:snackish/models/menu.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snackish/theme.dart';


class MenuItemCard extends StatefulWidget {
  final Menu menu;
  final VoidCallback onClose;

  const MenuItemCard({super.key, required this.onClose, required this.menu});

  @override
  State<MenuItemCard> createState() => _MenuItemCardState();
}

class _MenuItemCardState extends State<MenuItemCard> {
  bool isFav = false;
  int quantity = 1;
  PortionSize selectedSize = PortionSize.small;
  bool showAddedMessage = false;

  @override
  Widget build(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;

    void toggleFav() {
      setState(() {
        isFav = !isFav;
      });
    
    }

    void increaseQuantity() {
      if (quantity < 10) {
        setState(() {
          quantity++;
        });
      }
    }

    void decreaseQuantity() {
      if (quantity > 1) {
        setState(() {
          quantity--;
        });
      }
    }

    void showAddedPopup() {
      setState(() {
        showAddedMessage = true;
      });
      Future.delayed(Duration(seconds: 2), () {
        if (mounted) {
          setState(() {
            showAddedMessage = false;
          });
        }
      });
    }
    
    return Stack(
      children: [
        // modular card behind
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: screenHeight * 7/8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0.0, 20.5),
                colors: [
                  Color.fromRGBO(47, 43, 34, 1),
                  Color.fromRGBO(67, 127, 151, 1),
            ]
          ),
            ),
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 32,
                  children: [

                    if (showAddedMessage) 
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.transparent, 
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withAlpha(5), 
                              blurRadius: 20,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: Center(
                          child: BodyLargeText("Added to Order!")
                        ),
                      ),
                    ),

                    // Portion Size and Quantity
                    Center(
                      child: SizedBox(
                        width: 340,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PortionSizeSelector(
                              selectedSize: selectedSize,
                              onSizeSelected: (newSize) {
                                setState(() {
                                  selectedSize = newSize;
                                });
                              },
                            ),

                            QuantitySelector(
                              quantity: quantity,
                              onDecrease: decreaseQuantity,
                              onIncrease: increaseQuantity,
                            ),
                          ],
                        ),
                      ),
                    ),
                    

                    // Button
                    Padding(
                      padding: const EdgeInsets.only(bottom: 55),
                      child: OrderButton(
                        width: 340,
                        title: "Add to order for €${(widget.menu.prices[selectedSize]! * quantity).toStringAsFixed(2)}",
                        action: () {
                          showAddedPopup(); 
                        },
                      )
                    ),
                  ],
                ),
                
                
              
          ),
        ),
        
        // Image
        Image.asset(widget.menu.imagePath),

        Positioned(
                top: 120,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,),
                  child: TextButton(
                    onPressed: widget.onClose, 
                    child: SvgPicture.asset('assets/icons/close_button_icon.svg', height: 30,))
                )),
        

        // Center Card
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Center(
            child: MenuItemDescription(
              isFav: isFav,
              widget: widget,
              selectedSize: selectedSize,
              onFavToggle: toggleFav, 
            ),
          ),
        ),
        
                  
      ],
    );
  }
}
