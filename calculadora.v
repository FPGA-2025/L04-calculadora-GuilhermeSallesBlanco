module calculadora(
  input   [7:0] entrada_A,
  input   [7:0] entrada_B,
  input   [2:0] codigo,
  output  [7:0] saida
);

assign saida = (codigo == 3'b000) ? 8'b00000000 : // Zera se código for 000
               (codigo == 3'b001) ? entrada_A : // Mostra A se código for 001
               (codigo == 3'b010) ? entrada_B : // Mostra B se código for 010
               (codigo == 3'b011) ? entrada_A + entrada_B : // Soma A e B se código for 011
               (codigo == 3'b100) ? entrada_A - entrada_B : // Subtrai A e B se código for 100
               8'b00000000; // Zera se código for qualquer outro valor

endmodule
