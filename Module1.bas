Attribute VB_Name = "Module1"
Public BB1 As String    '�汾��
Public BB2 As String    '�汾����޶�ʱ��
Public Sh As Integer    '����ʱ��ͬ��
Public Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long '�����ⲿ�����趨
Public Di As Integer    '�ж��Ƿ��Ѿ�����
Public N As Integer     '������Դ��־
Public X As Integer     '�ж��Ƿ������Ѿ����ع�
Public Color_P  As String   '�˵�������ɫ
Public Color_C  As String   '������������ɫ
Public Score_P As Long      '�˵ķ���
Public Score_C As Long      '�����ķ���
Public gameover As Boolean  '������Ϸ��־
Public way As Integer   '��Ϸ������ʽ(ʤ��)
Public V As Integer     '��һ�ε�AI����λ��
Public Difficility As Integer '�жϵ�ǰ�Ѷ�
Public chess As Integer     '��ǰ��������
Public Ren_X As Long
Public Ren_Y As Long
Public Jiqi_X As Long
Public Jiqi_Y As Long
'�������������
