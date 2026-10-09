**Nome:** Diego Augusto Pereira Silva  
**Matrícula:** 855  

---

## Exercício 1

Na realização do Exercício 1, utilizei o GPT-6 apenas para consultar personagens do universo de O Senhor dos Anéis, com o objetivo de utilizá-los como exemplos na Main do programa. Com isso fiz essa seguinte pergunta:

``Me passe uma lista de personagens de Senhor dos Aneis mostrando apenas dados como nome, povo e posto``

E o que foi me retornado foi o seguinte:

| Nome | Povo / Raça | Posto / Título |
|---|---|---|
| Frodo Bolseiro | Hobbit | Portador do Um Anel |
| Samwise Gamgee | Hobbit | Membro da Sociedade do Anel |
| Meriadoc Brandebuque | Hobbit | Cavaleiro de Rohan |
| Peregrin Tûk | Hobbit | Guarda da Cidadela de Gondor |
| Bilbo Bolseiro | Hobbit | Antigo portador do Um Anel |
| Aragorn | Humano (Dúnadan) | Rei de Gondor e Arnor |
| Boromir | Humano (Gondoriano) | Capitão da Torre Branca |
| Faramir | Humano (Gondoriano) | Capitão de Gondor / Regente de Ithilien |
| Denethor II | Humano (Gondoriano) | Regente de Gondor |
| Théoden | Humano (Rohirrim) | Rei de Rohan |
| Éomer | Humano (Rohirrim) | Marechal / Rei de Rohan |
| Éowyn | Humana (Rohirrim) | Senhora de Rohan |
| Gríma Língua de Cobra | Humano | Conselheiro de Théoden |
| Bard, o Arqueiro | Humano | Rei de Valle |
| Elrond | Meio-elfo | Senhor de Valfenda |
| Arwen | Meio-elfa | Rainha de Gondor e Arnor |
| Legolas | Elfo (Sindar) | Príncipe do Reino da Floresta |
| Thranduil | Elfo (Sindar) | Rei do Reino da Floresta |
| Galadriel | Elfa (Noldor) | Senhora de Lothlórien |
| Celeborn | Elfo (Sindar) | Senhor de Lothlórien |
| Haldir | Elfo | Guardião de Lothlórien |
| Glorfindel | Elfo (Noldor) | Senhor élfico de Valfenda |
| Gimli | Anão | Membro da Sociedade do Anel |
| Glóin | Anão | Nobre da Casa de Durin |
| Balin | Anão | Senhor de Moria |
| Dáin II Pé de Ferro | Anão | Rei sob a Montanha |
| Thorin Escudo de Carvalho | Anão | Rei sob a Montanha |
| Gandalf | Maia (Istari) | Gandalf, o Branco |
| Saruman | Maia (Istari) | Saruman, o Branco |
| Radagast | Maia (Istari) | Radagast, o Castanho |
| Sauron | Maia | Senhor do Escuro de Mordor |
| Morgoth | Vala | Primeiro Senhor do Escuro |
| Rei Bruxo de Angmar | Espectro do Anel | Senhor dos Nazgûl |
| Khamûl | Espectro do Anel | Segundo dos Nazgûl |
| Gothmog | Não especificado | Tenente de Morgul |
| Boca de Sauron | Humano (Númenóreano Negro) | Emissário de Sauron |
| Gollum (Sméagol) | Hobbit (Stoor) | Antigo portador do Um Anel |
| Barbárvore | Ent | Pastor das Árvores |
| Laracna | Aranha gigante | Habitante de Cirith Ungol |
| Tom Bombadil | Ser de natureza desconhecida | Senhor da Velha Floresta |
| Barliman Carrapicho | Humano | Estalajadeiro do Pônei Saltitante |
| Lurtz | Uruk-hai | Líder dos Uruk-hai (filmes) |
| Uglúk | Uruk-hai | Capitão dos Uruk-hai de Isengard |
| Shagrat | Orc | Capitão da Torre de Cirith Ungol |
| Gorbag | Orc | Capitão orc de Minas Morgul |

---

## Exercício 2

Na realização do Exercício 2, utilizei o GPT-6 para consultar como declarar um construtor em uma classe filha que não recebe atributos adicionais além daqueles já definidos na classe pai. Com isso fiz essa seguinte pergunta:

``Como declara um construtor que não vai receber nada de diferente além do pai no c#?``

E o que foi me retornado foi o seguinte:

Em C#, você utiliza base(...) para chamar o construtor da classe pai, sem precisar adicionar nenhuma lógica ao construtor da classe filha.

Exemplo de código fornecido:

```csharp
public class Pai
{
    public Pai(string nome, int idade)
    {
        // Inicialização
    }
}

public class Filho : Pai
{
    public Filho(string nome, int idade) : base(nome, idade)
    {
    }
}
```

---

## Exercício 3

Foi utilizado consulta do caderno de POO e do código de exemplo para a realização do exercício.

---

## Exercício 4

No exercício foi consultado via uma wiki uma lista de espécies cósmica e utilizadas como exemplos para os objetos, além do caderno de POO, do código de exemplo para a realização do exercício e dos exercícios anteriores que serviram de base.

https://monster.fandom.com/wiki/Category:H._P._Lovecraft?from=O
https://lovecraft.fandom.com/wiki/Deep_One
https://lovecraft.fandom.com/wiki/Mi-Go

## Conclusão

A utilização do ChatGPT foi mais voltada como ferramenta de consulta de obras como O senhor dos Anéis quanto para esclarecer uma dúvida relacionada à programação orientada a objetos.

As consultas sobre personagens tiveram como finalidade fornecer dados para a instanciação de objetos visto que não acompanho as obras de O Senhor dos Anéis e de H.P. Lovecraft.

Já no Exercício 2, a consulta contribuiu diretamente para compreender melhor a utilização de construtores em classes filhas, especialmente em situações nas quais a classe não possui propriedades adicionais além do que foi estabelecido pela classe pai. A resposta esclareceu como utilizar base(...) para encaminhar os parâmetros ao construtor da classe pai, sem precisar repetir a lógica de inicialização.

Com isso, compreendi melhor como funciona os construtores de classes por herança em C#, conhecimento que posso usar com classes e jogos visto a tamanha demanda de C# em plataformas de jogos como a Unity.