'EXERCÍCIO 2:'
Dim pin_fixo As Integer
Dim pin_entrada As Integer

pin_fixo = 4321

Print "Digite o PIN: "
input pin_entrada

While pin_fixo <> pin_entrada
    Print "PIN invalido. Tente novamente."
    Print "Digite o PIN: "
    Input pin_entrada

    If pin_entrada = pin_fixo Then
        Print "Transacao autorizada!"
    End If
Wend
Sleep