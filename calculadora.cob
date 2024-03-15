IDENTIFICATION DIVISION.
PROGRAM-ID. Calculadora.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 Numero1 PIC 9(5).
01 Numero2 PIC 9(5).
01 Operacao PIC X.
01 Resultado PIC 9(5).

PROCEDURE DIVISION.
    DISPLAY "Digite o primeiro número: ".
    ACCEPT Numero1.

    DISPLAY "Digite o segundo número: ".
    ACCEPT Numero2.

    DISPLAY "Digite a operação (+, -, *, /): ".
    ACCEPT Operacao.

    PERFORM CALCULAR.

    DISPLAY "Resultado: ", Resultado.

    STOP RUN.

CALCULAR.
    IF Operacao = "+" THEN
        COMPUTE Resultado = Numero1 + Numero2
    ELSE IF Operacao = "-" THEN
        COMPUTE Resultado = Numero1 - Numero2
    ELSE IF Operacao = "*" THEN
        COMPUTE Resultado = Numero1 * Numero2
    ELSE IF Operacao = "/" THEN
        IF Numero2 NOT = 0 THEN
            COMPUTE Resultado = Numero1 / Numero2
        ELSE
            DISPLAY "Erro: Divisão por zero."
            STOP RUN
        END-IF
    ELSE
        DISPLAY "Operação inválida."
        STOP RUN
    END-IF.
