iterations = 0;
MAX = 15000000/500;
for i = 1:MAX
    iterations = i* 500;
    extractWB(iterations);   
end