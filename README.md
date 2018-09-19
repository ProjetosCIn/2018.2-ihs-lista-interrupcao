# 2018.2-ihs-lista-interrupcao
Lista 1 de Interrupções da disciplina IHS.
## Para Compilar:
  1- nasm nomeDoArquivo.asm -o saida.bin
  2- qemu-system-i386 saida.bin

## O que fazer

### Exercício 1:

Implemente uma ISR na posição 40H da IVT que imprima a
string “AP2 de IHS”, passando para BX o endereço da string
e para CX o tamanho dela. O caractere que será mostrado
ficará em AL. Mais informações em interrupt call.

### Exercício 2

Escolha pelo menos 3 funções da AP anterior e implemente
como uma ISR na posição 20H da IVT.

Para selecionar a função, passe um número por AX.

Dica: Use a pilha para passar os argumentos necessários para a
ISR!