[alfabeto,salidas]=prprob;
clasificador= newff(minmax(alfabeto),[20 26],{'tansig','logsig'},'trainlm');
[clasificador]= train(clasificador,alfabeto,salidas);