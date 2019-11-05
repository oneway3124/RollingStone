
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
figure % 创建一个新的图像窗口
plot(RollingStoneError,RollingStoneCDF,'r-o')
hold on
plot(SpinLightError,SpinLightCDF,'g-.')
hold on

plot(EpsilonError,EpsilonCDF,'b-s') 
hold on

legend('RollingStone','SpinLight','Epsilon')


%datetick('x','mm');% 更白日期显示类型
xlabel('Localization Error(m)'); % x轴说明
ylabel('CDF'); % y轴说明
grid on
