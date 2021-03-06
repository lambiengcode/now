import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:now/src/app.dart';
import 'package:now/src/pages/card/pages/add_point.dart';
import 'package:now/src/pages/home/categories_page/categories_page.dart';
import 'package:now/src/pages/home/widgets/freeship_list_page.dart';
import 'package:now/src/pages/home/widgets/voucher_list_page.dart';
import 'package:now/src/pages/members/pages/add_product_page.dart';
import 'package:now/src/pages/members/pages/add_voucher_page.dart';
import 'package:now/src/pages/members/pages/details_order_page.dart';
import 'package:now/src/pages/members/pages/edit_product_page.dart';
import 'package:now/src/pages/members/pages/edit_store_page.dart';
import 'package:now/src/pages/members/pages/edit_voucher_page.dart';
import 'package:now/src/pages/members/pages/manage_members_page.dart';
import 'package:now/src/pages/members/pages/manage_orders_page.dart';
import 'package:now/src/pages/members/pages/manage_products_page.dart';
import 'package:now/src/pages/members/pages/manage_vouchers_page.dart';
import 'package:now/src/pages/profile/pages/my_address_page.dart';
import 'package:now/src/pages/profile/pages/my_points_page.dart';
import 'package:now/src/pages/profile/pages/my_profile_page.dart';
import 'package:now/src/pages/profile/pages/my_voucher_page.dart';
import 'package:now/src/pages/search/search_product_page.dart';
import 'package:now/src/pages/search/search_store_page.dart';
import 'package:now/src/pages/store/pages/list_product_page.dart';
import 'package:now/src/pages/store/pages/payment_page.dart';
import 'package:now/src/pages/store/pages/product_page.dart';
import 'package:now/src/pages/store/store_page.dart';
import 'src/pages/members/members_page.dart';

void main() {
  // For play billing library 2.0 on Android, it is mandatory to call
  // [enablePendingPurchases](https://developer.android.com/reference/com/android/billingclient/api/BillingClient.Builder.html#enablependingpurchases)
  // as part of initializing the app.

  runApp(GetMaterialApp(
    title: 'Now',
    debugShowCheckedModeBanner: false,
    initialRoute: '/root',
    defaultTransition: Transition.native,
    locale: Locale('vi', 'VN'),
    getPages: [
      GetPage(name: '/root', page: () => App()),
      GetPage(
        name: '/voucher',
        page: () => VoucherListPage(),
        transition: Transition.cupertinoDialog,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/freeship',
        page: () => FreeshipListPage(),
        transition: Transition.cupertinoDialog,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/owner',
        page: () => MembersPage(),
        transition: Transition.cupertinoDialog,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/categories/:title',
        page: () => CategoriesPage(
          title: Get.parameters['title'],
        ),
        transition: Transition.rightToLeft,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/store/:id',
        page: () => StorePage(
          id: Get.parameters['id'],
        ),
        transition: Transition.rightToLeft,
        transitionDuration: Duration(milliseconds: 200),
      ),
      GetPage(
        name: '/payment',
        page: () => PaymentPage(),
        transition: Transition.cupertinoDialog,
        transitionDuration: Duration(milliseconds: 400),
      ),

      // Search Page
      GetPage(
        name: '/searchstore',
        page: () => SearchStorePage(),
        transition: Transition.cupertinoDialog,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/searchproduct',
        page: () => SearchProductPage(),
        transition: Transition.cupertinoDialog,
        transitionDuration: Duration(milliseconds: 400),
      ),

      // For owner shop
      GetPage(
        name: '/editstore/:title',
        page: () => EditStorePage(
          title: Get.parameters['title'],
          urlToImage: Get.arguments,
        ),
        transition: Transition.zoom,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/orders',
        page: () => ManageOrdersPage(),
        transition: Transition.zoom,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/products',
        page: () => ManageProductsPage(),
        transition: Transition.zoom,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/vouchers',
        page: () => ManageVouchersPage(),
        transition: Transition.zoom,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/members',
        page: () => ManageMembersPage(),
        transition: Transition.zoom,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/addproduct',
        page: () => AddProductPage(),
        transition: Transition.cupertinoDialog,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/editproduct/:title/:sizeS/:sizeM/:sizeL',
        page: () {
          print(Get.arguments);
          return EditProductPage(
            urlToImage: Get.arguments,
            title: Get.parameters['title'],
            sizeS: Get.parameters['sizeS'],
            sizeM: Get.parameters['sizeM'],
            sizeL: Get.parameters['sizeL'],
          );
        },
        transition: Transition.cupertinoDialog,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/addvoucher',
        page: () => AddVoucherPage(),
        transition: Transition.cupertinoDialog,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/editvoucher/:title/:discount/:percent',
        page: () => EditVoucherPage(
          title: Get.parameters['title'],
          discount: Get.parameters['discount'],
          percent: Get.parameters['percent'] == 'true' ? true : false,
          urlToImage: Get.arguments,
        ),
        transition: Transition.cupertinoDialog,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/detailsorder/:state',
        page: () => DetailsOrderPage(
          state: Get.parameters['state'],
        ),
        transition: Transition.cupertinoDialog,
        transitionDuration: Duration(milliseconds: 400),
      ),

      GetPage(
        name: '/product',
        page: () => ProductPage(),
        transition: Transition.cupertinoDialog,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/productlist/:title',
        page: () => ListProductPage(
          title: Get.parameters['title'],
        ),
        transition: Transition.cupertinoDialog,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/myprofile',
        page: () => MyProfilePage(),
        transition: Transition.cupertinoDialog,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/myvoucher',
        page: () => MyVoucherPage(),
        transition: Transition.cupertinoDialog,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/mypoints',
        page: () => MyPointsPage(),
        transition: Transition.cupertinoDialog,
        transitionDuration: Duration(milliseconds: 400),
      ),
      GetPage(
        name: '/myaddress',
        page: () => MyAddressPage(),
        transition: Transition.cupertinoDialog,
        transitionDuration: Duration(milliseconds: 400),
      ),

      // My Points
      GetPage(
        name: '/addpoint',
        page: () => AddPointPage(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: Duration(milliseconds: 200),
      )
    ],
  ));
}
