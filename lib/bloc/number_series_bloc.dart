import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'number_series_event.dart';
part 'number_series_state.dart';
class NumberSeriesBloc extends Bloc<NumberSeriesEvent, NumberSeriesState> {
  NumberSeriesBloc() : super(NumberSeriesInitial()){
    on<GenerateSeriesEvent>((event, emit) {
      // if (event is GenerateSeriesEvent){
      //   event.type;
      // }
      final StringBuffer buffer = StringBuffer();
      int n = event.n;
      int type = event.type;
    if (type == 1) {
      for (int i = 1; i <= n; i++) {
        if (i != 1) {
          buffer.write(' ');
        }
        buffer.write(i);
      }
    } else if (type == 2) {
      for (int i = 1; i <= n; i++) {
        if (i != 1) {
          buffer.write(' ');
        }
        buffer.write(i);
      }
      for (int i = n - 1; i >= 1; i--) {
        buffer.write(' ');
        buffer.write(i);
      }
    } else if (type == 3) {
      for (int i = 1; i <= n; i++) {
        if (i != 1) {
          buffer.write(' ');
        }
        buffer.write((i * 10) + (i - 1));
      }
    } else if (type == 4) {
      for (int i = 1; i <= n; i++) {
        if (i != 1) {
          buffer.write(' ');
        }
        if (i % 5 == 0) {
          buffer.write('LIMA');
        } else if (i % 7 == 0) {
          buffer.write('TUJUH');
        } else {
          buffer.write(i);
        }
      }
    }
    emit(ResultState(buffer.toString()));
    });
  }
  // }
}
