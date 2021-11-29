;                                       | <------ MENÚ DE SELECCIÓN DE PACIENTE ------> |
; |-----------------|====== DECLARACIÓN DE CADENAS DE CARACTERES PARA EL MENÚ DE SELECCION DE PACIENTE ======|-----------------|
cadMenuPac1 db  "             +----------------------------------------------------+             $"
cadMenuPac2 db  "             |             |-- HOSPITAL LOS ANGELES --|           |             $"
cadMenuPac3 db  "             |                                                    |             $"
cadMenuPac4 db  "             + -------          Menu de pacientes          ------ +             $"
cadMenuPac5 db  "             |                                                    |             $"
cadMenuPac6 db  "             | A) Paciente #1.                                    |             $"
cadMenuPac7 db  "             | B) Paciente #2.                                    |             $"
cadMenuPac8 db  "             | C) Paciente #3.                                    |             $"
cadMenuPac9 db  "             | D) Paciente #4.                                    |             $"
cadMenuPac10 db "             | E) Paciente #5.                                    |             $"
cadMenuPac11 db "             |                                                    |             $"
cadMenuPac12 db "             |    Que paciente desea elegir?                      |             $"
cadMenuPac13 db "             +----------------------------------------------------+             $"

;                                | <------ MENÚ DE SELECCIÓN DE LLENADO O CONSULTA ------> |
; |-----------------|====== DECLARACIÓN DE CADENAS DE CARACTERES PARA EL MENÚ DE CONSULTA O LLENADO ======|-----------------|
cadPregForm1 db  "             +----------------------------------------------------+             $"
cadPregForm2 db  "             |             |-- HOSPITAL LOS ANGELES --|           |             $"
cadPregForm3 db  "             |                                                    |             $"
cadPregForm4 db  "             + -------  Llenado o consulta de informacion? ------ +             $"
cadPregForm5 db  "             |                                                    |             $"
cadPregForm6 db  "             | A) Llenado.                                        |             $"
cadPregForm7 db  "             | B) Consulta.                                       |             $"
cadPregForm8 db  "             | C) Volver al menu de pacientes.                    |             $"
cadPregForm9 db  "             |                                                    |             $"
cadPregForm10 db "             |    Que desea realizar?                             |             $"
cadPregForm11 db "             +----------------------------------------------------+             $"

;                                       | <------ MENÚ DE SELECCIÓN DE FORMULARIOS ------> |
; |-----------------|====== DECLARACIÓN DE CADENAS DE CARACTERES PARA EL MENÚ DE LLENADO DE FORMULARIOS ======|-----------------|
cadMenuForm1 db  "             +----------------------------------------------------+             $"
cadMenuForm2 db  "             |             |-- HOSPITAL LOS ANGELES --|           |             $"
cadMenuForm3 db  "             |                                                    |             $"
cadMenuForm4 db  "             + -----------     Menu de formularios    ----------- +             $"
cadMenuForm5 db  "             |                                                    |             $"
cadMenuForm6 db  "             | A) Formulario de registro.                         |             $"
cadMenuForm7 db  "             | B) Formulario de historia clinica.                 |             $"
cadMenuForm8 db  "             | C) Formulario de autorizacion.                     |             $"
cadMenuForm9 db  "             | D) Acuse.                                          |             $"
cadMenuForm10 db "             | E) Volver al menu anterior.                        |             $"
cadMenuForm11 db "             |                                                    |             $"
cadMenuForm12 db "             |    Que desea realizar?                             |             $"
cadMenuForm13 db "             +----------------------------------------------------+             $"

opcion db 2 dup(' $'),'$' ; Variable encargada para la captura de la opción del menú.
readkeyOp  db "     Presione cualquier tecla para regresar al menu...$"

;                                       | <------ FORMULARIO DE REGISTRO ------> |
; |-----------------|====== DECLARACIÓN DE CADENAS DE CARACTERES PARA EL FORMULARIO DE REGISTRO ======|-----------------|
cadRegistro00 db  "     +--------------------------------------------------------------------+     $"
cadRegistro01 db  "     |                     |-- HOSPITAL LOS ANGELES --|                   |     $"
cadRegistro02 db  "     |                                                                    |     $"
cadRegistro03 db  "     + -------------------    FORMULARIO DE REGISTRO    ----------------- +     $"
cadRegistro04 db  "     | INFORMIACION PERSONAL                                              |     $"
cadRegistro05 db  "     | Apellidos:                        Nombres:                         |     $"
cadRegistro06 db  "     | Fecha de nacimiento:              Sexo de nacimiento:              |     $"
cadRegistro07 db  "     | Estado civil:                     Idioma preferido:                |     $"
cadRegistro08 db  "     |                                                                    |     $"
cadRegistro09 db  "     | INFORMACION DE CONTACTO                                            |     $"
cadRegistro10 db  "     | Domicilio:                                                         |     $"
cadRegistro11 db  "     | Ciudad:               Estado:               Codigo Postal:         |     $"
cadRegistro12 db  "     | Telefono particular:              Telefono laboral:                |     $"
cadRegistro13 db  "     | Correo electronico:                                                |     $"
cadRegistro14 db  "     | Nombre de contacto de emergencia:                                  |     $"
cadRegistro15 db  "     | Numero de telefono:               Vinculo:                         |     $"
cadRegistro16 db  "     |                                                                    |     $"
cadRegistro17 db  "     |    *COMPLETE ESTA SECCION SI EL(LA) PACIENTE ES MENOR DE EDAD*     |     $"
cadRegistro18 db  "     | Nombre del padre, la madre o tutor:                                |     $"
cadRegistro19 db  "     | Numero de telefono:               Domicilio:                       |     $"
cadRegistro20 db  "     +--------------------------------------------------------------------+     $"

; |-----------------|====== OTRAS CADENAS ======|-----------------|
cadPaciente01 db  "     Paciente #1     $"
cadPaciente02 db  "     Paciente #2     $"
cadPaciente03 db  "     Paciente #3     $"
cadPaciente04 db  "     Paciente #4     $"
cadPaciente05 db  "     Paciente #5     $"

; |-----------------|====== DECLARACIÓN DE STRINGS PARA CAPTURAR INFORMACIÓN DE REGISTRO ======|-----------------|
; <----- PACIENTE 01 ----->
; ========== Datos personales ==========
regApPac01 db 20 dup(' $'),'$'  ; Cadena para almacenar los apellidos del Paciente 01.
regNomPac01 db 20 dup(' $'),'$' ; Cadena para almacenar los nombres del Paciente 01.
regNacPac01 db 10 dup(' $'),'$' ; Cadena para almacenar la fecha de nacimiento del Paciente 01.
regSexoPac01 db 10 dup(' $'),'$' ; Cadena para almacenar el sexo de nacimiento del Paciente 01.
regEstCPac01 db 20 dup(' $'),'$' ; Cadena para almacenar el estado civil del Paciente 01.
regIdiomaPac01 db 20 dup(' $'),'$' ; Cadena para almacenar el idioma preferido del Paciente 01.

; ========== Información de contacto ==========
regDomPac01 db 30 dup(' $'),'$'  ; Cadena para almacenar el domicilio del Paciente 01.
regCiudPac01 db 15 dup(' $'),'$'  ; Cadena para almacenar la ciudad del Paciente 01.
regEstPac01 db 15 dup(' $'),'$'  ; Cadena para almacenar el estado del Paciente 01.
regCPPac01 db 15 dup(' $'),'$'  ; Cadena para almacenar el código postal del Paciente 01.
regTelPPac01 db 12 dup(' $'),'$'  ; Cadena para almacenar el teléfono particular del Paciente 01.
regTelLabPac01 db 12 dup(' $'),'$'  ; Cadena para almacenar el teléfono laboral del Paciente 01.
regCorreoPac01 db 30 dup(' $'),'$'  ; Cadena para almacenar el correo del Paciente 01.
regNomCEmPac01 db 30 dup(' $'),'$'  ; Cadena para almacenar el nombre del contacto de emergencia del Paciente 01.
regTelEmPac01 db 12 dup(' $'),'$'  ; Cadena para almacenar el número de teléfono del contacto de emergencia del Paciente 01.
regVinEmPac01 db 20 dup(' $'),'$'  ; Cadena para almacenar el vínculo del contacto de emergencia del Paciente 01.

; ========== Información menores de edad ==========
regTutorNomPac01 db 30 dup(' $'),'$'  ; Cadena para almacenar el nombre del tutor del Paciente 01.
regTutorTelPac01 db 12 dup(' $'),'$'  ; Cadena para almacenar el teléfono del tutor del Paciente 01.
regTutorDomPac01 db 20 dup(' $'),'$'  ; Cadena para almacenar el domicilio del tutor del Paciente 01.

; <----- PACIENTE 02 ----->
; ========== Datos personales ==========
regApPac02 db 20 dup(' $'),'$'  ; Cadena para almacenar los apellidos del Paciente 02.
regNomPac02 db 20 dup(' $'),'$' ; Cadena para almacenar los nombres del Paciente 02.
regNacPac02 db 10 dup(' $'),'$' ; Cadena para almacenar la fecha de nacimiento del Paciente 02.
regSexoPac02 db 10 dup(' $'),'$' ; Cadena para almacenar el sexo de nacimiento del Paciente 02.
regEstCPac02 db 20 dup(' $'),'$' ; Cadena para almacenar el estado civil del Paciente 02.
regIdiomaPac02 db 20 dup(' $'),'$' ; Cadena para almacenar el idioma preferido del Paciente 02.

; ========== Información de contacto ==========
regDomPac02 db 50 dup(' $'),'$'  ; Cadena para almacenar el domicilio del Paciente 02.
regCiudPac02 db 15 dup(' $'),'$'  ; Cadena para almacenar la ciudad del Paciente 02.
regEstPac02 db 15 dup(' $'),'$'  ; Cadena para almacenar el estado del Paciente 02.
regCPPac02 db 15 dup(' $'),'$'  ; Cadena para almacenar el código postal del Paciente 02.
regTelPPac02 db 12 dup(' $'),'$'  ; Cadena para almacenar el teléfono particular del Paciente 02.
regTelLabPac02 db 12 dup(' $'),'$'  ; Cadena para almacenar el teléfono laboral del Paciente 02.
regCorreoPac02 db 50 dup(' $'),'$'  ; Cadena para almacenar el correo del Paciente 02.
regNomCEmPac02 db 30 dup(' $'),'$'  ; Cadena para almacenar el nombre del contacto de emergencia del Paciente 02.
regTelEmPac02 db 12 dup(' $'),'$'  ; Cadena para almacenar el número de teléfono del contacto de emergencia del Paciente 02.
regVinEmPac02 db 20 dup(' $'),'$'  ; Cadena para almacenar el vínculo del contacto de emergencia del Paciente 02.

; ========== Información menores de edad ==========
regTutorNomPac02 db 30 dup(' $'),'$'  ; Cadena para almacenar el nombre del tutor del Paciente 02.
regTutorTelPac02 db 12 dup(' $'),'$'  ; Cadena para almacenar el teléfono del tutor del Paciente 02.
regTutorDomPac02 db 20 dup(' $'),'$'  ; Cadena para almacenar el domicilio del tutor del Paciente 02.

; <----- PACIENTE 03 ----->
; ========== Datos personales ==========
regApPac03 db 20 dup(' $'),'$'  ; Cadena para almacenar los apellidos del Paciente 03.
regNomPac03 db 20 dup(' $'),'$' ; Cadena para almacenar los nombres del Paciente 03.
regNacPac03 db 10 dup(' $'),'$' ; Cadena para almacenar la fecha de nacimiento del Paciente 03.
regSexoPac03 db 10 dup(' $'),'$' ; Cadena para almacenar el sexo de nacimiento del Paciente 03.
regEstCPac03 db 20 dup(' $'),'$' ; Cadena para almacenar el estado civil del Paciente 03.
regIdiomaPac03 db 20 dup(' $'),'$' ; Cadena para almacenar el idioma preferido del Paciente 03.

; ========== Información de contacto ==========
regDomPac03 db 50 dup(' $'),'$'  ; Cadena para almacenar el domicilio del Paciente 03.
regCiudPac03 db 15 dup(' $'),'$'  ; Cadena para almacenar la ciudad del Paciente 03.
regEstPac03 db 15 dup(' $'),'$'  ; Cadena para almacenar el estado del Paciente 03.
regCPPac03 db 15 dup(' $'),'$'  ; Cadena para almacenar el código postal del Paciente 03.
regTelPPac03 db 12 dup(' $'),'$'  ; Cadena para almacenar el teléfono particular del Paciente 03.
regTelLabPac03 db 12 dup(' $'),'$'  ; Cadena para almacenar el teléfono laboral del Paciente 03.
regCorreoPac03 db 50 dup(' $'),'$'  ; Cadena para almacenar el correo del Paciente 03.
regNomCEmPac03 db 30 dup(' $'),'$'  ; Cadena para almacenar el nombre del contacto de emergencia del Paciente 03.
regTelEmPac03 db 12 dup(' $'),'$'  ; Cadena para almacenar el número de teléfono del contacto de emergencia del Paciente 03.
regVinEmPac03 db 20 dup(' $'),'$'  ; Cadena para almacenar el vínculo del contacto de emergencia del Paciente 03.

; ========== Información menores de edad ==========
regTutorNomPac03 db 30 dup(' $'),'$'  ; Cadena para almacenar el nombre del tutor del Paciente 03.
regTutorTelPac03 db 12 dup(' $'),'$'  ; Cadena para almacenar el teléfono del tutor del Paciente 03.
regTutorDomPac03 db 20 dup(' $'),'$'  ; Cadena para almacenar el domicilio del tutor del Paciente 03.

; <----- PACIENTE 04 ----->
; ========== Datos personales ==========
regApPac04 db 20 dup(' $'),'$'  ; Cadena para almacenar los apellidos del Paciente 04.
regNomPac04 db 20 dup(' $'),'$' ; Cadena para almacenar los nombres del Paciente 04.
regNacPac04 db 10 dup(' $'),'$' ; Cadena para almacenar la fecha de nacimiento del Paciente 04.
regSexoPac04 db 10 dup(' $'),'$' ; Cadena para almacenar el sexo de nacimiento del Paciente 04.
regEstCPac04 db 20 dup(' $'),'$' ; Cadena para almacenar el estado civil del Paciente 04.
regIdiomaPac04 db 20 dup(' $'),'$' ; Cadena para almacenar el idioma preferido del Paciente 04.

; ========== Información de contacto ==========
regDomPac04 db 50 dup(' $'),'$'  ; Cadena para almacenar el domicilio del Paciente 04.
regCiudPac04 db 15 dup(' $'),'$'  ; Cadena para almacenar la ciudad del Paciente 04.
regEstPac04 db 15 dup(' $'),'$'  ; Cadena para almacenar el estado del Paciente 04.
regCPPac04 db 15 dup(' $'),'$'  ; Cadena para almacenar el código postal del Paciente 04.
regTelPPac04 db 12 dup(' $'),'$'  ; Cadena para almacenar el teléfono particular del Paciente 04.
regTelLabPac04 db 12 dup(' $'),'$'  ; Cadena para almacenar el teléfono laboral del Paciente 04.
regCorreoPac04 db 50 dup(' $'),'$'  ; Cadena para almacenar el correo del Paciente 04.
regNomCEmPac04 db 30 dup(' $'),'$'  ; Cadena para almacenar el nombre del contacto de emergencia del Paciente 04.
regTelEmPac04 db 12 dup(' $'),'$'  ; Cadena para almacenar el número de teléfono del contacto de emergencia del Paciente 04.
regVinEmPac04 db 20 dup(' $'),'$'  ; Cadena para almacenar el vínculo del contacto de emergencia del Paciente 04.

; ========== Información menores de edad ==========
regTutorNomPac04 db 30 dup(' $'),'$'  ; Cadena para almacenar el nombre del tutor del Paciente 04.
regTutorTelPac04 db 12 dup(' $'),'$'  ; Cadena para almacenar el teléfono del tutor del Paciente 04.
regTutorDomPac04 db 20 dup(' $'),'$'  ; Cadena para almacenar el domicilio del tutor del Paciente 04.

; <----- PACIENTE 05 ----->
; ========== Datos personales ==========
regApPac05 db 20 dup(' $'),'$'  ; Cadena para almacenar los apellidos del Paciente 05.
regNomPac05 db 20 dup(' $'),'$' ; Cadena para almacenar los nombres del Paciente 05.
regNacPac05 db 10 dup(' $'),'$' ; Cadena para almacenar la fecha de nacimiento del Paciente 05.
regSexoPac05 db 10 dup(' $'),'$' ; Cadena para almacenar el sexo de nacimiento del Paciente 05.
regEstCPac05 db 20 dup(' $'),'$' ; Cadena para almacenar el estado civil del Paciente 05.
regIdiomaPac05 db 20 dup(' $'),'$' ; Cadena para almacenar el idioma preferido del Paciente 05.

; ========== Información de contacto ==========
regDomPac05 db 50 dup(' $'),'$'  ; Cadena para almacenar el domicilio del Paciente 05.
regCiudPac05 db 15 dup(' $'),'$'  ; Cadena para almacenar la ciudad del Paciente 05.
regEstPac05 db 15 dup(' $'),'$'  ; Cadena para almacenar el estado del Paciente 05.
regCPPac05 db 15 dup(' $'),'$'  ; Cadena para almacenar el código postal del Paciente 05.
regTelPPac05 db 12 dup(' $'),'$'  ; Cadena para almacenar el teléfono particular del Paciente 05.
regTelLabPac05 db 12 dup(' $'),'$'  ; Cadena para almacenar el teléfono laboral del Paciente 05.
regCorreoPac05 db 50 dup(' $'),'$'  ; Cadena para almacenar el correo del Paciente 05.
regNomCEmPac05 db 30 dup(' $'),'$'  ; Cadena para almacenar el nombre del contacto de emergencia del Paciente 05.
regTelEmPac05 db 12 dup(' $'),'$'  ; Cadena para almacenar el número de teléfono del contacto de emergencia del Paciente 05.
regVinEmPac05 db 20 dup(' $'),'$'  ; Cadena para almacenar el vínculo del contacto de emergencia del Paciente 05.

; ========== Información menores de edad ==========
regTutorNomPac05 db 30 dup(' $'),'$'  ; Cadena para almacenar el nombre del tutor del Paciente 05.
regTutorTelPac05 db 12 dup(' $'),'$'  ; Cadena para almacenar el teléfono del tutor del Paciente 05.
regTutorDomPac05 db 20 dup(' $'),'$'  ; Cadena para almacenar el domicilio del tutor del Paciente 05.

;                                       | <------ HISTORIAL CLÍNICO ------> |
; |-----------------|====== DECLARACIÓN DE CADENAS DE CARACTERES PARA EL HISTORIAL CLÍNICO ======|-----------------|
cadHisto00 db  "     +--------------------------------------------------------------------+     $"
cadHisto01 db  "     |                     |-- HOSPITAL LOS ANGELES --|                   |     $"
cadHisto02 db  "     |                                                                    |     $"
cadHisto03 db  "     + ----------------------   HISTORIAL CLINICO   --------------------- +     $"
cadHisto04 db  "     | HISTORIA CLINICA DEL PACIENTE                                      |     $"
cadHisto05 db  "     | Presenta algun problema medico? (S)i (N)o:                         |     $"
cadHisto06 db  "     | Especifique:                                                       |     $"
cadHisto07 db  "     | Tiene alguna otra inquietud medica de la que se debe estar al      |     $"
cadHisto08 db  "     | tanto? Especifique:                                                |     $"
cadHisto09 db  "     | Toma algun medicamento? Especifique:                               |     $"
cadHisto10 db  "     |                                                                    |     $"
cadHisto11 db  "     | CUIDADOS PREVENTIVOS                                               |     $"
cadHisto12 db  "     | Tiene sus vacunas al dia? (S)i (N)o:                               |     $"
cadHisto13 db  "     | Farmacia de preferencia:                                           |     $"
cadHisto14 db  "     | Numero de telefono:                                                |     $"
cadHisto15 db  "     |                                                                    |     $"
cadHisto16 db  "     |  * Se requiere el permiso del padre, madre o tutor para tratar al  |     $"
cadHisto17 db  "     |  menor por cada visita en el cual un tercero (distinto del padre,  |     $"
cadHisto18 db  "     |  madre o tutor) acompane almenos. Si existe dicha posibilidad, so- |     $"
cadHisto19 db  "     |        licite un Formulario de Nombremiento de Terceros.*          |     $"
cadHisto20 db  "     +--------------------------------------------------------------------+     $"

; |-----------------|====== DECLARACIÓN DE STRINGS PARA CAPTURAR INFORMACIÓN DE HISTORIAL CLÍNICO ======|-----------------|
; <----- PACIENTE 01 ----->
; ========== Historia clínica ==========
histProbMPac01 db 1 dup(' $'),'$'  ; Cadena para almacenar respuesta corta a la pregunta del problema médico del Paciente 01.
histEspPromPac01 db 20 dup(' $'),'$' ; Cadena para almacenar el problema médico del Paciente 01.
histInqumPac01 db 20 dup(' $'),'$' ; Cadena para almacenar alguna otra inquietud del Paciente 01.
histMedicPac01 db 20 dup(' $'),'$' ; Cadena para almacenar los medicamentos que toma el Paciente 01.

; ========== Cuidados preventivos ==========
histVacuPac01 db 2 dup(' $'),'$'  ; Cadena para almacenar si el Paciente 01 tiene las vacunas a tiempo.
histFarmPac01 db 20 dup(' $'),'$'  ; Cadena para almacenar la farmacia de preferencia del Paciente 01.
histNumFarmPac01 db 12 dup(' $'),'$' ; Cadena para almacenar el numero de la farmacia de preferencia del Paciente 01.

; <----- PACIENTE 02 ----->
; ========== Historia clínica ==========
histProbMPac02 db 1 dup(' $'),'$'  ; Cadena para almacenar respuesta corta a la pregunta del problema médico del Paciente 02.
histEspPromPac02 db 20 dup(' $'),'$' ; Cadena para almacenar el problema médico del Paciente 02.
histInqumPac02 db 20 dup(' $'),'$' ; Cadena para almacenar alguna otra inquietud del Paciente 02.
histMedicPac02 db 20 dup(' $'),'$' ; Cadena para almacenar los medicamentos que toma el Paciente 02.

; ========== Cuidados preventivos ==========
histVacuPac02 db 2 dup(' $'),'$' ; Cadena para almacenar si el Paciente 02 tiene las vacunas a tiempo.
histFarmPac02 db 20 dup(' $'),'$' ; Cadena para almacenar la farmacia de preferencia del Paciente 02.
histNumFarmPac02 db 12 dup(' $'),'$' ; Cadena para almacenar el numero de la farmacia de preferencia del Paciente 02.

; <----- PACIENTE 03 ----->
; ========== Historia clínica ==========
histProbMPac03 db 1 dup(' $'),'$' ; Cadena para almacenar respuesta corta a la pregunta del problema médico del Paciente 03.
histEspPromPac03 db 20 dup(' $'),'$' ; Cadena para almacenar el problema médico del Paciente 03.
histInqumPac03 db 20 dup(' $'),'$' ; Cadena para almacenar alguna otra inquietud del Paciente 03.
histMedicPac03 db 20 dup(' $'),'$' ; Cadena para almacenar los medicamentos que toma el Paciente 03.

; ========== Cuidados preventivos ==========
histVacuPac03 db 2 dup(' $'),'$' ; Cadena para almacenar si el Paciente 03 tiene las vacunas a tiempo.
histFarmPac03 db 20 dup(' $'),'$' ; Cadena para almacenar la farmacia de preferencia del Paciente 03.
histNumFarmPac03 db 12 dup(' $'),'$' ; Cadena para almacenar el numero de la farmacia de preferencia del Paciente 03.

; <----- PACIENTE 04 ----->
; ========== Historia clínica ==========
histProbMPac04 db 1 dup(' $'),'$' ; Cadena para almacenar respuesta corta a la pregunta del problema médico del Paciente 04.
histEspPromPac04 db 20 dup(' $'),'$' ; Cadena para almacenar el problema médico del Paciente 04.
histInqumPac04 db 20 dup(' $'),'$' ; Cadena para almacenar alguna otra inquietud del Paciente 04.
histMedicPac04 db 20 dup(' $'),'$' ; Cadena para almacenar los medicamentos que toma el Paciente 04.

; ========== Cuidados preventivos ==========
histVacuPac04 db 2 dup(' $'),'$' ; Cadena para almacenar si el Paciente 04 tiene las vacunas a tiempo.
histFarmPac04 db 20 dup(' $'),'$' ; Cadena para almacenar la farmacia de preferencia del Paciente 04.
histNumFarmPac04 db 12 dup(' $'),'$' ; Cadena para almacenar el numero de la farmacia de preferencia del Paciente 04.

; <----- PACIENTE 05 ----->
; ========== Historia clínica ==========
histProbMPac05 db 1 dup(' $'),'$' ; Cadena para almacenar respuesta corta a la pregunta del problema médico del Paciente 05.
histEspPromPac05 db 20 dup(' $'),'$' ; Cadena para almacenar el problema médico del Paciente 05.
histInqumPac05 db 20 dup(' $'),'$' ; Cadena para almacenar alguna otra inquietud del Paciente 05.
histMedicPac05 db 20 dup(' $'),'$' ; Cadena para almacenar los medicamentos que toma el Paciente 05.

; ========== Cuidados preventivos ==========
histVacuPac05 db 2 dup(' $'),'$' ; Cadena para almacenar si el Paciente 05 tiene las vacunas a tiempo.
histFarmPac05 db 20 dup(' $'),'$' ; Cadena para almacenar la farmacia de preferencia del Paciente 05.
histNumFarmPac05 db 12 dup(' $'),'$' ; Cadena para almacenar el numero de la farmacia de preferencia del Paciente 05.

;                                       | <------ FORMULARIO DE AUTORIZACIÓN ------> |
; |-----------------|====== DECLARACIÓN DE CADENAS DE CARACTERES PARA EL FORMLARIO DE AUTORIZACIÓN ======|-----------------|
cadAutorizacion00 db  "     +--------------------------------------------------------------------+     $"
cadAutorizacion01 db  "     |                     |-- HOSPITAL LOS ANGELES --|                   |     $"
cadAutorizacion02 db  "     |                                                                    |     $"
cadAutorizacion03 db  "     + ------------------   FORMULARIO DE AUTORIZACION    --------------- +     $"
cadAutorizacion04 db  "     | Autorizo al Hospital los Angeles a usar y divulgar/obtener mi in-  |     $"
cadAutorizacion05 db  "     | formacion medica personal, tal como se describe a continuacion:    |     $"
cadAutorizacion06 db  "     |   Entiendo lo siguiente:                                           |     $"
cadAutorizacion07 db  "     |     1. La autorizacion para el uso y divulgacion de informacion de |     $"
cadAutorizacion08 db  "     |        acuerdo con la ley HIPPA es voluntaria.                     |     $"
cadAutorizacion09 db  "     |     2. Mi tratamiento y el pago de mi tratamiento no se veran a-   |     $"
cadAutorizacion10 db  "     |        fectados, independientemente de que se firme esta autori-   |     $"
cadAutorizacion11 db  "     |        zacion o no.                                                |     $"
cadAutorizacion12 db  "     |     3. A menos que sea revocada, esta autorizacion caducara al     |     $"
cadAutorizacion13 db  "     |        cumplirse un anio de la fecha de firma.                     |     $"
cadAutorizacion14 db  "     |     4. La informacion que se divulgue de conformidad con esta au-  |     $"
cadAutorizacion15 db  "     |        torizacion puede ser divulgada a su vez por el destinatario |     $"
cadAutorizacion16 db  "     |        y ya no estara protegida.                                   |     $"
cadAutorizacion17 db  "     |     5. Puedo solicitar una copia de esta autorizacion.             |     $"
cadAutorizacion18 db  "     |                                                                    |     $"
cadAutorizacion19 db  "     | Firma del paciente:                            Fecha:              |     $"
cadAutorizacion20 db  "     +--------------------------------------------------------------------+     $"

; |-----------------|====== DECLARACIÓN DE STRINGS PARA CAPTURAR INFORMACIÓN DEL FORMLARIO DE AUTORIZACIÓN ======|-----------------|
; <----- PACIENTE 01 ----->
autFirmaPac01 db 27 dup(' $'),'$' ; Cadena para almacenar la firma del Paciente 01.
autFechaFirmPac01 db 10 dup(' $'),'$' ; Cadena para almacenar la fecha de la firma del Paciente 01.

; <----- PACIENTE 02 ----->
autFirmaPac02 db 27 dup(' $'),'$' ; Cadena para almacenar la firma del Paciente 02.
autFechaFirmPac02 db 10 dup(' $'),'$' ; Cadena para almacenar la fecha de la firma del Paciente 02.

; <----- PACIENTE 03 ----->
autFirmaPac03 db 27 dup(' $'),'$' ; Cadena para almacenar la firma del Paciente 03.
autFechaFirmPac03 db 10 dup(' $'),'$' ; Cadena para almacenar la fecha de la firma del Paciente 03.

; <----- PACIENTE 04 ----->
autFirmaPac04 db 27 dup(' $'),'$' ; Cadena para almacenar la firma del Paciente 04.
autFechaFirmPac04 db 10 dup(' $'),'$' ; Cadena para almacenar la fecha de la firma del Paciente 04.

; <----- PACIENTE 05 ----->
autFirmaPac05 db 27 dup(' $'),'$' ; Cadena para almacenar la firma del Paciente 05.
autFechaFirmPac05 db 10 dup(' $'),'$' ; Cadena para almacenar la fecha de la firma del Paciente 05.

;                                            | <------ ACUSE ------> |
; |-----------------|====== DECLARACIÓN DE CADENAS DE CARACTERES PARA EL ACUSE ======|-----------------|
cadAcuse00 db  "     +--------------------------------------------------------------------+     $"
cadAcuse01 db  "     |                     |-- HOSPITAL LOS ANGELES --|                   |     $"
cadAcuse02 db  "     |                                                                    |     $"
cadAcuse03 db  "     + ------------------------       ACUSE       ----------------------- +     $"
cadAcuse04 db  "     | Acuse de recibo                                                    |     $"
cadAcuse05 db  "     | He recibido el Manual para pacientes de Hospital los Angeles y he  |     $"
cadAcuse06 db  "     | tenido la oportunidad de hacer preguntas acerca del contenido. El  |     $"
cadAcuse07 db  "     | manual incluye la siguiente informacion:                           |     $"
cadAcuse08 db  "     |   - Notificacion de practicas de confidencialidad.                 |     $"
cadAcuse09 db  "     |   - Derechos y responsabilidades del paciente.                     |     $"
cadAcuse10 db  "     |   - Como comunicar mi opinion (cumplidos, reclamaciones y quejas)  |     $"
cadAcuse11 db  "     |                                                                    |     $"
cadAcuse12 db  "     |  Una copia de este acuse de recibo esta disponible con solicitud   |     $"
cadAcuse13 db  "     |  previa.                                                           |     $"
cadAcuse14 db  "     |                                                                    |     $"
cadAcuse15 db  "     | Al firmar a continuacion, reconozco que comprendo y acepto las no- |     $"
cadAcuse16 db  "     | tificaciones antedichas sobre responsabilidad financiera y acuso   |     $"
cadAcuse17 db  "     | recibo del manual para pacientes.                                  |     $"
cadAcuse18 db  "     |                                                                    |     $"
cadAcuse19 db  "     | Nombre del paciente:                           Firma:              |     $"
cadAcuse20 db  "     +--------------------------------------------------------------------+     $"

; |-----------------|====== DECLARACIÓN DE STRINGS PARA CAPTURAR INFORMACIÓN DEL ACUSE ======|-----------------|
; <----- PACIENTE 01 ----->
acuseNomPac01 db 26 dup(' $'),'$' ; Cadena para almacenar el nombre del Paciente 01.
acuseFirmPac01 db 10 dup(' $'),'$' ; Cadena para almacenar la firma del Paciente 01.

; <----- PACIENTE 02 ----->
acuseNomPac02 db 26 dup(' $'),'$' ; Cadena para almacenar el nombre del Paciente 02.
acuseFirmPac02 db 10 dup(' $'),'$' ; Cadena para almacenar la firma del Paciente 02.

; <----- PACIENTE 03 ----->
acuseNomPac03 db 26 dup(' $'),'$' ; Cadena para almacenar el nombre del Paciente 03.
acuseFirmPac03 db 10 dup(' $'),'$' ; Cadena para almacenar la firma del Paciente 03.

; <----- PACIENTE 04 ----->
acuseNomPac04 db 26 dup(' $'),'$' ; Cadena para almacenar el nombre del Paciente 04.
acuseFirmPac04 db 10 dup(' $'),'$' ; Cadena para almacenar la firma del Paciente 04.

; <----- PACIENTE 05 ----->
acuseNomPac05 db 26 dup(' $'),'$' ; Cadena para almacenar el nombre del Paciente 05.
acuseFirmPac05 db 10 dup(' $'),'$' ; Cadena para almacenar la firma del Paciente 05.