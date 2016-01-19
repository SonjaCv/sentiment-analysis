function Theta2 = loadTheta2()


Theta=load('theta2.txt');
m=size(Theta,1);
hidden_layer_size = 10;  
numIter = m/hidden_layer_size;

Theta2=Theta(1:hidden_layer_size,1:end);
rowStart=hidden_layer_size;
for i=2:numIter,
Theta2 = [Theta2 Theta(rowStart + 1:rowStart + hidden_layer_size,1:end)];
rowStart = rowStart + hidden_layer_size;
end;

t=load('theta2Rest.txt');
Theta2 = [Theta2 t];

end;