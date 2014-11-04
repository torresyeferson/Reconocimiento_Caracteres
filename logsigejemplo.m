[alfabeto,salidas]=prprob;
clasificador= newff(minmax(alfabeto),[20 26],{'tansig','logsig'},'trainlm');
[clasificador]= train(clasificador,alfabeto,salidas);
plotchar(alfabeto(:,1))%para imprimir la letra A
A=sim(alfabeto,clasificador);%matriz de resultados con margen de error
%para probar con la entrada de un solo caracter
%entrada=[0 1 0 1 1 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 1]
%A=sim(clasificador,entrada)