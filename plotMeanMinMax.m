iterations = 0;
MAX = 15000000/500;
%MAX = 15000/500;

all_mean_biases_conv1=zeros(30000,1);
all_min_biases_conv1=zeros(30000,1);
all_max_biases_conv1=zeros(30000,1);

all_mean_biases_conv2=zeros(30000,1);
all_min_biases_conv2=zeros(30000,1);
all_max_biases_conv2=zeros(30000,1);

all_mean_biases_conv3=zeros(30000,1);
all_min_biases_conv3=zeros(30000,1);
all_max_biases_conv3=zeros(30000,1);

all_mean_weights_conv1=zeros(30000,1);
all_min_weights_conv1=zeros(30000,1);
all_max_weights_conv1=zeros(30000,1);

all_mean_weights_conv2=zeros(30000,1);
all_min_weights_conv2=zeros(30000,1);
all_max_weights_conv2=zeros(30000,1);

all_mean_weights_conv3=zeros(30000,1);
all_min_weights_conv3=zeros(30000,1);
all_max_weights_conv3=zeros(30000,1);



for i = 1:MAX
    iterations = num2str(i* 500);
    biases_savepath = ['MAT_MeanMinMax/x3_biases_' iterations '.mat'];
    weights_savepath = ['MAT_MeanMinMax/x3_weights_' iterations '.mat'];
    load(biases_savepath);
    load(weights_savepath);
    
    
    all_mean_biases_conv1(i) = mean_biases_conv1;
    all_min_biases_conv1(i) = min_biases_conv1;
    all_max_biases_conv1(i) = max_biases_conv1;
    
    all_mean_biases_conv2(i) = mean_biases_conv2;
    all_min_biases_conv2(i) = min_biases_conv2;
    all_max_biases_conv2(i) = max_biases_conv2;
    
    all_mean_biases_conv3(i) = mean_biases_conv3;
    all_min_biases_conv3(i) = min_biases_conv3;
    all_max_biases_conv3(i) = max_biases_conv3;
    
    %%collect weights dataset
    all_mean_weights_conv1(i) = mean_weights_conv1;
    all_min_weights_conv1(i) = min_weights_conv1;
    all_max_weights_conv1(i) = max_weights_conv1;
    
    all_mean_weights_conv2(i) = mean_weights_conv2;
    all_min_weights_conv2(i) = min_weights_conv2;
    all_max_weights_conv2(i) = max_weights_conv2;
    
    all_mean_weights_conv3(i) = mean_weights_conv3;
    all_min_weights_conv3(i) = min_weights_conv3;
    all_max_weights_conv3(i) = max_weights_conv3;
    
    
    
end

save('AllMeanMinMax.mat');