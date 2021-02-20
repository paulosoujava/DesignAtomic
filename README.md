# Atomic Design

Mas o que é o atomic design?
É uma metodologia que foi desenvolvida por Brand Frost, que cobre tudo que é necessario para criar e manter sistemas de design eficazes.

```
O Atomic Design detalha tudo o que é necessário para criar e manter sistemas de design robustos, permitindo que sua organização 
implemente UIs de maior qualidade e consistentes com mais rapidez do que nunca. Este livro apresenta uma metodologia para pensar
 em nossas IUs como hierarquias ponderadas, discute as qualidades de guias de estilo eficazes e apresenta técnicas para transformar
  o fluxo de trabalho de design e desenvolvimento de sua equipe.

  Fonte:
https://bradfrost.com/
```

Os cinco estágios do Atomic Design são:
 átomos, 
 moléculas, 
 organismos,
modelos e paginas.

Os átomos são componentes basicos. ( NÃO complique esta parte ), e devem ser mantidos como basicos
trazendo para o flutter os átomos são WIDGETS:
 EX: Text, Input, Image, Icon 

 Moléculas é a junção de dois ou mais átomos, ou seja, um grupo relativamente simples de elementos da interface que funcionam juntos como uma unidade.
 EX:  Button (button + text), lembra do que falei acima, não complique trazendo o botão para o átomo, até por que um botão SEMPRE terá um,
 icone, texto, algo deste tipo

Organismo aqui já entra um pouquinho, mas só um poquinho de complexidade, organismos são componentes de interface relativamente complexos compostos por grupos de moléculas
e/ou  átomos e/ou outros organismos
EX: Um conjunto de inputs -> para virar um formulário de login, registro, profile

Template como o nome diz, é um modelo de como exibir, neste projeto por exemplo eu criei um template para formulários, e chamos meus organismos
de formulários para serem exibidos nele

Enfim,

chegamos as Páginas, onde os templates seram acionados e a mágica toda acontece.

Fonte:
https://vidadeproduto.com.br/atomic-design/#1_Atomos

Sobre este Projeto, o que foi usado:
Designe patterns:
Builder
Também conhecido como: Construtor
Propósito
O Builder é um padrão de projeto criacional que permite a você construir objetos complexos passo a passo. O padrão permite que você produza diferentes tipos e representações de um objeto usando o mesmo código de construção.
Problema
Imagine um objeto complexo que necessite de uma inicialização passo a passo trabalhosa de muitos campos e objetos agrupados. Tal código de inicialização fica geralmente enterrado dentro de um construtor monstruoso com vários parâmetros. Ou pior: espalhado por todo o código cliente.

Solução
O padrão Builder sugere que você extraia o código de construção do objeto para fora de sua própria classe e mova ele para objetos separados chamados builders. “Builder” significa “construtor”, mas não usaremos essa palavra para evitar confusão com os construtores de classe.



Singleton
Também conhecido como: Carta única
 Propósito
O Singleton é um padrão de projeto criacional que permite a você garantir que uma classe tenha apenas uma instância, enquanto provê um ponto de acesso global para essa instância.
Problema
O padrão Singleton resolve dois problemas de uma só vez, violando o princípio de responsabilidade única:

Garantir que uma classe tenha apenas uma única instância. Por que alguém iria querer controlar quantas instâncias uma classe tem? A razão mais comum para isso é para controlar o acesso a algum recurso compartilhado—por exemplo, uma base de dados ou um arquivo.

Funciona assim: imagine que você criou um objeto, mas depois de um tempo você decidiu criar um novo. Ao invés de receber um objeto fresco, você obterá um que já foi criado.

Observe que esse comportamento é impossível implementar com um construtor regular uma vez que uma chamada do construtor deve sempre retornar um novo objeto por design.
Fornece um ponto de acesso global para aquela instância. Se lembra daquelas variáveis globais que você (tá bom, eu) usou para guardar alguns objetos essenciais? Embora sejam muito úteis, elas também são muito inseguras uma vez que qualquer código pode potencialmente sobrescrever os conteúdos daquelas variáveis e quebrar a aplicação.

Assim como uma variável global, o padrão Singleton permite que você acesse algum objeto de qualquer lugar no programa. Contudo, ele também protege aquela instância de ser sobrescrita por outro código.

Há outro lado para esse problema: você não quer que o código que resolve o problema #1 fique espalhado por todo seu programa. É muito melhor tê-lo dentro de uma classe, especialmente se o resto do seu código já depende dela.

Hoje em dia, o padrão Singleton se tornou tão popular que as pessoas podem chamar algo de singleton mesmo se ele resolve apenas um dos problemas listados.

 Solução
Todas as implementações do Singleton tem esses dois passos em comum:

Fazer o construtor padrão privado, para prevenir que outros objetos usem o operador new com a classe singleton.
Criar um método estático de criação que age como um construtor. Esse método chama o construtor privado por debaixo dos panos para criar um objeto e o salva em um campo estático. Todas as chamadas seguintes para esse método retornam o objeto em cache.
Se o seu código tem acesso à classe singleton, então ele será capaz de chamar o método estático da singleton. Então sempre que aquele método é chamado, o mesmo objeto é retornado.

Composite
Também conhecido como: Árvore de objetos, Object tree
 Propósito
O Composite é um padrão de projeto estrutural que permite que você componha objetos em estruturas de árvores e então trabalhe com essas estruturas como se elas fossem objetos individuais.
Problema
Usar o padrão Composite faz sentido apenas quando o modelo central de sua aplicação pode ser representada como uma árvore.

Por exemplo, imagine que você tem dois tipos de objetos: Produtos e Caixas. Uma Caixa pode conter diversos Produtos bem como um número de Caixas menores. Essas Caixas menores também podem ter alguns Produtos ou até mesmo Caixas menores que elas, e assim em diante.

Digamos que você decida criar um sistema de pedidos que usa essas classes. Os pedidos podem conter produtos simples sem qualquer compartimento, bem como caixas recheadas com produtos... e outras caixas. Como você faria para determinar o preço total desse pedido?
Você pode tentar uma solução direta: desempacotar todas as caixas, verificar cada produto e então calcular o total. Isso pode ser viável no mundo real; mas em um programa, não é tão simples como executar uma iteração. Você tem que conhecer as classes dos Produtos e Caixas que você está examinando, o nível de aninhamento das caixas e outros detalhes cabeludos de antemão. Tudo isso torna uma solução direta muito confusa ou até impossível.

 Solução
O padrão Composite sugere que você trabalhe com Produtos e Caixas através de uma interface comum que declara um método para a contagem do preço total.

Como esse método funcionaria? Para um produto, ele simplesmente retornaria o preço dele. Para uma caixa, ele teria que ver cada item que ela contém, perguntar seu preço e então retornar o total para essa caixa. Se um desses itens for uma caixa menor, aquela caixa também deve verificar seu conteúdo e assim em diante, até que o preço de todos os componentes internos sejam calculados. Uma caixa pode até adicionar um custo extra para o preço final, como um preço de embalagem.
O maior benefício dessa abordagem é que você não precisa se preocupar sobre as classes concretas dos objetos que compõem essa árvore. Você não precisa saber se um objeto é um produto simples ou uma caixa sofisticada. Você pode tratar todos eles com a mesma interface. Quando você chama um método os próprios objetos passam o pedido pela árvore.


FONTE RECOMENDO MUIIIIITO ESTE LIVRO
https://refactoring.guru/pt-br

Este projeto esta atualmente assim:

O Core é o coração do sistemas, ali defino contratos tipificados, os famosos generics, tenho outros contratos que definem comportamentos e de fontes

indo para o design tenho a pasta atoms, onde em widgets tenho os meus átomos e na pasta builders os, advinha? Isso mesmo os builders, onde eles implementam os respecitivos
contratos e assim sobreescrevem o que forem implementados, pulamos para a pasta helpers, onde tenho mixins de strings, tamanhos e mappers, os mappers servem para mapear
quando uso um builder de input eu mapeio as labels, o tipo de teclado, se é campo  de senha ou normal, depois as moléculas, n apasta app tenho as moléculas
que é a junção de dois ou mais átomos, geralmente uma classe estatica para facilitar a chamada, ai os builders da molécula, onde implementa o contrato para assim 
dar o estado por assim dizer, exemplo uma molécula de botão pode ter os estados de , regular, loading, error, etc..
Depois o organismo onde ai começamos a montar, juntar a cacalhada toda, após isso o template, onde crio template para o que vou usar, tipo, criei um template para 
formulários, poderia ter um template para profiles etc... e por final as pages que chamam o template, que chamam os organismos, que chamam as moléculas que chamam os átomos ufaa
obviametne a ordem dos TRATORES não altera o VIADUTO!!