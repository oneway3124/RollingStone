
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
%data

%1 2
%4 5
%2 3
data = [0.12,0.13,0.36;0.15,0.18,0.45;0.18,0.22,0.55;0.21,0.35,0.73;0.3,0.52,0.83];
b = bar(data);
ch = get(b,'children');
%set(gca,'XTickLabel',{'<1','1-2','2-3','3-4','>4'});   %������ÿ�еı�ţ� 1 2��4 5��2 3���У���
set(gca,'XTickLabel',{'<1','1-2','2-3','3-4','>4'});   %������ÿ�еı�ţ� 1 2��4 5��2 3���У���
legend('RollingStone','SpinLight','Epsilon');  
%datetick('x','mm');% ����������ʾ����
xlabel('Localization Range(m)'); % x��˵��
ylabel('Localization Error(m)'); % y��˵��
grid on
