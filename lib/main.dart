import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_task/view/blocs/home_cubit/home_page_cubit.dart';
import 'package:project_task/view/home_page/home_page.dart';
import 'package:sizer/sizer.dart';
import 'generated/codegen_loader.g.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
          supportedLocales: const [
            Locale('en'),
            Locale('ar'),
          ],
          path: 'assets/translations',
          assetLoader:const CodegenLoader(),
          fallbackLocale:const Locale('en'),
          child:  const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => HomePageCubit()),
      ],
      child: Sizer(
        builder: (BuildContext context, Orientation orientation, DeviceType deviceType) =>
            MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates:context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,

          ),
          home: const HomePage(),
        ),
      ),
    );
  }
}


