unit FAA.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  sSpeedButton, System.Zip, Vcl.ComCtrls;

type
  TFormMain = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    ListBoxDirs: TListBox;
    Panel3: TPanel;
    ButtonDirAdd: TButton;
    ButtonDirDel: TButton;
    Splitter1: TSplitter;
    Panel4: TPanel;
    PanelSet: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label3: TLabel;
    EditMask: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    EditArchFolder: TEdit;
    SpeedButtonArchFolder: TsSpeedButton;
    ListBox1: TListBox;
    LabelCurDir: TLabel;
    Panel9: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    LabelState: TLabel;
    Panel10: TPanel;
    LabelZip: TLabel;
    ProgressBar1: TProgressBar;
    Label6: TLabel;
    SpeedButtonHelp: TsSpeedButton;
    procedure ButtonDirAddClick(Sender: TObject);
    procedure ButtonDirDelClick(Sender: TObject);
    procedure SpeedButtonArchFolderClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButtonHelpClick(Sender: TObject);
  private
    StopSearch:Boolean;
    PauseSearch:Boolean;
    FInc:Integer;
    FWork:Boolean;
    function Arch(Path, TargetDir:string):Boolean;
    procedure SetWork(const Value: Boolean);
    procedure ZipProgress(Sender: TObject; FileName: string; Header: TZipHeader; Position: Int64);
  public
    procedure StartSearch;
    property Work:Boolean read FWork write SetWork;
  end;

var
  FormMain: TFormMain;

implementation
 uses HGM.WinAPI, Math;

{$R *.dfm}

procedure TFormMain.Button1Click(Sender: TObject);
begin
 Work:=True;
 PanelSet.Enabled:=False;
 try
  StartSearch;
 finally

 end;
 Work:=False;
 PanelSet.Enabled:=True;
end;

procedure TFormMain.Button2Click(Sender: TObject);
begin
 PauseSearch:=not PauseSearch;
end;

procedure TFormMain.Button3Click(Sender: TObject);
begin
 StopSearch:=True;
end;

procedure TFormMain.ButtonDirAddClick(Sender: TObject);
var SelDir:string;
begin
 if AdvSelectDirectory('', '', SelDir, False, False, False) then ListBoxDirs.Items.Add(SelDir);
end;

procedure TFormMain.ButtonDirDelClick(Sender: TObject);
begin
 ListBoxDirs.DeleteSelected;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
 FInc:=0;
 StopSearch:=True;
 PauseSearch:=False;
end;

procedure TFormMain.SetWork(const Value: Boolean);
begin
 FWork:=Value;
 case FWork of
  True:LabelState.Caption:='��� �����...';
  False:LabelState.Caption:='�������';
 end;
end;

procedure TFormMain.SpeedButtonArchFolderClick(Sender: TObject);
var SelDir:string;
begin
 if AdvSelectDirectory('������� ���������� �������', '', SelDir, False, False, False) then EditArchFolder.Text:=SelDir;
end;

procedure TFormMain.SpeedButtonHelpClick(Sender: TObject);
begin
 MessageBox(Application.Handle, '��������� ��� ������ � ��������� ����������� ������. ������������ ���� �������, � ������� ���������� ���� �� ���� ���������� ����.'+#13+#10+''+#13+#10+'�����������: �������� ������� aka HemulGM'+#13+#10+'��������: alinvip22@gmail.com'+#13+#10+'hemulgm.ru', 'Find and Arch', MB_ICONINFORMATION or MB_OK);
end;

function TFormMain.Arch(Path, TargetDir:string):Boolean;
var ZIP:TZipFile;
    ArchFile:string;
begin
 ListBox1.Items.Add(TargetDir);
 repeat
  Inc(FInc);
  ArchFile:=Format('%s_ZIP_%.6d.zip', [GetLastDir(TargetDir), FInc]);
 until not FileExists(ArchFile);
 ListBox1.Items.Add(ArchFile);
 ZIP:=TZipFile.Create;
 ZIP.Destroy;
 ZIP.ZipDirectoryContents(Path+ArchFile, TargetDir, zcDeflate, ZipProgress);
 ZIP.Close;
 ZIP.Free;
end;

procedure TFormMain.StartSearch;
var ArchPath, CurPath, Mask:string;
    i:Integer;

function ScanDir(Dir:string):Boolean;
var SR:TSearchRec;
begin
 Application.ProcessMessages;
 while PauseSearch and (not StopSearch) and (not Application.Terminated) do
  begin
   Application.ProcessMessages;
   LabelState.Caption:='�����';
  end;
 if StopSearch then Exit;
 LabelState.Caption:='��� �����...';
 LabelCurDir.Caption:=Dir;
 Result:=False;
 //������� �� ����� � ��������
 if FindFirst(Dir+'\'+Mask, faAnyFile, SR) = 0 then
  repeat
   //����� ����������, ���������� � �������
   Arch(ArchPath, Dir);
   Exit(True);
  until FindNext(SR) <> 0;
 //������� ��������, ���� ��� ���������� ������
 if FindFirst(Dir+'\*.*', faDirectory, SR) = 0 then
  repeat
   if (SR.Name = '.') or (SR.Name = '..') then Continue;
   //�����, ���������
   try
    ScanDir(Dir+'\'+SR.Name);
   except
    //����� ���� ������������ �����
   end;
  until FindNext(SR) <> 0;
end;

begin
 if PauseSearch then
  begin
   PauseSearch:=False;
   Exit;
  end;
 if not StopSearch then Exit;
 ArchPath:=EditArchFolder.Text;
 if not DirectoryExists(ArchPath) then
  begin
   MessageBox(Application.Handle, '������� ������� ��� ���������� ������', '��������', MB_ICONWARNING or MB_OK);
   Exit;
  end;
 Mask:=EditMask.Text;
 if Mask = '' then
  begin
   MessageBox(Application.Handle, '������� ����� ��� ������', '��������', MB_ICONWARNING or MB_OK);
   Exit;
  end;
 if ListBoxDirs.Count <= 0 then
  begin
   MessageBox(Application.Handle, '���������� ������� �������� ������', '��������', MB_ICONWARNING or MB_OK);
   Exit;
  end;
 StopSearch:=False;
 PauseSearch:=False;
 for i:= 0 to ListBoxDirs.Items.Count-1 do
  begin
   CurPath:=ListBoxDirs.Items[i];
   ScanDir(CurPath);
   Application.ProcessMessages;
  end;
 StopSearch:=True;
 PauseSearch:=False;
 LabelCurDir.Caption:='������';
 LabelZip.Caption:='';
end;

procedure TFormMain.ZipProgress(Sender: TObject; FileName: string; Header: TZipHeader; Position: Int64);
begin
 ProgressBar1.Position:=Round((100 / Max(1, Header.UncompressedSize)) * Position);
 LabelZip.Caption:=FileName;
 Application.ProcessMessages;
end;

end.
