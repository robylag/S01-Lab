'EXERCÍCIO 1:'
Dim peso As Integer
Dim q_agua As Integer
Dim calc As Integer

Print "Digite o peso (em kg): "
Input peso

Print "Digite a quantidade de agua ingerida (em ml): "
Input q_agua

calc = peso * 35

If q_agua >= calc Then
    Print "Meta atingida!"
Else
    Print "Meta nao atingida"
End If
Sleep