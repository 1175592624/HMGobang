VERSION 5.00
Begin VB.Form frmAbout 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "���ڻ�ľ������"
   ClientHeight    =   4545
   ClientLeft      =   2340
   ClientTop       =   2235
   ClientWidth     =   5730
   ClipControls    =   0   'False
   Icon            =   "frmAbout.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MouseIcon       =   "frmAbout.frx":424A
   ScaleHeight     =   3137.04
   ScaleMode       =   0  'User
   ScaleWidth      =   5380.766
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '��Ļ����
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "��������"
         Size            =   14.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   8
      Top             =   1320
      Width           =   5415
   End
   Begin VB.CommandButton cmdOK 
      Cancel          =   -1  'True
      Caption         =   "ȷ��(&O)"
      Default         =   -1  'True
      Height          =   465
      Left            =   4080
      TabIndex        =   0
      Top             =   3360
      Width           =   1500
   End
   Begin VB.CommandButton cmdSysInfo 
      Caption         =   "����(&G)"
      Height          =   465
      Left            =   4080
      TabIndex        =   1
      Top             =   3960
      Width           =   1485
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "��"
      BeginProperty Font 
         Name            =   "����������ֿ�"
         Size            =   21.75
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0C0&
      Height          =   510
      Index           =   2
      Left            =   720
      TabIndex        =   7
      Top             =   720
      Width           =   450
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "��  ��"
      BeginProperty Font 
         Name            =   "����������ֿ�"
         Size            =   21.75
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   510
      Index           =   1
      Left            =   240
      TabIndex        =   6
      Top             =   720
      Width           =   1380
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "��ľ"
      BeginProperty Font 
         Name            =   "����������ֿ�"
         Size            =   21.75
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   510
      Index           =   0
      Left            =   120
      TabIndex        =   5
      Top             =   120
      Width           =   900
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      BorderStyle     =   6  'Inside Solid
      Index           =   1
      X1              =   112.686
      X2              =   5337.57
      Y1              =   2236.306
      Y2              =   2236.306
   End
   Begin VB.Label lblTitle 
      Caption         =   "��ľ������(HMGobang)"
      BeginProperty Font 
         Name            =   "����"
         Size            =   15.75
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   480
      Left            =   1800
      TabIndex        =   3
      Top             =   240
      Width           =   3885
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      Index           =   0
      X1              =   98.6
      X2              =   5309.398
      Y1              =   1697.936
      Y2              =   1697.936
   End
   Begin VB.Label lblVersion 
      Caption         =   "�汾��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Left            =   1800
      TabIndex        =   4
      Top             =   840
      Width           =   3885
   End
   Begin VB.Label lblDisclaimer 
      Caption         =   "����: "
      ForeColor       =   &H00000000&
      Height          =   1185
      Left            =   240
      TabIndex        =   2
      Top             =   3360
      Width           =   3630
   End
   Begin VB.Menu V 
      Caption         =   "�汾"
      Begin VB.Menu GXRZ 
         Caption         =   "������־"
      End
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdOK_Click()
    Unload frmAbout
End Sub

Private Sub cmdSysInfo_Click()
    On Error GoTo Err
    Call ShellExecute(hwnd, "open", "www.HMGobang.lovelyh.xyz", vbNullString, vbNullString, conSwNormal)
Err:
End Sub

Private Sub Form_Load()
    lblVersion.Caption = "�汾��" + BB1 + " " + BB2
    Text1.Text = "���������ʱ�䣺19/7/2020-" & vbCrLf & "v0 Ace������Ϊ��˹������ȭ��˹�����Լ���ǰŮ�ѣ�������ϲ���ġ����������е�һ����ɫ��" & vbCrLf & "��Ϸ������ԱȽ��ѵĲ���Ӧ�������̵����ɺ�AI����ƣ���������ϵ�����ϵͳ���ڸ��ǵĹ�ϵ��225����λ�����������鷳�������ڴ��������˺ܶ�ռ�ڴ��ѭ����䣬��Ȼһ���̶���Ҳ��ǿ�������ȶ��ԣ�AI������Ͻ���˺ܶ���е�Python�߼����죬���ò����Ҹ�̾Visual Basic��һ�Ź�ʱ�������ˣ���VB������������ӹ���ɵġ������һ��С�汾��Ӧ�û���ϡ����֡�������ܣ�����Ҫ�ܶ�ʱ��ȥ���Ծ����ˡ���Ϊ�ұ���Ҳ�������������ܻ�������������Ϸ����û�����������������̫�����������Ժ�����������Զ��������Ŀ���������ģ��������ָо����������õġ���Ҳ���ҿ�Դ��һ����ԭ��" & vbCrLf & "�����ҵĸ���ԭ����Щ�˴���ˣ����ҿ��ܲ��ٻ�������������Ҳ��ֻͣ���ڵ�һ��汾���Ӵ˲��ٸ��£�������������������л��һ·����顣" & vbCrLf & "�ر���л������������ʥ�ȶԱ�������ܺʹ��뿪��������Ľ��顣"
    Text1.Locked = True
    lblDisclaimer.Caption = "���棺" & vbCrLf & vbCrLf & "��ľ�� ��Ȩ����(C)" & vbCrLf & vbCrLf & "���������ѧϰʹ�ã����κ��������ϵ����QQ:1175592624"
End Sub

Private Sub GXRZ_Click()
    Load Form2
    Form2.Show
End Sub

