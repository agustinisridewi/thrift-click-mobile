import 'package:flutter/material.dart';
import 'package:thrift_click/models/product_entry.dart';

class DetailProductPage extends StatelessWidget {
  final Product product;

  const DetailProductPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
        backgroundColor: const Color(0xff59A5D8),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display a placeholder image or product image
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              const SizedBox(height: 16),

              // Product name
              Text(
                product.fields.name,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),

              // Product price
              Text(
                'Price: \$${product.fields.price}',
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 175, 96, 76),
                ),
              ),
              const SizedBox(height: 16),

              // Product description
              const Text(
                "Description:",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                product.fields.description,
                style: const TextStyle(fontSize: 16.0),
              ),

              const SizedBox(height: 24),

              // Additional button (e.g., Add to Cart or Back)
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Go back to the previous screen
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff59A5D8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 12.0,
                    ),
                  ),
                  child: const Text(
                    "Go Back",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
