%%Lab10part1  
t = [0:.1:2*pi];
sig = sin(t);
partition =[-1:.2:1]; 
codebook = [-1.2:.2:1]; 
[index,quants,distor]= quantiz(sig,partition,codebook); 
[partition2,codebook2]= lloyds(sig,codebook); 
[index2,quant2,distor2]= quantiz(sig,partition2,codebook2);
[distor,distor2]

plot(t,sig,'linewidth',2)
hold all

plot(t,quants,'linewidth',2)
hold all

plot(t,quant2,'linewidth',2)
grid on

xlim([0 2*pi])
xlabel('Time(seconds)')
ylabel('Original/Quantized Signals (volts)')

disp('Inital vs Optimized Partitions')
[partition(:) partition2(:)]
    
disp('Inital vs Optimized Codebooks')
[codebook(:) codebook2(:)]