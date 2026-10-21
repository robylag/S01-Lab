**Nome:** Diego Augusto Pereira Silva  
**Matrícula:** 855  

---

# Exercício 2

Na realização do Exercício 2, utilizei o GPT-6 para consultar a sintaxe correta do uso do .map para poder aplicar no problema como solicitado. Com isso fiz essa seguinte pergunta:

``Como utilizo o .map em Ruby?``

E o que foi me retornado foi o seguinte:

"Em Ruby, o método .map serve para percorrer uma coleção (como um Array) e criar um novo Array com os valores transformados.

É semelhante ao map() do Python ou ao .map() do JavaScript.

## 1. Sintaxe básica
```
array.map do |elemento|
  # transformação
end
```

Exemplo: multiplicar todos os números por 2.
```
numeros = [1, 2, 3, 4, 5]

dobrados = numeros.map do |n|
  n * 2
end

puts dobrados.inspect
# [2, 4, 6, 8, 10]
```

O .map executa o bloco para cada elemento e armazena o resultado da última expressão avaliada.
Visualização do funcionamento
O Array original permanece intacto; o map retorna um novo Array.
## 2. Sintaxe simplificada
Você também pode escrever utilizando { }:
```
numeros = [1, 2, 3, 4, 5]

dobrados = numeros.map { |n| n * 2 }
```

As duas formas funcionam da mesma maneira nesse exemplo.
## 3. Utilizando com objetos
Imagine uma classe Aluno:
```
class Aluno
  attr_reader :nome, :nota

  def initialize(nome, nota)
    @nome = nome
    @nota = nota
  end
end

alunos = [
  Aluno.new("Ana", 90),
  Aluno.new("Pedro", 75),
  Aluno.new("Lucas", 60)
]

nomes = alunos.map { |aluno| aluno.nome }

puts nomes.inspect
# ["Ana", "Pedro", "Lucas"]
```

Aqui, o .map percorre os objetos e extrai somente o atributo nome.

Também podemos transformar os objetos em Hashes:
```
resultado = alunos.map do |aluno|
  {
    nome: aluno.nome,
    aprovado: aluno.nota >= 60
  }
end
```


4. Diferença entre .map, .each e .select
Método	Finalidade	Retorno
.each	Percorrer elementos	Coleção original
.map	Transformar elementos	Novo Array
.select	Filtrar elementos	Novo Array filtrado

Exemplo:
```
numeros = [1, 2, 3, 4, 5]

numeros.each { |n| puts n }
# Imprime os números

numeros.map { |n| n * 2 }
# [2, 4, 6, 8, 10]

numeros.select { |n| n.even? }
# [2, 4]
```

5. E o .map!?
O .map! altera o próprio Array original:
```
numeros = [1, 2, 3]

numeros.map! { |n| n ** 2 }

puts numeros.inspect
# [1, 4, 9]
```


Resumindo: utilize .each quando quiser apenas percorrer uma coleção, .map quando precisar gerar uma coleção transformada e .map! quando quiser modificar o Array existente.

Uma observação importante: no Ruby, o .map também é conhecido como .collect. Ambos são equivalentes."

---

# Conclusão

Com base na resposta do GPT-6, optei usar a sintaxe simplificada pelo problema não exigir tanta extensialidade para filtrar os dados, além de melhor visibilidade de código do que diversas identações e ends. Desse modo, esta consulta me ajudou a entender a como declarar sua sintaxe, ajustando posteriormente nas outras questões a aplicar .map corretamente.

E por fim, algo que não foi solicitado, mas veio como um ponto de visão minha é a sua grande familiariedade com python na sua forma de escrita, mas que diferente de python, Ruby exige bastante o utilizamento de end para determinar até onde um bloco de código é executado diante de uma declaração ou função.

---

# Demais Exercícios

Nos demais exercícios nas quais eu fiquei em duvida da sintaxe de uso para o .each, ao invés de utilizar IA, optei por consultar a própria documentação do Ruby para entender sua aplicabilidade nos problemas, aqui o link de referência:

https://www.ruby-lang.org/pt/documentation/quickstart/4/



