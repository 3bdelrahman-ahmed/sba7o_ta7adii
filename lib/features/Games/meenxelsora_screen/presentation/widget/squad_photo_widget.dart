import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spa7o_ta7adii/core/theming/text_styles.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/manager/cubit/meenxelsora_cubit.dart';

class SquadPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? imageUrl = context.read<MeenXelsoraCubit>().ImageUrl;

    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.94,
        height: MediaQuery.of(context).size.height * 0.26,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
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
                  'Something went Wrong',
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
