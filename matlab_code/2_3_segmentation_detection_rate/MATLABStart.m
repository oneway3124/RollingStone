% MATLAB ���Ű���
% ��MATLAB��ѧ��ģ������ʵ����(��MATLAB����ѧ��ģ�е�Ӧ�á�������)�����������磬׿���䡢���������. 
%% ��������
clc, clear, close all
% ��������
[~, ~, raw] = xlsread('SegmentDetection.xls','Sheet1','A2:B17');

% �����������
data = reshape([raw{:}],size(raw));

% ����������������б�������
Date = data(:,1);
DateNum = data(:,2);
% �����ʱ����
 clearvars data raw;

 %% ����̽��
figure % ����һ���µ�ͼ�񴰿�
plot(Date,DateNum,'b-o') % ����ͼ�ĵ���ɫ�ĺ�ɫ(��ӡ��ʧ��)
%datetick('x','mm');% ����������ʾ����
xlabel('Segmentation Accuracy(mm)'); % x��˵��
ylabel('Detection Rate(%)'); % y��˵��
grid on
