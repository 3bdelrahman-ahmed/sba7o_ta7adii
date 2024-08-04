import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/utils/app_strings.dart';
import 'package:spa7o_ta7adii/core/utils/styles.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/view_model/cubit/meenxelsora_cubit.dart';

class SquadPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? imageUrl = context.read<MeenXelsoraCubit>().ImageUrl;

    return Center(
      child: Container(
        width: ScreenUtil.defaultSize.width * 0.94,
        height: ScreenUtil.defaultSize.height * 0.30,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.r),
          child: InteractiveViewer(
            child: CachedNetworkImage(
              imageUrl: imageUrl!,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
              errorWidget: (context, url, error) => Center(
                child: Text(
                  AppStrings.somethingWentWrong,
                  style: TextStyles.GamesListStyle.copyWith(
                    color: Colors.red
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
