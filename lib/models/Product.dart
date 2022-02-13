import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, model, description, location, date;
  final List<String> images;
  final List<Color> colors;
  final double price;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    required this.date,
    required this.title,
    required this.price,
    required this.model,
    required this.description,
    required this.location
  });
}


List<Product> mobileProducts = [
  Product(
    id: 1,
    images: ["assets/images/iPhone11.png",],
    colors: [Colors.white],
    title: "Apple iPhone - Smartphone - Purple",
    price: 648.99,
    model: "IPhone 11 - 64GB",
    date: "24/09/2016",
    description: "The iPhone 11 display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 5.85 inches diagonally (actual viewable area is less).",
    location: "Cupertino",
  ),
  Product(
    id: 2,
    images: ["assets/images/SamSung.png"],
    colors: [Colors.white],
    title: "Samsung Galaxy - Sky Blue",
    price: 36.55,
    model: "M32 - 5G- 6GB RAM",
    date: "24/10/2010",
    description: "Samsung MediaTek, Versatile Quad camera,Knox security,5000mAh long-lasting battery with 15W in-box fast charger",
    location: "Japan",
  ),
  Product(
    id: 3,
    images: [
      "assets/images/iPhone13.png",
    ],
    colors: [Colors.white,],
    title: "Apple iPhone - M1Chip - Silver",
    price: 500.5,
    model: "IPhone 13pro - 256GB",
    date: "08/10/2020",
    description: "iPhone 13 Pro and iPhone 13 Pro Max share the same features. All-new Pro camera system for better low-light photos and videos, Cinematic mode, and macro photography.",
    location: "Cupertino",
  ),
  Product(
    id: 4,
    images: ["assets/images/SamSung.png"],
    colors: [Colors.white],
    title: "Samsung Galaxy - Sky Blue",
    price: 316.55,
    model: "M32 - 5G- 6GB RAM",
    date: "24/10/2010",
    description: "Samsung MediaTek, Versatile Quad camera,Knox security,5000mAh long-lasting battery with 15W in-box fast charger",
    location: "Japan",
  ),
];

List<Product> acProducts = [
  Product(
    id: 1,
    images: ["assets/images/Ac.png",],
    colors: [Colors.white,],
    title: "Blue Star 1 Ton Portable AC",
    price: 909.06,
    model: "PC12DB",
    date: "24/09/2016",
    description: "Air conditioning is a system used to cool down the temperature in an inside space by removing the existing heat and moisture from the room",
    location: "United States",
  ),
  Product(
    id: 2,
    images: ["assets/images/LG.png",],
    colors: [Colors.white,],
    title: "LG 1.5 Ton 5 Star AI DUAL Inverter",
    price: 505.5,
    model: "PS-Q19SWZF",
    date: "04/06/2020",
    description: "LG 1.5 Ton 5 Star AI DUAL Inverter Wi-Fi Split AC (Copper, Super Convertible 6-in-1 Cooling, 4 Way Swing, Anti Allergic Filter, 2022 Model, PS-Q19SWZF, White)",
    location: "America",
  ),
];

List<Product> laptopProducts = [
  Product(
    id: 1,
    images: ["assets/images/LapMac.png",],
    colors: [Colors.white,],
    title: "Lenovo",
    price: 105.99,
    model: "IdeaPad 3 14ITL6",
    date: "14/02/2019",
    description: "Lenovo IdeaPad 3 11th Gen Intel Core i5 14 FHD Thin & Light Laptop (16GB/512 GB SSD/Windows 11/Office 2021/Backlit/Fingerprint Reader/2 Yr Warranty/Arctic Grey/1.41Kg), 82H7016KIN",
    location: "India",
  ),
  Product(
    id: 2,
    images: ["assets/images/LapHP.png",],
    colors: [Colors.white,],
    title: "Apple MacBook Air Laptop",
    price: 550.5,
    model: "MacBook Air",
    date: "24/09/2020",
    description: "2020 Apple MacBook Air Laptop: Apple M1 chip, 13.3-inch/33.74 cm Retina Display, 8GB RAM, 256GB SSD Storage, Backlit Keyboard, FaceTime HD Camera, Touch ID. Works with iPhone/iPad; Space Grey",
    location: "Cupertino",
  ),
  Product(
    id: 3,
    images: ["assets/images/AirLap.png",],
    colors: [Colors.white,],
    title: "Acer",
    price: 326.55,
    model: "Swift 3",
    date: "20/05/2021",
    description: "Acer Swift 3 SF314-511 Intel EVO Thin and Light Laptop | 14 Full HD IPS | Intel Core i5-1135G7 Processor |8G| 512GB SSD| WiFi 6| Backlit Keyboard | Fingerprint Reader | Windows 11 | MS Office 2021",
    location: "India",
  ),
  Product(
    id: 4,
    images: ["assets/images/Acer.png",],
    colors: [Colors.white,],
    title: "HP Pavilion 14",
    price: 250.20,
    model: "14-dv1001TU",
    date: "02/01/2020",
    description: "HP Pavilion 14, Intel 11th Gen i5 16GB RAM/512GB SSD 14 inch(35.6 cm) Laptop, FHD IPS Anti-Glare Display/Iris X Graphics/Backlit KB/B&O Audio/Fingerprint Reader/Win 11/Thin & Light/1.41kg, 14-dv1001TU",
    location: "Cupertino",
  ),
];

List<Product> tvProducts = [
  Product(
    id: 1,
    images: ["assets/images/HDTv.png",],
    colors: [Colors.white,],
    title: "Apple Tv 4k",
    price: 1004.99,
    model: "Apple TV 4K - 5 series",
    date: "24/09/2020",
    description: "4K High Frame Rate HDR",
    location: "Cupertino",
  ),
  Product(
    id: 2,
    images: ["assets/images/TvH.png",],
    colors: [Colors.white,],
    title: "Hisense - 4K Ultra HD",
    price: 400.5,
    model: "43A6GE",
    date: "11/04/2018",
    description: "Hisense 108 cm (43 inches) 4K Ultra HD Smart Certified Android LED TV 43A6GE (Black) (2021 Model) | With Dolby Vision and ATMOS",
    location: "Australia",
  ),
];

List<Product> desktopProducts = [
  Product(
    id: 1,
    images: ["assets/images/iMac.png",],
    colors: [Colors.white,],
    title: "iMac with Retina 5K display",
    price: 2904.99,
    model: "Radeon Pro 5300",
    date: "24/09/2020",
    description: "3.1GHz 6-core 10th-generation Intel Core i5 processor, Turbo Boost up to 4.5GHz",
    location: "Cupertino",
  ),
  Product(
    id: 2,
    images: ["assets/images/LapMac.png",],
    colors: [Colors.white,],
    title: "Hisense - 4K Ultra HD",
    price: 1500.5,
    model: "43A6GE",
    date: "11/04/2018",
    description: "Hisense 108 cm (43 inches) 4K Ultra HD Smart Certified Android LED TV 43A6GE (Black) (2021 Model) | With Dolby Vision and ATMOS",
    location: "Australia",
  ),
  Product(
    id: 3,
    images: ["assets/images/DeskTop.png",],
    colors: [Colors.white,],
    title: "eAirtec",
    price: 1499.5,
    model: "43A6GE",
    date: "11/04/2018",
    description: "eAirtec 108 cm (43 inches) 4K Ultra HD Smart Certified Android LED TV 43A6GE (Black) (2021 Model) | With Dolby Vision and ATMOS",
    location: "Australia",
  ),
  Product(
    id: 3,
    images: ["assets/images/DeskTop.png",],
    colors: [Colors.white,],
    title: "eAirtec",
    price: 1499.5,
    model: "43A6GE",
    date: "11/04/2018",
    description: "eAirtec 108 cm (43 inches) 4K Ultra HD Smart Certified Android LED TV 43A6GE (Black) (2021 Model) | With Dolby Vision and ATMOS",
    location: "Australia",
  ),
];

