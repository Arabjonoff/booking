import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/app_theme/style.dart';
import 'package:booking/src/utils/utils.dart';
import 'package:booking/src/widget/button/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookingDetailScreen extends StatelessWidget {
  final int tag;

  const BookingDetailScreen({Key? key, required this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            foregroundColor: AppColor.black,
            backgroundColor: AppColor.bg,
            expandedHeight: 250,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: LayoutBuilder(builder: (context, constraints) {
                return Text(
                  'Anhor choyxonasi',
                  style: TextStyle(
                    color: constraints.maxHeight > 150
                        ? Colors.white
                        : Colors.black,
                  ),
                );
              }),
              background: Hero(
                tag: tag,
                child: Image.asset(
                  'assets/images/img.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(

                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/location.svg'),),
                          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/message.svg'),),
                          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/call.svg'),),
                        ],
                      ),
                      Text(
                        'Choxona xaqida',
                        style: Styles.boldH3(AppColor.black),
                      ),
                      Text(
                        'Nunc varius eu rhoncus sit ac eget amet. Enim leo ut quam odio egestas integer pellentesque. Mi aliquet volutpat diam luctus elementum suspendisse ac rhoncus. A senectus quis molestie aliquam lorem.',
                        style: Styles.regularContent(AppColor.black),
                      ),
                      SizedBox(height: 20*w,),
                      Text(
                        'Xizmat turlai',
                        style: Styles.boldH3(AppColor.black),
                      ),
                      Text(
                        'Nunc varius eu rhoncus sit ac eget amet. Enim leo ut quam odio egestas integer pellentesque. Mi aliquet volutpat diam luctus elementum suspendisse ac rhoncus. A senectus quis molestie aliquam lorem.',
                        style: Styles.regularContent(AppColor.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100*h,),
                ButtonWidget(text: 'Xonalarni korish', onTap: (){
                  Navigator.pushNamed(context, '/bookingRoom');
                }, color: Colors.black)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
