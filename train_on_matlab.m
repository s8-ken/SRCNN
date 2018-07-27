N = 1000;
caffe.set_mode_gpu();
caffe.set_device(0);
model = './SRCNN_mat.prototxt';
net = caffe.Net(model, 'test');
for c = 1:N
    iterations = num2str(c * 500);
    disp(['iterations is' iterations]);
    weights = ['./trained_models/SRCNN_iter_' iterations '.caffemodel'];

    %caffe.set_mode_cpu();


    net.copy_from(weights);
    for i = 1:10
        %net = caffe.Net(model, weights, 'test'); % create net and load weights
        %data = rand(net.blobs('data').shape); 
        net.blobs('data').set_data(data(:,:,1,i));
        net.blobs('label').set_data(label(:,:,1,i));
        net.forward_prefilled();
        if(i==1)
            conv1 = net.blobs('conv1').get_data();
            conv2 = net.blobs('conv2').get_data();  
            conv3 = net.blobs('conv3').get_data();
        else
           conv1 = cat(4,conv1, net.blobs('conv1').get_data());
           conv2 = cat(4,conv2, net.blobs('conv2').get_data());
           conv3 = cat(3,conv3, net.blobs('conv3').get_data());
        end

    end
    fig_conv1 = histogram(conv1);
    saveas(gcf, ['graphs/img/conv1/conv1_' iterations '.png'] );
    fig_conv2 = histogram(conv2);       
    saveas(gcf, ['graphs/img/conv2/conv2_' iterations '.png']);
    fig_conv3 = histogram(conv3);
    saveas(gcf, ['graphs/img/conv3/conv3_' iterations '.png']);
    


end

for c = 1:N
    iterations = num2str(c * 5000);
    disp(['iterations is' iterations]);
    weights = ['./trained_models/SRCNN_iter_' iterations '.caffemodel'];

    %caffe.set_mode_cpu();


    net.copy_from(weights);
    for i = 1:10
        %net = caffe.Net(model, weights, 'test'); % create net and load weights
        %data = rand(net.blobs('data').shape); 
        net.blobs('data').set_data(data(:,:,1,i));
        net.blobs('label').set_data(label(:,:,1,i));
        net.forward_prefilled();
        if(i==1)
            conv1 = net.blobs('conv1').get_data();
            conv2 = net.blobs('conv2').get_data();  
            conv3 = net.blobs('conv3').get_data();
        else
           conv1 = cat(4,conv1, net.blobs('conv1').get_data());
           conv2 = cat(4,conv2, net.blobs('conv    savedir = ['graph/img/iter_' iterations];2').get_data());
           conv3 = cat(3,conv3, net.blobs('conv3').get_data());
        end

    end
    fig_conv1 = histogram(conv1);
    saveas(gcf, ['graphs/img/conv1/conv1_' iterations '.png'] );
    fig_conv2 = histogram(conv2);       
    saveas(gcf, ['graphs/img/conv2/conv2_' iterations '.png']);
    fig_conv3 = histogram(conv3);
    saveas(gcf, ['graphs/img/conv3/conv3_' iterations '.png']);
    


end
%res = net.forward({data});
%prob = res{1};

%solver = caffe.Solver('./SRCNN_solver_matlab.prototxt');
%solver.step(1000);