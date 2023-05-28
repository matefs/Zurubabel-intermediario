# Playlist de Aulas - Zurubabel
Este repositório contém materiais relacionados às aulas da playlist "Zurubabel" disponível no YouTube.  A playlist abrange uma variedade de tópicos relacionados à SQL, com foco em SQL SERVER.  

### Sobre indices 
(Aula 19) - Diferenças entre índices

- Índice Clusterizado: Determina a ordem física dos dados na tabela.
- Índice Não Clusterizado: Melhora o desempenho das consultas com uma estrutura separada. A ordem dos registros não importa.  
- Índice de Pilha (Heap): Tabela sem ordem específica, pode usar índices não clusterizados para acessar registros.

O ídice utilizado pela consulta sql pode ser encontrado no plano de execução (Atalho: ctrl + L ) conforme indica a imagem abaixo: 
![image](https://github.com/matefs/Zurubabel-intermediario/assets/30128774/31c23f61-ca8f-48cd-82c4-7e324646efe1)

### Diferença
- Ao rodar um comando "select" com um indice clusterizado, é feito uma operacao de `clustered index scan`
- Ao rodar um comando "select" com um indice não clusterizado, é feito uma operacao `table scan`
