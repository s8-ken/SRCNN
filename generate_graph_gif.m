N = 200;
iter = num2str(500 * 1);
savedir = ['graph/img/iter_' iter];
mkdir (savedir)
for c = 1:N
    disp(c)
    path = ['graphs/fig/conv1_' iter '_data[' num2str(c) '].fig'];
    fig = openfig(path);
    saveas(fig,[savedir '/conv1_' iter '_data[' num2str(c) '].png']);
end
    