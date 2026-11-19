**Nome:** Diego Augusto Pereira Silva  
**Matrícula:** 855  

---

# Exercício 3

Na realização do Exercício 3, utilizei o GPT-6 para entender como estruturar a função recursiva de escuridao-total e do total-de-bruxas por ainda ter mantido dúvida se eu havia estruturado a sintaxe corretamente. Com isto fiz essa seguinte pergunta:

``Como faço uma função recursiva de soma total de uma lista com null,car,cdr e sem reduce e mapcar?``

E o que foi me retornado foi o seguinte:

"Em Common Lisp, você pode usar a própria recursividade para percorrer a lista e somar seus elementos, sem precisar de `reduce` ou `mapcar`.

```
(defun soma-total (lista)
    (if (null lista)
        0
        (+ (car lista) (soma-total (cdr lista)))
    )
)
```

### **Como funciona?**

1. `(null lista)`: verifica se a lista está vazia. Esse é o caso-base da recursão.
2. `(car lista)`: obtém o primeiro elemento.
3. `(cdr lista)`: obtém o restante da lista.
4. `+`: soma o primeiro elemento ao resultado da chamada recursiva.

### **Exemplo de execução**

```
(soma-total '(10 20 30 40))
```

**Evolução da recursão**

```
10 + soma-total(20 30 40)
10 + 20 + soma-total(30 40)
10 + 20 + 30 + soma-total(40)
10 + 20 + 30 + 40 + soma-total(nil)
10 + 20 + 30 + 40 + 0
```

**Resultado**

# **100**

O ponto principal é entender que cada chamada de `soma-total` resolve apenas o primeiro elemento e delega o restante da lista para a próxima chamada, até encontrar `nil`."

Outra seguinte pergunta dada:

``Como agora faço a mesma soma mas com reduce e mapcar?``

E o que foi me retornado foi o seguinte:

"Com `reduce` e `mapcar`, a soma fica bem mais simples:

```
(defun soma-total (lista)
    (reduce #'+ (mapcar #'identity lista))
)
```

Mas, como você está somando números diretamente, **não precisa de&#x20;**`mapcar`. A versão mais adequada é:

```
(defun soma-total (lista)
    (reduce #'+ lista)
)
```

### **Entendendo as funções**

- `mapcar`: aplica uma função a cada elemento da lista.
- `#'identity`: retorna o próprio elemento, sem modificá-lo.
- `reduce #'+`: combina os elementos da lista usando adição.

Exemplo:

```
(soma-total '(10 20 30 40))
```

Resultado: `100`.

Se o exercício exige obrigatoriamente os dois (`reduce` e `mapcar`), use a primeira versão."

---

# Conclusão

Com base na resposta do GPT-6, aproveitei da estrutura dada e me readaptei com a pergunta dada do exercício alterando o nome das variáveis com as que foram estabelecidas pela proposta, o que me ajudou não só atender o objetivo mas entender de fato sua sintaxe de somatório visto que meu maior problema na construção dos código foi a sua formatação única das demais linguagem de programação como a aplicação unica de parentes e formtações diferentes.

# Demais Exercícios

Nos demais exercícios, optei por usar de base o exemplo de código disponibilizado.