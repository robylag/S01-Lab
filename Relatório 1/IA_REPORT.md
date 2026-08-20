**Nome:** Diego Augusto Pereira Silva

**Matricula:** 855

Na realização do exercício 4, utilizei do Claude Opus 4.5 apenas para poder consultar meios de declarar um variável que possa armazenar valores flutuantes, já que na pergunta se realizava uma divisão de tempo sobre a distância, o que poderia criar valores quebrados, e como na vídeo-aula só se mostrou a declaração de variáveis String e Integer, fiquei com dúvida de como o declarar. Com isso fiz essa seguinte pergunta:

``"Quais os meios de declarar uma variável de valor decimal na linguagem Basic?"``

E o que foi me retornado foi o seguinte:

"Em BASIC existem basicamente três mecanismos, e quais funcionam depende do dialeto.

**1. Sufixo de tipo no nome da variável** (o mais antigo, funciona em quase todos os dialetos)

```basic
preco!  = 3.14      ' ! = Single (precisão simples)
total#  = 3.14159   ' # = Double (precisão dupla)
valor@  = 19.90     ' @ = Currency (VB6/VBA) ou Decimal (VB.NET)
```

Sem sufixo, o padrão histórico do BASIC é Single — então `x = 1.5` já é decimal na maioria dos interpretadores clássicos.

**2. Declaração explícita com `DIM ... AS`** (QBasic em diante; é a forma recomendada hoje)

```basic
DIM preco AS Single
DIM total AS Double
DIM saldo AS Currency    ' VB6/VBA
Dim juros As Decimal     ' VB.NET / VBA via Variant
```

No VB.NET dá para inicializar junto e usar sufixo literal:

```vb
Dim taxa As Double = 1.5
Dim valor As Decimal = 19.90D   ' D marca literal decimal
Dim x As Single = 1.5F
```

**3. Declaração por faixa de letras iniciais** (`DEFxxx`, estilo QBasic/GW-BASIC)

```basic
DEFSNG A-F    ' toda variável começando com A..F vira Single
DEFDBL X-Z    ' toda variável começando com X..Z vira Double
```

Depois disso, `xTotal` é Double automaticamente, sem sufixo.

Uma observação prática: `Single` e `Double` são ponto flutuante binário e acumulam erro de arredondamento — para dinheiro use `Currency` (VB6/VBA) ou `Decimal` (VB.NET), que são exatos em base 10. E se estiver usando VB.NET ou FreeBASIC, vale ativar `Option Explicit` (e `Option Strict` no .NET) para que sufixos implícitos não escondam o tipo real.

Qual dialeto você está usando? Se for VB.NET, VBA ou FreeBASIC posso detalhar as diferenças de faixa e precisão de cada tipo."

---

Com isso na resposta do Claude, me optei por utilizar Double por ser mais visto nas outras linguagem do que Single ou Currency nas quais foram novos para mim saber sobre essas formas de declarar, o que me ajudou a usar um tipo de variável essencial para poder calcular a divisão entre tempo e distancia sem que haja a necessidade de utilizar apenas integer e gerar resultados numérico incompletos.

Por fim, algo que não era a resposta que eu procurava mas veio como adendo do Claude foi que tipos como Single e Double acumulam erro de arredondamento, então para situações monetários o indicado é Currency ou Decimal, que são exatos em base 10 que então para problemas futuros em que precise utilizar Basic e trabalhar sob valores flutuante, vale a penas analisar tanto com o que eu estiver manipulando de modo a ver quais tipo de variáveis flutuante são mais adequados para operar nessas situações.

