import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:spa7o_ta7adii/core/utils/styles.dart';
import 'package:spa7o_ta7adii/core/widgets/layout_widget.dart';
import 'package:spa7o_ta7adii/features/Games/meenana_screen/presentation/widgets/tableof_clues.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/basic_widget/change_widget.dart';
import '../../../passwordchallenge_screen/presentation/widgets/playername_button.dart';
import '../manager/cubit/meenana_cubit.dart';
import '../manager/cubit/meenana_states.dart';
import '../widgets/Clues_widget.dart';

class MeenAnaScreen extends StatelessWidget {
  const MeenAnaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutWidget(
      buttonWidget: ChangeWidget(onChanged:() => context.read<MeenAnaCubit>().getMeenAnaPlayer()),
      widget: BlocConsumer<MeenAnaCubit, MeenAnaBlocStates>(
        builder: (context, state) {
          if(state is LoadingState)
            {
              return Center(
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                ),
              );
            }
          return Column(
            children: [
              CluesWidget(),
              10.height,
            Row(
              children: [
                Icon(Icons.arrow_back_sharp,color: Colors.white,size: 40,),
               Text(AppStrings.nextClue,style: TextStyles.homeStyle,)],
            ).onTap(()=>context.read<MeenAnaCubit>().addingClue()),
              PlayerClueButton(),
            TableOfClues()
            ],
          );
        },
        listener: (context, state) {},
      ),
    ));
  }
}
