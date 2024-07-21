// ignore_for_file: file_names, non_constant_identifier_names, avoid_print
import 'package:FinGlow/data/repositories/ChatSupport/chat_support_repositories_impl.dart';
import 'package:FinGlow/domain/usecases/ChatSupport/chatsupport_usercase.dart';
import 'package:FinGlow/presentation/bloc/Chat/chat_support_bloc.dart';
import 'package:FinGlow/presentation/bloc/Chat/chat_support_event.dart';
import 'package:FinGlow/presentation/bloc/Chat/chat_support_state.dart';
import 'package:FinGlow/presentation/views/FinancialAdvisor2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Add this import

class FinancialAdvisor extends StatefulWidget {
  const FinancialAdvisor({super.key});

  @override
  State<FinancialAdvisor> createState() => _FinancialAdvisorViewState();
}

class _FinancialAdvisorViewState extends State<FinancialAdvisor> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatSupportBloc(
        LoadEventData(ChatSupportRepositoryImpl()),
      )..add(LoadChatSupportDataEvent()),
      child: Scaffold(
        // Add child property
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded,
                color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Chat en WhatsApp',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(1, 19, 48, 1),
          elevation: 0,
        ),
        body: DecoratedBox(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(1, 19, 48, 1),
                Color.fromRGBO(4, 38, 92, 1),
              ],
              stops: [0.3, 0.7],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<ChatSupportBloc, ChatSupportState>(
              // Add builder property
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/Chat_sup.png'),
                    const SizedBox(height: 20),
                    Text(
                      'Te escribiremos por WhatsApp\nal número ${state.phonenumber}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        //
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromRGBO(10, 106, 94, 1),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text('Continuar'),
                    ),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const FinancialAdvisor2()));
                      },
                      child: const Text(
                        'Escribanme a otro número',
                        style: TextStyle(
                          color: Color.fromRGBO(61, 229, 191, 1),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
