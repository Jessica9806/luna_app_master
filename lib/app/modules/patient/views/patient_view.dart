import 'package:flutter/material.dart';
import 'package:luna_app/app/data_tables/pacientes_datasource.dart';
import 'package:luna_app/app/widgets/buttons/custom_icon_button.dart';
import 'package:luna_app/app/widgets/labels/custom_labels.dart';

class PatientView extends StatefulWidget {

  @override
  State<PatientView> createState() => _PatientViewState();
}

class _PatientViewState extends State<PatientView> {

  int _rowsPerPages=PaginatedDataTable.defaultRowsPerPage;


  @override
  Widget build(BuildContext context) {

    return Container(
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Text('Pacientes', style: CustomLabels.h1),

          SizedBox(height: 10),

          PaginatedDataTable(
            columns: [
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('Nombre')),
              DataColumn(label: Text('Teléfono')),
              DataColumn(label: Text('Correo')),
            ],
            source: PacientesDTS(),
            header: Text('Listado de pacientes registrados', maxLines: 2,),
            onRowsPerPageChanged: (value) {
              setState(() {
                _rowsPerPages=value??10;
              });
            },
            rowsPerPage: _rowsPerPages,
            actions: [
              CustomIconButton(
                onPressed: (){}, 
                text: 'Agregar nuevo paciente', 
                icon: Icons.add_outlined
              ),
            ],
          )
          
        ],
      )
    );
  }
}