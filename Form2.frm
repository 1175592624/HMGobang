VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "������־"
   ClientHeight    =   4215
   ClientLeft      =   5940
   ClientTop       =   3975
   ClientWidth     =   6390
   ClipControls    =   0   'False
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   ScaleHeight     =   4215
   ScaleWidth      =   6390
   StartUpPosition =   2  '��Ļ����
   Begin VB.VScrollBar VScroll1 
      Height          =   4215
      LargeChange     =   5000
      Left            =   4600
      Max             =   30000
      SmallChange     =   70
      TabIndex        =   3
      Top             =   0
      Width           =   450
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   5160
      Top             =   2880
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ClipControls    =   0   'False
      ForeColor       =   &H80000008&
      Height          =   4215
      Left            =   120
      ScaleHeight     =   4185
      ScaleWidth      =   4425
      TabIndex        =   2
      Top             =   0
      Width           =   4455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ȷ��"
      Height          =   495
      Left            =   5160
      TabIndex        =   0
      Top             =   3480
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "������־"
      BeginProperty Font 
         Name            =   "����"
         Size            =   26.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2175
      Left            =   5400
      TabIndex        =   1
      Top             =   360
      Width           =   495
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Unload Form2
End Sub


Private Sub Form_Load()
    OldProcAddr = SetWindowLong(Me.hwnd, GWL_WNDPROC, AddressOf MyWinProc)
End Sub

Private Sub Timer1_Timer()
    Picture1.FontSize = 28
    Picture1.CurrentX = 100
    Picture1.CurrentY = 100
    Picture1.ForeColor = &H80&
    Picture1.Print "V0 Ace ��˹"
        Picture1.FontSize = 15
        Picture1.ForeColor = vbBlack
        Picture1.Print
        Picture1.CurrentX = 120
        Picture1.Print "V0.1.0a Build 3/8/2020"
            Picture1.Print
            Picture1.FontSize = 12
            Picture1.CurrentX = 120
            Picture1.Print "1.����������Ѵﵽ1024�У�����ʵ��"
            Picture1.CurrentX = 250
            Picture1.Print "�˻��ֻ��ƣ��ܱ�ʶ����е��������"
            Picture1.Print
            Picture1.CurrentX = 120
            Picture1.Print "2.���롰������־��"
        Picture1.FontSize = 15
        Picture1.Print
        Picture1.CurrentX = 120
        Picture1.Print "V0.1.0b Build 8/8/2020"
            Picture1.Print
            Picture1.FontSize = 12
            Picture1.CurrentX = 120
            Picture1.Print "1.��������¶���ʱ�޷��жϵ����"
            Picture1.Print
            Picture1.CurrentX = 120
            Picture1.Print "2.��һ�׶�AI���䣬����ʵ���˻�����"
            Picture1.CurrentX = 120
            Picture1.Print "3.����AI������ʾ"
        Picture1.FontSize = 15
        Picture1.Print
        Picture1.CurrentX = 120
        Picture1.Print "V0.1.1 Build 26/8/2020"
            Picture1.Print
            Picture1.FontSize = 12
            Picture1.CurrentX = 120
            Picture1.Print "1.��ģʽAI��ȫ���䣡"
            Picture1.Print
            Picture1.CurrentX = 120
            Picture1.Print "2.����������ʾ�ؿ����޷���������"
        Picture1.FontSize = 15
        Picture1.Print
        Picture1.CurrentX = 120
        Picture1.Print "V0.1.2a Build 28/8/2020"
            Picture1.Print
            Picture1.FontSize = 12
            Picture1.CurrentX = 120
            Picture1.Print "1.ȥ����ǰʤ����ʾ��������尴ť"
            Picture1.Print
            Picture1.CurrentX = 120
            Picture1.Print "2.��������ϵͳ"
            Picture1.Print
            Picture1.CurrentX = 120
            Picture1.Print "3.ȡ��ʤ���ж�����˳�����"
            Picture1.Print
            Picture1.CurrentX = 120
            Picture1.Print "4.����������ԣ��޸�����Bug������Bu"
            Picture1.CurrentX = 250
            Picture1.Print "g������ȷ������δ��λ"
            Picture1.Print
            Picture1.CurrentX = 120
            Picture1.Print "5.����������Ѵﵽ2982�У��������"
            Picture1.CurrentX = 250
            Picture1.Print "��ģ����ȫ�ܹ����"
            
End Sub

Private Sub VScroll1_Change()
    Picture1.Top = -VScroll1.Value
    Picture1.Height = Picture1.Height + VScroll1.Value
End Sub
