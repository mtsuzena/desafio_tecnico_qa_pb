# desafio_tecnico_qa_pb

Imagina que você iniciou em uma equipe com um projeto do Zero.
A proposta do projeto é a criação de uma solução para realizar compra de imóveis através de sistemas que facilitarão a comunicação de imobiliárias, clientes e bancos.
A arquitetura está sendo desenhada a partir de solução de microsserviços, Websites, está sendo mapeado integrações com sistemas externos, espera-se volume alto de operação uma vez que o sistema irá operar em todo o território Brasileiro, o cliente está bem próximo do projeto para levantamento de requisitos.
<br />

<h2>1.	Dado esse cenário, como você iniciaria uma estratégia de teste?</h2>

Com a colaboração do time, iniciaria criando um documento de estrategia de testes abordando alguns itens, como:

- Quais os objetivos do teste;
- Quais os padrões que serão seguidos;
- Quais tipos de teste serão realizados em cada nivel de teste. Ex. Teste funcional, Teste não funcional, Teste de Regressão, Teste de Confirmação, etc;
- Quais critérios serão utilizados para definir se um teste será automatizado;
- Quais ferramentas serão utilizadas no: gerenciamento de testes, na automação de testes, no gerenciamento de ambientes, e etc;
- Quais e quantos ambientes teremos, ex. ambientes de teste, desenvolvimento, homologação, produção, etc;
- Definição das funções e responsabilidades dos envolvidos;
- Abordagem dos testes de regressão. Ex. Iremos executar regressão completa todas às noites? Regressão completa a cada merge na master? Apenas smoke test? Etc;
- Quais serão as métricas utilizadas.


<br />

<h2>2.	Quais abordagens de teste você consideraria?</h2>

Consideraria uma mesclagem entre as estratégias Compatível com o Processo, Analítica e Dirigida.

Resumindo: Utilizaria a estrategia Compatível com o Processo, fazendo o uso da base de teste para levantamento de cenários e casos de testes, como por exemplo, estorias de usuário, documento de requisitos funcionais e não funcionais, etc.

Tendo em vista que o contexto da solução envolve compras e um alto volume de operações, consideraria a estratégia Analítica como uma forte candidata. Através dessa estrategia, será possível a análise de fatores de riscos, como, tentativas de fraudes financeiras e quedas dos microsserviços por um alto volume de requisições. Com isso, teremos como projetar testes baseados no nível dos riscos extraídos do projeto, garantindo boa parte da cobertura de testes de funções criticas.

Ainda, utilizaria a estratégia Dirigida através da orientação e/ou instruções das partes interessadas, como o PO e também, por especialistas no domínio do negócio.

<br />

<h2>3.	Como você trabalharia com diferentes tipos/níveis de teste?</h2>

Trabalharia com a pirâmide de testes automatizados.

Quanto mais alto estivermos na pirâmide, mais complexo (lento), frágil e caro serão os testes automatizados. Logo, quanto mais baixo os testes estão na pirâmide, mais barato, simples (rápidos) e menos frágil serão os testes automatizados.

<br/>

<a href="url"><img src="https://www.eximiaco.tech/wp-content/uploads/sites/2/2020/05/Test-Pyramid-Eximia-1024x765.png" align="left" height="300" width="500" ></a>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
Começando pela camada de <strong><em>Teste Unitário</em></strong> (ou Teste de Componentes):

Nessa camada teremos como objetivo:

- Reduzir os riscos do projeto;
- Verificar os comportamentos funcionais e não funcionais;
- Gerar confiança na qualidade do componente em teste;
- Encontrar defeitos no componente e evitar que esses defeitos subam para às camadas maiores.

<br />
Nessa camada teremos como objetos de teste:
- Componentes;
- Classes;
- Módulos de banco de dados, etc.

<br />

A segunda camada testada será a camada de <strong><em>Teste de Integração</em></strong>:

Nessa camada, queremos:

- Reduzir os riscos do projeto;
- Verificar se os comportamentos funcionais e não funcionais das interfaces estão projetados e especificados;
- Encontrar defeitos e evitar que os defeitos subam para a camada mais alta.

Utilizaremos dois níveis de teste de integração: o teste de integração de componentes e o teste de integração de sistema.
No teste de integração de componentes, será verificado as interações e interfaces dos componentes integrados. E, no teste de integração de sistemas, será utilizado os nossos microsserviços e as integrações com sistemas externos.

<br />

E por fim a terceira camada, a camada de <strong><em>Teste de Sistema</em></strong> (Ou End to End):

Nessa camada, queremos:

- Reduzie os riscos do projeto;
- Validar se o sistema está completo e se funcionará como esperado em produção;
- Gerar confiança no sistema como um todo;
- Encontrar defeitos; e
- Evitar que os defeitos cheguem até o ambiente de produção.

<br/>

Além da pirâmide de testes, aplicaria tecnicas de testes de caixa preta e de caixa branca como:

- Caixa Preta:

  - Particionamento de equivalência;
  - Análise de valor limite;
  - Tabela de decisão, etc.

- Caixa Branca:
  - Cobertura de instruções;
  - Decisão e cobertura, etc.
