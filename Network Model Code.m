 clc;
 clear all;
 close all;
maxrun=1;                         %���з������
for runtimes=1:1:maxrun            
    clc;   
    close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ������� %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    xm=100;                        %Ŀ��������   100mx100m
    ym=100;
    tranr=xm/2;                    %�ڵ�ͨ�Ű뾶   L/2 ��֤�����վͨ��
    sink.x=0.5*xm;                 %��վλ��       λ��Ŀ����������
    sink.y=0.5*ym;
    p=0.1;                         %��ͷռ��
    N=100;                         %����ڵ���
    packagelen=4000;               %���ݰ���С
    packagectr=200;                %���ư���С
    deadn(runtimes)=0;              %�����ڵ���
    fdnr(runtimes)=0;               %�׽ڵ���������
    hdnr(runtimes)=0;               %һ��ڵ���������
    ldnr(runtimes)=0;               %ĩ�ڵ���������
%---------------------�ܺ�ģ��----------------------------------------
    InitEn=1;                      %��ʼ����1J
    Etx=50*0.000000001;            %���䵥λ�����ܺ�
    Erx=50*0.000000001;            %���յ�λ�����ܺ�
    Efs=10*0.000000000001;         %�Ŵ�����·����
    Emp=0.0013*0.000000000001; 
    EDA=5*0.000000001;             %�����ں��ܺ�
    d0=sqrt(Efs/Emp);              %����d0  ��ʼ����
%%%%%%%%%%%%%%%%%%%%%%%%% END OF PARAMETERS %%%%%%%%%%%%%%%%%%%%%%%%
%*************************����һ�����ߴ���������******************
     for i=1:1:N
        S(i).xd=rand(1,1)*xm;      %rand(1,1)*xm;matrix_X(i)      %�ڵ�����  �����л���ע�͵Ķ���
        S(i).yd=rand(1,1)*ym;      %;matrix_Y(i)
        S(i).energy=InitEn;        %�ڵ㵱ǰ����  
        S(i).id=i;                 %�ڵ��ID��
        S(i).type=0;               %�ڵ�����  0����ͨ�ڵ�  1����ͷ�ڵ�
        S(i).state=0;              %�ڵ�״̬  0�����      1������
        S(i).ch=0;                 %�ڵ��Ӧ�Ĵ�ͷ���
        S(i).dis=tranr;            %�ڵ����ͷ���ͷ���վ֮��ľ���
        S(i).csize=0;              %�ش�С�������Ľڵ�����
        S(i).dch=0;
        S(i).g=0;
        C=struct('xd',[1 N],'yd',[1 N],'dis',[1 N],'energy',[1 N], 'id',[1,N],'csize',[1,N]);
        plot(S(i).xd,S(i).yd,'o')
        hold on
    end

    S(N+1).xd=sink.x;               %��վλ��     
    S(N+1).yd=sink.y;
    plot(S(N+1).xd,S(N+1).yd,'x');  %������վ�ڵ�
%---------------------------------��ʼ�������ɽ���-----------------------
end