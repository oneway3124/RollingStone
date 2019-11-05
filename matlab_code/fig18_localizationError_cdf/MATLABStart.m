
%% ��������
clc, clear, close all
% ��������
[~, ~, raw] = xlsread('LocalizationError.xls','Sheet1','A2:F41');

% �����������
data = reshape([raw{:}],size(raw));

% ����������������б�������
Date = data(:,1);
DateNum = data(:,2);

EpsilonError = data(:,1);
EpsilonCDF = data(:,2);
SpinLightError = data(:,3);
SpinLightCDF = data(:,4);
RollingStoneError = data(:,5);
RollingStoneCDF = data(:,6);

% �����ʱ����
 clearvars data raw;

 %% ����̽��
figure % ����һ���µ�ͼ�񴰿�
plot(RollingStoneError,RollingStoneCDF,'r-o')
hold on
plot(SpinLightError,SpinLightCDF,'g-.')
hold on

plot(EpsilonError,EpsilonCDF,'b-s') 
hold on

legend('RollingStone','SpinLight','Epsilon')


%datetick('x','mm');% ����������ʾ����
xlabel('Localization Error(m)'); % x��˵��
ylabel('CDF'); % y��˵��
grid on
