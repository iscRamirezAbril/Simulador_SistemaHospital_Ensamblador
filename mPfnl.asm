; |--- Declaración de Macros ---|
; |= Macro para impresión de cadenas =|
imprime MACRO t
    lea dx, t
    mov ah, 9
    int 21h
ENDM ; Break

; |= Macro para captura =|
captura MACRO o
    mov ah, 3fh
    mov bx, 00
    mov cx, 20
    mov dx, offset [o]
    int 21h
ENDM ; Break

; |= Macro para la espera de selección de una tecla =|
tecla MACRO o
    mov ah, 01h
    int 21h
ENDM ; Break

; |= Macro para el posicionamiento del cursor =|
cursor MACRO f, c
    mov ah, 02h          ; Petición para colocar el cursor
    mov dh, f            ; Direccionamiento para la fila
    mov dl, c            ; Direccionamiento para la columna
    int 10h              ; Ejecutamos la interrupcion para posicionamiento
ENDM ; Break

; |= Macro para salto de línea =|
salto MACRO
    mov ah, 02h
    mov dl, 0ah
    int 21h
ENDM ; Break

; |= Macro para limpiar pantalla =|
limpia MACRO
    mov ah, 00
    mov al, 03h
    int 10h
ENDM ; Break

; |= Macro para imprimir el menú de pacientes =|
imprimeMenuPacientes MACRO
    limpia               ; Llamada a la Macro que limpia la pantalla.
    imprime cadMenuPac1  ; Llamada a la Macro de impresión.
    imprime cadMenuPac2  ; Llamada a la Macro de impresión.
    imprime cadMenuPac3  ; Llamada a la Macro de impresión.
    imprime cadMenuPac4  ; Llamada a la Macro de impresión.
    imprime cadMenuPac5  ; Llamada a la Macro de impresión.
    imprime cadMenuPac6  ; Llamada a la Macro de impresión.
    imprime cadMenuPac7  ; Llamada a la Macro de impresión.
    imprime cadMenuPac8  ; Llamada a la Macro de impresión.
    imprime cadMenuPac9  ; Llamada a la Macro de impresión.
    imprime cadMenuPac10 ; Llamada a la Macro de impresión.
    imprime cadMenuPac11 ; Llamada a la Macro de impresión.
    imprime cadMenuPac12 ; Llamada a la Macro de impresión.
    imprime cadMenuPac13 ; Llamada a la Macro de impresión.

    cursor 11, 45
    captura opcion
ENDM ; Break

; |= Macro para imprimir el menú de preguntas =|
imprimeMenuPregunta MACRO numPaciente
    limpia                ; Llamada a la Macro que limpia la pantalla.
    imprime cadPregForm1  ; Llamada a la Macro de impresión.
    imprime cadPregForm2  ; Llamada a la Macro de impresión.
    imprime cadPregForm3  ; Llamada a la Macro de impresión.
    imprime cadPregForm4  ; Llamada a la Macro de impresión.
    imprime cadPregForm5  ; Llamada a la Macro de impresión.
    imprime cadPregForm6  ; Llamada a la Macro de impresión.
    imprime cadPregForm7  ; Llamada a la Macro de impresión.
    imprime cadPregForm8  ; Llamada a la Macro de impresión.
    imprime cadPregForm9  ; Llamada a la Macro de impresión.
    imprime cadPregForm10 ; Llamada a la Macro de impresión.
    imprime cadPregForm11 ; Llamada a la Macro de impresión.

    cursor 2, 30
    imprime numPaciente

    cursor 9, 38
    captura opcion

ENDM ; Break

; |= Macro para imprimir el menú de formularios =|
imprimeMenuFormularios MACRO numPaciente
    limpia                ; Llamada a la Macro que limpia la pantalla.
    imprime cadMenuForm1  ; Llamada a la Macro de impresión.
    imprime cadMenuForm2  ; Llamada a la Macro de impresión.
    imprime cadMenuForm3  ; Llamada a la Macro de impresión.
    imprime cadMenuForm4  ; Llamada a la Macro de impresión.
    imprime cadMenuForm5  ; Llamada a la Macro de impresión.
    imprime cadMenuForm6  ; Llamada a la Macro de impresión.
    imprime cadMenuForm7  ; Llamada a la Macro de impresión.
    imprime cadMenuForm8  ; Llamada a la Macro de impresión.
    imprime cadMenuForm9  ; Llamada a la Macro de impresión.
    imprime cadMenuForm10 ; Llamada a la Macro de impresión.
    imprime cadMenuForm11 ; Llamada a la Macro de impresión.
    imprime cadMenuForm12 ; Llamada a la Macro de impresión.
    imprime cadMenuForm13 ; Llamada a la Macro de impresión.

    cursor 2, 30
    imprime numPaciente

    cursor 11, 38
    captura opcion

ENDM ; Break

; |= Macro para imprimir el formato de autorización =|
imprimeAut MACRO numPaciente, FirmaAut, FechaFirmAut, macroUt
    ; |----- Impresión del formulario -----|
    limpia
    imprime cadAutorizacion00
    imprime cadAutorizacion01
    imprime cadAutorizacion02
    imprime cadAutorizacion03
    imprime cadAutorizacion04
    imprime cadAutorizacion05
    imprime cadAutorizacion06
    imprime cadAutorizacion07
    imprime cadAutorizacion08
    imprime cadAutorizacion09
    imprime cadAutorizacion10
    imprime cadAutorizacion11
    imprime cadAutorizacion12
    imprime cadAutorizacion13
    imprime cadAutorizacion14
    imprime cadAutorizacion15
    imprime cadAutorizacion16
    imprime cadAutorizacion17
    imprime cadAutorizacion18
    imprime cadAutorizacion19
    imprime cadAutorizacion20

    cursor 2, 30
    imprime numPaciente

    ; |----- Captura de la información -----|
    ; Firma del paciente
    cursor 19, 27
    macroUt FirmaAut

    ; Fecha de la firma
    cursor 19, 61
    macroUt FechaFirmAut
ENDM ; Break

; |= Macro para imprimir el formato de historial médico =|
imprimeHisClin MACRO numPaciente, probMed, espProbMed, inquMed, medicamentos, vacunas, farmacia, numTel, macroUt
    ; |----- Impresión del formulario -----|
    limpia
    imprime cadHisto00
    imprime cadHisto01
    imprime cadHisto02
    imprime cadHisto03
    imprime cadHisto04
    imprime cadHisto05
    imprime cadHisto06
    imprime cadHisto07
    imprime cadHisto08
    imprime cadHisto09
    imprime cadHisto10
    imprime cadHisto11
    imprime cadHisto12
    imprime cadHisto13
    imprime cadHisto14
    imprime cadHisto15
    imprime cadHisto16
    imprime cadHisto17
    imprime cadHisto18
    imprime cadHisto19
    imprime cadHisto20

    cursor 2, 30
    imprime numPaciente

    ; |----- Captura de la información -----|
    ; <----- HISTORIA CLINICA DEL PACIENTE ----->
    ; Presenta algún problema médico?
    cursor 5, 50
    macroUt probMed
    ; Especifique
    cursor 6, 20
    macroUt espProbMed
    ; Inquietud médica adicional
    cursor 8, 27
    macroUt inquMed
    ; Medicamentos
    cursor 9, 44
    macroUt medicamentos

    ; <----- CUIDADOS PREVENTIVOS ----->
    ; Vacunas al día
    cursor 12, 44
    macroUt vacunas
    ; Farmacia de preferencia
    cursor 13, 32
    macroUt farmacia
    ; Numero de teléfono
    cursor 14, 27
    macroUt numTel

    salto
    salto
    salto
    salto
    salto

ENDM ; Break

; |= Macro para imprimir el formato de Acuse =|
imprimeAcuse MACRO numPaciente, NomAcuse, FirmAcuse, macroUt
    ; |----- Impresión del formulario -----|
    limpia
    imprime cadAcuse00
    imprime cadAcuse01
    imprime cadAcuse02
    imprime cadAcuse03
    imprime cadAcuse04
    imprime cadAcuse05
    imprime cadAcuse06
    imprime cadAcuse07
    imprime cadAcuse08
    imprime cadAcuse09
    imprime cadAcuse10
    imprime cadAcuse11
    imprime cadAcuse12
    imprime cadAcuse13
    imprime cadAcuse14
    imprime cadAcuse15
    imprime cadAcuse16
    imprime cadAcuse17
    imprime cadAcuse18
    imprime cadAcuse19
    imprime cadAcuse20

    cursor 2, 30
    imprime numPaciente

    ; |----- Captura de la información -----|
    ; Firma del paciente
    cursor 19, 28
    macroUt NomAcuse

    ; Fecha de la firma
    cursor 19, 61
    macroUt FirmAcuse
ENDM ; Break