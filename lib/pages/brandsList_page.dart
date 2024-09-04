import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sephora_app/models/brands_model.dart';
import 'package:sephora_app/pages/loading_page.dart';
import 'package:sephora_app/pages/main_page.dart';
import 'package:sephora_app/providers/brands_provider.dart';

class BrandsListPage extends StatefulWidget {
  const BrandsListPage({Key? key}) : super(key: key);

  @override
  State<BrandsListPage> createState() => _BrandsListPageState();
}

class _BrandsListPageState extends State<BrandsListPage>
    with TickerProviderStateMixin {
  BrandsProvider brandsProvider = BrandsProvider();

  @override
  void initState() {
    super.initState();

    brandsProvider = context.read<BrandsProvider>();
    _loadBrandsList();
  }

  void _loadBrandsList() async {
    await brandsProvider.getBrands();
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Brand>? brands = brandsProvider.brandsList;

    return Scaffold(
        appBar: const CustomAppBar(title: 'BRANDS'),
        drawer: const Menu(),
        drawerScrimColor: Colors.white.withOpacity(0.5),
        body: brandsProvider.isLoading
            ? const LoadingPage()
            : ListView.separated(
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) => const Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                itemCount: brands.length,
                itemBuilder: (context, i) => ListTile(
                      title: Text(
                        (brands[i].attributes?.name)?.toUpperCase() ?? "",
                        style: GoogleFonts.cormorantGaramond(
                            textStyle: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600)),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (BuildContext context) => HomePage(
                        //               catId: brands[i].categoryId!,// no hay
                        //               name: brands[i].attributes?.name ?? '',
                        //             )));
                      },
                    )));
  }
}
