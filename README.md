# Atomic Design

Mas o que é o atomic design?
É uma metodologia que foi desenvolvida por Brand Frost, que cobre tudo que é necessario para criar e manter sistemas de design eficazes.

```
O Atomic Design detalha tudo o que é necessário para criar e manter sistemas de design robustos,
permitindo que sua organização implemente UIs de maior qualidade e consistentes com mais rapidez
do que nunca. Este livro apresenta uma metodologia para pensar em nossas IUs como hierarquias ponderadas,
discute as qualidades de guias de estilo eficazes e apresenta técnicas para transformar
o fluxo de trabalho de design e desenvolvimento de sua equipe.

Fonte:
https://bradfrost.com/
```

Os cinco estágios do Atomic Design são:
 - átomos, 
 - moléculas, 
 - organismos,
- modelos 
- paginas.

<img src="https://raw.githubusercontent.com/paulosoujava/DesignAtomic/main/images/atomos.png" width="648">

Os átomos são componentes basicos. ( NÃO complique esta parte ), e devem ser mantidos como basicos
trazendo para o flutter os átomos são WIDGETS:
 EX: Text, Input, Image, Icon 

<img src="https://raw.githubusercontent.com/paulosoujava/DesignAtomic/main/images/moleculas.png" width="648">

 Moléculas é a junção de dois ou mais átomos, ou seja, um grupo relativamente simples de elementos da interface que funcionam juntos como uma unidade.
 EX:  Button (button + text), lembra do que falei acima, não complique trazendo o botão para o átomo, até por que um botão SEMPRE terá um,
 icone, texto, algo deste tipo

<img src="https://raw.githubusercontent.com/paulosoujava/DesignAtomic/main/images/organismo.png" width="648">

Organismo aqui já entra um pouquinho, mas só um poquinho de complexidade, organismos são componentes de interface relativamente complexos compostos por grupos de moléculas
e/ou  átomos e/ou outros organismos
EX: Um conjunto de inputs -> para virar um formulário de login, registro, profile

<img src="https://raw.githubusercontent.com/paulosoujava/DesignAtomic/main/images/template.png" width="648">

Template como o nome diz, é um modelo de como exibir, neste projeto por exemplo eu criei um template para formulários, e chamos meus organismos
de formulários para serem exibidos nele.


<img src="https://raw.githubusercontent.com/paulosoujava/DesignAtomic/main/images/page.png" width="648">

chegamos as Páginas, onde os templates seram acionados e a mágica toda acontece.

Fonte:
https://vidadeproduto.com.br/atomic-design/#1_Atomos


# Fluxo by Paulo 
<img src="https://raw.githubusercontent.com/paulosoujava/DesignAtomic/main/images/fluxo.png" width="648">

## Fluxo Atomico
Um atom só pode conter ele mesmo e seus estados, exemplo um atom de texto pode ter seus estados tais como TITELE, SUBTITLE, H1 H2, (tamanhos de fontes, tipografia etc..)

Uma Molécula pode conter atomos, e ela mesmo, sim moléculas, você pode aplicar estados também na molécula, expemplo, um botão [Disabilitado, habilitado suas cores, mais
o atom de texto [H1] por exemplo]

Um organismo pode ter um atom, molécula e ele mesmo, !! CUIDADO !! você pode estar criando complexidade desnecessária, vai depender de sua equipe, para colocar ou não 
estados aqui, exemplo, LOADING

Um Template pode conter Atom, Molécula e Organismo, !! NÃO COLOQUE TEMPLATE DENTRO DE TEMPLATE !!
PAGE usam os TEMPLATES E SOMENTE OS TEMPLATES

<img src="https://raw.githubusercontent.com/paulosoujava/DesignAtomic/main/images/fluxo_atomic.png" width="648">



# Clean Code

<img src="https://raw.githubusercontent.com/paulosoujava/DesignAtomic/main/images/clean.png" width="648">


<img src="https://raw.githubusercontent.com/paulosoujava/DesignAtomic/main/images/paste.png" width="648">


Ah link para os design pattern em dart:
https://github.com/paulosoujava/patterns_in_dart
