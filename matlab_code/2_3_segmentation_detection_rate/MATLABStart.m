% MATLAB 入门案例
% 《MATLAB数学建模方法与实践》(《MATLAB在数学建模中的应用》升级版)，北航出版社，卓金武、王鸿钧编著. 
%% 导入数据
clc, clear, close all
% 导入数据
[~, ~, raw] = xlsread('SegmentDetection.xls','Sheet1','A2:B17');

% 创建输出变量
data = reshape([raw{:}],size(raw));

% 将导入的数组分配给列变量名称
Date = data(:,1);
DateNum = data(:,2);
% 清除临时变量
 clearvars data raw;

 %% 数据探索
figure % 创建一个新的图像窗口
plot(Date,DateNum,'b-o') % 更改图的的颜色的黑色(打印后不失真)
%datetick('x','mm');% 更白日期显示类型
xlabel('Segmentation Accuracy(mm)'); % x轴说明
ylabel('Detection Rate(%)'); % y轴说明
grid on
