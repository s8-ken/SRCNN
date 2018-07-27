iterations = 0;
%MAX = 15000000/500;
MAX = 15000/500;
for i = 1:MAX
    iterations = num2str(i* 500);
    matfile = ['MATfiles/x3_' iterations '.mat'];
    biases_savepath = ['MAT_MeanMinMax/x3_biases_' iterations '.mat'];
    weights_savepath = ['MAT_MeanMinMax/x3_weights_' iterations '.mat'];
    load(matfile); 
   
%     mean_biases_conv1=mean(biases_conv1);
%     mean_biases_conv2=mean(biases_conv2);
%     mean_biases_conv3=mean(biases_conv3);
%     
%     min_biases_conv1=min(biases_conv1);    
%     min_biases_conv2=min(biases_conv2);   
%     min_biases_conv3=min(biases_conv3); 
%    
%     max_biases_conv1=max(biases_conv1);
%     max_biases_conv2=max(biases_conv2);
%     max_biases_conv3=max(biases_conv3); 
    
    mean_weights_conv1=mean(weights_conv1(:));
    mean_weights_conv2=mean(weights_conv2(:));
    mean_weights_conv3=mean(weights_conv3(:));
    
    min_weights_conv1=min(weights_conv1(:));    
    min_weights_conv2=min(weights_conv2(:));   
    min_weights_conv3=min(weights_conv3(:)); 
   
    max_weights_conv1=max(weights_conv1(:));
    max_weights_conv2=max(weights_conv2(:));
    max_weights_conv3=max(weights_conv3(:));  
    
    %save(biases_savepath, 'mean_biases_conv1','mean_biases_conv2','mean_biases_conv3','min_biases_conv1','min_biases_conv2','min_biases_conv3','max_biases_conv1','max_biases_conv2','max_biases_conv3');
    save(weights_savepath, 'mean_weights_conv1','mean_weights_conv2','mean_weights_conv3','min_weights_conv1','min_weights_conv2','min_weights_conv3','max_weights_conv1','max_weights_conv2','max_weights_conv3');
end