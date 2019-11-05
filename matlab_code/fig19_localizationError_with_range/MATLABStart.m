
%% 导入数据
clc, clear, close all
% 导入数据
[~, ~, raw] = xlsread('LocalizationError.xls','Sheet1','A2:F41');

% 创建输出变量
data = reshape([raw{:}],size(raw));

% 将导入的数组分配给列变量名称
Date = data(:,1);
DateNum = data(:,2);

EpsilonError = data(:,1);
EpsilonCDF = data(:,2);
SpinLightError = data(:,3);
SpinLightCDF = data(:,4);
RollingStoneError = data(:,5);
RollingStoneCDF = data(:,6);

% 清除临时变量
 clearvars data raw;

 %% 数据探索
%data

%1 2
%4 5
%2 3
data = [0.12,0.13,0.36;0.15,0.18,0.45;0.18,0.22,0.55;0.21,0.35,0.73;0.3,0.52,0.83];
b = bar(data);
ch = get(b,'children');
%set(gca,'XTickLabel',{'<1','1-2','2-3','3-4','>4'});   %横坐标每行的标号（ 1 2、4 5、2 3三行）。
set(gca,'XTickLabel',{'<1','1-2','2-3','3-4','>4'});   %横坐标每行的标号（ 1 2、4 5、2 3三行）。
legend('RollingStone','SpinLight','Epsilon');  
%datetick('x','mm');% 更白日期显示类型
xlabel('Localization Range(m)'); % x轴说明
ylabel('Localization Error(m)'); % y轴说明
grid on
