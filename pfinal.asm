                                        ; +---------------------------------------------+
                                        ; |           --- Proyecto Final ---            |
                                        ; |   Unidad 4: Programación de dispositivos    |
                                        ; |   Integrantes de equipo:                    |
                                        ; |   - Ramirez Flores Abril - 19211715         |
                                        ; |   - Nuñez Parra Saúl - 18210510             |
                                        ; +---------------------------------------------+
include mPfnl.asm

.model small
.stack
.data

include cadPF.asm

; |-----------------|====== COMIENZA EL CÓDIGO ======|-----------------| 
.code
; |--- Instrucción necesaria para utilizar las Macros ---|
.startup

; |-----------------|====== COMIENZA LA ETIQUETA DEL MENÚ DE PACIENTES ======|-----------------|
MENU_PACIENTES:
    ; Llamada a la Macro que se encargará de imprimir el menú de pacientes.
    imprimeMenuPacientes

; PRIMER LISTA DE CASOS:
limpia  ; Llamada a la Macro que limpia la pantalla.

CASE_A0:
    cmp opcion, 065
    jz PACIENTE_01
    jmp CASE_B0
CASE_B0:
    cmp opcion, 066
    jz PACIENTE_02
    jmp CASE_C0
CASE_C0:
    cmp opcion, 067
    jz PACIENTE_03
    jmp CASE_D0
CASE_D0:
    cmp opcion, 068
    jz PACIENTE_04
    jmp CASE_E0
CASE_E0:
    cmp opcion, 069
    jz PACIENTE_05
    jmp FIN

PACIENTE_01:
    MENU_PREGUNTA01:
        ; Llamada a la Macro que se encarga de imprimir el formulario de pregunta
        imprimeMenuPregunta cadPaciente01

        ; SEGUNDA LISTA DE CASOS:
        limpia  ; Llamada a la Macro que limpia la pantalla.

        CASE_A01:
            cmp opcion, 065
            jz OPC_LLENADO01
            jmp CASE_B01
        CASE_B01:
            cmp opcion, 066
            jz OPC_CONSULTA01
            jmp CASE_C01
        CASE_C01:
            cmp opcion, 067
            jz MENU_PACIENTES
            jmp FIN

    OPC_LLENADO01:
        MENU_FORMULARIOS01CAP:
            ; Llamada a la Macro que se encarga de imprimir el menú de formulario.
            imprimeMenuFormularios cadPaciente01

            ; TERCERA LISTA DE CASOS:
            CASE_A1CAP:
                cmp opcion, 065
                jz FORM_REGISTRO01CAP
                jmp CASE_B1CAP
            CASE_B1CAP:
                cmp opcion, 066
                jz FORM_HISTCLIN01CAP
                jmp CASE_C1CAP
            CASE_C1CAP:
                cmp opcion, 067
                jz FORM_AUTORIZACION01CAP
                jmp CASE_D1CAP
            CASE_D1CAP:
                cmp opcion, 068
                jz FORM_ACUSE01CAP
                jmp CASE_E1CAP
            CASE_E1CAP:
                cmp opcion, 069
                jz MENU_PREGUNTA01
                jmp FIN

            FORM_REGISTRO01CAP:
                ; |----- Impresión del formulario -----|
                limpia
                imprime cadRegistro00
                imprime cadRegistro01
                imprime cadRegistro02
                imprime cadRegistro03
                imprime cadRegistro04
                imprime cadRegistro05
                imprime cadRegistro06
                imprime cadRegistro07
                imprime cadRegistro08
                imprime cadRegistro09
                imprime cadRegistro10
                imprime cadRegistro11
                imprime cadRegistro12
                imprime cadRegistro13
                imprime cadRegistro14
                imprime cadRegistro15
                imprime cadRegistro16
                imprime cadRegistro17
                imprime cadRegistro18
                imprime cadRegistro19
                imprime cadRegistro20

                cursor 2, 30
                imprime cadPaciente01

                ; |----- Captura de la información -----|
                ; <----- INFORMACIÓN PERSONAL ----->
                ; Apellidos
                cursor 5, 18
                captura regApPac01
                ; Nombres
                cursor 5, 50
                captura regNomPac01
                ; Fecha de nacimiento
                cursor 6, 28
                captura regNacPac01
                ; Sexo de nacimiento
                cursor 6, 61
                captura regSexoPac01
                ; Estado civil
                cursor 7, 21
                captura regEstCPac01
                ; Idioma preferido
                cursor 7, 59
                captura regIdiomaPac01

                ; <----- INFORMACIÓN DE CONTACTO ----->
                ; Domicilio
                cursor 10, 18
                captura regDomPac01
                ; Ciudad
                cursor 11, 15
                captura regCiudPac01
                ; Estado
                cursor 11, 37
                captura regEstPac01
                ; Código Postal
                cursor 11, 66
                captura regCPPac01
                ; Teléfono Particular
                cursor 12, 28
                captura regTelPPac01
                ; Teléfono Laboral
                cursor 12, 59
                captura regTelLabPac01
                ; Correo electrónico
                cursor 13, 27
                captura regCorreoPac01
                ; Nombre de contacto de emergencia
                cursor 14, 41
                captura regNomCEmPac01
                ; Número de teléfono
                cursor 15, 27
                captura regTelEmPac01
                ; Vínculo
                cursor 15, 50
                captura regVinEmPac01

                ; <----- EN CASO DE SER MENOR DE EDAD... ----->
                ; Nombre del padre, la madre o tutor
                cursor 18, 43
                captura regTutorNomPac01
                ; Número de teléfono
                cursor 19, 27
                captura regTutorTelPac01
                ; Domicilio    
                cursor 19, 52
                captura regTutorDomPac01

            jmp READKEY01CAP

            FORM_HISTCLIN01CAP:
                ; Llamada a la Macro que se encarga de imprimir el formulario de historial médico para la captura de datos.
                imprimeHisClin cadPaciente01, histProbMPac01, histEspPromPac01, histInqumPac01, histMedicPac01, histVacuPac01, histFarmPac01, histNumFarmPac01, captura

            jmp READKEY01CAP

            FORM_AUTORIZACION01CAP:
                ; Se llama a la macro que se encarga de imprimir el formato de la autorización para la captura de datos.
                imprimeAut cadPaciente01, autFirmaPac01, autFechaFirmPac01, captura

            jmp READKEY01CAP

            FORM_ACUSE01CAP:
                ; Llamada a la Macro que se encarga de imprimir el formato de Acuse para la captura de datos.
                imprimeAcuse cadPaciente01, acuseNomPac01, acuseFirmPac01, captura

            jmp READKEY01CAP

    OPC_CONSULTA01:
            MENU_FORMULARIOS01CONS:
            ; Llamada a la Macro que se encarga de imprimir el menú de formulario.
            imprimeMenuFormularios cadPaciente01

            ; TERCERA LISTA DE CASOS:
            CASE_A1CONS:
                cmp opcion, 065
                jz FORM_REGISTRO01CONS
                jmp CASE_B1CONS
            CASE_B1CONS:
                cmp opcion, 066
                jz FORM_HISTCLIN01CONS
                jmp CASE_C1CONS
            CASE_C1CONS:
                cmp opcion, 067
                jz FORM_AUTORIZACION01CONS
                jmp CASE_D1CONS
            CASE_D1CONS:
                cmp opcion, 068
                jz FORM_ACUSE01CONS
                jmp CASE_E1CONS
            CASE_E1CONS:
                cmp opcion, 069
                jz MENU_PREGUNTA01
                jmp FIN

            FORM_REGISTRO01CONS:
                ; |----- Impresión del formulario -----|
                limpia
                imprime cadRegistro00
                imprime cadRegistro01
                imprime cadRegistro02
                imprime cadRegistro03
                imprime cadRegistro04
                imprime cadRegistro05
                imprime cadRegistro06
                imprime cadRegistro07
                imprime cadRegistro08
                imprime cadRegistro09
                imprime cadRegistro10
                imprime cadRegistro11
                imprime cadRegistro12
                imprime cadRegistro13
                imprime cadRegistro14
                imprime cadRegistro15
                imprime cadRegistro16
                imprime cadRegistro17
                imprime cadRegistro18
                imprime cadRegistro19
                imprime cadRegistro20

                cursor 2, 30
                imprime cadPaciente01

                ; |----- Captura de la información -----|
                ; <----- INFORMACIÓN PERSONAL ----->
                ; Apellidos
                cursor 5, 18
                imprime regApPac01
                ; Nombres
                cursor 5, 50
                imprime regNomPac01
                ; Fecha de nacimiento
                cursor 6, 28
                imprime regNacPac01
                ; Sexo de nacimiento
                cursor 6, 61
                imprime regSexoPac01
                ; Estado civil
                cursor 7, 21
                imprime regEstCPac01
                ; Idioma preferido
                cursor 7, 59
                imprime regIdiomaPac01

                ; <----- INFORMACIÓN DE CONTACTO ----->
                ; Domicilio
                cursor 10, 18
                imprime regDomPac01
                ; Ciudad
                cursor 11, 15
                imprime regCiudPac01
                ; Estado
                cursor 11, 37
                imprime regEstPac01
                ; Código Postal
                cursor 11, 66
                imprime regCPPac01
                ; Teléfono Particular
                cursor 12, 28
                imprime regTelPPac01
                ; Teléfono Laboral
                cursor 12, 59
                imprime regTelLabPac01
                ; Correo electrónico
                cursor 13, 27
                imprime regCorreoPac01
                ; Nombre de contacto de emergencia
                cursor 14, 41
                imprime regNomCEmPac01
                ; Número de teléfono
                cursor 15, 27
                imprime regTelEmPac01
                ; Vínculo
                cursor 15, 50
                imprime regVinEmPac01

                ; <----- EN CASO DE SER MENOR DE EDAD... ----->
                ; Nombre del padre, la madre o tutor
                cursor 18, 43
                imprime regTutorNomPac01
                ; Número de teléfono
                cursor 19, 27
                imprime regTutorTelPac01
                ; Domicilio    
                cursor 19, 52
                imprime regTutorDomPac01

            jmp READKEY01CONS

            FORM_HISTCLIN01CONS:
                ; Llamada a la Macro que se encarga de imprimir el formulario de historial médico para la captura de datos.
                imprimeHisClin cadPaciente01, histProbMPac01, histEspPromPac01, histInqumPac01, histMedicPac01, histVacuPac01, histFarmPac01, histNumFarmPac01, imprime

            jmp READKEY01CONS

            FORM_AUTORIZACION01CONS:
                ; Se llama a la macro que se encarga de imprimir el formato de la autorización para la captura de datos.
                imprimeAut cadPaciente01, autFirmaPac01, autFechaFirmPac01, imprime

            jmp READKEY01CONS

            FORM_ACUSE01CONS:
                ; Llamada a la Macro que se encarga de imprimir el formato de Acuse para la captura de datos.
                imprimeAcuse cadPaciente01, acuseNomPac01, acuseFirmPac01, imprime

            jmp READKEY01CONS

    jmp READKEY01

PACIENTE_02:
    MENU_PREGUNTA02:
        ; Llamada a la Macro que se encarga de imprimir el formulario de pregunta
        imprimeMenuPregunta cadPaciente02

        ; SEGUNDA LISTA DE CASOS:
        limpia  ; Llamada a la Macro que limpia la pantalla.

        CASE_A02:
            cmp opcion, 065
            jz OPC_LLENADO02
            jmp CASE_B02
        CASE_B02:
            cmp opcion, 066
            jz OPC_CONSULTA02
            jmp CASE_C02
        CASE_C02:
            cmp opcion, 067
            jz MENU_PACIENTES
            jmp FIN

    OPC_LLENADO02:
        MENU_FORMULARIOS02CAP:
            ; Llamada a la Macro que se encarga de imprimir el menú de formulario.
            imprimeMenuFormularios cadPaciente02

            ; TERCERA LISTA DE CASOS:
            CASE_A2CAP:
                cmp opcion, 065
                jz FORM_REGISTRO02CAP
                jmp CASE_B2CAP
            CASE_B2CAP:
                cmp opcion, 066
                jz FORM_HISTCLIN02CAP
                jmp CASE_C2CAP
            CASE_C2CAP:
                cmp opcion, 067
                jz FORM_AUTORIZACION02CAP
                jmp CASE_D2CAP
            CASE_D2CAP:
                cmp opcion, 068
                jz FORM_ACUSE02CAP
                jmp CASE_E2CAP
            CASE_E2CAP:
                cmp opcion, 069
                jz MENU_PREGUNTA02
                jmp FIN

            FORM_REGISTRO02CAP:
                ; |----- Impresión del formulario -----|
                limpia
                imprime cadRegistro00
                imprime cadRegistro01
                imprime cadRegistro02
                imprime cadRegistro03
                imprime cadRegistro04
                imprime cadRegistro05
                imprime cadRegistro06
                imprime cadRegistro07
                imprime cadRegistro08
                imprime cadRegistro09
                imprime cadRegistro10
                imprime cadRegistro11
                imprime cadRegistro12
                imprime cadRegistro13
                imprime cadRegistro14
                imprime cadRegistro15
                imprime cadRegistro16
                imprime cadRegistro17
                imprime cadRegistro18
                imprime cadRegistro19
                imprime cadRegistro20

                cursor 2, 30
                imprime cadPaciente02

                ; |----- Captura de la información -----|
                ; <----- INFORMACIÓN PERSONAL ----->
                ; Apellidos
                cursor 5, 18
                captura regApPac02
                ; Nombres
                cursor 5, 50
                captura regNomPac02
                ; Fecha de nacimiento
                cursor 6, 28
                captura regNacPac02
                ; Sexo de nacimiento
                cursor 6, 61
                captura regSexoPac02
                ; Estado civil
                cursor 7, 21
                captura regEstCPac02
                ; Idioma preferido
                cursor 7, 59
                captura regIdiomaPac02

                ; <----- INFORMACIÓN DE CONTACTO ----->
                ; Domicilio
                cursor 10, 18
                captura regDomPac02
                ; Ciudad
                cursor 11, 15
                captura regCiudPac02
                ; Estado
                cursor 11, 37
                captura regEstPac02
                ; Código Postal
                cursor 11, 66
                captura regCPPac02
                ; Teléfono Particular
                cursor 12, 28
                captura regTelPPac02
                ; Teléfono Laboral
                cursor 12, 59
                captura regTelLabPac02
                ; Correo electrónico
                cursor 13, 27
                captura regCorreoPac02
                ; Nombre de contacto de emergencia
                cursor 14, 41
                captura regNomCEmPac02
                ; Número de teléfono
                cursor 15, 27
                captura regTelEmPac02
                ; Vínculo
                cursor 15, 50
                captura regVinEmPac02

                ; <----- EN CASO DE SER MENOR DE EDAD... ----->
                ; Nombre del padre, la madre o tutor
                cursor 18, 43
                captura regTutorNomPac02
                ; Número de teléfono
                cursor 19, 27
                captura regTutorTelPac02
                ; Domicilio    
                cursor 19, 52
                captura regTutorDomPac02

            jmp READKEY02CAP

            FORM_HISTCLIN02CAP:
                ; Llamada a la Macro que se encarga de imprimir el formulario de historial médico para la captura de datos.
                imprimeHisClin cadPaciente02,histProbMPac02, histEspPromPac02, histInqumPac02, histMedicPac02, histVacuPac02, histFarmPac02, histNumFarmPac02, captura

            jmp READKEY02CAP

            FORM_AUTORIZACION02CAP:
                ; Se llama a la macro que se encarga de imprimir el formato de la autorización para la captura de datos.
                imprimeAut cadPaciente02, autFirmaPac02, autFechaFirmPac02, captura

            jmp READKEY02CAP

            FORM_ACUSE02CAP:
                ; Llamada a la Macro que se encarga de imprimir el formato de Acuse para la captura de datos.
                imprimeAcuse cadPaciente02, acuseNomPac02, acuseFirmPac02, captura

            jmp READKEY02CAP

    OPC_CONSULTA02:
            MENU_FORMULARIOS02CONS:
            ; Llamada a la Macro que se encarga de imprimir el menú de formulario.
            imprimeMenuFormularios cadPaciente02

            ; TERCERA LISTA DE CASOS:
            CASE_A2CONS:
                cmp opcion, 065
                jz FORM_REGISTRO02CONS
                jmp CASE_B2CONS
            CASE_B2CONS:
                cmp opcion, 066
                jz FORM_HISTCLIN02CONS
                jmp CASE_C2CONS
            CASE_C2CONS:
                cmp opcion, 067
                jz FORM_AUTORIZACION02CONS
                jmp CASE_D2CONS
            CASE_D2CONS:
                cmp opcion, 068
                jz FORM_ACUSE02CONS
                jmp CASE_E2CONS
            CASE_E2CONS:
                cmp opcion, 069
                jz MENU_PREGUNTA02
                jmp FIN

            FORM_REGISTRO02CONS:
                ; |----- Impresión del formulario -----|
                limpia
                imprime cadRegistro00
                imprime cadRegistro01
                imprime cadRegistro02
                imprime cadRegistro03
                imprime cadRegistro04
                imprime cadRegistro05
                imprime cadRegistro06
                imprime cadRegistro07
                imprime cadRegistro08
                imprime cadRegistro09
                imprime cadRegistro10
                imprime cadRegistro11
                imprime cadRegistro12
                imprime cadRegistro13
                imprime cadRegistro14
                imprime cadRegistro15
                imprime cadRegistro16
                imprime cadRegistro17
                imprime cadRegistro18
                imprime cadRegistro19
                imprime cadRegistro20

                cursor 2, 30
                imprime cadPaciente02

                ; |----- Captura de la información -----|
                ; <----- INFORMACIÓN PERSONAL ----->
                ; Apellidos
                cursor 5, 18
                imprime regApPac02
                ; Nombres
                cursor 5, 50
                imprime regNomPac02
                ; Fecha de nacimiento
                cursor 6, 28
                imprime regNacPac02
                ; Sexo de nacimiento
                cursor 6, 61
                imprime regSexoPac02
                ; Estado civil
                cursor 7, 21
                imprime regEstCPac02
                ; Idioma preferido
                cursor 7, 59
                imprime regIdiomaPac02

                ; <----- INFORMACIÓN DE CONTACTO ----->
                ; Domicilio
                cursor 10, 18
                imprime regDomPac02
                ; Ciudad
                cursor 11, 15
                imprime regCiudPac02
                ; Estado
                cursor 11, 37
                imprime regEstPac02
                ; Código Postal
                cursor 11, 66
                imprime regCPPac02
                ; Teléfono Particular
                cursor 12, 28
                imprime regTelPPac02
                ; Teléfono Laboral
                cursor 12, 59
                imprime regTelLabPac02
                ; Correo electrónico
                cursor 13, 27
                imprime regCorreoPac02
                ; Nombre de contacto de emergencia
                cursor 14, 41
                imprime regNomCEmPac02
                ; Número de teléfono
                cursor 15, 27
                imprime regTelEmPac02
                ; Vínculo
                cursor 15, 50
                imprime regVinEmPac02

                ; <----- EN CASO DE SER MENOR DE EDAD... ----->
                ; Nombre del padre, la madre o tutor
                cursor 18, 43
                imprime regTutorNomPac02
                ; Número de teléfono
                cursor 19, 27
                imprime regTutorTelPac02
                ; Domicilio    
                cursor 19, 52
                imprime regTutorDomPac02

            jmp READKEY02CONS

            FORM_HISTCLIN02CONS:
                ; Llamada a la Macro que se encarga de imprimir el formulario de historial médico para la captura de datos.
                imprimeHisClin cadPaciente02, histProbMPac02, histEspPromPac02, histInqumPac02, histMedicPac02, histVacuPac02, histFarmPac02, histNumFarmPac02, imprime

            jmp READKEY02CONS

            FORM_AUTORIZACION02CONS:
                ; Se llama a la macro que se encarga de imprimir el formato de la autorización para la captura de datos.
                imprimeAut cadPaciente02, autFirmaPac02, autFechaFirmPac02, imprime

            jmp READKEY02CONS

            FORM_ACUSE02CONS:
                ; Llamada a la Macro que se encarga de imprimir el formato de Acuse para la captura de datos.
                imprimeAcuse cadPaciente02, acuseNomPac02, acuseFirmPac02, imprime

            jmp READKEY02CONS

    jmp READKEY02

PACIENTE_03:
    MENU_PREGUNTA03:
        ; Llamada a la Macro que se encarga de imprimir el formulario de pregunta
        imprimeMenuPregunta cadPaciente03

        ; SEGUNDA LISTA DE CASOS:
        limpia  ; Llamada a la Macro que limpia la pantalla.

        CASE_A03:
            cmp opcion, 065
            jz OPC_LLENADO03
            jmp CASE_B03
        CASE_B03:
            cmp opcion, 066
            jz OPC_CONSULTA03
            jmp CASE_C03
        CASE_C03:
            cmp opcion, 067
            jz MENU_PACIENTES
            jmp FIN

    OPC_LLENADO03:
        MENU_FORMULARIOS03CAP:
            ; Llamada a la Macro que se encarga de imprimir el menú de formulario.
            imprimeMenuFormularios cadPaciente03

            ; TERCERA LISTA DE CASOS:
            CASE_A3CAP:
                cmp opcion, 065
                jz FORM_REGISTRO03CAP
                jmp CASE_B3CAP
            CASE_B3CAP:
                cmp opcion, 066
                jz FORM_HISTCLIN03CAP
                jmp CASE_C3CAP
            CASE_C3CAP:
                cmp opcion, 067
                jz FORM_AUTORIZACION03CAP
                jmp CASE_D3CAP
            CASE_D3CAP:
                cmp opcion, 068
                jz FORM_ACUSE03CAP
                jmp CASE_E3CAP
            CASE_E3CAP:
                cmp opcion, 069
                jz MENU_PREGUNTA03
                jmp FIN

            FORM_REGISTRO03CAP:
                ; |----- Impresión del formulario -----|
                limpia
                imprime cadRegistro00
                imprime cadRegistro01
                imprime cadRegistro02
                imprime cadRegistro03
                imprime cadRegistro04
                imprime cadRegistro05
                imprime cadRegistro06
                imprime cadRegistro07
                imprime cadRegistro08
                imprime cadRegistro09
                imprime cadRegistro10
                imprime cadRegistro11
                imprime cadRegistro12
                imprime cadRegistro13
                imprime cadRegistro14
                imprime cadRegistro15
                imprime cadRegistro16
                imprime cadRegistro17
                imprime cadRegistro18
                imprime cadRegistro19
                imprime cadRegistro20

                cursor 2, 30
                imprime cadPaciente03

                ; |----- Captura de la información -----|
                ; <----- INFORMACIÓN PERSONAL ----->
                ; Apellidos
                cursor 5, 18
                captura regApPac03
                ; Nombres
                cursor 5, 50
                captura regNomPac03
                ; Fecha de nacimiento
                cursor 6, 28
                captura regNacPac03
                ; Sexo de nacimiento
                cursor 6, 61
                captura regSexoPac03
                ; Estado civil
                cursor 7, 21
                captura regEstCPac03
                ; Idioma preferido
                cursor 7, 59
                captura regIdiomaPac03

                ; <----- INFORMACIÓN DE CONTACTO ----->
                ; Domicilio
                cursor 10, 18
                captura regDomPac03
                ; Ciudad
                cursor 11, 15
                captura regCiudPac03
                ; Estado
                cursor 11, 37
                captura regEstPac03
                ; Código Postal
                cursor 11, 66
                captura regCPPac03
                ; Teléfono Particular
                cursor 12, 28
                captura regTelPPac03
                ; Teléfono Laboral
                cursor 12, 59
                captura regTelLabPac03
                ; Correo electrónico
                cursor 13, 27
                captura regCorreoPac03
                ; Nombre de contacto de emergencia
                cursor 14, 41
                captura regNomCEmPac03
                ; Número de teléfono
                cursor 15, 27
                captura regTelEmPac03
                ; Vínculo
                cursor 15, 50
                captura regVinEmPac03

                ; <----- EN CASO DE SER MENOR DE EDAD... ----->
                ; Nombre del padre, la madre o tutor
                cursor 18, 43
                captura regTutorNomPac03
                ; Número de teléfono
                cursor 19, 27
                captura regTutorTelPac03
                ; Domicilio    
                cursor 19, 52
                captura regTutorDomPac03

            jmp READKEY03CAP

            FORM_HISTCLIN03CAP:
                ; Llamada a la Macro que se encarga de imprimir el formulario de historial médico para la captura de datos.
                imprimeHisClin cadPaciente03, histProbMPac03, histEspPromPac03, histInqumPac03, histMedicPac03, histVacuPac03, histFarmPac03, histNumFarmPac03, captura

            jmp READKEY03CAP

            FORM_AUTORIZACION03CAP:
                ; Se llama a la macro que se encarga de imprimir el formato de la autorización para la captura de datos.
                imprimeAut cadPaciente03, autFirmaPac03, autFechaFirmPac03, captura

            jmp READKEY03CAP

            FORM_ACUSE03CAP:
                ; Llamada a la Macro que se encarga de imprimir el formato de Acuse para la captura de datos.
                imprimeAcuse cadPaciente03, acuseNomPac03, acuseFirmPac03, captura

            jmp READKEY03CAP

    OPC_CONSULTA03:
            MENU_FORMULARIOS03CONS:
            ; Llamada a la Macro que se encarga de imprimir el menú de formulario.
            imprimeMenuFormularios cadPaciente03

            ; TERCERA LISTA DE CASOS:
            CASE_A3CONS:
                cmp opcion, 065
                jz FORM_REGISTRO03CONS
                jmp CASE_B3CONS
            CASE_B3CONS:
                cmp opcion, 066
                jz FORM_HISTCLIN03CONS
                jmp CASE_C3CONS
            CASE_C3CONS:
                cmp opcion, 067
                jz FORM_AUTORIZACION03CONS
                jmp CASE_D3CONS
            CASE_D3CONS:
                cmp opcion, 068
                jz FORM_ACUSE03CONS
                jmp CASE_E3CONS
            CASE_E3CONS:
                cmp opcion, 069
                jz MENU_PREGUNTA03
                jmp FIN

            FORM_REGISTRO03CONS:
                ; |----- Impresión del formulario -----|
                limpia
                imprime cadRegistro00
                imprime cadRegistro01
                imprime cadRegistro02
                imprime cadRegistro03
                imprime cadRegistro04
                imprime cadRegistro05
                imprime cadRegistro06
                imprime cadRegistro07
                imprime cadRegistro08
                imprime cadRegistro09
                imprime cadRegistro10
                imprime cadRegistro11
                imprime cadRegistro12
                imprime cadRegistro13
                imprime cadRegistro14
                imprime cadRegistro15
                imprime cadRegistro16
                imprime cadRegistro17
                imprime cadRegistro18
                imprime cadRegistro19
                imprime cadRegistro20

                cursor 2, 30
                imprime cadPaciente03

                ; |----- Captura de la información -----|
                ; <----- INFORMACIÓN PERSONAL ----->
                ; Apellidos
                cursor 5, 18
                imprime regApPac03
                ; Nombres
                cursor 5, 50
                imprime regNomPac03
                ; Fecha de nacimiento
                cursor 6, 28
                imprime regNacPac03
                ; Sexo de nacimiento
                cursor 6, 61
                imprime regSexoPac03
                ; Estado civil
                cursor 7, 21
                imprime regEstCPac03
                ; Idioma preferido
                cursor 7, 59
                imprime regIdiomaPac03

                ; <----- INFORMACIÓN DE CONTACTO ----->
                ; Domicilio
                cursor 10, 18
                imprime regDomPac03
                ; Ciudad
                cursor 11, 15
                imprime regCiudPac03
                ; Estado
                cursor 11, 37
                imprime regEstPac03
                ; Código Postal
                cursor 11, 66
                imprime regCPPac03
                ; Teléfono Particular
                cursor 12, 28
                imprime regTelPPac03
                ; Teléfono Laboral
                cursor 12, 59
                imprime regTelLabPac03
                ; Correo electrónico
                cursor 13, 27
                imprime regCorreoPac03
                ; Nombre de contacto de emergencia
                cursor 14, 41
                imprime regNomCEmPac03
                ; Número de teléfono
                cursor 15, 27
                imprime regTelEmPac03
                ; Vínculo
                cursor 15, 50
                imprime regVinEmPac03

                ; <----- EN CASO DE SER MENOR DE EDAD... ----->
                ; Nombre del padre, la madre o tutor
                cursor 18, 43
                imprime regTutorNomPac03
                ; Número de teléfono
                cursor 19, 27
                imprime regTutorTelPac03
                ; Domicilio    
                cursor 19, 52
                imprime regTutorDomPac03

            jmp READKEY03CONS

            FORM_HISTCLIN03CONS:
                ; Llamada a la Macro que se encarga de imprimir el formulario de historial médico para la captura de datos.
                imprimeHisClin cadPaciente03, histProbMPac03, histEspPromPac03, histInqumPac03, histMedicPac03, histVacuPac03, histFarmPac03, histNumFarmPac03, imprime

            jmp READKEY03CONS

            FORM_AUTORIZACION03CONS:
                ; Se llama a la macro que se encarga de imprimir el formato de la autorización para la captura de datos.
                imprimeAut cadPaciente03, autFirmaPac03, autFechaFirmPac03, imprime

            jmp READKEY03CONS

            FORM_ACUSE03CONS:
                ; Llamada a la Macro que se encarga de imprimir el formato de Acuse para la captura de datos.
                imprimeAcuse cadPaciente03, acuseNomPac03, acuseFirmPac03, imprime

            jmp READKEY03CONS

    jmp READKEY03

PACIENTE_04:
    MENU_PREGUNTA04:
        ; Llamada a la Macro que se encarga de imprimir el formulario de pregunta
        imprimeMenuPregunta cadPaciente04

        ; SEGUNDA LISTA DE CASOS:
        limpia  ; Llamada a la Macro que limpia la pantalla.

        CASE_A04:
            cmp opcion, 065
            jz OPC_LLENADO04
            jmp CASE_B04
        CASE_B04:
            cmp opcion, 066
            jz OPC_CONSULTA04
            jmp CASE_C04
        CASE_C04:
            cmp opcion, 067
            jz MENU_PACIENTES
            jmp FIN

    OPC_LLENADO04:
        MENU_FORMULARIOS04CAP:
            ; Llamada a la Macro que se encarga de imprimir el menú de formulario.
            imprimeMenuFormularios cadPaciente04

            ; TERCERA LISTA DE CASOS:
            CASE_A4CAP:
                cmp opcion, 065
                jz FORM_REGISTRO04CAP
                jmp CASE_B4CAP
            CASE_B4CAP:
                cmp opcion, 066
                jz FORM_HISTCLIN04CAP
                jmp CASE_C4CAP
            CASE_C4CAP:
                cmp opcion, 067
                jz FORM_AUTORIZACION04CAP
                jmp CASE_D4CAP
            CASE_D4CAP:
                cmp opcion, 068
                jz FORM_ACUSE04CAP
                jmp CASE_E4CAP
            CASE_E4CAP:
                cmp opcion, 069
                jz MENU_PREGUNTA04
                jmp FIN

            FORM_REGISTRO04CAP:
                ; |----- Impresión del formulario -----|
                limpia
                imprime cadRegistro00
                imprime cadRegistro01
                imprime cadRegistro02
                imprime cadRegistro03
                imprime cadRegistro04
                imprime cadRegistro05
                imprime cadRegistro06
                imprime cadRegistro07
                imprime cadRegistro08
                imprime cadRegistro09
                imprime cadRegistro10
                imprime cadRegistro11
                imprime cadRegistro12
                imprime cadRegistro13
                imprime cadRegistro14
                imprime cadRegistro15
                imprime cadRegistro16
                imprime cadRegistro17
                imprime cadRegistro18
                imprime cadRegistro19
                imprime cadRegistro20

                cursor 2, 30
                imprime cadPaciente04

                ; |----- Captura de la información -----|
                ; <----- INFORMACIÓN PERSONAL ----->
                ; Apellidos
                cursor 5, 18
                captura regApPac04
                ; Nombres
                cursor 5, 50
                captura regNomPac04
                ; Fecha de nacimiento
                cursor 6, 28
                captura regNacPac04
                ; Sexo de nacimiento
                cursor 6, 61
                captura regSexoPac04
                ; Estado civil
                cursor 7, 21
                captura regEstCPac04
                ; Idioma preferido
                cursor 7, 59
                captura regIdiomaPac04

                ; <----- INFORMACIÓN DE CONTACTO ----->
                ; Domicilio
                cursor 10, 18
                captura regDomPac04
                ; Ciudad
                cursor 11, 15
                captura regCiudPac04
                ; Estado
                cursor 11, 37
                captura regEstPac04
                ; Código Postal
                cursor 11, 66
                captura regCPPac04
                ; Teléfono Particular
                cursor 12, 28
                captura regTelPPac04
                ; Teléfono Laboral
                cursor 12, 59
                captura regTelLabPac04
                ; Correo electrónico
                cursor 13, 27
                captura regCorreoPac04
                ; Nombre de contacto de emergencia
                cursor 14, 41
                captura regNomCEmPac04
                ; Número de teléfono
                cursor 15, 27
                captura regTelEmPac04
                ; Vínculo
                cursor 15, 50
                captura regVinEmPac04

                ; <----- EN CASO DE SER MENOR DE EDAD... ----->
                ; Nombre del padre, la madre o tutor
                cursor 18, 43
                captura regTutorNomPac04
                ; Número de teléfono
                cursor 19, 27
                captura regTutorTelPac04
                ; Domicilio    
                cursor 19, 52
                captura regTutorDomPac04

            jmp READKEY04CAP

            FORM_HISTCLIN04CAP:
                ; Llamada a la Macro que se encarga de imprimir el formulario de historial médico para la captura de datos.
                imprimeHisClin cadPaciente04, histProbMPac04, histEspPromPac04, histInqumPac04, histMedicPac04, histVacuPac04, histFarmPac04, histNumFarmPac04, captura

            jmp READKEY04CAP

            FORM_AUTORIZACION04CAP:
                ; Se llama a la macro que se encarga de imprimir el formato de la autorización para la captura de datos.
                imprimeAut cadPaciente04, autFirmaPac04, autFechaFirmPac04, captura

            jmp READKEY04CAP

            FORM_ACUSE04CAP:
                ; Llamada a la Macro que se encarga de imprimir el formato de Acuse para la captura de datos.
                imprimeAcuse cadPaciente04, acuseNomPac04, acuseFirmPac04, captura

            jmp READKEY04CAP

    OPC_CONSULTA04:
            MENU_FORMULARIOS04CONS:
            ; Llamada a la Macro que se encarga de imprimir el menú de formulario.
            imprimeMenuFormularios cadPaciente04

            ; TERCERA LISTA DE CASOS:
            CASE_A4CONS:
                cmp opcion, 065
                jz FORM_REGISTRO04CONS
                jmp CASE_B4CONS
            CASE_B4CONS:
                cmp opcion, 066
                jz FORM_HISTCLIN04CONS
                jmp CASE_C4CONS
            CASE_C4CONS:
                cmp opcion, 067
                jz FORM_AUTORIZACION04CONS
                jmp CASE_D4CONS
            CASE_D4CONS:
                cmp opcion, 068
                jz FORM_ACUSE04CONS
                jmp CASE_E4CONS
            CASE_E4CONS:
                cmp opcion, 069
                jz MENU_PREGUNTA04
                jmp FIN

            FORM_REGISTRO04CONS:
                ; |----- Impresión del formulario -----|
                limpia
                imprime cadRegistro00
                imprime cadRegistro01
                imprime cadRegistro02
                imprime cadRegistro03
                imprime cadRegistro04
                imprime cadRegistro05
                imprime cadRegistro06
                imprime cadRegistro07
                imprime cadRegistro08
                imprime cadRegistro09
                imprime cadRegistro10
                imprime cadRegistro11
                imprime cadRegistro12
                imprime cadRegistro13
                imprime cadRegistro14
                imprime cadRegistro15
                imprime cadRegistro16
                imprime cadRegistro17
                imprime cadRegistro18
                imprime cadRegistro19
                imprime cadRegistro20

                cursor 2, 30
                imprime cadPaciente04

                ; |----- Captura de la información -----|
                ; <----- INFORMACIÓN PERSONAL ----->
                ; Apellidos
                cursor 5, 18
                imprime regApPac04
                ; Nombres
                cursor 5, 50
                imprime regNomPac04
                ; Fecha de nacimiento
                cursor 6, 28
                imprime regNacPac04
                ; Sexo de nacimiento
                cursor 6, 61
                imprime regSexoPac04
                ; Estado civil
                cursor 7, 21
                imprime regEstCPac04
                ; Idioma preferido
                cursor 7, 59
                imprime regIdiomaPac04

                ; <----- INFORMACIÓN DE CONTACTO ----->
                ; Domicilio
                cursor 10, 18
                imprime regDomPac04
                ; Ciudad
                cursor 11, 15
                imprime regCiudPac04
                ; Estado
                cursor 11, 37
                imprime regEstPac04
                ; Código Postal
                cursor 11, 66
                imprime regCPPac04
                ; Teléfono Particular
                cursor 12, 28
                imprime regTelPPac04
                ; Teléfono Laboral
                cursor 12, 59
                imprime regTelLabPac04
                ; Correo electrónico
                cursor 13, 27
                imprime regCorreoPac04
                ; Nombre de contacto de emergencia
                cursor 14, 41
                imprime regNomCEmPac04
                ; Número de teléfono
                cursor 15, 27
                imprime regTelEmPac04
                ; Vínculo
                cursor 15, 50
                imprime regVinEmPac04

                ; <----- EN CASO DE SER MENOR DE EDAD... ----->
                ; Nombre del padre, la madre o tutor
                cursor 18, 43
                imprime regTutorNomPac04
                ; Número de teléfono
                cursor 19, 27
                imprime regTutorTelPac04
                ; Domicilio    
                cursor 19, 52
                imprime regTutorDomPac04

            jmp READKEY04CONS

            FORM_HISTCLIN04CONS:
                ; Llamada a la Macro que se encarga de imprimir el formulario de historial médico para la captura de datos.
                imprimeHisClin cadPaciente04, histProbMPac04, histEspPromPac04, histInqumPac04, histMedicPac04, histVacuPac04, histFarmPac04, histNumFarmPac04, imprime

            jmp READKEY04CONS

            FORM_AUTORIZACION04CONS:
                ; Se llama a la macro que se encarga de imprimir el formato de la autorización para la captura de datos.
                imprimeAut cadPaciente04, autFirmaPac04, autFechaFirmPac04, imprime

            jmp READKEY04CONS

            FORM_ACUSE04CONS:
                ; Llamada a la Macro que se encarga de imprimir el formato de Acuse para la captura de datos.
                imprimeAcuse cadPaciente04, acuseNomPac04, acuseFirmPac04, imprime

            jmp READKEY04CONS

PACIENTE_05:
    MENU_PREGUNTA05:
        ; Llamada a la Macro que se encarga de imprimir el formulario de pregunta
        imprimeMenuPregunta cadPaciente05

        ; SEGUNDA LISTA DE CASOS:
        limpia  ; Llamada a la Macro que limpia la pantalla.

        CASE_A05:
            cmp opcion, 065
            jz OPC_LLENADO05
            jmp CASE_B05
        CASE_B05:
            cmp opcion, 066
            jz OPC_CONSULTA05
            jmp CASE_C05
        CASE_C05:
            cmp opcion, 067
            jz MENU_PACIENTES
            jmp FIN

    OPC_LLENADO05:
        MENU_FORMULARIOS05CAP:
            ; Llamada a la Macro que se encarga de imprimir el menú de formulario.
            imprimeMenuFormularios cadPaciente05

            ; TERCERA LISTA DE CASOS:
            CASE_A5CAP:
                cmp opcion, 065
                jz FORM_REGISTRO05CAP
                jmp CASE_B5CAP
            CASE_B5CAP:
                cmp opcion, 066
                jz FORM_HISTCLIN05CAP
                jmp CASE_C5CAP
            CASE_C5CAP:
                cmp opcion, 067
                jz FORM_AUTORIZACION05CAP
                jmp CASE_D5CAP
            CASE_D5CAP:
                cmp opcion, 068
                jz FORM_ACUSE05CAP
                jmp CASE_E5CAP
            CASE_E5CAP:
                cmp opcion, 069
                jz MENU_PREGUNTA05
                jmp FIN

            FORM_REGISTRO05CAP:
                ; |----- Impresión del formulario -----|
                limpia
                imprime cadRegistro00
                imprime cadRegistro01
                imprime cadRegistro02
                imprime cadRegistro03
                imprime cadRegistro04
                imprime cadRegistro05
                imprime cadRegistro06
                imprime cadRegistro07
                imprime cadRegistro08
                imprime cadRegistro09
                imprime cadRegistro10
                imprime cadRegistro11
                imprime cadRegistro12
                imprime cadRegistro13
                imprime cadRegistro14
                imprime cadRegistro15
                imprime cadRegistro16
                imprime cadRegistro17
                imprime cadRegistro18
                imprime cadRegistro19
                imprime cadRegistro20

                cursor 2, 30
                imprime cadPaciente05

                ; |----- Captura de la información -----|
                ; <----- INFORMACIÓN PERSONAL ----->
                ; Apellidos
                cursor 5, 18
                captura regApPac05
                ; Nombres
                cursor 5, 50
                captura regNomPac05
                ; Fecha de nacimiento
                cursor 6, 28
                captura regNacPac05
                ; Sexo de nacimiento
                cursor 6, 61
                captura regSexoPac05
                ; Estado civil
                cursor 7, 21
                captura regEstCPac05
                ; Idioma preferido
                cursor 7, 59
                captura regIdiomaPac05

                ; <----- INFORMACIÓN DE CONTACTO ----->
                ; Domicilio
                cursor 10, 18
                captura regDomPac05
                ; Ciudad
                cursor 11, 15
                captura regCiudPac05
                ; Estado
                cursor 11, 37
                captura regEstPac05
                ; Código Postal
                cursor 11, 66
                captura regCPPac05
                ; Teléfono Particular
                cursor 12, 28
                captura regTelPPac05
                ; Teléfono Laboral
                cursor 12, 59
                captura regTelLabPac05
                ; Correo electrónico
                cursor 13, 27
                captura regCorreoPac05
                ; Nombre de contacto de emergencia
                cursor 14, 41
                captura regNomCEmPac05
                ; Número de teléfono
                cursor 15, 27
                captura regTelEmPac05
                ; Vínculo
                cursor 15, 50
                captura regVinEmPac05

                ; <----- EN CASO DE SER MENOR DE EDAD... ----->
                ; Nombre del padre, la madre o tutor
                cursor 18, 43
                captura regTutorNomPac05
                ; Número de teléfono
                cursor 19, 27
                captura regTutorTelPac05
                ; Domicilio    
                cursor 19, 52
                captura regTutorDomPac05

            jmp READKEY05CAP

            FORM_HISTCLIN05CAP:
                ; Llamada a la Macro que se encarga de imprimir el formulario de historial médico para la captura de datos.
                imprimeHisClin cadPaciente05, histProbMPac05, histEspPromPac05, histInqumPac05, histMedicPac05, histVacuPac05, histFarmPac05, histNumFarmPac05, captura

            jmp READKEY05CAP

            FORM_AUTORIZACION05CAP:
                ; Se llama a la macro que se encarga de imprimir el formato de la autorización para la captura de datos.
                imprimeAut cadPaciente05, autFirmaPac05, autFechaFirmPac05, captura

            jmp READKEY05CAP

            FORM_ACUSE05CAP:
                ; Llamada a la Macro que se encarga de imprimir el formato de Acuse para la captura de datos.
                imprimeAcuse cadPaciente05, acuseNomPac05, acuseFirmPac05, captura

            jmp READKEY05CAP

    OPC_CONSULTA05:
            MENU_FORMULARIOS05CONS:
            ; Llamada a la Macro que se encarga de imprimir el menú de formulario.
            imprimeMenuFormularios cadPaciente05

            ; TERCERA LISTA DE CASOS:
            CASE_A5CONS:
                cmp opcion, 065
                jz FORM_REGISTRO05CONS
                jmp CASE_B5CONS
            CASE_B5CONS:
                cmp opcion, 066
                jz FORM_HISTCLIN05CONS
                jmp CASE_C5CONS
            CASE_C5CONS:
                cmp opcion, 067
                jz FORM_AUTORIZACION05CONS
                jmp CASE_D5CONS
            CASE_D5CONS:
                cmp opcion, 068
                jz FORM_ACUSE05CONS
                jmp CASE_E5CONS
            CASE_E5CONS:
                cmp opcion, 069
                jz MENU_PREGUNTA05
                jmp FIN

            FORM_REGISTRO05CONS:
                ; |----- Impresión del formulario -----|
                limpia
                imprime cadRegistro00
                imprime cadRegistro01
                imprime cadRegistro02
                imprime cadRegistro03
                imprime cadRegistro04
                imprime cadRegistro05
                imprime cadRegistro06
                imprime cadRegistro07
                imprime cadRegistro08
                imprime cadRegistro09
                imprime cadRegistro10
                imprime cadRegistro11
                imprime cadRegistro12
                imprime cadRegistro13
                imprime cadRegistro14
                imprime cadRegistro15
                imprime cadRegistro16
                imprime cadRegistro17
                imprime cadRegistro18
                imprime cadRegistro19
                imprime cadRegistro20

                cursor 2, 30
                imprime cadPaciente05

                ; |----- Captura de la información -----|
                ; <----- INFORMACIÓN PERSONAL ----->
                ; Apellidos
                cursor 5, 18
                imprime regApPac05
                ; Nombres
                cursor 5, 50
                imprime regNomPac05
                ; Fecha de nacimiento
                cursor 6, 28
                imprime regNacPac05
                ; Sexo de nacimiento
                cursor 6, 61
                imprime regSexoPac05
                ; Estado civil
                cursor 7, 21
                imprime regEstCPac05
                ; Idioma preferido
                cursor 7, 59
                imprime regIdiomaPac05

                ; <----- INFORMACIÓN DE CONTACTO ----->
                ; Domicilio
                cursor 10, 18
                imprime regDomPac05
                ; Ciudad
                cursor 11, 15
                imprime regCiudPac05
                ; Estado
                cursor 11, 37
                imprime regEstPac05
                ; Código Postal
                cursor 11, 66
                imprime regCPPac05
                ; Teléfono Particular
                cursor 12, 28
                imprime regTelPPac05
                ; Teléfono Laboral
                cursor 12, 59
                imprime regTelLabPac05
                ; Correo electrónico
                cursor 13, 27
                imprime regCorreoPac05
                ; Nombre de contacto de emergencia
                cursor 14, 41
                imprime regNomCEmPac05
                ; Número de teléfono
                cursor 15, 27
                imprime regTelEmPac05
                ; Vínculo
                cursor 15, 50
                imprime regVinEmPac05

                ; <----- EN CASO DE SER MENOR DE EDAD... ----->
                ; Nombre del padre, la madre o tutor
                cursor 18, 43
                imprime regTutorNomPac05
                ; Número de teléfono
                cursor 19, 27
                imprime regTutorTelPac05
                ; Domicilio    
                cursor 19, 52
                imprime regTutorDomPac05

            jmp READKEY05CONS

            FORM_HISTCLIN05CONS:
                ; Llamada a la Macro que se encarga de imprimir el formulario de historial médico para la captura de datos.
                imprimeHisClin cadPaciente05, histProbMPac05, histEspPromPac05, histInqumPac05, histMedicPac05, histVacuPac05, histFarmPac05, histNumFarmPac05, imprime

            jmp READKEY05CONS

            FORM_AUTORIZACION05CONS:
                ; Se llama a la macro que se encarga de imprimir el formato de la autorización para la captura de datos.
                imprimeAut cadPaciente05, autFirmaPac05, autFechaFirmPac05, imprime

            jmp READKEY05CONS

            FORM_ACUSE05CONS:
                ; Llamada a la Macro que se encarga de imprimir el formato de Acuse para la captura de datos.
                imprimeAcuse cadPaciente05, acuseNomPac05, acuseFirmPac05, imprime

            jmp READKEY05CONS

; |-----------------|====== COMIENZAN LAS ETIQUETA DEL READKEY ======|-----------------|
; Readkeys para el primer paciente
READKEY01CAP:
    salto               ; Llamada a la Macro que realiza un salto de línea.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime readkeyOp   ; Llamada a la Macro de impresión.
    tecla               ; Llamada a la Macro de espera de una tecla.
    jmp MENU_FORMULARIOS01CAP

READKEY01CONS:
    salto               ; Llamada a la Macro que realiza un salto de línea.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime readkeyOp   ; Llamada a la Macro de impresión.
    tecla               ; Llamada a la Macro de espera de una tecla.
    jmp MENU_FORMULARIOS01CONS

READKEY01:
    salto               ; Llamada a la Macro que realiza un salto de línea.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime readkeyOp   ; Llamada a la Macro de impresión.
    tecla               ; Llamada a la Macro de espera de una tecla.
    jmp MENU_PREGUNTA02

; Readkeys para el segundo paciente
READKEY02CAP:
    salto               ; Llamada a la Macro que realiza un salto de línea.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime readkeyOp   ; Llamada a la Macro de impresión.
    tecla               ; Llamada a la Macro de espera de una tecla.
    jmp MENU_FORMULARIOS02CAP

READKEY02CONS:
    salto               ; Llamada a la Macro que realiza un salto de línea.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime readkeyOp   ; Llamada a la Macro de impresión.
    tecla               ; Llamada a la Macro de espera de una tecla.
    jmp MENU_FORMULARIOS02CONS

READKEY02:
    salto               ; Llamada a la Macro que realiza un salto de línea.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime readkeyOp   ; Llamada a la Macro de impresión.
    tecla               ; Llamada a la Macro de espera de una tecla.
    jmp MENU_PREGUNTA02

; Readkeys para el tercer paciente
READKEY03CAP:
    salto               ; Llamada a la Macro que realiza un salto de línea.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime readkeyOp   ; Llamada a la Macro de impresión.
    tecla               ; Llamada a la Macro de espera de una tecla.
    jmp MENU_FORMULARIOS03CAP

READKEY03CONS:
    salto               ; Llamada a la Macro que realiza un salto de línea.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime readkeyOp   ; Llamada a la Macro de impresión.
    tecla               ; Llamada a la Macro de espera de una tecla.
    jmp MENU_FORMULARIOS03CONS

READKEY03:
    salto               ; Llamada a la Macro que realiza un salto de línea.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime readkeyOp   ; Llamada a la Macro de impresión.
    tecla               ; Llamada a la Macro de espera de una tecla.
    jmp MENU_PREGUNTA03

; Readkeys para el cuarto paciente
READKEY04CAP:
    salto               ; Llamada a la Macro que realiza un salto de línea.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime readkeyOp   ; Llamada a la Macro de impresión.
    tecla               ; Llamada a la Macro de espera de una tecla.
    jmp MENU_FORMULARIOS04CAP

READKEY04CONS:
    salto               ; Llamada a la Macro que realiza un salto de línea.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime readkeyOp   ; Llamada a la Macro de impresión.
    tecla               ; Llamada a la Macro de espera de una tecla.
    jmp MENU_FORMULARIOS04CONS

READKEY04:
    salto               ; Llamada a la Macro que realiza un salto de línea.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime readkeyOp   ; Llamada a la Macro de impresión.
    tecla               ; Llamada a la Macro de espera de una tecla.
    jmp MENU_PREGUNTA04

; Readkeys para el quinto paciente
READKEY05CAP:
    salto               ; Llamada a la Macro que realiza un salto de línea.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime readkeyOp   ; Llamada a la Macro de impresión.
    tecla               ; Llamada a la Macro de espera de una tecla.
    jmp MENU_FORMULARIOS05CAP

READKEY05CONS:
    salto               ; Llamada a la Macro que realiza un salto de línea.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime readkeyOp   ; Llamada a la Macro de impresión.
    tecla               ; Llamada a la Macro de espera de una tecla.
    jmp MENU_FORMULARIOS05CONS

READKEY05:
    salto               ; Llamada a la Macro que realiza un salto de línea.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime readkeyOp   ; Llamada a la Macro de impresión.
    tecla               ; Llamada a la Macro de espera de una tecla.
    jmp MENU_PREGUNTA05

; |-----------------|====== COMIENZA LA ETIQUETA DE FINALIZACIÓN DEL PROGRAMA ======|-----------------|
FIN:
.exit
end