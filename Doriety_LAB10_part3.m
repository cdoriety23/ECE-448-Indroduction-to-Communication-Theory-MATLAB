t = [0:.1:2*pi];
sig = sin(t);
codebook = [-1.2:.1:1.1]; 
[partition2,codebook2]= lloyds(sig,codebook); 
[index2,quant2,distor2]= quantiz(sig,partition2,codebook2);

%%twenty_four level sig
TwentyFour_lvl = hist(quant2,24);
n =size(quant2);
p =TwentyFour_lvl/n(2);


dict  = huffmandict(codebook2,p);  %% Create the dictionary. 

hcode  =  huffmanenco(quant2,dict);  %% Encode the data. 
dhsig  =  huffmandeco(hcode,dict);

disp(hcode);
disp(dhsig);

