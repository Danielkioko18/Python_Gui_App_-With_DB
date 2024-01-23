; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "My Program"
#define MyAppVersion "1.5"
#define MyAppPublisher "My Company, Inc."
#define MyAppURL "https://www.example.com/"
#define MyAppExeName "My App.exe"
#define MyAppAssocName MyAppName + " File"
#define MyAppAssocExt ".myp"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D6DDAFE7-0EEF-4E2B-9250-DDB98BD257FF}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
ChangesAssociations=yes
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\admin\Desktop\MyDesign Apps
OutputBaseFilename=INNO
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\admin\Desktop\output\My App\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\tcl\*"; DestDir: "{app}\tcl"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\admin\Desktop\output\My App\tcl8\*"; DestDir: "{app}\tcl8"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\admin\Desktop\output\My App\tk\*"; DestDir: "{app}\tk"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\admin\Desktop\output\My App\_bz2.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\_decimal.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\_hashlib.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\_lzma.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\_socket.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\_sqlite3.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\_ssl.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\_tkinter.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\base_library.zip"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\Data.db"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\libcrypto-1_1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\libssl-1_1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\python310.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\select.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\sqlite3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\tcl86t.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\tk86t.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\unicodedata.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\admin\Desktop\output\My App\VCRUNTIME140.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

