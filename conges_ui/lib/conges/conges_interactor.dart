import 'package:conges_domain/periode/usecase/cree_periode_mensuelle.dart';
import 'package:conges_domain/periode/usecase/retire_conges.dart';

class CongesInteractor {
  creePeriodeEtRetireConges(String name, DateTime debut, DateTime fin) =>
      retireConges(
        debut,
        fin,
        creePeriodeMensuelle(name),
      );
}
