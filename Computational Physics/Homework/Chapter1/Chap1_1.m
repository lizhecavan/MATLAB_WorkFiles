clear
%生成矩阵A
n = 5;
A = magic(n)
%选取上三角与下三角部分
Au = triu(A)
Al = tril(A)
%求各列与各行元素之和
sum_c = sum(A)
sum_r = sum(A,2)
%求各列与各行平均值
ave_c = mean(A)
ave_r = mean(A,2)
%求转置与对角阵
Z = transpose(A)
D = diag(diag(A))
%左右翻转，上下翻转，旋转90度
flip_lr = fliplr(A)
flip_ud = flipud(A)
rot_90 = rot90(A)
%对A中各列元素升序排列，对A中所有元素构成的数组进行降序排列
sort_u = sort(A)
sort_d = transpose(sort(reshape(A,[],1),"descend"))