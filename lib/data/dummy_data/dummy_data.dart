import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flexi/features/personalization/models/user_model.dart';
import 'package:flexi/features/shop/models/banner_model.dart';
import 'package:flexi/features/shop/models/brand_category_model.dart';
import 'package:flexi/features/shop/models/brand_model.dart';
import 'package:flexi/features/shop/models/category_model.dart';
import 'package:flexi/features/shop/models/product_attribute_model.dart';
import 'package:flexi/features/shop/models/product_category_model.dart';
import 'package:flexi/features/shop/models/product_model.dart';
import 'package:flexi/features/shop/models/product_variation_model.dart';
import 'package:flexi/routes/routes.dart';
import 'package:flexi/utils/constants/enums.dart';
import 'package:flexi/utils/constants/image_strings.dart';

class DummyData {
  // Banners
  static final List<BannerModel> banners = [
    BannerModel(
        number: '1',
        image: CImages.promoBannerTwo,
        isActive: true,
        targetScreen: RRoutes.store),
    BannerModel(
        number: '2',
        image: CImages.promoBannerThree,
        isActive: true,
        targetScreen: RRoutes.store),
    BannerModel(
        number: '3',
        image: CImages.promoBannerFour,
        isActive: false,
        targetScreen: RRoutes.store),
    BannerModel(
        number: '4',
        image: CImages.promoBannerFive,
        isActive: true,
        targetScreen: RRoutes.store),
    BannerModel(
        number: '5',
        image: CImages.promoBannerSix,
        isActive: true,
        targetScreen: RRoutes.store),
  ];

  // User
  static final UserModel user = UserModel(
      id: '1',
      username: '',
      email: 'mustafanedeer1@gmail.com',
      firstName: 'Mustafa',
      lastName: 'Nedeer',
      phoneNumber: '01003051290',
      profilePicture: '');

  // Cart

  // List of all categories
  static final List<CategoryModel> categories = [
    CategoryModel(
        id: '1', name: 'Sports', image: CImages.sportsIcon, isFeatured: true),
    CategoryModel(
        id: '2',
        name: 'Furniture',
        image: CImages.furnitureIcon,
        isFeatured: true),
    CategoryModel(
        id: '3',
        name: 'Electronics',
        image: CImages.electronicsIcon,
        isFeatured: true),
    CategoryModel(
        id: '4', name: 'Clothes', image: CImages.clothesIcon, isFeatured: true),
    CategoryModel(
        id: '5', name: 'Animals', image: CImages.animalsIcon, isFeatured: true),
    CategoryModel(
        id: '6', name: 'Shoes', image: CImages.shoesIcon, isFeatured: true),
    CategoryModel(
        id: '7',
        name: 'Cosmetics',
        image: CImages.cosmeticsIcon,
        isFeatured: true),
    CategoryModel(
        id: '8',
        name: 'Jewelery',
        image: CImages.jewelryIcon,
        isFeatured: true),

    // Subcategories
    // Sports
    CategoryModel(
        id: '9',
        parentId: '1',
        name: 'Sport Shoes',
        image: CImages.sportsIcon,
        isFeatured: false),
    CategoryModel(
        id: '10',
        parentId: '1',
        name: 'Track Suits',
        image: CImages.sportsIcon,
        isFeatured: false),
    CategoryModel(
        id: '11',
        parentId: '1',
        name: 'Sports Equipments',
        image: CImages.sportsIcon,
        isFeatured: false),

    // furniture
    CategoryModel(
        id: '12',
        parentId: '2',
        name: 'Bedroom Furniture',
        image: CImages.furnitureIcon,
        isFeatured: false),
    CategoryModel(
        id: '13',
        parentId: '2',
        name: 'Kitchen Furniture',
        image: CImages.furnitureIcon,
        isFeatured: false),
    CategoryModel(
        id: '14',
        parentId: '2',
        name: 'Office Furniture',
        image: CImages.furnitureIcon,
        isFeatured: false),

    // electronics
    CategoryModel(
        id: '15',
        name: 'Mobile',
        image: CImages.electronicsIcon,
        isFeatured: false,
        parentId: '3'),
    CategoryModel(
        id: '16',
        name: 'Laptops',
        image: CImages.electronicsIcon,
        isFeatured: false,
        parentId: '3'),
    CategoryModel(
        id: '17',
        name: 'Apple',
        image: CImages.electronicsIcon,
        isFeatured: false,
        parentId: '3'),

    // Clothes
    CategoryModel(
        id: '18',
        parentId: '4',
        name: 'Casual',
        image: CImages.clothesIcon,
        isFeatured: false),
    CategoryModel(
        id: '19',
        parentId: '4',
        name: 'Formal',
        image: CImages.clothesIcon,
        isFeatured: false),
    CategoryModel(
        id: '20',
        parentId: '4',
        name: 'Kids',
        image: CImages.clothesIcon,
        isFeatured: false),

    // Animals
    CategoryModel(
        id: '21',
        parentId: '5',
        name: 'Animal Food',
        image: CImages.animalsIcon,
        isFeatured: false),
    CategoryModel(
        id: '22',
        parentId: '5',
        name: 'Animal Toys',
        image: CImages.animalsIcon,
        isFeatured: false),
    CategoryModel(
        id: '23',
        parentId: '5',
        name: 'Animal Accesories',
        image: CImages.animalsIcon,
        isFeatured: false),

    // Shoes
    CategoryModel(
        id: '24',
        parentId: '6',
        name: 'Athletic Shoes',
        image: CImages.shoesIcon,
        isFeatured: false),
    CategoryModel(
        id: '25',
        parentId: '6',
        name: 'Casual Shoes',
        image: CImages.shoesIcon,
        isFeatured: false),
    CategoryModel(
        id: '26',
        parentId: '6',
        name: 'Dress Shoes',
        image: CImages.shoesIcon,
        isFeatured: false),

    // Cosmetics
    CategoryModel(
        id: '27',
        parentId: '7',
        name: 'Skincare',
        image: CImages.cosmeticsIcon,
        isFeatured: false),

    CategoryModel(
        id: '28',
        parentId: '7',
        name: 'Makeup',
        image: CImages.cosmeticsIcon,
        isFeatured: false),

    CategoryModel(
        id: '29',
        parentId: '7',
        name: 'Fragrances',
        image: CImages.cosmeticsIcon,
        isFeatured: false),

    // Jewelery
    CategoryModel(
        id: '30',
        parentId: '8',
        name: 'Necklaces',
        image: CImages.jewelryIcon,
        isFeatured: false),

    CategoryModel(
        id: '31',
        parentId: '8',
        name: 'Rings',
        image: CImages.jewelryIcon,
        isFeatured: false),

    CategoryModel(
        id: '32',
        parentId: '8',
        name: 'Bracelets',
        image: CImages.jewelryIcon,
        isFeatured: false),

    // Toys
    CategoryModel(
        id: '33', name: 'Toys', image: CImages.toysIcon, isFeatured: false),
  ];

  // Brands
  static final List<BrandModel> brands = [
    BrandModel(
        id: '1',
        image: CImages.nikeLogo,
        name: 'Nike',
        productsCount: 265,
        isFeatured: true),
    BrandModel(
        id: '2',
        image: CImages.adidasLogo,
        name: 'Adidas',
        productsCount: 301,
        isFeatured: true),
    BrandModel(
        id: '3',
        image: CImages.kenwoodLogo,
        name: 'Kenwood',
        productsCount: 78,
        isFeatured: false),
    BrandModel(
        id: '4',
        image: CImages.ikeaLogo,
        name: 'IKEA',
        productsCount: 90,
        isFeatured: false),
    BrandModel(
        id: '5',
        image: CImages.appleLogo,
        name: 'Apple',
        productsCount: 270,
        isFeatured: true),
    BrandModel(
        id: '6',
        image: CImages.acerLogo,
        name: 'Acer',
        productsCount: 28,
        isFeatured: false),
    BrandModel(
        id: '7',
        image: CImages.jordanLogo,
        name: 'Jordan',
        productsCount: 13,
        isFeatured: false),
    BrandModel(
        id: '8',
        image: CImages.pumaLogo,
        name: 'Puma',
        productsCount: 125,
        isFeatured: true),
    BrandModel(
        id: '9',
        image: CImages.zaraLogo,
        name: 'ZARA',
        productsCount: 90,
        isFeatured: true),
    BrandModel(
        id: '10',
        image: CImages.samsungLogo,
        name: 'Samsung',
        productsCount: 67,
        isFeatured: true),
    BrandModel(
        id: '11',
        image: CImages.nuloLogo,
        name: 'Nulo',
        productsCount: 125,
        isFeatured: true),
    BrandModel(
        id: '12',
        image: CImages.legoLogo,
        name: 'Lego',
        productsCount: 67,
        isFeatured: true),
    BrandModel(
        id: '13',
        image: CImages.cbLogo,
        name: 'CB Accessories',
        productsCount: 12,
        isFeatured: true),
    BrandModel(
        id: '14',
        image: CImages.diorLogo,
        name: 'Dior',
        productsCount: 6,
        isFeatured: true),
    BrandModel(
        id: '15',
        image: CImages.olayLogo,
        name: 'Olay',
        productsCount: 9,
        isFeatured: true),
    BrandModel(
        id: '16',
        image: CImages.gucciLogo,
        name: 'Gucci',
        productsCount: 19,
        isFeatured: true),
    BrandModel(
        id: '17',
        image: CImages.tiffanyLogo,
        name: 'Tiffany & Co',
        productsCount: 9,
        isFeatured: true),
    BrandModel(
        id: '18',
        image: CImages.filaLogo,
        name: 'Fila',
        productsCount: 12,
        isFeatured: true),
  ];

  // Products
  static final List<ProductModel> products = [
    // 001
    ProductModel(
        id: '1',
        title:
            'SAMSUNG 16" Galaxy Book4 Pro Laptop PC Computer, Intel Core 7 Ultra Processor 1TB',
        categoryId: '3',
        stock: 5,
        price: 1740,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.samsungLaptop_1,
        description: '''
              POWER FOR YOUR MOST PRODUCTIVE DAYS: Breeze through every task 
              with a powerful Intel processor; Intel Core Ultra 7 processor 155H; 
              Enhanced with AI Intel ARC Graphics
            ''',
        brand: BrandModel(
            id: '10',
            image: CImages.samsungLogo,
            name: 'Samsung',
            productsCount: 10,
            isFeatured: true), // Samsung
        images: [
          CImages.samsungLaptop_1,
          CImages.samsungLaptop_2,
          CImages.samsungLaptop_3,
        ],
        salePrice: 1700,
        sku: 'AAR5523',
        productType: ProductType.single.toString()),

    // 002
    ProductModel(
        id: '2',
        title: "4 color women's boot",
        categoryId: '4',
        stock: 15,
        price: 221,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.productImage1_2,
        description:
            'An amazing boot for women that can be helpful for winter and aslo good for summer sometimes.',
        brand: BrandModel(
            id: '9',
            image: CImages.zaraLogo,
            name: 'Zara',
            productsCount: 265,
            isFeatured: true), // Zara
        images: [
          CImages.productImage1_1,
          CImages.productImage1_2,
          CImages.productImage1_3,
          CImages.productImage1_4,
        ],
        sku: 'ABR4568',
        productAttributes: [
          // Color and Size
          ProductAttributeModel(
              name: 'Color', values: ['Pink', 'Blue', 'Brown', 'Red']),
          ProductAttributeModel(
              name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
        ],
        productVariations: [
          // Each Combination
          // Pink
          ProductVariationModel(
              id: '1',
              stock: 34,
              price: 134,
              salePrice: 99,
              image: CImages.productImage1_1,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Pink', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '2',
              stock: 34,
              price: 134,
              salePrice: 130,
              image: CImages.productImage1_1,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Pink', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '3',
              stock: 34,
              price: 134,
              salePrice: 122,
              image: CImages.productImage1_1,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Pink', 'Size': 'EU 34'}),

          // Color: Blue
          ProductVariationModel(
              id: '4',
              stock: 12,
              price: 134,
              salePrice: 99,
              image: CImages.productImage1_2,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Blue', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '5',
              stock: 12,
              price: 134,
              salePrice: 130,
              image: CImages.productImage1_2,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Blue', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '6',
              stock: 12,
              price: 134,
              salePrice: 122,
              image: CImages.productImage1_2,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Blue', 'Size': 'EU 34'}),

          // Brown
          ProductVariationModel(
              id: '7',
              stock: 30,
              price: 134,
              salePrice: 100,
              image: CImages.productImage1_3,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Brown', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '8',
              stock: 34,
              price: 134,
              salePrice: 130,
              image: CImages.productImage1_3,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Brown', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '9',
              stock: 0,
              price: 134,
              salePrice: 122,
              image: CImages.productImage1_3,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Brown', 'Size': 'EU 34'}),

          // Red
          ProductVariationModel(
              id: '10',
              stock: 0,
              price: 134,
              salePrice: 134,
              image: CImages.productImage1_4,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Pink', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '11',
              stock: 0,
              price: 134,
              salePrice: 132,
              image: CImages.productImage1_4,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Red', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '12',
              stock: 4,
              price: 134,
              salePrice: 120,
              image: CImages.productImage1_4,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Red', 'Size': 'EU 34'}),
        ],
        productType: ProductType.variable.toString()),

    // 003
    ProductModel(
        id: '3',
        title:
            "Adidas Launches Predator Mania 19.1 'White/Core Black/Predator Red'",
        categoryId: '6',
        stock: 3,
        price: 112,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.adidasBootsThumbail,
        description:
            "There's no doubt that the Predator Mania is one of the most iconic boots of all time, the seamless blending of two materials reflect Predator's historic transition from K-leather to adidas Primeknit; Heritage details include the Predator Mania's distinctive curved forefoot pads and debossing on the sides",
        brand: BrandModel(
            id: '2',
            image: CImages.adidasLogo,
            name: 'Adidas',
            productsCount: 34,
            isFeatured: true), // Nike
        images: [CImages.adidasBootsThumbail, CImages.adidasBootsImage],
        salePrice: 90,
        sku: 'ABR4500',
        productType: ProductType.single.toString()),

    // 004
    ProductModel(
        id: '4',
        title: "Gaming Headset for PS5, PS4, PC, Mac, Switch, and Xbox Series",
        description: '''
          Gaming headset with mic wired feature a 50mm dynamic 
          driver and a PET material large diaphragm. They effectively 
          reproduce game audio, providing an immersive gaming experience 
          where every footstep and gunshot can be captured from all directions. 
          The gaming headphones with mic include a scroll volume adjuster and 
          a one-click mute function for easy volume control. With 6.9-foot braided cables, 
          ensuring a stable power supply and preventing cable tangling.
        ''',
        stock: 3,
        price: 22,
        salePrice: 19,
        isFeatured: true,
        categoryId: '3',
        date: Timestamp.now(),
        thumbnail: CImages.samsungHeadphones,
        brand: BrandModel(
            id: '10',
            image: CImages.samsungLogo,
            name: 'Samsung',
            productsCount: 30,
            isFeatured: true), // Samsung

        images: [
          CImages.samsungHeadphones,
        ],
        productType: ProductType.single.toString()),

    // 005
    ProductModel(
        id: '5',
        title:
            "Galaxy A15 5G A Series Cell Phone, 128GB Unlocked Android Smartphone",
        stock: 13,
        price: 165,
        categoryId: '3',
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.samsungGalaxy_1,
        description: '''
              YOUR CONTENT, SUPERSMOOTH: Whether watching shows, 
              playing games or reading online, the ultra-clear, 
              superfluid display of Galaxy A25 5G brings your content to life; Plus, Vision Booster 
              lets you to enjoy the bright 800-nits screen experience
            ''',
        brand: BrandModel(
            id: '10',
            image: CImages.samsungLogo,
            name: 'Samsung',
            productsCount: 3,
            isFeatured: true), // Samsung
        images: [
          CImages.samsungGalaxy_1,
          CImages.samsungGalaxy_2,
          CImages.samsungGalaxy_3
        ],
        salePrice: 160,
        sku: 'ABR4510',
        productType: ProductType.single.toString()),

    // 006
    ProductModel(
        id: '6',
        title: "Galaxy Tab A9+ Plus 11” 64GB Android Tablet",
        stock: 7,
        categoryId: '3',
        price: 155,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.samsungTab_1,
        description: '''
              BIG SCREEN. FAMILY-SIZED FUN: Bring fun home to everyone with a bright, 
              engaging 11" screen¹ ; A refresh rate of up to 90Hz makes every experience feel smooth — 
              great for videos, games or fun time for the kids
            ''',
        brand: BrandModel(
            id: '10',
            image: CImages.samsungLogo,
            name: 'Samsung',
            productsCount: 7,
            isFeatured: true), // Samsung
        images: [
          CImages.samsungTab_1,
          CImages.samsungTab_2,
          CImages.samsungTab_3
        ],
        salePrice: 150,
        sku: 'ABR5510',
        productType: ProductType.single.toString()),

    // 007
    ProductModel(
        id: '7',
        title: 'SAMSUNG 34" ViewFinity S50GC Series Ultra-WQHD Monitor',
        stock: 9,
        categoryId: '3',
        price: 940,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.samsungViewInfinity_1,
        description: '''
              5K RESOLUTION: 5K provides more pixels than 4K, with 218 PPI for incredible detail; 
              99% DCI-P3 delivers color saturation to bring your ideas to vibrant life, and 
              factory-calibrated color accuracy (ΔE < 2) delivers true color representation.
            ''',
        brand: BrandModel(
            id: '10',
            image: CImages.samsungLogo,
            name: 'Samsung',
            productsCount: 10,
            isFeatured: true), // Samsung
        images: [
          CImages.samsungViewInfinity_1,
          CImages.samsungViewInfinity_2,
          CImages.samsungViewInfinity_3,
        ],
        salePrice: 900,
        sku: 'ABR5523',
        productType: ProductType.single.toString()),

    //008
    ProductModel(
        id: '8',
        title: 'Apple AirPods 2 with Charging Case - White',
        stock: 12,
        categoryId: '3',
        price: 62,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.appleAirPods_1,
        description: '''
              Automatically on, automatically connected
              Easy setup for all your Apple devices
              Quick access to Siri by saying “Hey Siri”
              Double-tap to play or skip forward
              New Apple H1 headphone chip delivers faster wireless connection to your devices
            ''',
        brand: BrandModel(
            id: '5',
            image: CImages.appleLogo,
            name: 'Apple',
            productsCount: 1,
            isFeatured: true), // Apple
        images: [
          CImages.appleAirPods_1,
          CImages.appleAirPods_2,
          CImages.appleAirPods_3,
        ],
        salePrice: 60,
        sku: 'DBR5623',
        productType: ProductType.single.toString()),

    //009
    ProductModel(
        id: '9',
        title:
            'Watch SE (2nd Gen) [GPS 40mm] Smartwatch with Starlight Aluminum Case with Starlight Sport Band S/M',
        stock: 2,
        categoryId: '3',
        price: 173,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.appleWatch_1,
        description: '''
              WHY APPLE WATCH SE — All the essentials to help 
              you be motivated and active, keep connected, 
              track your health, and stay safe. The Smart Stack 
              and redesigned apps in watchOS 10 help you see more 
              information at a glance. With features like Crash 
              Detection and enhanced workout metrics, 
              Apple Watch SE is a better value than ever.
            ''',
        brand: BrandModel(
            id: '5',
            image: CImages.appleLogo,
            name: 'Apple',
            productsCount: 1,
            isFeatured: true), // Apple
        images: [
          CImages.appleWatch_1,
          CImages.appleWatch_2,
        ],
        salePrice: 171,
        sku: 'DBD5623',
        productType: ProductType.single.toString()),

    //010
    ProductModel(
        id: '10',
        title: 'Apple iPhone 13 Pro, 128GB, Gold - GSM Carriers',
        stock: 6,
        price: 1440,
        categoryId: '3',
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.iphone_1,
        description: '''
              This pre-owned product is not Apple certified, but has been professionally inspected, 
              tested and cleaned by Amazon-qualified suppliers.
              There will be no visible cosmetic imperfections when held at an arm’s length. 
              There will be no visible cosmetic imperfections when held at an arm’s length.
            ''',
        brand: BrandModel(
            id: '5',
            image: CImages.appleLogo,
            name: 'Apple',
            productsCount: 1,
            isFeatured: true), // Apple
        images: [
          CImages.iphone_1,
          CImages.iphone_2,
          CImages.iphone_3,
          CImages.iphone_4,
        ],
        salePrice: 1400,
        sku: 'DBD5622',
        productType: ProductType.single.toString()),

    // 011
    ProductModel(
        id: '11',
        title: "Nike Men's Park Short Sleeve T Shirt",
        stock: 11,
        categoryId: '4',
        price: 24,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.nike_1,
        description: '''
              Dri-FIT technology helps keep you dry and comfortable
              Mesh back panel adds breathability
              Dri-FIT technology helps keep you dry and comfortable
              Mesh back panel adds breathability
            ''',
        brand: BrandModel(
            id: '1',
            image: CImages.nikeLogo,
            name: 'Nike',
            productsCount: 265,
            isFeatured: true), // Nike
        images: [
          CImages.nike_1,
          CImages.nike_2,
          CImages.nike_3,
          CImages.nike_4,
        ],
        sku: 'ACC4568',
        productAttributes: [
          // Color and Size
          ProductAttributeModel(
              name: 'Color', values: ['Black', 'Red', 'Green', 'Grey']),
          ProductAttributeModel(
              name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
        ],
        productVariations: [
          // Each Combination
          // Black
          ProductVariationModel(
              id: '1',
              stock: 3,
              price: 30,
              salePrice: 28,
              image: CImages.nike_1,
              description: '',
              attributeValues: {'Color': 'Black', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '2',
              stock: 4,
              price: 30,
              salePrice: 28,
              image: CImages.nike_1,
              description: '',
              attributeValues: {'Color': 'Black', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '3',
              stock: 4,
              price: 30,
              salePrice: 28,
              image: CImages.nike_1,
              description: '',
              attributeValues: {'Color': 'Black', 'Size': 'EU 34'}),

          // Color: Red
          ProductVariationModel(
              id: '4',
              stock: 5,
              price: 26,
              salePrice: 25,
              image: CImages.nike_2,
              description: '',
              attributeValues: {'Color': 'Red', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '5',
              stock: 6,
              price: 26,
              salePrice: 25,
              image: CImages.nike_2,
              description: '',
              attributeValues: {'Color': 'Red', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '6',
              stock: 8,
              price: 26,
              salePrice: 25,
              image: CImages.nike_2,
              description: '',
              attributeValues: {'Color': 'Red', 'Size': 'EU 34'}),

          // Green
          ProductVariationModel(
              id: '7',
              stock: 8,
              price: 24,
              salePrice: 20,
              image: CImages.nike_3,
              description: '',
              attributeValues: {'Color': 'Green', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '8',
              stock: 8,
              price: 24,
              salePrice: 20,
              image: CImages.nike_3,
              description: '',
              attributeValues: {'Color': 'Green', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '9',
              stock: 12,
              price: 24,
              salePrice: 20,
              image: CImages.nike_3,
              description: '',
              attributeValues: {'Color': 'Green', 'Size': 'EU 34'}),

          // Grey
          ProductVariationModel(
              id: '10',
              stock: 0,
              price: 30,
              salePrice: 28,
              image: CImages.nike_4,
              description: '',
              attributeValues: {'Color': 'Grey', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '11',
              stock: 2,
              price: 30,
              salePrice: 28,
              image: CImages.nike_4,
              description: '',
              attributeValues: {'Color': 'Grey', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '12',
              stock: 4,
              price: 30,
              salePrice: 28,
              image: CImages.nike_4,
              description: '',
              attributeValues: {'Color': 'Grey', 'Size': 'EU 34'}),
        ],
        productType: ProductType.variable.toString()),

    // 012
    ProductModel(
        id: '12',
        title: "Womens Summer One Piece Sleeveless",
        stock: 50,
        categoryId: '4',
        price: 40,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.zara_1,
        description: '''
              DPRETTYGARDEN Womens Summer One Piece Sleeveless One Piece 
              Jumpsuits For Women/ Summer Clothes For Women/ Sleeveless Womens Rompers/ 
              Wide Leg Jumpsuit With Pockets/ Mock Neck Jumpsuits For Women Casual/ 
              Pants Rompers For Women Summer/ 
              Rompers For Women Dressy With Zipper/ Teacher Outfits For Women
            ''',
        brand: BrandModel(
            id: '9',
            image: CImages.zaraLogo,
            name: 'ZARA',
            productsCount: 90,
            isFeatured: true), // Zara
        images: [
          CImages.zara_1,
          CImages.zara_2,
          CImages.zara_3,
          CImages.zara_4,
          CImages.zara_6,
        ],
        sku: 'BCC4568',
        productAttributes: [
          // Color and Size
          ProductAttributeModel(name: 'Color', values: [
            'Camel',
            'Brink Red',
            'Navy',
            'Dusty Pink',
            'Light Blue'
          ]),
          ProductAttributeModel(
              name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
        ],
        productVariations: [
          // Each Combination
          // Camel
          ProductVariationModel(
              id: '1',
              stock: 3,
              price: 40,
              salePrice: 35,
              image: CImages.zara_1,
              description: '',
              attributeValues: {'Color': 'Camel', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '2',
              stock: 4,
              price: 40,
              salePrice: 35,
              image: CImages.zara_1,
              description: '',
              attributeValues: {'Color': 'Camel', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '3',
              stock: 4,
              price: 40,
              salePrice: 35,
              image: CImages.zara_1,
              description: '',
              attributeValues: {'Color': 'Camel', 'Size': 'EU 34'}),

          // Color: Brink Red
          ProductVariationModel(
              id: '4',
              stock: 5,
              price: 40,
              salePrice: 35,
              image: CImages.zara_2,
              description: '',
              attributeValues: {'Color': 'Brink Red', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '5',
              stock: 6,
              price: 40,
              salePrice: 35,
              image: CImages.zara_2,
              description: '',
              attributeValues: {'Color': 'Brink Red', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '6',
              stock: 8,
              price: 40,
              salePrice: 35,
              image: CImages.zara_2,
              description: '',
              attributeValues: {'Color': 'Brink Red', 'Size': 'EU 34'}),

          // Navy
          ProductVariationModel(
              id: '7',
              stock: 8,
              price: 40,
              salePrice: 35,
              image: CImages.zara_3,
              description: '',
              attributeValues: {'Color': 'Navy', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '8',
              stock: 8,
              price: 40,
              salePrice: 35,
              image: CImages.zara_3,
              description: '',
              attributeValues: {'Color': 'Navy', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '9',
              stock: 12,
              price: 40,
              salePrice: 35,
              image: CImages.zara_3,
              description: '',
              attributeValues: {'Color': 'Navy', 'Size': 'EU 34'}),

          // Dusty Pink
          ProductVariationModel(
              id: '10',
              stock: 0,
              price: 40,
              salePrice: 35,
              image: CImages.zara_4,
              description: '',
              attributeValues: {'Color': 'Dusty Pink', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '11',
              stock: 2,
              price: 40,
              salePrice: 35,
              image: CImages.zara_4,
              description: '',
              attributeValues: {'Color': 'Dusty Pink', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '12',
              stock: 4,
              price: 40,
              salePrice: 35,
              image: CImages.zara_4,
              description: '',
              attributeValues: {'Color': 'Dusty Pink', 'Size': 'EU 34'}),

          // Light Blue
          ProductVariationModel(
              id: '13',
              stock: 0,
              price: 40,
              salePrice: 35,
              image: CImages.zara_6,
              description: '',
              attributeValues: {'Color': 'Light Blue', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '14',
              stock: 2,
              price: 40,
              salePrice: 35,
              image: CImages.zara_6,
              description: '',
              attributeValues: {'Color': 'Light Blue', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '15',
              stock: 4,
              price: 40,
              salePrice: 35,
              image: CImages.zara_6,
              description: '',
              attributeValues: {'Color': 'Light Blue', 'Size': 'EU 34'}),
        ],
        productType: ProductType.variable.toString()),

    // 013
    ProductModel(
        id: '13',
        title: "adidas Men's Game and Go Pullover Hoodie",
        stock: 23,
        price: 40,
        salePrice: 30,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.adidasSuit_1,
        description: '''
              Men's sporty hooded sweatshirt made for motion
              Drawcord hood pulls tight for extra warmth
              Kangaroo pocket for storage
            ''',
        brand: BrandModel(
            id: '2',
            image: CImages.adidasLogo,
            name: 'Adidas',
            productsCount: 301,
            isFeatured: true), // Adidas
        images: [
          CImages.adidasSuit_1,
          CImages.adidasSuit_2,
          CImages.adidasSuit_3,
        ],
        sku: 'ACE4568',
        categoryId: '1',
        productAttributes: [
          // Color and Size
          ProductAttributeModel(name: 'Color', values: [
            'Black',
            'Grey',
            'Collegiate Green',
          ]),
          ProductAttributeModel(
              name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
        ],
        productVariations: [
          // Each Combination
          // Black
          ProductVariationModel(
              id: '1',
              stock: 3,
              price: 32,
              salePrice: 30,
              image: CImages.adidasSuit_1,
              description: '',
              attributeValues: {'Color': 'Black', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '2',
              stock: 4,
              price: 32,
              salePrice: 30,
              image: CImages.adidasSuit_1,
              description: '',
              attributeValues: {'Color': 'Black', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '3',
              stock: 4,
              price: 40,
              salePrice: 30,
              image: CImages.adidasSuit_1,
              description: '',
              attributeValues: {'Color': 'Black', 'Size': 'EU 34'}),

          // Grey
          ProductVariationModel(
              id: '4',
              stock: 5,
              price: 35,
              salePrice: 30,
              image: CImages.adidasSuit_2,
              description: '',
              attributeValues: {'Color': 'Grey', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '5',
              stock: 6,
              price: 32,
              salePrice: 30,
              image: CImages.adidasSuit_2,
              description: '',
              attributeValues: {'Color': 'Grey', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '6',
              stock: 8,
              price: 32,
              salePrice: 30,
              image: CImages.adidasSuit_2,
              description: '',
              attributeValues: {'Color': 'Grey', 'Size': 'EU 34'}),

          // Collegiate Green
          ProductVariationModel(
              id: '7',
              stock: 8,
              price: 32,
              salePrice: 28,
              image: CImages.adidasSuit_3,
              description: '',
              attributeValues: {'Color': 'Collegiate Green', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '8',
              stock: 8,
              price: 32,
              salePrice: 28,
              image: CImages.adidasSuit_3,
              description: '',
              attributeValues: {'Color': 'Collegiate Green', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '9',
              stock: 12,
              price: 32,
              salePrice: 28,
              image: CImages.adidasSuit_3,
              description: '',
              attributeValues: {'Color': 'Collegiate Green', 'Size': 'EU 34'}),
        ],
        productType: ProductType.variable.toString()),

    // 014
    ProductModel(
        id: '14',
        title: 'Jump Rope, Tangle-Free Rapid Speed Jumping Rope Cable',
        stock: 15,
        categoryId: '1',
        price: 8,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.jump_1,
        description: '''
              This jump rope is made of steel wires that are coated with 
              strong PVC material, making it durable even after a long time exercising. 
              Its adjustable length design enables you to customize the length according 
              to your needs, making it suitable for everyone, no matter for kids or adults.
            ''',
        brand: BrandModel(
            id: '7',
            image: CImages.jordanLogo,
            name: 'Jordan',
            productsCount: 13,
            isFeatured: false), // Jordan
        images: [
          CImages.jump_1,
          CImages.jump_2,
          CImages.jump_3,
          CImages.jump_4,
        ],
        salePrice: 7,
        sku: 'AAR5523',
        productType: ProductType.single.toString()),

    // 015
    ProductModel(
        id: '15',
        title: 'Panana Dresser for Bedroom with 5/6 Drawers',
        stock: 12,
        price: 140,
        categoryId: '2',
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.ikeaDresser_1,
        description: '''
              MODERN & PRACTICAL DESIGN: These Chests Of Drawers Look 
              Excellent And Would Fit Perfectly In To Any Contemporary 
              Style Interior. This Chest Of Drawers Has a Stylish Inlaid 
              Handle Design That Is Not Only For Bedroom Use But Can Be 
              Used Anywhere You Need To Store Clothes, Toys And Other Everyday 
              Objects In Your Home Or Office
            ''',
        brand: BrandModel(
            id: '4',
            image: CImages.ikeaLogo,
            name: 'IKEA',
            productsCount: 90,
            isFeatured: false), // IKEA
        images: [
          CImages.ikeaDresser_1,
          CImages.ikeaDresser_2,
          CImages.ikeaDresser_3,
          CImages.ikeaDresser_4,
          CImages.ikeaDresser_5,
          CImages.ikeaDresser_6,
        ],
        salePrice: 135,
        sku: 'DBC9000',
        productType: ProductType.single.toString()),

    // 016
    ProductModel(
        id: '16',
        title: 'IKEA MARKUS Office chair',
        stock: 55,
        price: 400,
        categoryId: '2',
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.ikeaChair_1,
        description: '''
              Adjust the height and angle of this chair so your workday feels comfortable – 
              the mesh backrest lets air through so you keep cool even when the workload rises.
              Built to outlast years of ups and downs. The adjustable and lockable tilt function 
              increases stability and control in different sitting positions.
              The safety castors have a pressure-sensitive brake mechanism that keeps the chair 
              in place when you stand up, and releases automatically when you sit down.
              You sit comfortably since the chair is adjustable in height.
            ''',
        brand: BrandModel(
            id: '4',
            image: CImages.ikeaLogo,
            name: 'IKEA',
            productsCount: 90,
            isFeatured: false), // IKEA
        images: [
          CImages.ikeaChair_1,
          CImages.ikeaChair_2,
          CImages.ikeaChair_3,
          CImages.ikeaChair_4,
        ],
        salePrice: 390,
        sku: 'DBC9001',
        productType: ProductType.single.toString()),

    // 017
    ProductModel(
        id: '17',
        title: 'Kenwood Chef Titanium Kitchen Machine, Stainless Steel',
        stock: 30,
        price: 560,
        categoryId: '2',
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.kenwoodKitchen_1,
        description: '''
              KITCHEN MACHINE - Our chef-inspired mixer features up to 800 watts 
              of power & the precision of Electronic Variable Speed Control to gradually 
              incorporate ingredients before mixing them at high speeds—so they stay in 
              the bowl & not on your countertop. TURBOCHARGED POWER - A European-designed 
              motor with twice the power of ordinary stand mixers delivers the right amount 
              of torque & handles the heaviest dough loads. Dual Motor Ventilation prevents overheating, 
              prolonging motor life. STAINLESS STEEL & DISHWASHER SAFE - Includes a stainless 
              steel work bowl with rugged handles & three stainless steel mixing tools: a power whisk, 
              a dough hook & the unique K-Beater—our signature tool designed for maximum mixing performance. 
              ADD EXTRA ATTACHMENTS - Four built-in speed hubs allow you to add attachments, 
              including a pasta cutter, meat grinder, blender, food processor, and ice cream maker. 
              Attachments sold separately.
            ''',
        brand: BrandModel(
            id: '3',
            image: CImages.kenwoodLogo,
            name: 'Kenwood',
            productsCount: 78,
            isFeatured: false), // Kenwood
        images: [
          CImages.kenwoodKitchen_1,
          CImages.kenwoodKitchen_2,
          CImages.kenwoodKitchen_3,
          CImages.kenwoodKitchen_4,
          CImages.kenwoodKitchen_5,
          CImages.kenwoodKitchen_6,
        ],
        salePrice: 530,
        sku: 'DBC9003',
        productType: ProductType.single.toString()),

    // 021
    ProductModel(
        id: '21',
        title: 'Feethit Mens Slip On Walking Shoes',
        categoryId: '3',
        stock: 17,
        price: 36,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.jordan_1,
        description: '''
              Ultra Breathable & Lightweight - Feethit mens sneakers 
              uppers are made of breathable material, there are thousands 
              of densely ventilated holes in the upper that provide you with 
              ultra lightweight support and breathability. and the lining 
              of the sneakers is reinforced with soft foam to make you 
              more comfortable wearing.
            ''',
        brand: BrandModel(
            id: '7',
            image: CImages.jordanLogo,
            name: 'Jordan',
            productsCount: 13,
            isFeatured: false), // Jordan
        images: [
          CImages.jordan_1,
          CImages.jordan_2,
          CImages.jordan_3,
          CImages.jordan_4,
        ],
        salePrice: 34,
        sku: 'AAR5523',
        productAttributes: [
          // Color and Size
          ProductAttributeModel(
              name: 'Color', values: ['Black', 'Red', 'Grey']),
          ProductAttributeModel(
              name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
        ],
        productVariations: [
          // Each Combination
          // Black
          ProductVariationModel(
              id: '1',
              stock: 34,
              price: 36,
              salePrice: 34,
              image: CImages.jordan_2,
              description: '',
              attributeValues: {'Color': 'Black', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '2',
              stock: 34,
              price: 36,
              salePrice: 34,
              image: CImages.jordan_2,
              description: '.',
              attributeValues: {'Color': 'Black', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '3',
              stock: 34,
              price: 36,
              salePrice: 34,
              image: CImages.jordan_2,
              description: '',
              attributeValues: {'Color': 'Black', 'Size': 'EU 34'}),

          // Color: Red
          ProductVariationModel(
              id: '4',
              stock: 12,
              price: 36,
              salePrice: 32,
              image: CImages.jordan_3,
              description: '',
              attributeValues: {'Color': 'Red', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '5',
              stock: 12,
              price: 36,
              salePrice: 32,
              image: CImages.jordan_3,
              description: '',
              attributeValues: {'Color': 'Red', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '6',
              stock: 12,
              price: 36,
              salePrice: 32,
              image: CImages.jordan_3,
              description: '',
              attributeValues: {'Color': 'Red', 'Size': 'EU 34'}),

          // Grey
          ProductVariationModel(
              id: '7',
              stock: 30,
              price: 36,
              salePrice: 33,
              image: CImages.jordan_4,
              description: '',
              attributeValues: {'Color': 'Grey', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '8',
              stock: 34,
              price: 36,
              salePrice: 33,
              image: CImages.jordan_4,
              description: '',
              attributeValues: {'Color': 'Grey', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '9',
              stock: 1,
              price: 36,
              salePrice: 33,
              image: CImages.jordan_4,
              description: '',
              attributeValues: {'Color': 'Grey', 'Size': 'EU 34'}),
        ],
        productType: ProductType.variable.toString()),
  ];

  // Animal Products
  static final List<ProductModel> animals = [
    ProductModel(
        id: '18',
        title: 'Nulo Freestyle Cat & Kitten Food',
        categoryId: '5',
        stock: 5,
        price: 14,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.catFood_1,
        description: '''
              Deboned Chicken, Chicken Meal, Turkey Meal, Deboned Cod, Whole Peas, 
              Lentils, Chicken Fat (preserved with Mixed Tocopherols & Citric Acid), 
              Natural Flavor, Pea Fiber, Ground Flaxseed, Dried Chicory Root, Dried 
              Kelp, Dried Sweet Potato, Dried Cranberries, Calcium Carbonate, 
              DL-Methionine, Taurine, Zinc Proteinate, Choline Chloride, 
              Vitamin E Supplement, L-Ascorbyl-2-Polyphosphate (source of Vitamin C), 
              Iron Proteinate, Niacin Supplement, Copper Proteinate, Thiamine Mononitrate, 
              Calcium Pantothenate, Vitamin A Supplement, Manganese Proteinate, 
              Pyridoxine Hydrochloride, Sodium Selenite, Riboflavin Supplement, 
              Dried Bacillus coagulans Fermentation Product, Yucca Schidigera 
              Extract, Vitamin B12 Supplement, Calcium Iodate, Folic Acid, Rosemary Extract.

            ''',
        brand: BrandModel(
            id: '11',
            image: CImages.nuloLogo,
            name: 'Nulo',
            productsCount: 125,
            isFeatured: true), // Nulo
        images: [
          CImages.catFood_1,
          CImages.catFood_2,
          CImages.catFood_3,
          CImages.catFood_4,
          CImages.catFood_5,
        ],
        salePrice: 12,
        sku: 'AAR0023',
        productType: ProductType.single.toString()),
    ProductModel(
        id: '19',
        title: 'Squishy Dog - Cute Stuffed Animals Plush Toy for Kids',
        categoryId: '5',
        stock: 13,
        price: 25,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.toys_1,
        description: '''
              A Must for Your Little One: Is your child’s birthday just around
               the corner and you want to surprise them with an original, cute
                toy that will capture their attention? Would you like to give your 
                little one a reliable bedtime companion that keeps them relaxed 
                and nurtured? This stuffed animal squishmallow is the perfect choice!
            ''',
        brand: BrandModel(
            id: '12',
            image: CImages.legoLogo,
            name: 'Lego',
            productsCount: 67,
            isFeatured: true), // Lego
        images: [
          CImages.toys_1,
          CImages.toys_2,
          CImages.toys_3,
          CImages.toys_4,
          CImages.toys_5,
          CImages.toys_6,
        ],
        salePrice: 22,
        sku: 'AAB1223',
        productType: ProductType.single.toString()),
    ProductModel(
        id: '20',
        title: 'Whale Hair Clips, Animal Acetate Cute Claw Clips',
        categoryId: '5',
        stock: 13,
        price: 8,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.acc_1,
        description: '''
          Unique Design: These cute hair clips combine the original shape
          of sea creatures and vintage elements, the fashionable and chic 
          appearance adds luster to your head shape. High Quality Material: 
          The claw clip is made of cellulose acetate material, which is more 
          tough than other materials and not easy to break, more glossy, more 
          beautiful in appearance, lightweight and good to wear. Size and 
          Weight: The size and weight of this hair claw clip is about 
          5.12*2.36*1.57inch/13*6*4cm and 28g, suitable for most 
          people, it can hold the hair firmly without damaging the hair, very lightweight.
            ''',
        brand: BrandModel(
            id: '13',
            image: CImages.cbLogo,
            name: 'CB Accessories',
            productsCount: 12,
            isFeatured: true), // CB Accessories
        images: [
          CImages.acc_1,
          CImages.acc_2,
          CImages.acc_3,
          CImages.acc_4,
          CImages.acc_5,
          CImages.acc_6,
        ],
        salePrice: 6,
        sku: '12BC223',
        productType: ProductType.single.toString()),
  ];

  static final List<ProductModel> shoes = [
    // 002
    ProductModel(
        id: '2',
        title: "4 color women's boot",
        categoryId: '4',
        stock: 15,
        price: 221,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.productImage1_2,
        description:
            'An amazing boot for women that can be helpful for winter and aslo good for summer sometimes.',
        brand: BrandModel(
            id: '8',
            image: CImages.pumaLogo,
            name: 'Puma',
            productsCount: 125,
            isFeatured: true),
        images: [
          CImages.productImage1_1,
          CImages.productImage1_2,
          CImages.productImage1_3,
          CImages.productImage1_4,
        ],
        sku: 'ABR4568',
        productAttributes: [
          // Color and Size
          ProductAttributeModel(
              name: 'Color', values: ['Pink', 'Blue', 'Brown', 'Red']),
          ProductAttributeModel(
              name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
        ],
        productVariations: [
          // Each Combination
          // Pink
          ProductVariationModel(
              id: '1',
              stock: 34,
              price: 134,
              salePrice: 99,
              image: CImages.productImage1_1,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Pink', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '2',
              stock: 34,
              price: 134,
              salePrice: 130,
              image: CImages.productImage1_1,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Pink', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '3',
              stock: 34,
              price: 134,
              salePrice: 122,
              image: CImages.productImage1_1,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Pink', 'Size': 'EU 34'}),

          // Color: Blue
          ProductVariationModel(
              id: '4',
              stock: 12,
              price: 134,
              salePrice: 99,
              image: CImages.productImage1_2,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Blue', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '5',
              stock: 12,
              price: 134,
              salePrice: 130,
              image: CImages.productImage1_2,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Blue', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '6',
              stock: 12,
              price: 134,
              salePrice: 122,
              image: CImages.productImage1_2,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Blue', 'Size': 'EU 34'}),

          // Brown
          ProductVariationModel(
              id: '7',
              stock: 30,
              price: 134,
              salePrice: 100,
              image: CImages.productImage1_3,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Brown', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '8',
              stock: 34,
              price: 134,
              salePrice: 130,
              image: CImages.productImage1_3,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Brown', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '9',
              stock: 0,
              price: 134,
              salePrice: 122,
              image: CImages.productImage1_3,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Brown', 'Size': 'EU 34'}),

          // Red
          ProductVariationModel(
              id: '10',
              stock: 0,
              price: 134,
              salePrice: 134,
              image: CImages.productImage1_4,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Pink', 'Size': 'EU 30'}),
          ProductVariationModel(
              id: '11',
              stock: 0,
              price: 134,
              salePrice: 132,
              image: CImages.productImage1_4,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Red', 'Size': 'EU 32'}),
          ProductVariationModel(
              id: '12',
              stock: 4,
              price: 134,
              salePrice: 120,
              image: CImages.productImage1_4,
              description:
                  'This is the description for different product variations.',
              attributeValues: {'Color': 'Red', 'Size': 'EU 34'}),
        ],
        productType: ProductType.variable.toString()),

    // 022
    ProductModel(
        id: '22',
        title: 'Men\'s Lace Up Formal Modern Oxford Dress Shoes',
        categoryId: '6',
        stock: 16,
        price: 140,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.dressShoes_1,
        description: '''
            Pointy toe and lace-up vamp with blind eyelets
            Slip-abrasion and shock-absorbing ZRO Pro outsole
            Pigskin lining adds some extra comfort
            Embossed pattern and highly polished upper leather suitable
            for the wedding, formal occasion and tuxedo outfit
            ''',
        brand: BrandModel(
            id: '9',
            image: CImages.zaraLogo,
            name: 'ZARA',
            productsCount: 90,
            isFeatured: true),
        images: [
          CImages.dressShoes_1,
          CImages.dressShoes_2,
          CImages.dressShoes_3,
          CImages.dressShoes_4,
          CImages.dressShoes_5,
        ],
        salePrice: 120,
        sku: 'AAR0022',
        productType: ProductType.single.toString()),
  ];

  static final List<ProductModel> diorMakeup = [
    // 023
    ProductModel(
        id: '23',
        title: 'Christian Dior Dior Forever Skin Glow Foundation',
        categoryId: '7',
        stock: 13,
        price: 70,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.diorMakeup_1,
        description: '''
            Maintains hydration for healthy looking skin
            Intensely hydrate the skin
            It lastingly improve the skin quality
            Protection against uva, uvb and blue light exposure
            Improves the quality of the skin day after day.
        ''',
        brand: BrandModel(
            id: '14',
            image: CImages.diorLogo,
            name: 'Dior',
            productsCount: 6,
            isFeatured: true),
        images: [
          CImages.diorMakeup_1,
          CImages.diorMakeup_2,
          CImages.diorMakeup_3,
          CImages.diorMakeup_4,
        ],
        salePrice: 54,
        sku: 'AAR0037',
        productType: ProductType.single.toString()),

    // 024
    ProductModel(
        id: '24',
        title: 'Olay Regenerist Collagen Peptide 24 Face Moisturizer',
        categoryId: '7',
        stock: 77,
        price: 34,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.olaySkin_1,
        description: '''
            COLLAGEN PEPTIDE supports the skin’s renewal processes by improving 
            elasticity, reducing wrinkles
            ALL DAY HYDRATION This face moisturizer cream provides the benefits 
            of collagen peptide + 24 hours of hydration
            NIACINAMIDE/VITAMIN B3 aids in moisture retention and surface skin 
            cell turnover and regeneration
            EXPERTLY FORMULATED fragrance-free face cream provides powerful results 
            without a sticky, greasy feel
            FREE OF parabens, mineral oils, phthalates, 
            dyes, and includes no added fragrances
            BENEFITS INCREASE OVER TIME from skin's texture looking smooth to 
            looking and feeling visibly firmer with less wrinkles
          ''',
        brand: BrandModel(
            id: '15',
            image: CImages.olayLogo,
            name: 'Olay',
            productsCount: 9,
            isFeatured: true),
        images: [
          CImages.olaySkin_1,
          CImages.olaySkin_2,
          CImages.olaySkin_3,
          CImages.olaySkin_4,
          CImages.olaySkin_5,
          CImages.olaySkin_6,
        ],
        salePrice: 29,
        sku: 'AAR0030',
        productType: ProductType.single.toString()),

    //025
    ProductModel(
        id: '25',
        title:
            'Christian Dior Miss Blooming Bouquet Eau de Toilette Spray for Women',
        categoryId: '7',
        stock: 71,
        price: 24,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.frag_1,
        description: '''
            CMiss Dior Blooming Bouquet by Christian Dior for Women
            1.7 oz Eau de Toilette Spray
            Christian Dior
        ''',
        brand: BrandModel(
            id: '14',
            image: CImages.diorLogo,
            name: 'Dior',
            productsCount: 6,
            isFeatured: true),
        images: [
          CImages.frag_1,
          CImages.frag_2,
          CImages.frag_3,
          CImages.frag_4,
          CImages.frag_5,
          CImages.frag_6,
        ],
        salePrice: 20,
        sku: 'ADF0030',
        productType: ProductType.single.toString()),
  ];

  // Jewelry
  static final List<ProductModel> jews = [
    // 026
    ProductModel(
        id: '26',
        title:
            '14K Gold Necklaces for Women Trendy Love Knot Infinity Necklace Pendant Necklace for Women',
        categoryId: '8',
        stock: 22,
        price: 99,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.neck_1,
        description: '''
            With the combination of a love knot and infinity symbol, 
            the 14k gold рlаtеd necklaces for women trendy infinity 
            necklace stay ahead in fashion trends. The pendant necklace 
            for women is a perfect blend of traditional symbolism 
            and modern style.
        ''',
        brand: BrandModel(
            id: '16',
            image: CImages.gucciLogo,
            name: 'Gucci',
            productsCount: 19,
            isFeatured: true),
        images: [
          CImages.neck_1,
          CImages.neck_2,
          CImages.neck_3,
          CImages.neck_4,
        ],
        salePrice: 99,
        sku: 'DAR0037',
        productType: ProductType.single.toString()),

    // 027
    ProductModel(
        id: '27',
        title: 'Bandmax Gemstone Signet Rings for Men',
        categoryId: '8',
        stock: 29,
        price: 21,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.ring_1,
        description: '''
            12mm Square cut red stone, a symbol of passion, 
            noble love and eternal beauty, also represents the 
            vitality of life. The sharp bottom gemstone cutting 
            process make the stone more shining and high-class.
        ''',
        brand: BrandModel(
            id: '16',
            image: CImages.gucciLogo,
            name: 'Gucci',
            productsCount: 19,
            isFeatured: true),
        images: [
          CImages.ring_1,
          CImages.ring_2,
          CImages.ring_3,
          CImages.ring_4,
          CImages.ring_5,
          CImages.ring_6,
        ],
        salePrice: 17,
        sku: 'DDR0037',
        productType: ProductType.single.toString()),

    // 028
    ProductModel(
        id: '28',
        title:
            '18K Gold Plated Love Friendship Bracelet with Cubic Zirconia Stones',
        categoryId: '8',
        stock: 21,
        price: 11,
        isFeatured: true,
        date: Timestamp.now(),
        thumbnail: CImages.bracelet_1,
        description: '''
            This CZ embedded love bracelet has an inner 
            circumference of 6.7 inches and an inner diameter 
            of approximately 2.24 inches x 1.85 inches, which 
            fits most wrist sizes. The sparkling gems perfectly 
            set off on the bracelet, expressing love and making 
            you more beautiful.
        ''',
        brand: BrandModel(
            id: '17',
            image: CImages.tiffanyLogo,
            name: 'Tiffany & Co',
            productsCount: 9,
            isFeatured: true),
        images: [
          CImages.bracelet_1,
          CImages.bracelet_2,
          CImages.bracelet_3,
        ],
        salePrice: 11,
        sku: 'DBR0037',
        productType: ProductType.single.toString()),
  ];

  // ProductCategory
  static final List<ProductCategoryModel> productCat = [
    // Products and their categories
    ProductCategoryModel(productId: '1', categoryId: '16'),
    ProductCategoryModel(productId: '2', categoryId: '25'),
    ProductCategoryModel(productId: '3', categoryId: '9'),
    ProductCategoryModel(productId: '4', categoryId: ''),
    ProductCategoryModel(productId: '5', categoryId: '15'),
    ProductCategoryModel(productId: '6', categoryId: ''),
    ProductCategoryModel(productId: '7', categoryId: ''),
    ProductCategoryModel(productId: '8', categoryId: '17'),
    ProductCategoryModel(productId: '9', categoryId: '17'),
    ProductCategoryModel(productId: '10', categoryId: '15'),
    ProductCategoryModel(productId: '10', categoryId: '17'),
    ProductCategoryModel(productId: '11', categoryId: '18'),
    ProductCategoryModel(productId: '12', categoryId: '18'),
    ProductCategoryModel(productId: '12', categoryId: '19'),
    ProductCategoryModel(productId: '13', categoryId: '10'),
    ProductCategoryModel(productId: '14', categoryId: '11'),
    ProductCategoryModel(productId: '15', categoryId: '12'),
    ProductCategoryModel(productId: '16', categoryId: '14'),
    ProductCategoryModel(productId: '17', categoryId: '13'),
    ProductCategoryModel(productId: '18', categoryId: '21'),
    ProductCategoryModel(productId: '19', categoryId: '22'),
    ProductCategoryModel(productId: '20', categoryId: '23'),
    ProductCategoryModel(productId: '21', categoryId: '24'),
    ProductCategoryModel(productId: '22', categoryId: '26'),
    ProductCategoryModel(productId: '23', categoryId: '28'),
    ProductCategoryModel(productId: '24', categoryId: '27'),
    ProductCategoryModel(productId: '25', categoryId: '29'),
    ProductCategoryModel(productId: '26', categoryId: '30'),
    ProductCategoryModel(productId: '27', categoryId: '31'),
    ProductCategoryModel(productId: '28', categoryId: '32'),
  ];

  // BrandCategory
  static final List<BrandCategoryModel> brandCat = [
    // Sparts
    BrandCategoryModel(categoryId: '1', brandId: '1'), // Nike
    BrandCategoryModel(categoryId: '1', brandId: '2'), // Adidas

    // Furniture
    BrandCategoryModel(categoryId: '2', brandId: '4'), // Ikea
    BrandCategoryModel(categoryId: '2', brandId: '3'), // Kenwood

    // Electronics
    BrandCategoryModel(categoryId: '3', brandId: '5'), // Apple
    BrandCategoryModel(categoryId: '3', brandId: '6'), // Acer
    BrandCategoryModel(categoryId: '3', brandId: '10'), // Samsung

    // Clothes
    BrandCategoryModel(categoryId: '4', brandId: '8'), // Puma
    BrandCategoryModel(categoryId: '4', brandId: '9'), // Zara

    // Animals
    BrandCategoryModel(categoryId: '5', brandId: '11'), // Nulo
    BrandCategoryModel(categoryId: '5', brandId: '12'), // Lego
    BrandCategoryModel(categoryId: '5', brandId: '13'), // CB Accessories

    // Shoes
    BrandCategoryModel(categoryId: '6', brandId: '7'), // Jordan
    BrandCategoryModel(categoryId: '6', brandId: '18'), // Fila

    // Cosmetics
    BrandCategoryModel(categoryId: '7', brandId: '14'), // Dior
    BrandCategoryModel(categoryId: '7', brandId: '15'), // Olay

    // Jewelry
    BrandCategoryModel(categoryId: '8', brandId: '16'), // Gucci
    BrandCategoryModel(categoryId: '8', brandId: '17'), // Tiffany
  ];
}
