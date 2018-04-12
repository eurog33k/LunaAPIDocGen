#tag Window
Begin Window wndMain
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   677
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   1607096319
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "ApiCallJsonDoc"
   Visible         =   True
   Width           =   1280
   Begin TabPanel TabPanel1
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   300
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "Path Parameters\rHeader Parameters\rQuery Parameters\rBody Parameters\rJSON Doc\rIDE Script"
      TabIndex        =   39
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   161
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   1240
      Begin MagicListBox lstPathParameters
         AlternateColor  =   &cFFFFFF00
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         BoxColor        =   &c00000000
         CalDays         =   ""
         ColAlignment    =   "l,l,l,c"
         ColumnCount     =   4
         ColumnsResizable=   True
         ColumnTypes     =   "s,dr,se,b"
         ColumnWidths    =   ""
         CurrencyFormat  =   "#,0.00;(#,0.00);\\"
         DataField       =   ""
         DataSource      =   ""
         DateFormat      =   "dd-mm-yyyy"
         DateTimeFormat  =   "dd-mm-yy hh:tt ap"
         DefaultRowHeight=   -1
         Enabled         =   False
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   210
         HelpTag         =   ""
         HideColumns     =   ""
         Hierarchical    =   False
         HighlightColor  =   &cFF000000
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "name,type,description,required"
         IntegerFormat   =   "-#"
         Italic          =   False
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Months          =   ""
         MonthsShort     =   ""
         NumberFormat    =   "-#0.00"
         ProgBarColor    =   &cFF000000
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         ShowDropIndicator=   False
         TabIndex        =   0
         TableType       =   0
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         TimeFormat      =   "HH:MMap"
         Top             =   230
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1185
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin Label lblAPIPathParameters
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Path Parameters"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   198
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   142
      End
      Begin MagicListBox lstHeaderParameters
         AlternateColor  =   &cFFFFFF00
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         BoxColor        =   &c00000000
         CalDays         =   ""
         ColAlignment    =   "l,l,l,c,c"
         ColumnCount     =   5
         ColumnsResizable=   True
         ColumnTypes     =   "se,dr,se,b,b"
         ColumnWidths    =   ""
         CurrencyFormat  =   "#,0.00;(#,0.00);\\"
         DataField       =   ""
         DataSource      =   ""
         DateFormat      =   "dd-mm-yyyy"
         DateTimeFormat  =   "dd-mm-yy hh:tt ap"
         DefaultRowHeight=   -1
         Enabled         =   False
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   210
         HelpTag         =   ""
         HideColumns     =   ""
         Hierarchical    =   False
         HighlightColor  =   &cFF000000
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "name,type,description,required,pathspecific"
         IntegerFormat   =   "-#"
         Italic          =   False
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Months          =   ""
         MonthsShort     =   ""
         NumberFormat    =   "-#0.00"
         ProgBarColor    =   &cFF000000
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   True
         ScrollBarVertical=   True
         SelectionType   =   0
         ShowDropIndicator=   False
         TabIndex        =   0
         TableType       =   0
         TabPanelIndex   =   2
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         TimeFormat      =   "HH:MMap"
         Top             =   230
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1185
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin Label lblHeaderParameters
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Header Parameters"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   198
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   142
      End
      Begin MagicListBox lstQueryParameters
         AlternateColor  =   &cFFFFFF00
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         BoxColor        =   &c00000000
         CalDays         =   ""
         ColAlignment    =   "l,l,l,c,c"
         ColumnCount     =   5
         ColumnsResizable=   True
         ColumnTypes     =   "se,dr,se,b,b"
         ColumnWidths    =   ""
         CurrencyFormat  =   "#,0.00;(#,0.00);\\"
         DataField       =   ""
         DataSource      =   ""
         DateFormat      =   "dd-mm-yyyy"
         DateTimeFormat  =   "dd-mm-yy hh:tt ap"
         DefaultRowHeight=   -1
         Enabled         =   False
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   210
         HelpTag         =   ""
         HideColumns     =   ""
         Hierarchical    =   False
         HighlightColor  =   &cFF000000
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "name,type,description,required,pathspecific"
         IntegerFormat   =   "-#"
         Italic          =   False
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Months          =   ""
         MonthsShort     =   ""
         NumberFormat    =   "-#0.00"
         ProgBarColor    =   &cFF000000
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   True
         ScrollBarVertical=   True
         SelectionType   =   0
         ShowDropIndicator=   False
         TabIndex        =   0
         TableType       =   0
         TabPanelIndex   =   3
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         TimeFormat      =   "HH:MMap"
         Top             =   230
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1185
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin Label lblQueryParameters
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Query Parameters"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   198
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   119
      End
      Begin MagicListBox lstBodyParameters
         AlternateColor  =   &cFFFFFF00
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         BoxColor        =   &c00000000
         CalDays         =   ""
         ColAlignment    =   "l,l,l,c,c"
         ColumnCount     =   5
         ColumnsResizable=   False
         ColumnTypes     =   "se,dr,se,b,b"
         ColumnWidths    =   ""
         CurrencyFormat  =   "#,0.00;(#,0.00);\\"
         DataField       =   ""
         DataSource      =   ""
         DateFormat      =   "dd-mm-yyyy"
         DateTimeFormat  =   "dd-mm-yy hh:tt ap"
         DefaultRowHeight=   -1
         Enabled         =   False
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   210
         HelpTag         =   ""
         HideColumns     =   ""
         Hierarchical    =   False
         HighlightColor  =   &cFF000000
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "name,type,description,required,pathspecific"
         IntegerFormat   =   "-#"
         Italic          =   False
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Months          =   ""
         MonthsShort     =   ""
         NumberFormat    =   "-#0.00"
         ProgBarColor    =   &cFF000000
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         ShowDropIndicator=   False
         TabIndex        =   0
         TableType       =   0
         TabPanelIndex   =   4
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         TimeFormat      =   "HH:MMap"
         Top             =   230
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1185
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin Label lblBodyParameters
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   True
         TabIndex        =   1
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "Body Parameters"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   198
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   142
      End
      Begin PushButton pbAddHeaderParameter
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "+"
         Default         =   False
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   1167
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   198
         Underline       =   False
         Visible         =   True
         Width           =   23
      End
      Begin PushButton pbDeleteHeaderParameter
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "-"
         Default         =   False
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   1202
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   198
         Underline       =   False
         Visible         =   True
         Width           =   23
      End
      Begin PushButton pbAddQueryParameter
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "+"
         Default         =   False
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   1167
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   198
         Underline       =   False
         Visible         =   True
         Width           =   23
      End
      Begin PushButton pbDeleteQueryParameter
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "-"
         Default         =   False
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   1202
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   198
         Underline       =   False
         Visible         =   True
         Width           =   23
      End
      Begin PushButton pbDeleteBodyParameter
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "-"
         Default         =   False
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   1202
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   198
         Underline       =   False
         Visible         =   True
         Width           =   23
      End
      Begin PushButton pbAddBodyParameter
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "+"
         Default         =   False
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   1167
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   198
         Underline       =   False
         Visible         =   True
         Width           =   23
      End
      Begin TextArea taJsonDoc
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   True
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   242
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   40
         LimitText       =   0
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   True
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollbarVertical=   True
         Styled          =   True
         TabIndex        =   0
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   199
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1200
      End
      Begin TextArea ScriptArea
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   True
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   242
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   40
         LimitText       =   0
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   True
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollbarVertical=   True
         Styled          =   True
         TabIndex        =   0
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   199
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   1200
      End
   End
   Begin Label lblAPIVersion
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "API Version"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   21
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   110
   End
   Begin PopupMenu pmAPIVersion
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "\n1"
      Italic          =   False
      Left            =   151
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   21
      Underline       =   False
      Visible         =   True
      Width           =   73
   End
   Begin PopupMenu pmHTTPMethod
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "GET\nPOST\nPUT\nDELETE"
      Italic          =   False
      Left            =   416
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   21
      Underline       =   False
      Visible         =   True
      Width           =   73
   End
   Begin Label lblHTTPMethod
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   285
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "HTTP Method"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   21
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   110
   End
   Begin Label lblAPIPath
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   633
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "API Path"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   23
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   73
   End
   Begin ComboBox cmbAPIPath
      AutoComplete    =   False
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   718
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   450
   End
   Begin Label lblJsonDoc
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "JSON Doc"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   474
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin TextField tfJsonDoc
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   126
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   473
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   1134
   End
   Begin Label lblDescription
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "description"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   57
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   110
   End
   Begin Label lblSummary
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   633
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "summary"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   57
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   73
   End
   Begin Label lblExternalDocsURL
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "externalDocsUrl"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   121
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   110
   End
   Begin Label lblTags
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   633
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "tags"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   89
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   73
   End
   Begin TextField tfSummary
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   718
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   55
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   450
   End
   Begin TextField tfDescription
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   151
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   56
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   470
   End
   Begin TextField tfExternalDocsURL
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   151
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   120
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   1017
   End
   Begin TextField tfOperationId
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   151
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   88
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   470
   End
   Begin TextField tfTags
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   718
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   88
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   450
   End
   Begin PushButton pbSave
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Save"
      Default         =   False
      Enabled         =   False
      Height          =   21
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   1180
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton pbCancel
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   1180
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   54
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton pbSendToProject
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Send To Project"
      Default         =   True
      Enabled         =   False
      Height          =   32
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   33
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   499
      Underline       =   False
      Visible         =   True
      Width           =   601
   End
   Begin Label lblOperationId
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   38
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "operationId"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   89
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   110
   End
   Begin PushButton pbDelete
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Delete"
      Default         =   True
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   1180
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   41
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   89
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin TextField tfProjectFile
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   633
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   43
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   504
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   535
   End
   Begin PushButton pbGetXojoAPIBinaryProject
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "..."
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   1180
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   44
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   504
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin IPCSocket IDECommSocket
      Index           =   -2147483648
      LockedInPosition=   False
      Path            =   "C:\\Users\\dirkc\\AppData\\Local\\Temp\\XojoIDE"
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin Listbox OutputList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   False
      HeadingIndex    =   -1
      Height          =   87
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   2
      ScrollbarHorizontal=   True
      ScrollBarVertical=   True
      SelectionType   =   0
      ShowDropIndicator=   False
      TabIndex        =   45
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   570
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   601
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin TextArea OutputArea
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   87
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   633
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   46
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   570
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   627
   End
   Begin Label Label2
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   633
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   47
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "JSON Results:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   538
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   48
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Status Output:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   538
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  IDECommSocket.Close
		  bConnectedToXojo=False
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  'me.Maximize
		  #if TargetWindows Then
		    me.IDECommSocket.Path=SpecialFolder.Temporary.Child("XojoIDE").NativePath
		  #else
		    me.IDECommSocket.Path="/tmp/XojoIDE"
		  #endif
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  lstPathParameters.ResizeColumns
		  lstHeaderParameters.ResizeColumns
		  lstQueryParameters.ResizeColumns
		  lstBodyParameters.ResizeColumns
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  lstPathParameters.ResizeColumns
		  lstHeaderParameters.ResizeColumns
		  lstQueryParameters.ResizeColumns
		  lstBodyParameters.ResizeColumns
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddBodyParameter(strName As String, strType As String, strDescription As String, bRequired As Boolean, bPathSpecific As Boolean)
		  //name,type,description,required,pathspecific
		  lstBodyParameters.AddRow
		  
		  //columns
		  lstBodyParameters.SetValue(0,strName)
		  lstBodyParameters.SetDropDownList(lstBodyParameters.LastIndex,1, _ 
		  "integer,long,float,double,string,byte,binary,boolean,date,dateTime,password,file")
		  lstBodyParameters.SetValue(1,strType)
		  lstBodyParameters.SetValue(2,strDescription)
		  lstBodyParameters.CellCheck(lstBodyParameters.LastIndex,3)=bRequired
		  lstBodyParameters.CellCheck(lstBodyParameters.LastIndex,4)=bPathSpecific
		  SetBodyParameterName("",strName,bPathSpecific)
		  SetBodyParameterValue(lstBodyParameters.Cell(lstBodyParameters.LastIndex,0),"type",strType,bPathSpecific)
		  SetBodyParameterValue(lstBodyParameters.Cell(lstBodyParameters.LastIndex,0),"description",strDescription,bPathSpecific)
		  SetBodyParameterValue(lstBodyParameters.Cell(lstBodyParameters.LastIndex,0),"required",bRequired,bPathSpecific)
		  ChangeBodyParameterPathSpecific(lstBodyParameters.Cell(lstBodyParameters.LastIndex,0),bPathSpecific)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddDefaultParameters(strSection As String)
		  Dim strUpdatedJSONDoc As String
		  Dim lstTarget As MagicListBox
		  Select Case strSection
		  Case "Header"
		    lstTarget = lstHeaderParameters
		  Case "Query"
		    lstTarget = lstQueryParameters
		  End Select
		  strUpdatedJSONDoc = AddDefaultParameters(taJsonDoc.Text, cmbAPIPath.Text, strSection, pmHTTPMethod.Text, lstTarget)
		  taJsonDoc.Text = strUpdatedJSONDoc
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ChangeBodyParameterPathSpecific(strBodyFieldName As String, bPathSpecific As Boolean)
		  Dim jDocs As New JSONItem(taJsonDoc.Text)
		  Dim jPathSpecific As JSONItem
		  if bPathSpecific=True Then
		    //if bPathSpecific=True then it used to be false
		    //so look in the main branch
		    If jDocs.HasName("BodyParameters")=False Then
		      //no BodyParameters at all, so something is wrong
		      System.DebugLog "BodyParameter " + strBodyFieldName + " not found in the main section!"
		      exit sub
		    end if
		    Dim jBodyParameters As JSONItem=jDocs.Child("BodyParameters")
		    if jBodyParameters.HasName(strBodyFieldName) Then
		      //if it exists, remember it
		      Dim jBodyParameter As JSONItem=jBodyParameters.Child(strBodyFieldName)
		      //find the bodyparameter section for the current path
		      if jDocs.HasName("PathSpecific")=False then
		        jDocs.Value("PathSpecific")=New JSONItem("{}")
		      end if
		      jPathSpecific=jDocs.Child("PathSpecific")
		      //check if the section contains the current apipath
		      if jPathSpecific.HasName(cmbAPIPath.Text)=False then
		        //if not, then create it
		        jPathSpecific.Value(cmbAPIPath.Text)=New JSONItem("{}")
		      end if
		      Dim jApiPath As JSONItem=jPathSpecific.Child(cmbAPIPath.Text)
		      //check if the apipath contains a BodyParameter section
		      if jApiPath.HasName("BodyParameters")=False then
		        //if not, create it
		        jApiPath.Value("BodyParameters")=New JSONItem("{}")
		      end if
		      Dim jBodyParameterPath As JSONItem=jApiPath.Child("BodyParameters")
		      jBodyParameterPath.Value(strBodyFieldName)=jBodyParameter
		      //now remove the original in the main branch
		      jBodyParameters.Remove(strBodyFieldName)
		    else
		      //bodyparameter not found in the bodyparameter section, so something is wrong
		      System.DebugLog "BodyParameter " + strBodyFieldName + " not found in the main section!"
		      exit sub
		    end if
		  Else
		    //if bPathSpecific=False then it used to be True
		    //so look in the pathspecific branch
		    If jDocs.HasName("PathSpecific") Then
		      jPathSpecific=jDocs.Child("PathSpecific")
		      if jPathSpecific.HasName(cmbAPIPath.Text)=False Then
		        //api path not found in the pathspecific section, so something is wrong
		        System.DebugLog "API Path " + cmbAPIPath.Text + " not found in the pathspecific section!"
		        exit sub
		      end if
		      Dim jAPIPath As JSONItem=jPathSpecific.Child(cmbAPIPath.Text)
		      if jAPIPath.HasName("BodyParameters")=False Then
		        //no BodyParameters in the apipath, so something is wrong
		        exit sub
		      end if
		      Dim jBodyParameters As JSONItem=jAPIPath.Child("BodyParameters")
		      if jBodyParameters.HasName(strBodyFieldName) Then
		        //if it exists, remember it
		        Dim jBodyParameter As JSONItem=jBodyParameters.Child(strBodyFieldName)
		        if jDocs.HasName("BodyParameters")=False then
		          jDocs.Value("BodyParameters")=New JSONItem("{}")
		        end if
		        Dim jBodyParametersMain As JSONItem=jDocs.Child("BodyParameters")
		        jBodyParametersMain.Value(strBodyFieldName)=jBodyParameter
		        //now remove the original in the specific branch
		        jBodyParameters.Remove(strBodyFieldName)
		      else
		        //BodyParameters not found in the bodyparameter section, so something is wrong
		        System.DebugLog "BodyParameter " + strBodyFieldName + " not found in the pathspecific section!"
		        exit sub
		      end if
		    end if
		  end if
		  jDocs.EscapeSlashes=False
		  taJsonDoc.Text=JSONPrettyPrint(StringToText(jDocs.ToString))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearFields()
		  tfSummary.Text=""
		  tfDescription.Text=""
		  tfExternalDocsURL.Text=""
		  tfOperationId.Text=""
		  tfTags.Text=""
		  taJsonDoc.Text=""
		  tfJsonDoc.Text=""
		  ScriptArea.Text=""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ConnectToXojo()
		  If bConnectedToXojo=False Then
		    OutputList.DeleteAllRows
		    OutputArea.Text = ""
		    IDECommSocket.Connect
		    
		    // Send initial JSON to indicate to tell Xojo to use IDE Communicator v2 protocol
		    Dim js As New JSONItem
		    js.Value("protocol") = 2
		    IDECommSocket.Write(js.ToString + Chr(0))
		    
		    Protocol = 2
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteBodyParameter(strBodyFieldName As String, bPathSpecific As Boolean)
		  Dim jDocs As New JSONItem(taJsonDoc.Text)
		  Dim jPathSpecific As JSONItem
		  if bPathSpecific=False Then
		    If jDocs.HasName("BodyParameters")=False Then
		      //no headerparameters at all, so no need to delete
		      exit sub
		    end if
		    Dim jBodyParameters As JSONItem=jDocs.Child("BodyParameters")
		    if jBodyParameters.HasName(strBodyFieldName) Then
		      //if it exists, delete it
		      jBodyParameters.Remove(strBodyFieldName)
		    end if
		  Else
		    If jDocs.HasName("PathSpecific") Then
		      jPathSpecific=jDocs.Child("PathSpecific")
		      Dim strAPIPathNames() As String=jPathSpecific.Names
		      For i As Integer=0 to strAPIPathNames.Ubound
		        if strAPIPathNames(i)=cmbAPIPath.Text Then
		          Dim jAPIPath As JSONItem=jPathSpecific.Child(strAPIPathNames(i))
		          if jAPIPath.HasName("BodyParameters")=False Then
		            //no bodyparameters in the apipath, so no need to delete
		            exit sub
		          end if
		          Dim jBodyParameters As JSONItem=jAPIPath.Child("BodyParameters")
		          if jBodyParameters.HasName(strBodyFieldName) Then
		            //if it exists, delete it
		            jBodyParameters.Remove(strBodyFieldName)
		          end if
		          exit for
		        end if
		      Next
		    end if
		  end if
		  jDocs.EscapeSlashes=False
		  taJsonDoc.Text=JSONPrettyPrint(StringToText(jDocs.ToString))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteHeaderParameter(strHeaderFieldName As String, bPathSpecific As Boolean)
		  Dim jDocs As New JSONItem(taJsonDoc.Text)
		  Dim jPathSpecific As JSONItem
		  if bPathSpecific=False Then
		    If jDocs.HasName("HeaderParameters")=False Then
		      //no headerparameters at all, so no need to delete
		      exit sub
		    end if
		    Dim jHeaderParameters As JSONItem=jDocs.Child("HeaderParameters")
		    if jHeaderParameters.HasName(strHeaderFieldName) Then
		      //if it exists, delete it
		      jHeaderParameters.Remove(strHeaderFieldName)
		    end if
		  Else
		    If jDocs.HasName("PathSpecific") Then
		      jPathSpecific=jDocs.Child("PathSpecific")
		      Dim strAPIPathNames() As String=jPathSpecific.Names
		      For i As Integer=0 to strAPIPathNames.Ubound
		        if strAPIPathNames(i)=cmbAPIPath.Text Then
		          Dim jAPIPath As JSONItem=jPathSpecific.Child(strAPIPathNames(i))
		          if jAPIPath.HasName("HeaderParameters")=False Then
		            //no headerparameters in the apipath, so no need to delete
		            exit sub
		          end if
		          Dim jHeaderParameters As JSONItem=jAPIPath.Child("HeaderParameters")
		          if jHeaderParameters.HasName(strHeaderFieldName) Then
		            //if it exists, delete it
		            jHeaderParameters.Remove(strHeaderFieldName)
		          end if
		          exit for
		        end if
		      Next
		    end if
		  end if
		  jDocs.EscapeSlashes=False
		  taJsonDoc.Text=JSONPrettyPrint(StringToText(jDocs.ToString))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteJSONFromDB()
		  Dim db As New SQLiteDatabase
		  db.DatabaseFile = SpecialFolder.ApplicationData.Child(APIDocDBName)
		  if db.Connect Then
		    Dim strSQL As String
		    Dim strAPIDocsBranch As String=tfJsonDoc.Text
		    strSQL="DELETE FROM apidocs WHERE apidocsbranch='" + EscapeSQLData(strAPIDocsBranch) + "';"
		    db.SQLExecute(strSQL)
		    if db.Error Then
		      //handle error here
		      MsgBox("Could not delete the branch from apidocs.")
		    End If
		  else
		    System.DebugLog "The database could not be opened. Error: " + db.ErrorMessage
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteQueryParameter(strQueryFieldName As String, bPathSpecific As Boolean)
		  Dim jDocs As New JSONItem(taJsonDoc.Text)
		  Dim jPathSpecific As JSONItem
		  if bPathSpecific=False Then
		    If jDocs.HasName("QueryParameters")=False Then
		      //no queryparameters at all, so no need to delete
		      exit sub
		    end if
		    Dim jQueryParameters As JSONItem=jDocs.Child("QueryParameters")
		    if jQueryParameters.HasName(strQueryFieldName) Then
		      //if it exists, delete it
		      jQueryParameters.Remove(strQueryFieldName)
		    end if
		  Else
		    If jDocs.HasName("PathSpecific") Then
		      jPathSpecific=jDocs.Child("PathSpecific")
		      Dim strAPIPathNames() As String=jPathSpecific.Names
		      For i As Integer=0 to strAPIPathNames.Ubound
		        if strAPIPathNames(i)=cmbAPIPath.Text Then
		          Dim jAPIPath As JSONItem=jPathSpecific.Child(strAPIPathNames(i))
		          if jAPIPath.HasName("QueryParameters")=False Then
		            //no queryparameters in the apipath, so no need to delete
		            exit sub
		          end if
		          Dim jQueryParameters As JSONItem=jAPIPath.Child("QueryParameters")
		          if jQueryParameters.HasName(strQueryFieldName) Then
		            //if it exists, delete it
		            jQueryParameters.Remove(strQueryFieldName)
		          end if
		          exit for
		        end if
		      Next
		    end if
		  end if
		  jDocs.EscapeSlashes=False
		  taJsonDoc.Text=JSONPrettyPrint(StringToText(jDocs.ToString))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EscapeSQLData(data As String) As String
		  // Prepare a string for use in a SQL statement.  A string which is being
		  // placed into a SQL statement cannot have a single quote in it since that will
		  // make the database engine believe the string is finished.
		  // For example the word "can't" will not work in SQL because it will see the word
		  // as just "can".
		  // In order to get around this you must escape all single quotes by adding a second
		  // one.  So "can't" will become "can''t" and then SQL command will work.
		  
		  // Replace all single quotes with two single quote characters
		  data = replaceAll( data, "'", "''" )
		  
		  // Similar issues occur with & so we double it in the statement
		  data = replaceAll( data, "&", "&&" )
		  
		  // Return the new data which is ready to be used in SQL
		  return data
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FillApiDocs() As Boolean
		  Dim jDocs As New JSONItem(taJsonDoc.Text)
		  Dim jPathSpecific As JSONItem
		  Dim bapipathfound As Boolean=False
		  Dim bapiinfoqfound As Boolean=False
		  Dim bReturn As Boolean=True
		  //apiinfoq is PathSpecific
		  If jDocs.HasName("PathSpecific")=False Then
		    //Therefore create this if it does not exist yet
		    Dim jDocsObject As New JSONItem("{}")
		    jdocs.Value("PathSpecific")=jDocsObject
		  end if
		  jPathSpecific=jDocs.Child("PathSpecific")
		  Dim strAPIPathNames() As String=jPathSpecific.Names
		  if strAPIPathNames.Ubound<>-1 Then
		    For i As Integer=0 to strAPIPathNames.Ubound
		      if strAPIPathNames(i)=cmbAPIPath.Text Then
		        //api path is found
		        bapipathfound=True
		        Dim jAPIPath As JSONItem=jPathSpecific.Child(strAPIPathNames(i))
		        //check if the apiinfoq for this path already exists
		        if jAPIPath.HasName("apiinfoq") Then
		          bapiinfoqfound=True
		          //load the apiinfoq for this path
		          Dim jAPIInfoQ As JSONItem=jAPIPath.Child("apiinfoq") //array
		          For j As Integer=0 to jAPIInfoQ.Count-1
		            dim jInfoElement As JSONItem=jAPIInfoQ.Value(j)
		            Dim strElementName As String=jInfoElement.Value("name").StringValue
		            Select case strElementName
		            Case "description"
		              tfDescription.Text=jInfoElement.Value("value").StringValue
		            Case "summary"
		              tfSummary.Text=jInfoElement.Value("value").StringValue
		            Case "externalDocsUrl"
		              tfExternalDocsURL.Text=jInfoElement.Value("value").StringValue
		            Case "operationId"
		              tfOperationId.Text=jInfoElement.Value("value").StringValue
		            Case "tags"
		              tfTags.Text=jInfoElement.Value("value").StringValue
		            End Select
		          Next
		        end if
		        exit for
		      end if
		    Next
		  end if
		  if bapipathfound=False Then
		    //if the api path does not exist, create it
		    Dim jApiPath As New JSONItem("{}") //object
		    jdocs.Child("PathSpecific").Value(cmbAPIPath.Text)=jApiPath
		  end if
		  if bapiinfoqfound=False Then
		    //if the apiinfoq was not found, create it
		    Dim jApiInfoQValues As New JSONItem("[]") //array
		    jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Value("apiinfoq")=jApiInfoQValues
		  end if
		  if bapipathfound=False or bapiinfoqfound=False Then
		    //not found, so create default values
		    Select Case pmHTTPMethod.Text
		    Case "GET"
		      FillApiInfoQGET(jDocs)
		    Case "PUT"
		      bReturn=FillApiInfoQPUT(jDocs)
		    Case "POST"
		      bReturn=FillApiInfoQPOST(jDocs)
		    Case "DELETE"
		      FillApiInfoQDELETE(jDocs)
		    End Select
		    jDocs.EscapeSlashes=False
		    taJsonDoc.Text=JSONPrettyPrint(StringToText(jDocs.ToString))
		  end if
		  Return bReturn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillApiInfoQDELETE(JDocs As JSONItem)
		  Dim strDescription As String
		  Dim strSummary As String
		  Dim strOperationId As String
		  Dim strTags As String
		  
		  Dim strAPIPathParts() As String=cmbAPIPath.Text.Split("/")
		  Dim strAPIPath As String=strAPIPathParts(1)
		  Dim strPathParameter As String
		  For i As Integer=0 to strAPIPathParts.Ubound
		    if left(strAPIPathParts(i),1)="{" and right(strAPIPathParts(i),1)="}" Then
		      strPathParameter=strAPIPathParts(i)
		      strPathParameter=mid( strPathParameter, 2, len(strPathParameter) -2 )
		      exit for
		    end if
		  Next
		  if strPathParameter="" Then
		    //To delete we need a PathParameter, so exit if it is not present
		  end if
		  strDescription="Delete a " + MakePathSingular(strAPIPath)
		  tfDescription.Text=strDescription
		  dim jDescription As New JSONItem("{}")
		  jDescription.Value("name")="description"
		  jDescription.Value("value")=strDescription
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jDescription
		  strSummary="Delete " + strAPIPath
		  tfSummary.Text=strSummary
		  dim jSummary As New JSONItem("{}")
		  jSummary.Value("name")="summary"
		  jSummary.Value("value")=strSummary
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jSummary
		  tfExternalDocsURL.Text=strDefaultDocumentationLink
		  dim jExternalDocsURL As New JSONItem("{}")
		  jExternalDocsURL.Value("name")="externalDocsUrl"
		  jExternalDocsURL.Value("value")=strDefaultDocumentationLink
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jExternalDocsURL
		  strOperationId="Delete" + strAPIPath
		  tfOperationId.Text=strOperationId
		  dim jOperationId As New JSONItem("{}")
		  jOperationId.Value("name")="operationId"
		  jOperationId.Value("value")=strOperationId
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jOperationId
		  strTags="DELETE," + strAPIPath
		  tfTags.Text=strTags
		  Dim jTags As New JSONItem("{}")
		  jTags.Value("name")="tags"
		  jTags.Value("value")=strTags
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jTags
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillApiInfoQGET(JDocs As JSONItem)
		  Dim strDescription As String
		  Dim strSummary As String
		  Dim strOperationId As String
		  Dim strTags As String
		  
		  Dim strAPIPathParts() As String=cmbAPIPath.Text.Split("/")
		  Dim strAPIPath As String=strAPIPathParts(1)
		  Dim strPathParameter As String
		  For i As Integer=0 to strAPIPathParts.Ubound
		    if left(strAPIPathParts(i),1)="{" and right(strAPIPathParts(i),1)="}" Then
		      strPathParameter=strAPIPathParts(i)
		      strPathParameter=mid( strPathParameter, 2, len(strPathParameter) -2 )
		      exit for
		    end if
		  Next
		  'if strPathParameter<>"" Then
		  'pbAddDefaultQueryParameters.Enabled=False
		  'end if
		  //if pathparameter is present, we are getting one record
		  //if not, we are getting a list
		  if strPathParameter="" Then
		    strDescription="Get a list of " + strAPIPath
		  else
		    strDescription="Get one specific " + MakePathSingular(strAPIPath) + " based on " + strPathParameter
		  End if
		  tfDescription.Text=strDescription
		  dim jDescription As New JSONItem("{}")
		  jDescription.Value("name")="description"
		  jDescription.Value("value")=strDescription
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jDescription
		  if strPathParameter="" Then
		    strSummary="List " + strAPIPath
		  else
		    strSummary="Get " + MakePathSingular(strAPIPath)
		  end if
		  tfSummary.Text=strSummary
		  dim jSummary As New JSONItem("{}")
		  jSummary.Value("name")="summary"
		  jSummary.Value("value")=strSummary
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jSummary
		  Dim strDocumentationLink As String
		  if xjDocsClass<>"" then
		    strDocumentationLink=strDefaultDocumentationLink + xjDocsClass + "." + tfJsonDoc.Text + ".html"
		  else
		    strDocumentationLink=strDefaultDocumentationLink
		  end if
		  tfExternalDocsURL.Text=strDocumentationLink
		  dim jExternalDocsURL As New JSONItem("{}")
		  jExternalDocsURL.Value("name")="externalDocsUrl"
		  jExternalDocsURL.Value("value")=strDocumentationLink
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jExternalDocsURL
		  if strPathParameter="" Then
		    strOperationId="Get" + strAPIPath
		  else
		    strOperationId="Get" + MakePathSingular(strAPIPath)
		  end if
		  tfOperationId.Text=strOperationId
		  dim jOperationId As New JSONItem("{}")
		  jOperationId.Value("name")="operationId"
		  jOperationId.Value("value")=strOperationId
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jOperationId
		  if strPathParameter="" Then
		    strTags="LIST,GET," + strAPIPath
		  else 
		    strTags="GET," + strAPIPath
		  end if
		  tfTags.Text=strTags
		  Dim jTags As New JSONItem("{}")
		  jTags.Value("name")="tags"
		  jTags.Value("value")=strTags
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jTags
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FillApiInfoQPOST(JDocs As JSONItem) As Boolean
		  Dim strDescription As String
		  Dim strSummary As String
		  Dim strOperationId As String
		  Dim strTags As String
		  Dim bUpload As Boolean=False
		  // POST has either just the path
		  // or the path followed by an id between {} followed by Upload
		  // anything else is not valid 
		  Dim strAPIPathParts() As String=cmbAPIPath.Text.Split("/")
		  if strAPIPathParts.Ubound>3 Then
		    // POST should not have more than 3 parts
		    Return False
		  end if
		  Dim strAPIPath As String=strAPIPathParts(1) //0 is empty, 1 is the api path
		  if strAPIPath="" Then
		    // if we have no path, exit
		    Return False
		  end if
		  Dim strPathParameter As String
		  if strAPIPathParts.Ubound>1 Then
		    // if we have more than just the path, then check the validity of the call
		    if strAPIPathParts.Ubound<>3 then
		      // if we have more than just the apipath
		      // we need to have exactly three parts (apipath,id and Upload)
		      Return False
		    end if
		    if left(strAPIPathParts(2),1)="{" and right(strAPIPathParts(2),1)="}" Then
		      strPathParameter=strAPIPathParts(2) //the id
		      strPathParameter=mid( strPathParameter, 2, len(strPathParameter) -2 )
		    end if
		    if strPathParameter="" Then
		      // if we have more than just the apipath and we don't have a path parameter
		      // we have an invalid call, so exit
		      Return False
		    end if
		    if strAPIPathParts(3)<>"Upload" then
		      //if we have a post with a path parameter, the only valid call is an upload call
		      Return False
		    else
		      bUpload=True
		    end if
		  end if
		  
		  Dim strAPIPathSingular As String=MakePathSingular(strAPIPath)
		  // try to guess at a or an
		  // (very general solution, not guaranteed to work correctly)
		  if instr("aeiouy",left(strAPIPath,1))=0 then
		    if bUpload=False Then
		      strDescription="Insert a " + strAPIPathSingular
		    else
		      strDescription="Upload a file to a " + strAPIPathSingular
		    end if
		  else
		    if bUpload=False Then
		      strDescription="Insert an " + strAPIPathSingular
		    else
		      strDescription="Upload a file to an " + strAPIPathSingular
		    end if
		  end if
		  tfDescription.Text=strDescription
		  dim jDescription As New JSONItem("{}")
		  jDescription.Value("name")="description"
		  jDescription.Value("value")=strDescription
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jDescription
		  if bUpload=False Then
		    strSummary="Insert " + strAPIPath
		  else
		    strSummary="Upload to " + strAPIPath
		  end if
		  tfSummary.Text=strSummary
		  dim jSummary As New JSONItem("{}")
		  jSummary.Value("name")="summary"
		  jSummary.Value("value")=strSummary
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jSummary
		  tfExternalDocsURL.Text=strDefaultDocumentationLink
		  dim jExternalDocsURL As New JSONItem("{}")
		  jExternalDocsURL.Value("name")="externalDocsUrl"
		  jExternalDocsURL.Value("value")=strDefaultDocumentationLink
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jExternalDocsURL
		  If bUpload=False Then
		    strOperationId="Post" + strAPIPath
		  else
		    strOperationId="PostUpload" + strAPIPath
		  End If
		  tfOperationId.Text=strOperationId
		  dim jOperationId As New JSONItem("{}")
		  jOperationId.Value("name")="operationId"
		  jOperationId.Value("value")=strOperationId
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jOperationId
		  if bUpload=False Then
		    strTags="POST," + strAPIPath
		  else
		    strTags="POST,UPLOAD," + strAPIPath
		  end if
		  tfTags.Text=strTags
		  Dim jTags As New JSONItem("{}")
		  jTags.Value("name")="tags"
		  jTags.Value("value")=strTags
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jTags
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FillApiInfoQPUT(JDocs As JSONItem) As Boolean
		  Dim strDescription As String
		  Dim strSummary As String
		  Dim strOperationId As String
		  Dim strTags As String
		  Dim bUpload As Boolean=False
		  // PUT has the path followed by an id between {} 
		  // this can be followed by Upload, MakeCustomer or MakeSupplier
		  // anything else is not valid 
		  Dim strAPIPathParts() As String=cmbAPIPath.Text.Split("/")
		  if strAPIPathParts.Ubound>3 Then
		    // PUT should not have more than 3 parts
		    Return False
		  end if
		  Dim strAPIPath As String=strAPIPathParts(1) //0 is empty, 1 is the api path
		  if strAPIPath="" Then
		    // if we have no path, exit
		    Return False
		  end if
		  Dim strPathParameter As String
		  if strAPIPathParts.Ubound>1 Then
		    // if we have more than just the path, then check the validity of the call
		    if left(strAPIPathParts(2),1)="{" and right(strAPIPathParts(2),1)="}" Then
		      strPathParameter=strAPIPathParts(2) //the id
		      strPathParameter=mid( strPathParameter, 2, len(strPathParameter) -2 )
		    end if
		    if strPathParameter="" Then
		      // if we have more than just the apipath and we don't have a path parameter
		      // we have an invalid call, so exit
		      Return False
		    end if
		    if strAPIPathParts.Ubound>2 then
		      if strAPIPathParts(3)<>"Upload" then
		        //if we have a post with a path parameter, with an invalid call
		        Return False
		      elseif strAPIPathParts(3)="Upload" Then
		        bUpload=True
		      end if
		    end if
		  else
		    //we don't have enough path parameters
		    Return False
		  end if
		  Dim strAPIPathSingular As String=MakePathSingular(strAPIPath)
		  if bUpload=False Then
		    strDescription="Update a specific " + strAPIPathSingular + " based on " + strPathParameter
		  else
		    strDescription="Upload a file to a specific " + strAPIPathSingular + " based on " + strPathParameter
		  end if
		  tfDescription.Text=strDescription
		  dim jDescription As New JSONItem("{}")
		  jDescription.Value("name")="description"
		  jDescription.Value("value")=strDescription
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jDescription
		  strSummary="Update " + strAPIPath
		  tfSummary.Text=strSummary
		  dim jSummary As New JSONItem("{}")
		  jSummary.Value("name")="summary"
		  jSummary.Value("value")=strSummary
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jSummary
		  tfExternalDocsURL.Text=strDefaultDocumentationLink
		  dim jExternalDocsURL As New JSONItem("{}")
		  jExternalDocsURL.Value("name")="externalDocsUrl"
		  jExternalDocsURL.Value("value")=strDefaultDocumentationLink
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jExternalDocsURL
		  if bUpload=False Then
		    if strAPIPathParts.Ubound>2 then
		      'should theoretically never get here
		      strOperationId=strAPIPathParts(3) + strAPIPath
		    else
		      strOperationId="Put" + strAPIPath
		    End If
		  else
		    strOperationId="PutUpload" + strAPIPath
		  end if
		  tfOperationId.Text=strOperationId
		  dim jOperationId As New JSONItem("{}")
		  jOperationId.Value("name")="operationId"
		  jOperationId.Value("value")=strOperationId
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jOperationId
		  if bUpload=False Then
		    strTags="PUT," + strAPIPath
		  else
		    strTags="PUT,UPLOAD," + strAPIPath
		  end if
		  tfTags.Text=strTags
		  Dim jTags As New JSONItem("{}")
		  jTags.Value("name")="tags"
		  jTags.Value("value")=strTags
		  jDocs.Child("PathSpecific").Child(cmbAPIPath.Text).Child("apiinfoq").Append jTags
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillBodyParameters()
		  Dim jDocs As New JSONItem(taJsonDoc.Text)
		  Dim jPathSpecific As JSONItem
		  Dim bPathFound As Boolean=False
		  Dim bPathSpecificBodyParametersFound As Boolean=False
		  Dim bUpload As Boolean=False
		  Dim strAPIMethod As String=""
		  if jDocs.HasName("BodyParameters") Then
		    Dim jBodyParameters As JSONItem=jDocs.Child("BodyParameters") //array
		    Dim strBodyNames() As String=jBodyParameters.Names
		    For j As Integer=0 to strBodyNames.Ubound
		      //name,type,description,required,pathspecific
		      lstBodyParameters.AddRow
		      lstBodyParameters.SetValue(0,strBodyNames(j))
		      lstBodyParameters.SetDropDownList(lstBodyParameters.LastIndex,1, _ 
		      "integer,long,float,double,string,byte,binary,boolean,date,dateTime,password,file")
		      Dim jParameterInfo As JSONItem=jBodyParameters.Child(strBodyNames(j))
		      lstBodyParameters.SetValue(1,jParameterInfo.Value("type").StringValue)
		      lstBodyParameters.SetValue(2,jParameterInfo.Value("description").StringValue)
		      lstBodyParameters.CellCheck(lstBodyParameters.LastIndex,3)=jParameterInfo.Value("required").BooleanValue
		      lstBodyParameters.CellCheck(lstBodyParameters.LastIndex,4)=False
		    Next
		  end if
		  If jDocs.HasName("PathSpecific") Then
		    jPathSpecific=jDocs.Child("PathSpecific")
		    Dim strAPIPathNames() As String=jPathSpecific.Names
		    For i As Integer=0 to strAPIPathNames.Ubound
		      if strAPIPathNames(i)=cmbAPIPath.Text Then
		        //if the apipathname is the currently selected path
		        bPathFound=True
		        Dim jAPIPath As JSONItem=jPathSpecific.Child(strAPIPathNames(i))
		        if jAPIPath.HasName("apiinfoq") Then
		          //load the apiinfoq for this path
		          Dim jAPIInfoQ As JSONItem=jAPIPath.Child("apiinfoq") //array
		          For j As Integer=0 to jAPIInfoQ.Count-1
		            dim jInfoElement As JSONItem=jAPIInfoQ.Value(j)
		            Dim strElementName As String=jInfoElement.Value("name").StringValue
		            Select case strElementName
		            Case "tags"
		              Dim strTags As String=jInfoElement.Value("value").StringValue
		              Dim strTagsSplit() As String=Split(strTags,",")
		              strAPIMethod=strTagsSplit(0)
		              if Instr(strTags,"UPLOAD")<>0 Then
		                bUpload=True
		              end if
		              exit for
		            End Select
		          Next j
		        end if
		        if jAPIPath.HasName("BodyParameters") Then
		          Dim jBodyParameters As JSONItem=jAPIPath.Child("BodyParameters")
		          bPathSpecificBodyParametersFound=True
		          Dim strBodyNames() As String=jBodyParameters.Names
		          For j As Integer=0 to strBodyNames.Ubound
		            //name,type,description,required,pathspecific
		            lstBodyParameters.AddRow
		            lstBodyParameters.SetValue(0,strBodyNames(j))
		            lstBodyParameters.SetDropDownList(lstBodyParameters.LastIndex,1, _ 
		            "integer,long,float,double,string,byte,binary,boolean,date,dateTime,password")
		            Dim jParameterInfo As JSONItem=jBodyParameters.Child(strBodyNames(j))
		            lstBodyParameters.SetValue(1,jParameterInfo.Value("type").StringValue)
		            lstBodyParameters.SetValue(2,jParameterInfo.Value("description").StringValue)
		            lstBodyParameters.CellCheck(lstBodyParameters.LastIndex,3)=jParameterInfo.Value("required").BooleanValue
		            lstBodyParameters.CellCheck(lstBodyParameters.LastIndex,4)=True
		          Next
		        end if
		        exit for
		      end if
		    Next
		  end if
		  if bPathFound=False or bPathSpecificBodyParametersFound=false Then
		    //new
		    if (strAPIMethod="PUT" or strAPIMethod="POST") and bUpload=True Then
		      Dim strParameter As String
		      Dim strDescription As String
		      pbAddBodyParameter.Enabled=True
		      strParameter="file"
		      strDescription="The file you want to upload."
		      AddBodyParameter(strParameter, "file", strDescription, True, True)
		      //reconstruct jdocs
		      jDocs = New JSONItem(taJsonDoc.Text)
		    end if
		  end if
		  lstBodyParameters.ResizeColumns
		  jDocs.EscapeSlashes=False
		  taJsonDoc.Text=JSONPrettyPrint(StringToText(jDocs.ToString))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillHeaderParameters(bNewAPICall As Boolean=False)
		  Dim jDocs As New JSONItem(taJsonDoc.Text)
		  Dim jPathSpecific As JSONItem
		  if bNewAPICall=True Then
		    AddDefaultParameters("Header")
		  else
		    if jDocs.HasName("HeaderParameters") Then
		      Dim jHeaderParameters As JSONItem=jDocs.Child("HeaderParameters") //array
		      Dim strHeaderNames() As String=jHeaderParameters.Names
		      For j As Integer=0 to strHeaderNames.Ubound
		        //name,type,description,required,pathspecific
		        lstHeaderParameters.AddRow
		        lstHeaderParameters.SetValue(0,strHeaderNames(j))
		        lstHeaderParameters.SetDropDownList(lstHeaderParameters.LastIndex,1, _ 
		        "integer,long,float,double,string,byte,binary,boolean,date,dateTime,password")
		        Dim jParameterInfo As JSONItem=jHeaderParameters.Child(strHeaderNames(j))
		        lstHeaderParameters.SetValue(1,jParameterInfo.Value("type").StringValue)
		        lstHeaderParameters.SetValue(2,jParameterInfo.Value("description").StringValue)
		        lstHeaderParameters.CellCheck(lstHeaderParameters.LastIndex,3)=jParameterInfo.Value("required").BooleanValue
		        lstHeaderParameters.CellCheck(lstHeaderParameters.LastIndex,4)=False
		      Next
		    end if
		    If jDocs.HasName("PathSpecific") Then
		      jPathSpecific=jDocs.Child("PathSpecific")
		      Dim strAPIPathNames() As String=jPathSpecific.Names
		      For i As Integer=0 to strAPIPathNames.Ubound
		        if strAPIPathNames(i)=cmbAPIPath.Text Then
		          Dim jAPIPath As JSONItem=jPathSpecific.Child(strAPIPathNames(i))
		          if jAPIPath.HasName("HeaderParameters") Then
		            Dim jHeaderParameters As JSONItem=jAPIPath.Child("HeaderParameters")
		            Dim strHeaderNames() As String=jHeaderParameters.Names
		            For j As Integer=0 to strHeaderNames.Ubound
		              //name,type,description,required,pathspecific
		              lstHeaderParameters.AddRow
		              lstHeaderParameters.SetValue(0,strHeaderNames(j))
		              lstHeaderParameters.SetDropDownList(lstHeaderParameters.LastIndex,1, _ 
		              "integer,long,float,double,string,byte,binary,boolean,date,dateTime,password")
		              Dim jParameterInfo As JSONItem=jHeaderParameters.Child(strHeaderNames(j))
		              lstHeaderParameters.SetValue(1,jParameterInfo.Value("type").StringValue)
		              lstHeaderParameters.SetValue(2,jParameterInfo.Value("description").StringValue)
		              lstHeaderParameters.CellCheck(lstHeaderParameters.LastIndex,3)=jParameterInfo.Value("required").BooleanValue
		              lstHeaderParameters.CellCheck(lstHeaderParameters.LastIndex,4)=True
		            Next
		          end if
		          exit for
		        end if
		      Next
		    end if
		  end if
		  lstHeaderParameters.ResizeColumns
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillPathParameters()
		  Dim jDocs As New JSONItem(taJsonDoc.Text)
		  Dim jPathSpecific As JSONItem
		  Dim bPathFound As Boolean=False
		  Dim bPathParametersFound As Boolean=False
		  //pathparameters are always path specific
		  If jDocs.HasName("PathSpecific")=False Then
		    //therefore create this if it does not exist yet
		    Dim jDocsObject As New JSONItem("{}")
		    jdocs.Value("PathSpecific")=jDocsObject
		  end if
		  //select the pathspecific part of the apipath doc
		  jPathSpecific=jDocs.Child("PathSpecific")
		  Dim strAPIPathNames() As String=jPathSpecific.Names
		  Dim bUpload As Boolean=False
		  Dim strAPIMethod As String=""
		  if strAPIPathNames.Ubound<>-1 Then
		    //if there are apipathnames
		    For i As Integer=0 to strAPIPathNames.Ubound
		      if strAPIPathNames(i)=cmbAPIPath.Text Then
		        //if the apipathname is the currently selected path
		        bPathFound=True
		        Dim jAPIPath As JSONItem=jPathSpecific.Child(strAPIPathNames(i))
		        if jAPIPath.HasName("apiinfoq") Then
		          //load the apiinfoq for this path
		          Dim jAPIInfoQ As JSONItem=jAPIPath.Child("apiinfoq") //array
		          For j As Integer=0 to jAPIInfoQ.Count-1
		            dim jInfoElement As JSONItem=jAPIInfoQ.Value(j)
		            Dim strElementName As String=jInfoElement.Value("name").StringValue
		            Select case strElementName
		            Case "tags"
		              Dim strTags As String=jInfoElement.Value("value").StringValue
		              Dim strTagsSplit() As String=Split(strTags,",")
		              strAPIMethod=strTagsSplit(0)
		              if Instr(strTags,"UPLOAD")<>0 Then
		                bUpload=True
		              end if
		              exit for
		            End Select
		          Next j
		        end if
		        if jAPIPath.HasName("PathParameters") Then
		          bPathParametersFound=True
		          Dim jPathParameters As JSONItem=jAPIPath.Child("PathParameters")
		          Dim strAPIParameterNames() As String=jPathParameters.Names
		          For j As Integer=0 to strAPIParameterNames.Ubound
		            lstPathParameters.AddRow
		            lstPathParameters.SetValue(0,strAPIParameterNames(j))
		            lstPathParameters.SetDropDownList(lstPathParameters.LastIndex,1, _ 
		            "integer,long,float,double,string,byte,binary,boolean,date,dateTime,password")
		            Dim jParameterInfo As JSONItem=jPathParameters.Child(strAPIParameterNames(j))
		            lstPathParameters.SetValue(1,jParameterInfo.Value("type").StringValue)
		            lstPathParameters.SetValue(2,jParameterInfo.Value("description").StringValue)
		            lstPathParameters.CellCheck(lstPathParameters.LastIndex,3)=True
		          Next j
		          pbAddQueryParameter.Enabled=False
		        end if
		        exit for
		      end if
		    Next
		  End if
		  if bPathFound=False or bPathParametersFound=false Then
		    //new
		    Dim strAPIPathParts() As String=Split(cmbAPIPath.Text,"/")
		    Dim jPathParameters As New JSONItem
		    Dim bPathParametersInPath As Boolean=False
		    For i As Integer=0 to strAPIPathParts.Ubound
		      if left(strAPIPathParts(i),1)="{" and right(strAPIPathParts(i),1)="}" Then
		        bPathParametersInPath=True
		        lstPathParameters.AddRow
		        Dim strParameter As String=strAPIPathParts(i)
		        strParameter=mid( strParameter, 2, len(strParameter) -2 )
		        lstPathParameters.SetValue(0, strParameter) //name
		        lstPathParameters.SetDropDownList(lstPathParameters.LastIndex,1, _ 
		        "integer,long,float,double,string,byte,binary,boolean,date,dateTime,password")
		        if strParameter="id" Then
		          lstPathParameters.SetValue(1,"integer")
		        else
		          lstPathParameters.SetValue(1,"string")
		        end if
		        Dim strDescription As String
		        if bUpload=False Then
		          //we don't need POST because POST never has path parameters unless it is to upload
		          if strAPIMethod="PUT" or strAPIMethod="PATCH" Then
		            strDescription="The " + strParameter + " of the " + MakePathSingular(strAPIPathParts(1)) + " you want to update."
		          Elseif strAPIMethod="GET" Then
		            strDescription="The " + strParameter + " of the " + MakePathSingular(strAPIPathParts(1)) + " you want to get."
		          Else
		            strDescription="The " + strParameter + " of the " + MakePathSingular(strAPIPathParts(1)) + " you want to delete."
		          end if
		        else
		          strDescription="The " +strParameter + " of the " + MakePathSingular(strAPIPathParts(1)) + " you want to upload a file to."
		        end if
		        lstPathParameters.SetValue(2,strDescription)
		        lstPathParameters.CellCheck(lstPathParameters.LastIndex,3)=True //required (always true for path)
		        Dim jPathParameterProperties As New JSONItem
		        jPathParameterProperties.Value("description")=strDescription
		        if strParameter="id" Then
		          jPathParameterProperties.Value("type")="integer"
		        else
		          jPathParameterProperties.Value("type")="string"
		        end if
		        jPathParameterProperties.Value("required")=True
		        jPathParameters.Value(strParameter)=jPathParameterProperties
		      end if
		    Next
		    if bPathParametersInPath=True Then
		      pbAddQueryParameter.Enabled=False
		      if bPathFound=True then
		        jPathSpecific.Child(cmbAPIPath.Text).Value("PathParameters")=jPathParameters
		      else
		        Dim jPathParametersAnchor As New JSONItem
		        jPathParametersAnchor.Value("PathParameters")=jPathParameters
		        jPathSpecific.Value(cmbAPIPath.Text)=jPathParametersAnchor
		      end if
		    end if
		  end if
		  lstPathParameters.ResizeColumns
		  jDocs.EscapeSlashes=False
		  taJsonDoc.Text=JSONPrettyPrint(StringToText(jDocs.ToString))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillQueryParameters(bNewAPICall As Boolean=False)
		  'strCurrentJSONDoc As String, strCurrentAPIPath As String, lstTarget As MagicListBox
		  Dim strUpdatedJSONDoc As String
		  strUpdatedJSONDoc = FillQueryParameters(taJsonDoc.Text, cmbAPIPath.Text, pmHTTPMethod.Text, lstQueryParameters,pbAddQueryParameter,bNewAPICall)
		  taJsonDoc.Text = strUpdatedJSONDoc
		  lstQueryParameters.ResizeColumns
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GenerateDefaultTests(APIPathJson As String) As String
		  Dim jTests As new JSONItem("[]")
		  Dim jTestItem As New JSONItem
		  Dim jAPISourcePath As New JSONItem
		  Dim jAPITargetPath As New JSONItem
		  Dim jAPIPathParameters As New JSONItem
		  'Dim strTests As String=""
		  'Dim iTest As Integer=0
		  Dim jDocs As New JSONItem(APIPathJson )
		  Dim jPathSpecific As JSONItem
		  //pathparameters are always path specific
		  If jDocs.HasName("PathSpecific")=False Then
		    Return ""
		  end if
		  //select the pathspecific part of the apipath doc
		  jPathSpecific=jDocs.Child("PathSpecific")
		  Dim strAPIPathNames() As String=jPathSpecific.Names
		  if strAPIPathNames.Ubound<>-1 Then
		    //if there are apipathnames
		    For i As Integer=0 to strAPIPathNames.Ubound
		      jTestItem = new JSONItem
		      jAPITargetPath = new JSONItem
		      jAPISourcePath=jPathSpecific.Child(strAPIPathNames(i))
		      if jAPISourcePath.HasName("PathParameters") Then
		        Dim jPathParameters As JSONItem=jAPISourcePath.Child("PathParameters")
		        Dim strAPIParameterNames() As String=jPathParameters.Names
		        Dim jCurrentParameterDef As JSONItem
		        Dim strParameterType As String
		        For j As Integer=0 to strAPIParameterNames.Ubound
		          jCurrentParameterDef=jPathParameters.Child(strAPIParameterNames(j))
		          strParameterType=jCurrentParameterDef.Value("type").StringValue
		          SELECT Case Lowercase(strParameterType)
		          Case "integer"
		            jAPIPathParameters.Value(strAPIParameterNames(j))=0
		            'Case "double"
		            //double is not logical here
		            //pathparameters is more likely to be
		            //an id so an integer
		            //or a string to look up
		            //this is here more for the purpose of showing how you would put a double in a test script
		            'jAPIPathParameters.Value(strAPIParameterNames(j))=0.0
		          Case "string"
		            jAPIPathParameters.Value(strAPIParameterNames(j))=""
		          END SELECT
		        Next j
		        jAPITargetPath.Value("APIPath")=strAPIPathNames(i)
		        jAPITargetPath.Value("PathParameters")=jAPIPathParameters
		        jTestItem.Value("test" + Cstr(i+1))=jAPITargetPath
		        jtests.Append jTestItem
		      else
		        jAPITargetPath.Value("APIPath")=strAPIPathNames(i)
		        jTestItem.Value("test" + Cstr(i+1))=jAPITargetPath
		        jTests.Append jTestItem
		      end if
		    Next
		    jTests.EscapeSlashes=False
		    Return jTests.ToString
		  Else
		    Return ""
		  End if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetJSONFromDB(strCurrentAPIPath As String) As String
		  Dim strReturn As String
		  Dim db As New SQLiteDatabase
		  db.DatabaseFile = SpecialFolder.ApplicationData.Child(APIDocDBName)
		  if db.Connect Then
		    Dim rs As RecordSet
		    Dim strCurrentAPIPathParts() As String=strCurrentAPIPath.Split("/")
		    Dim strAPIDocsBranch As String="v" + pmAPIVersion.Text + "_" + strCurrentAPIPathParts(1) + "_" + pmHTTPMethod.Text
		    tfJsonDoc.Text=strAPIDocsBranch
		    rs=db.SQLSelect("SELECT apidocsbranchjson FROM apidocs WHERE apidocsbranch='" + EscapeSQLData(strAPIDocsBranch) + "';")
		    if db.Error Then
		      //handle error here
		      MsgBox("Could not read apidocs.")
		      Exit Function
		    End If
		    if rs<>nil and rs.EOF=False Then
		      strReturn=rs.Field("apidocsbranchjson").StringValue
		    end if
		  else
		    System.DebugLog "The database could not be opened. Error: " + db.ErrorMessage
		  end if
		  Return strReturn
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPathParameter() As String
		  Dim iCount As Integer=cmbAPIPath.ListCount
		  Dim strCurrentSelection As String
		  strCurrentSelection=cmbAPIPath.Text
		  Dim strCurrentSelectionParts() As String=Split(strCurrentSelection,"/")
		  if strCurrentSelectionParts.Ubound<1 Then
		    Return ""
		  else
		    strCurrentSelection="/" + strCurrentSelectionParts(1)
		  end if
		  Dim strCall As String
		  Dim bfound As Boolean=False
		  Dim strPathParameter As String=""
		  For j As Integer=0 To iCount-1
		    strCall = cmbAPIPath.list(j)
		    if left(strCall,len(strCurrentSelection))=strCurrentSelection Then
		      Dim strAPIPathParts() As String=strCall.Split("/")
		      For i As Integer=0 to strAPIPathParts.Ubound
		        if left(strAPIPathParts(i),1)="{" and right(strAPIPathParts(i),1)="}" Then
		          strPathParameter=strAPIPathParts(i)
		          strPathParameter=mid( strPathParameter, 2, len(strPathParameter) -2 )
		          bfound=True
		          exit for
		        end if
		      Next i
		      if bfound=True Then
		        exit for
		      end if
		    end if
		  Next j
		  Return strPathParameter
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPaths(strAPIVersion As String, strHTTPMethod As String) As String()
		  Dim strPathNamesFromJSON() As String
		  Dim db As New SQLiteDatabase
		  //Get the documentation database
		  db.DatabaseFile = SpecialFolder.ApplicationData.Child(APIDocDBName)
		  if db.Connect Then
		    Dim rs As RecordSet
		    //don't bother to escape since you can't edit the popup menus 
		    //and therefore since they are predefined by the programmer
		    //we have full control over the values
		    Dim strSQL As String="SELECT * FROM apidocs WHERE apidocsbranch LIKE 'v" + strAPIVersion + _
		    "_%_" + pmHTTPMethod.Text + "' ORDER BY apidocsbranch;"
		    rs=db.SQLSelect(strSQL)
		    if db.Error Then
		      //handle error here
		      MsgBox("Problem reading from apidocs table.")
		      Exit Function
		    End If
		    if rs<>nil and rs.EOF=False Then
		      While not rs.EOF
		        //for instance v1_Addresses_2
		        Dim strBranchName As String=rs.Field("apidocsbranch").StringValue
		        Dim strBranchNameParts() As String=strBranchName.Split("_")
		        //for instance /Addresses
		        Dim strPathName As String="/" + strBranchNameParts(1)
		        if strHTTPMethod<>"PUT" and strHTTPMethod<>"DELETE" AND strHTTPMethod<>"PATCH" Then
		          //so it's either GET, POST
		          //in that case add the pathname to the strPathnames
		          //in case where it's PUT, DELETE or PATCH, it's always branchspecific
		          //since you can't call that with saying what item you want to update or delete`
		          //so in that case don't add the main branch
		          strPathNamesFromJSON.Append strPathName
		        end if
		        //Get the JSON specifications for this branch
		        Dim strApiDocsBranchJson As String=rs.Field("apidocsbranchjson").StringValue
		        //Make it into a JSONItem
		        Dim jApiDocsBranch As New JSONItem(strApiDocsBranchJson)
		        Dim jPathspecificentries As JSONItem
		        If jApiDocsBranch.HasName("PathSpecific") Then
		          //find the pathspecific branch(es) and add them to the strPathNames
		          jPathspecificEntries=jApiDocsBranch.Child("PathSpecific")
		          Dim strPathNames() As String=jPathspecificEntries.Names
		          for i As Integer=0 to strPathNames.Ubound
		            if strPathNames(i)<>strPathName Then
		              //we already added the main branch if necessary
		              //so only add the branches other than the main one
		              strPathNamesFromJSON.Append strPathNames(i)
		            end if
		          next
		        End If
		        rs.MoveNext
		      Wend
		    end if
		  else
		    System.DebugLog "The database could not be opened. Error: " + db.ErrorMessage
		  end if
		  Return strPathNamesFromJSON
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetAllListBoxes()
		  lstPathParameters.Reset
		  lstHeaderParameters.Reset
		  lstQueryParameters.Reset
		  lstBodyParameters.Reset
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveJSONToDB()
		  Dim db As New SQLiteDatabase
		  db.DatabaseFile = SpecialFolder.ApplicationData.Child(APIDocDBName)
		  if db.Connect Then
		    Dim strSQL As String
		    Dim strAPIDocsBranch As String=tfJsonDoc.Text
		    //https://stackoverflow.com/questions/15277373/sqlite-upsert-update-or-insert
		    strSQL="UPDATE apidocs SET apidocsbranchjson='" + EscapeSQLData(taJsonDoc.Text) + _
		    "' WHERE apidocsbranch='" + EscapeSQLData(strAPIDocsBranch) + "';"
		    strSQL=strSQL + "INSERT INTO apidocs (apidocsbranch, apidocsbranchjson) SELECT '" + _
		    EscapeSQLData(strAPIDocsBranch) + "', '" + EscapeSQLData(taJsonDoc.Text) + "' " + _
		    "WHERE (SELECT changes() = 0);"
		    db.SQLExecute(strSQL)
		    if db.Error Then
		      //handle error here
		      MsgBox("Could not save the branch to apidocs.")
		    End If
		  else
		    System.DebugLog "The database could not be opened. Error: " + db.ErrorMessage
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetApiDocField(strFieldName As String, strFieldValue As String)
		  Dim jDocs As New JSONItem(taJsonDoc.Text)
		  Dim jPathSpecific As JSONItem
		  If jDocs.HasName("PathSpecific")=False Then
		    jDocs.Value("PathSpecific")=New JSONItem("{}")
		  end if
		  jPathSpecific=jDocs.Child("PathSpecific")
		  if jPathSpecific.HasName(cmbAPIPath.Text)=False Then
		    jPathSpecific.Value(cmbAPIPath.Text)=New JSONItem("{}")
		  end if
		  Dim jAPIPath As JSONItem=jPathSpecific.Child(cmbAPIPath.Text)
		  if jAPIPath.HasName("apiinfoq")=False Then
		    jAPIPath.Value("apiinfoq")=New JSONItem("[]")
		  end if
		  Dim jAPIInfoQ As JSONItem=jAPIPath.Child("apiinfoq") //array
		  Dim bFieldFound As Boolean=False
		  For j As Integer=0 to jAPIInfoQ.Count-1
		    dim jInfoElement As JSONItem=jAPIInfoQ.Value(j)
		    Dim strElementName As String=jInfoElement.Value("name").StringValue
		    if strElementName=strFieldName Then
		      bFieldFound=true
		      jInfoElement.Value("value")=strFieldValue
		      exit for
		    end if
		  Next
		  If bFieldFound=False Then
		    jAPIInfoQ.Append New JSONItem("{}")
		    dim jInfoElement As JSONItem=jAPIInfoQ.Value(jAPIInfoQ.Count-1)
		    jInfoElement.Value("name")=strFieldName
		    jInfoElement.Value("value")=strFieldValue
		  End If
		  jDocs.EscapeSlashes=False
		  taJsonDoc.Text=JSONPrettyPrint(StringToText(jDocs.ToString))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBodyParameterName(strOldBodyFieldName As String, strBodyFieldName As String, bPathSpecific As Boolean)
		  if strOldBodyFieldName<>strBodyFieldName Then
		    Dim jDocs As New JSONItem(taJsonDoc.Text)
		    Dim jPathSpecific As JSONItem
		    if bPathSpecific=False Then
		      If jDocs.HasName("BodyParameters")=False Then
		        jDocs.Value("BodyParameters")=New JSONItem("{}")
		      end if
		      Dim jBodyParameters As JSONItem=jDocs.Child("BodyParameters")
		      If jBodyParameters.HasName(strOldBodyFieldName) Then
		        //see if this field exists
		        //if it exists, create the new one and remove the old one
		        Dim jBodyInfo As JSONItem=jBodyParameters.Child(strOldBodyFieldName)
		        jBodyParameters.Value(strBodyFieldName)=jBodyInfo
		        jBodyParameters.Remove(strOldBodyFieldName)
		      else
		        //if the field did not exist, then create it
		        jBodyParameters.Value(strBodyFieldName)=new JSONItem("{}")
		      end if
		    Else
		      If jDocs.HasName("PathSpecific") Then
		        jPathSpecific=jDocs.Child("PathSpecific")
		        Dim strAPIPathNames() As String=jPathSpecific.Names
		        For i As Integer=0 to strAPIPathNames.Ubound
		          if strAPIPathNames(i)=cmbAPIPath.Text Then
		            Dim jAPIPath As JSONItem=jPathSpecific.Child(strAPIPathNames(i))
		            if jAPIPath.HasName("BodyParameters")=False Then
		              jAPIPath.Value("BodyParameters")=New JSONItem("{}")
		            end if
		            Dim jBodyParameters As JSONItem=jAPIPath.Child("BodyParameters")
		            If jBodyParameters.HasName(strOldBodyFieldName) Then
		              //see if this field exists
		              //if it exists, create the new one and remove the old one
		              Dim jBodyInfo As JSONItem=jBodyParameters.Child(strOldBodyFieldName)
		              jBodyParameters.Value(strBodyFieldName)=jBodyInfo
		              jBodyParameters.Remove(strOldBodyFieldName)
		            else
		              //if the field did not exist, then create it
		              jBodyParameters.Value(strBodyFieldName)=new JSONItem("{}")
		              jAPIPath.Value("BodyParameters")=jBodyParameters
		            end if
		            exit for
		          end if
		        Next
		      end if
		    end if
		    lstBodyParameters.ResizeColumns
		    jDocs.EscapeSlashes=False
		    taJsonDoc.Text=JSONPrettyPrint(StringToText(jDocs.ToString))
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBodyParameterValue(strBodyFieldName As String, strParameterName As String, bParameterValue As Boolean, bPathSpecific As Boolean)
		  Dim jDocs As New JSONItem(taJsonDoc.Text)
		  Dim jPathSpecific As JSONItem
		  if bPathSpecific=False Then
		    If jDocs.HasName("BodyParameters")=False Then
		      jDocs.Value("BodyParameters")=New JSONItem("{}")
		    end if
		    Dim jBodyParameters As JSONItem=jDocs.Child("BodyParameters")
		    try
		      //try to read this field
		      //if it exists, replace it
		      Dim jBodyInfo As JSONItem=jBodyParameters.Child(strBodyFieldName)
		      jBodyInfo.Value(strParameterName)=bParameterValue
		    Catch
		      //if the field did not exist, then create it
		      jBodyParameters.Value(strBodyFieldName)=new JSONItem("{}")
		      Dim jBodyInfo As JSONItem=jBodyParameters.Child(strBodyFieldName)
		      jBodyInfo.Value(strParameterName)=bParameterValue
		    end try
		  Else
		    If jDocs.HasName("PathSpecific") Then
		      jPathSpecific=jDocs.Child("PathSpecific")
		      Dim strAPIPathNames() As String=jPathSpecific.Names
		      For i As Integer=0 to strAPIPathNames.Ubound
		        if strAPIPathNames(i)=cmbAPIPath.Text Then
		          Dim jAPIPath As JSONItem=jPathSpecific.Child(strAPIPathNames(i))
		          if jAPIPath.HasName("BodyParameters") Then
		            Dim jBodyParameters As JSONItem=jAPIPath.Child("BodyParameters")
		            try
		              //try to read this field
		              //if it exists, replace it
		              Dim jBodyInfo As JSONItem=jBodyParameters.Child(strBodyFieldName)
		              jBodyInfo.Value(strParameterName)=bParameterValue
		              if jBodyInfo.HasName("required")=False then
		                jBodyInfo.Value("required")=False
		              end if
		            Catch
		              //if the field did not exist, then create it
		              jBodyParameters.Value(strBodyFieldName)=new JSONItem("{}")
		              Dim jBodyInfo As JSONItem=jBodyParameters.Child(strBodyFieldName)
		              jBodyInfo.Value(strParameterName)=bParameterValue
		              jBodyInfo.Value("required")=False
		            end try
		          end if
		          exit for
		        end if
		      Next
		    end if
		  end if
		  lstBodyParameters.ResizeColumns
		  jDocs.EscapeSlashes=False
		  taJsonDoc.Text=JSONPrettyPrint(StringToText(jDocs.ToString))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBodyParameterValue(strBodyFieldName As String, strParameterName As String, strParameterValue As String, bPathSpecific As Boolean)
		  Dim jDocs As New JSONItem(taJsonDoc.Text)
		  Dim jPathSpecific As JSONItem
		  if bPathSpecific=False Then
		    If jDocs.HasName("BodyParameters")=False Then
		      jDocs.Value("BodyParameters")=New JSONItem("{}")
		    end if
		    Dim jBodyParameters As JSONItem=jDocs.Child("BodyParameters")
		    try
		      //try to read this field
		      //if it exists, replace it
		      Dim jBodyInfo As JSONItem=jBodyParameters.Child(strBodyFieldName)
		      jBodyInfo.Value(strParameterName)=strParameterValue
		      if jBodyInfo.HasName("required")=False then
		        jBodyInfo.Value("required")=False
		      end if
		    Catch
		      //if the field did not exist, then create it
		      jBodyParameters.Value(strBodyFieldName)=new JSONItem("{}")
		      Dim jBodyInfo As JSONItem=jBodyParameters.Child(strBodyFieldName)
		      jBodyInfo.Value(strParameterName)=strParameterValue
		      jBodyInfo.Value("required")=False
		    end try
		  Else
		    If jDocs.HasName("PathSpecific") Then
		      jPathSpecific=jDocs.Child("PathSpecific")
		      Dim strAPIPathNames() As String=jPathSpecific.Names
		      For i As Integer=0 to strAPIPathNames.Ubound
		        if strAPIPathNames(i)=cmbAPIPath.Text Then
		          Dim jAPIPath As JSONItem=jPathSpecific.Child(strAPIPathNames(i))
		          if jAPIPath.HasName("BodyParameters") Then
		            Dim jBodyParameters As JSONItem=jAPIPath.Child("BodyParameters")
		            try
		              //try to read this field
		              //if it exists, replace it
		              Dim jBodyInfo As JSONItem=jBodyParameters.Child(strBodyFieldName)
		              jBodyInfo.Value(strParameterName)=strParameterValue
		              if jBodyInfo.HasName("required")=False then
		                jBodyInfo.Value("required")=False
		              end if
		            Catch
		              //if the field did not exist, then create it
		              jBodyParameters.Value(strBodyFieldName)=new JSONItem("{}")
		              Dim jBodyInfo As JSONItem=jBodyParameters.Child(strBodyFieldName)
		              jBodyInfo.Value(strParameterName)=strParameterValue
		              jBodyInfo.Value("required")=False
		            end try
		          end if
		          exit for
		        end if
		      Next
		    end if
		  end if
		  lstBodyParameters.ResizeColumns
		  jDocs.EscapeSlashes=False
		  taJsonDoc.Text=JSONPrettyPrint(StringToText(jDocs.ToString))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetCmbAPIPaths()
		  Dim strAPIPaths() As String
		  strAPIPaths=GetPaths(pmAPIVersion.Text,pmHTTPMethod.Text)
		  if strAPIPaths.Ubound<>-1 then
		    strAPIPaths.Insert(0,"") //add an empty value at the start, so we can have a situation where no test is selected.
		    cmbAPIPath.AddRows strAPIPaths
		    cmbAPIPath.Enabled=True
		  else
		    cmbAPIPath.DeleteAllRows
		    cmbAPIPath.AddRow "" //add an empty row so we can have a situation where no test is selected.
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPathParameterValue(strPathFieldName As String, strParameterName As String, strParameterValue As String)
		  Dim jDocs As New JSONItem(taJsonDoc.Text)
		  Dim jPathSpecific As JSONItem
		  If jDocs.HasName("PathSpecific") Then
		    jPathSpecific=jDocs.Child("PathSpecific")
		    Dim strAPIPathNames() As String=jPathSpecific.Names
		    For i As Integer=0 to strAPIPathNames.Ubound
		      if strAPIPathNames(i)=cmbAPIPath.Text Then
		        //we found the path
		        Dim jAPIPath As JSONItem=jPathSpecific.Child(strAPIPathNames(i))
		        if jAPIPath.HasName("PathParameters") Then
		          //we are now in pathparameters
		          Dim jPathParameters As JSONItem=jAPIPath.Child("PathParameters")
		          Dim strAPIParameterNames() As String=jPathParameters.Names
		          For j As Integer=0 to strAPIParameterNames.Ubound
		            if strAPIParameterNames(j)=strPathFieldName Then
		              //we found the pathfieldname
		              jPathParameters.Child(strPathFieldName).Value(strParameterName)=strParameterValue
		              exit for
		            end if
		          Next
		        end if
		        exit for
		      end if
		    Next
		  end if
		  lstPathParameters.ResizeColumns
		  jDocs.EscapeSlashes=False
		  taJsonDoc.Text=JSONPrettyPrint(StringToText(jDocs.ToString))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UIEnabled(bEnabled As Boolean)
		  tfSummary.Enabled=bEnabled
		  tfDescription.Enabled=bEnabled
		  tfExternalDocsURL.Enabled=bEnabled
		  tfOperationId.Enabled=bEnabled
		  tfTags.Enabled=bEnabled
		  lstPathParameters.Enabled=bEnabled
		  lstHeaderParameters.Enabled=bEnabled
		  lstQueryParameters.Enabled=bEnabled
		  lstBodyParameters.Enabled=bEnabled
		  pbAddHeaderParameter.Enabled=bEnabled
		  pbAddQueryParameter.Enabled=bEnabled
		  pbAddBodyParameter.Enabled=bEnabled
		  pbDeleteHeaderParameter.Enabled=bEnabled
		  pbDeleteQueryParameter.Enabled=bEnabled
		  pbDeleteBodyParameter.Enabled=bEnabled
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Protocol As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		strOldBodyName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		strOldHeaderName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		strOldQueryName As String
	#tag EndProperty


	#tag Constant, Name = strDefaultDocumentationLink, Type = String, Dynamic = False, Default = \"https://www.lunaapi.ga/Luna/", Scope = Public
	#tag EndConstant

	#tag Constant, Name = xjDocsClass, Type = String, Dynamic = False, Default = \"LunaAPICalls", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events lstPathParameters
	#tag Event
		Sub CellCheckBoxStateChange(row As Integer, column As Integer, newState As Boolean)
		  #Pragma Unused newState
		  MsgBox "PathParemeters are always required since they are part of the path"
		  me.CellCheck(row,column)=Not(me.CellCheck(row, column)) //path parameter is always required, so don't allow change
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellTextChanged(newText As String, row As Integer, column As Integer)
		  //name,type,description,required
		  //so only column 0 and 2 (text columns)
		  Select Case column
		    //Case 0 //name
		    //SetPathParameter("name",newText) do not allow to change since this is part of the path
		  Case 2 //description
		    SetPathParameterValue(me.Cell(row,0),"description",newText)
		  End Select
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellDropDownChanged(row As Integer, column As Integer, newValue As String, oldValue As String)
		  //name,type,description,required
		  //so only column 1 (dropdown column)
		  //no need to select since this is the only dropdown column we could get
		  #Pragma Unused column
		  #Pragma Unused oldValue
		  SetPathParameterValue(me.Cell(row,0),"type",newValue)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstHeaderParameters
	#tag Event
		Sub CellTextChanged(newText As String, row As Integer, column As Integer)
		  //name,type,description,required,pathspecific
		  //so only column 0 and 2 (text columns)
		  Dim bPathSpecific As Boolean
		  Dim strUpdatedJSONDoc As String
		  bPathSpecific = me.CellCheck(row,4)
		  Select Case column
		  Case 0 //name
		    strUpdatedJSONDoc = SetHeaderParameterName(taJsonDoc.Text, pmAPIVersion.Text, strOldHeaderName,newText,bPathSpecific)
		    strOldHeaderName = newText
		  Case 2 //description
		    strUpdatedJSONDoc = SetHeaderParameterValue(taJsonDoc.Text, pmAPIVersion.Text, me.Cell(row,0),"description",newText,bPathSpecific)
		  End Select
		  me.ResizeColumns
		  taJsonDoc.Text = strUpdatedJSONDoc
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  strOldHeaderName=me.Cell(me.ListIndex,0)
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellDropDownChanged(row As Integer, column As Integer, newValue As String, oldValue As String)
		  //name,type,description,required,pathspecific
		  //so only column 1 (dropdown column)
		  //no need to select since this is the only dropdown column we could get
		  #Pragma Unused column
		  #Pragma Unused oldValue
		  Dim bPathSpecific As Boolean
		  Dim strUpdatedJSONDoc As String
		  bPathSpecific=me.CellCheck(row,4)
		  strUpdatedJSONDoc = SetHeaderParameterValue(taJsonDoc.Text, pmAPIVersion.text, me.Cell(row,0),"type",newValue,bPathSpecific)
		  taJsonDoc.Text=strUpdatedJSONDoc
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellCheckBoxStateChange(row As Integer, column As Integer, newState As Boolean)
		  //name,type,description,required,pathspecific
		  Dim bPathSpecific As Boolean
		  Dim strUpdatedJSONDoc As String
		  bPathSpecific=me.CellCheck(row,4)
		  Select case me.Heading(column)
		  Case "required"
		    strUpdatedJSONDoc = SetHeaderParameterValue(taJsonDoc.Text, pmAPIVersion.Text, me.Cell(row,0), "required", newState, bPathSpecific)
		  Case "pathspecific"
		    //todo change path
		    MsgBox "not yet implemented"
		    me.CellCheck(row,column)=Not(me.CellCheck(row, column)) //pathspecific, change path
		  End Select
		  taJsonDoc.Text=strUpdatedJSONDoc
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstQueryParameters
	#tag Event
		Sub CellCheckBoxStateChange(row As Integer, column As Integer, newState As Boolean)
		  //name,type,description,required,pathspecific
		  Dim bPathSpecific As Boolean
		  Dim strUpdatedJSONDoc As String
		  bPathSpecific=me.CellCheck(row,4)
		  Select case me.Heading(column)
		  Case "required"
		    strUpdatedJSONDoc = SetQueryParameterValue(taJsonDoc.Text, cmbAPIPath.Text, me.Cell(row,0),"required",newState,bPathSpecific)
		  Case "pathspecific"
		    strUpdatedJSONDoc = ChangeQueryParameterPathSpecific(taJsonDoc.Text, cmbAPIPath.Text, me.Cell(row,0),bPathSpecific)
		  End Select
		  taJsonDoc.Text=strUpdatedJSONDoc
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellTextChanged(newText As String, row As Integer, column As Integer)
		  //name,type,description,required,pathspecific
		  //so only column 0 and 2 (text columns)
		  Dim bPathSpecific As Boolean
		  Dim strUpdatedJSONDoc As String
		  bPathSpecific=me.CellCheck(row,4)
		  Select Case column
		  Case 0 //name
		    strUpdatedJSONDoc = SetQueryParameterName(taJsonDoc.Text, cmbAPIPath.text, strOldQueryName,newText,bPathSpecific)
		    strOldHeaderName=newText
		  Case 2 //description
		    strUpdatedJSONDoc = SetQueryParameterValue(taJsonDoc.Text, cmbAPIPath.Text, me.Cell(row,0),"description",newText,bPathSpecific)
		  End Select
		  taJsonDoc.Text=strUpdatedJSONDoc
		  me.ResizeColumns
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  strOldQueryName=me.Cell(me.ListIndex,0)
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellDropDownChanged(row As Integer, column As Integer, newValue As String, oldValue As String)
		  ////name,type,description,required,pathspecific
		  //so only column 1 (dropdown column)
		  //no need to select since this is the only dropdown column we could get
		  #Pragma Unused column
		  #Pragma Unused oldValue
		  Dim bPathSpecific As Boolean
		  Dim strUpdatedJSONDoc As String
		  bPathSpecific = me.CellCheck(row,4)
		  strUpdatedJSONDoc = SetQueryParameterValue(taJsonDoc.Text, cmbAPIPath.Text, me.Cell(row,0),"type",newValue,bPathSpecific)
		  taJsonDoc.Text =  strUpdatedJSONDoc
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstBodyParameters
	#tag Event
		Sub CellTextChanged(newText As String, row As Integer, column As Integer)
		  //name,type,description,required,pathspecific
		  //so only column 0 and 2 (text columns)
		  Dim bPathSpecific As Boolean
		  bPathSpecific=me.CellCheck(row,4)
		  Select Case column
		  Case 0 //name
		    SetBodyParameterName(strOldBodyName,newText,bPathSpecific)
		    strOldBodyName=newText
		  Case 2 //description
		    SetBodyParameterValue(me.Cell(row,0),"description",newText,bPathSpecific)
		  End Select
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  strOldBodyName=me.Cell(me.ListIndex,0)
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellDropDownChanged(row As Integer, column As Integer, newValue As String, oldValue As String)
		  //name,type,description,required,pathspecific
		  //so only column 1 (dropdown column)
		  //no need to select since this is the only dropdown column we could get
		  #Pragma Unused column
		  #Pragma Unused oldValue
		  Dim bPathSpecific As Boolean
		  bPathSpecific=me.CellCheck(row,4)
		  SetBodyParameterValue(me.Cell(row,0),"type",newValue,bPathSpecific)
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellCheckBoxStateChange(row As Integer, column As Integer, newState As Boolean)
		  //name,type,description,required,pathspecific
		  Dim bPathSpecific As Boolean
		  bPathSpecific=me.CellCheck(row,4)
		  Select case me.Heading(column)
		  Case "required"
		    SetBodyParameterValue(me.Cell(row,0),"required",newState,bPathSpecific)
		  Case "pathspecific"
		    ChangeBodyParameterPathSpecific(me.Cell(row,0),bPathSpecific)
		  End Select
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pbAddHeaderParameter
	#tag Event
		Sub Action()
		  lstHeaderParameters.AddRow
		  lstHeaderParameters.SetDropDownList(lstHeaderParameters.LastIndex,1, _ 
		  "integer,long,float,double,string,byte,binary,boolean,date,dateTime,password")
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pbDeleteHeaderParameter
	#tag Event
		Sub Action()
		  if lstHeaderParameters.ListIndex<>-1 and lstHeaderParameters.ListIndex<=lstHeaderParameters.ListCount-1 Then
		    //name,type,description,required,pathspecific
		    //remove the headerparameter from the json structure
		    DeleteHeaderParameter(lstHeaderParameters.Cell(lstHeaderParameters.ListIndex,0), _ 
		    lstHeaderParameters.CellCheck(lstHeaderParameters.ListIndex,4))
		    lstHeaderParameters.RemoveRow(lstHeaderParameters.ListIndex)
		    lstHeaderParameters.ResizeColumns
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pbAddQueryParameter
	#tag Event
		Sub Action()
		  lstQueryParameters.AddRow
		  lstQueryParameters.SetDropDownList(lstQueryParameters.LastIndex,1, _ 
		  "integer,long,float,double,string,byte,binary,boolean,date,dateTime,password")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pbDeleteQueryParameter
	#tag Event
		Sub Action()
		  if lstQueryParameters.ListIndex<>-1 and lstQueryParameters.ListIndex<=lstQueryParameters.ListCount-1 Then
		    //name,type,description,required,pathspecific
		    //remove the queryparameter from the json structure
		    DeleteQueryParameter(lstQueryParameters.Cell(lstQueryParameters.ListIndex,0), _ 
		    lstQueryParameters.CellCheck(lstQueryParameters.ListIndex,4))
		    lstQueryParameters.RemoveRow(lstQueryParameters.ListIndex)
		    lstQueryParameters.ResizeColumns
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pbDeleteBodyParameter
	#tag Event
		Sub Action()
		  if lstBodyParameters.ListIndex<>-1 and lstBodyParameters.ListIndex<=lstBodyParameters.ListCount-1 Then
		    //name,type,description,required,pathspecific
		    //remove the headerparameter from the json structure
		    DeleteBodyParameter(lstBodyParameters.Cell(lstBodyParameters.ListIndex,0), _ 
		    lstBodyParameters.CellCheck(lstBodyParameters.ListIndex,4))
		    lstBodyParameters.RemoveRow(lstBodyParameters.ListIndex)
		    lstBodyParameters.ResizeColumns
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pbAddBodyParameter
	#tag Event
		Sub Action()
		  lstBodyParameters.AddRow
		  lstBodyParameters.SetDropDownList(lstBodyParameters.LastIndex,1, _ 
		  "integer,long,float,double,string,byte,binary,boolean,date,dateTime,password,file")
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events taJsonDoc
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  #Pragma Unused Key
		  Return true
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events pmAPIVersion
	#tag Event
		Sub Change()
		  ResetAllListBoxes
		  if me.Text<>"" and pmHTTPMethod.Text<>"" Then
		    cmbAPIPath.DeleteAllRows
		    cmbAPIPath.Enabled=True
		    SetCmbAPIPaths
		  Else
		    cmbAPIPath.DeleteAllRows
		    cmbAPIPath.Enabled=False
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pmHTTPMethod
	#tag Event
		Sub Change()
		  ResetAllListBoxes
		  if me.Text<>"" and pmAPIVersion.Text<>"" Then
		    cmbAPIPath.DeleteAllRows
		    cmbAPIPath.Enabled=True
		    SetCmbAPIPaths
		  Else
		    cmbAPIPath.DeleteAllRows
		    cmbAPIPath.Enabled=False
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmbAPIPath
	#tag Event
		Sub Change()
		  Dim strJSON As String
		  ResetAllListBoxes
		  if me.Text<>"" Then
		    //existing selected
		    pbSave.Enabled=True
		    pbCancel.Enabled=True
		    pbDelete.Enabled=True
		    pbSendToProject.Enabled=True
		    Dim strApiPath As String=Me.Text
		    if strAPIPAth.Len>1 and left(strAPIPAth,1)<>"/" Then
		      strAPIPAth="/" + strAPIPAth
		      me.Text=strAPIPath
		    end if
		    //GetJSONFromDB will filter this to the root path
		    strJSON=JSONPrettyPrint(StringToText(GetJSONFromDB(strAPIPath)))
		    if strJSON<>"" Then
		      taJsonDoc.Text=strJSON
		    else
		      taJsonDoc.Text="{}"
		    end if
		    Dim bGoodCall As Boolean
		    bGoodCall=FillApiDocs
		    if bGoodCall then
		      FillPathParameters
		      FillHeaderParameters
		      FillQueryParameters
		      FillBodyParameters
		      UIEnabled(True)
		      me.Enabled=False
		      pmAPIVersion.Enabled=False
		      pmHTTPMethod.Enabled=False
		    else
		      ClearFields
		      cmbAPIPath.ListIndex=0
		      cmbAPIPath.Enabled=True
		      pmAPIVersion.Enabled=True
		      pmHTTPMethod.Enabled=True
		    end if
		  else
		    //nothing selected
		    pbSave.Enabled=False
		    pbCancel.Enabled=False
		    pbDelete.Enabled=False
		    pbSendToProject.Enabled=False
		    UIEnabled(False)
		    ClearFields
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Dim strJSON As String
		  if asc(Key)=9 or asc(key)=13 then //tab or return
		    Dim strAPIPath As String = me.Text
		    if strAPIPAth.Len>1 and left(strAPIPAth,1)<>"/" Then
		      strAPIPAth="/" + strAPIPAth
		      me.Text=strAPIPath
		    end if
		    Dim iTypedIndex As Integer=-1
		    Dim iListCount As Integer=me.ListCount
		    Dim strAPIPathsInCombobox() As String
		    for i As Integer=0 to iListCount-1
		      strAPIPathsInCombobox.Append me.List(i)
		    next
		    
		    iTypedIndex=strAPIPathsInCombobox.IndexOf(strAPIPath)
		    
		    if iTypedIndex=-1 then
		      //not found
		      pbSave.Enabled=True
		      pbCancel.Enabled=True
		      pbDelete.Enabled=False // can't delete since it didnt't exist
		      pbSendToProject.Enabled=False //don't enable send till after we saved
		      //check if the rootpath exists
		      strJSON=JSONPrettyPrint(StringToText(GetJSONFromDB(strAPIPath)))
		      if strJSON<>"" Then
		        //rootpath did exist (for instance we add /Contacts/{emailaddress} and /Contacts already exists)
		        taJsonDoc.Text=strJSON
		        Dim bGoodCall As Boolean
		        bGoodCall=FillApiDocs
		        if bGoodCall then
		          FillPathParameters
		          FillHeaderParameters
		          FillQueryParameters
		          FillBodyParameters
		          UIEnabled(True)
		          me.Enabled=False
		          pmAPIVersion.Enabled=False
		          pmHTTPMethod.Enabled=False
		        else
		          ClearFields
		          cmbAPIPath.ListIndex=0
		          cmbAPIPath.Enabled=True
		          pmAPIVersion.Enabled=True
		          pmHTTPMethod.Enabled=True
		        end if
		      else
		        //rootpath did not exist, so it is new
		        taJsonDoc.Text="{}"
		        if strAPIPAth.Len>1 and left(strAPIPAth,1)<>"/" Then
		          strAPIPAth="/" + strAPIPAth
		          me.Text=strAPIPath
		        end if
		        if strAPIPath<>"" Then
		          Dim bGoodCall As Boolean
		          bGoodCall=FillApiDocs
		          if bGoodCall then
		            FillPathParameters
		            FillHeaderParameters(True)
		            FillQueryParameters(True)
		            FillBodyParameters
		            UIEnabled(True)
		            me.Enabled=False
		            pmAPIVersion.Enabled=False
		            pmHTTPMethod.Enabled=False
		            Dim strAPIPathParts() As String=cmbAPIPath.Text.Split("/")
		            Dim strAPIDocsBranch As String="v" + pmAPIVersion.Text + "_" + strAPIPathParts(1) + "_" + pmHTTPMethod.Text
		            tfJsonDoc.Text=strAPIDocsBranch
		          else
		            ClearFields
		            cmbAPIPath.ListIndex=0
		            cmbAPIPath.Enabled=True
		            pmAPIVersion.Enabled=True
		            pmHTTPMethod.Enabled=True
		          end if
		        Else
		          UIEnabled(False)
		          ClearFields
		        end if
		      end if
		    else
		      //found
		      pbSave.Enabled=True
		      pbCancel.Enabled=True
		      pbDelete.Enabled=True
		      pbSendToProject.Enabled=True
		      me.ListIndex=iTypedIndex
		    end if
		  end if
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events tfSummary
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if asc(Key)=9 or asc(key)=13 then //tab or return
		    //save if to taJsonDoc
		    SetApiDocField("summary",me.Text)
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  //save if to taJsonDoc
		  SetApiDocField("summary",me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tfDescription
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if asc(Key)=9 or asc(key)=13 then //tab or return
		    //save if to taJsonDoc
		    SetApiDocField("description",me.Text)
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  //save if to taJsonDoc
		  SetApiDocField("description",me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tfExternalDocsURL
	#tag Event
		Sub LostFocus()
		  //save if to taJsonDoc
		  SetApiDocField("externalDocsUrl",me.Text)
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if asc(Key)=9 or asc(key)=13 then //tab or return
		    //save if to taJsonDoc
		    SetApiDocField("externalDocsUrl",me.Text)
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events tfOperationId
	#tag Event
		Sub LostFocus()
		  //save if to taJsonDoc
		  SetApiDocField("operationId",me.Text)
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if asc(Key)=9 or asc(key)=13 then //tab or return
		    //save if to taJsonDoc
		    SetApiDocField("operationId",me.Text)
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events tfTags
	#tag Event
		Sub LostFocus()
		  //save if to taJsonDoc
		  SetApiDocField("tags",me.Text)
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if asc(Key)=9 or asc(key)=13 then //tab or return
		    //save if to taJsonDoc
		    SetApiDocField("tags",me.Text)
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events pbSave
	#tag Event
		Sub Action()
		  //Save
		  SaveJSONToDB
		  cmbAPIPath.ListIndex=0
		  cmbAPIPath.DeleteAllRows
		  cmbAPIPath.Enabled=True
		  SetCmbAPIPaths
		  pmAPIVersion.Enabled=True
		  pmHTTPMethod.Enabled=True
		  pbSave.Enabled=False
		  pbCancel.Enabled=False
		  pbDelete.Enabled=False
		  pbSendToProject.Enabled=False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pbCancel
	#tag Event
		Sub Action()
		  cmbAPIPath.ListIndex=0
		  cmbAPIPath.Enabled=True
		  pmAPIVersion.Enabled=True
		  pmHTTPMethod.Enabled=True
		  'pbAddDefaultQueryParameters.Enabled=False
		  'pbAddDefaultHeaderParameters.Enabled=False
		  pbSave.Enabled=False
		  pbCancel.Enabled=False
		  pbDelete.Enabled=False
		  pbSendToProject.Enabled=False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pbSendToProject
	#tag Event
		Sub Action()
		  OutputArea.Text=""
		  
		  If tfProjectFile.Text="" Then
		    tfProjectFile.Text = GetXojoBinaryProjectFile
		  End If
		  
		  if tfProjectFile.Text="" Then
		    Exit Sub
		  end if
		  
		  Dim strTextProperty As String
		  
		  ConnectToXojo
		  
		  Dim strScript As String
		  
		  If ScriptArea.Text = "" Then
		    //generate script if it does not exist
		    //if it exists, we can manually adjust it if we want
		    
		    Dim jDoc As New JSONItem(taJsonDoc.Text)
		    Dim strJsonForScript As String=jDoc.ToString
		    //generate default tests to be executed
		    Dim strDefaultTests As String=GenerateDefaultTests(strJsonForScript)
		    //create script
		    
		    //open the projectfile to write the documentation to
		    strScript = strScript + "OpenFile """ + tfProjectFile.Text + """" + EndOfLine
		    
		    //Select APICallsDocs to write the API call definition
		    strScript = strScript + "Dim selected As Boolean = SelectProjectItem(""APICallDocs"")" + EndOfLine
		    strScript = strScript + "Dim strPragma As String" + EndOfLine
		    strScript = strScript + "Dim strParameterPragma As String" + EndOfLine
		    strScript = strScript + "If selected = False Then " + EndOfLine
		    strScript = strScript + "Print ""Something went wrong selecting APICallDocs""" + EndOfLine
		    strScript = strScript + "Else" + EndOfLine
		    //select the api call
		    strScript = strScript + "location = ""APICallDocs." + tfJsonDoc.Text + """" + EndOfLine
		    //if the selection succeeded the location will now be the api call
		    strScript = strScript + "if location = ""APICallDocs." + tfJsonDoc.Text + """ Then" + EndOfLine
		    //if it is then change the declaration
		    strScript = strScript + "ChangeDeclaration(""" + tfJsonDoc.Text + """, """ + ReplaceAll(strJsonForScript, """", """""") + """, ""String"", 0, """")" + EndOfLine
		    strScript = strScript + "Else" + EndOfLine
		    //if it isn't then the api call did not exist
		    //so create it
		    strScript = strScript + "DoCommand(""NewProperty"")" + EndOfLine
		    //then change the declaration
		    strScript = strScript + "ChangeDeclaration(""" + tfJsonDoc.Text + """, """ + ReplaceAll(strJsonForScript, """", """""") + """, ""String"", 0, """")" + EndOfLine
		    strScript = strScript + "End If" + EndOfLine
		    strScript = strScript + "End If" + EndOfLine
		    //test if you can now select the api call
		    strScript = strScript + "location = ""APICallDocs." + tfJsonDoc.Text + """" + EndOfLine
		    strScript = strScript + "if location = ""APICallDocs." + tfJsonDoc.Text + """ Then" + EndOfLine
		    //if you can, fill in the Text so that it is easier to read the definition in the IDE
		    //then let this program know that you wrote this api call
		    strTextProperty = JSONToPropertyText(strJsonForScript)
		    if strTextProperty<>"" Then
		      strScript = strScript + "Text = """ + strTextProperty + """" + EndOfLine
		    End If
		    strScript = strScript + "Print ""Wrote "  + tfJsonDoc.Text + " property to APICallDocs""" + EndOfLine
		    strScript = strScript + "End If" + EndOfLine
		    
		    //Select APICalls to write the API calls that will contain the tests to be executed by the swagger generation program
		    strScript = strScript + "Dim bExistingTest As Boolean=False" + EndOfLine
		    strScript = strScript + "selected = SelectProjectItem(""APICalls"")" + EndOfLine
		    strScript = strScript + "If selected = False Then " + EndOfLine
		    strScript = strScript + "Print ""Something went wrong selecting APICalls""" + EndOfLine
		    strScript = strScript + "Else" + EndOfLine
		    //select the api call
		    strScript = strScript + "location = ""APICalls." + tfJsonDoc.Text + """" + EndOfLine
		    strScript = strScript + "If location = ""APICalls." + tfJsonDoc.Text + """ Then " + EndOfLine
		    strScript = strScript + "bExistingTest = True" + EndOfLine
		    //we no longer change the tests that already exist
		    //if the tests existed and we changed the api call
		    //we put a pragma warning that we might need to change our tests
		    //otherwise we'd have to reconstruct the api calls every time we made a small change to our api call
		    //for instance by adding an optional queryparameter
		    'strScript = strScript + "ChangeDeclaration(""" + tfJsonDoc.Text + """, """ + ReplaceAll(strDefaultTests,"""","""""") + """, ""String"", 0, """")" + EndOfLine
		    strScript = strScript + "Else" + EndOfLine
		    strScript = strScript + "DoCommand(""NewProperty"")" + EndOfLine
		    strScript = strScript + "ChangeDeclaration(""" + tfJsonDoc.Text + """, """ + ReplaceAll(strDefaultTests,"""","""""") + """, ""String"", 0, """")" + EndOfLine
		    strScript = strScript + "End If" + EndOfLine
		    strScript = strScript + "End If" + EndOfLine
		    strScript = strScript + "If bExistingTest=False Then" + EndOfLine
		    //we don't change the text if the call existed either
		    //otherwise we'd have to copy the non-changed property from above to the text to make it visible again
		    //test if you can now select the api call
		    strScript = strScript + "location = ""APICalls." + tfJsonDoc.Text + """" + EndOfLine
		    strScript = strScript + "if location = ""APICalls." + tfJsonDoc.Text + """ Then" + EndOfLine
		    //if you can, fill in the Text so that it is easier to read the calls that will be executed in the IDE
		    //then let this program know that you wrote this api call
		    strTextProperty = JSONToPropertyText(strDefaultTests)
		    if strTextProperty<>"" Then
		      strScript = strScript + "Text = """ + strTextProperty + """" + EndOfLine
		    End If
		    strScript = strScript + "Print ""Wrote "  + tfJsonDoc.Text + " property to APICalls""" + EndOfLine
		    strScript = strScript + "End If" + EndOfLine
		    strScript = strScript + "End If" + EndOfLine
		    
		    //Select APICalls to write pragma warnings for the API calls so that you know you need to fill
		    //in the parameter values
		    strScript = strScript + "selected = SelectProjectItem(""APICalls"")" + EndOfLine
		    strScript = strScript + "If selected = False Then " + EndOfLine
		    strScript = strScript + "Print ""Something went wrong selecting APICalls""" + EndOfLine
		    strScript = strScript + "Else" + EndOfLine
		    //select the pragma warnings
		    strScript = strScript + "location = ""APICalls.PragmaWarnings""" + EndOfLine
		    strScript = strScript + "If location = ""APICalls.PragmaWarnings"" Then " + EndOfLine
		    strScript = strScript + "strPragma = Text" + EndOfLine
		    strScript = strScript + "Else" + EndOfLine
		    //it didn't exist, so create it
		    strScript = strScript + "DoCommand(""NewMethod"")" + EndOfLine
		    strScript = strScript + "ChangeDeclaration(""PragmaWarnings"", """", """", 0, """")" + EndOfLine
		    strScript = strScript + "strPragma = """"" + EndOfLine
		    strScript = strScript + "End If" + EndOfLine
		    strScript = strScript + "End If" + EndOfLine
		    
		    //test if you can now find the pragma warning
		    strScript = strScript + "location = ""APICalls.PragmaWarnings""" + EndOfLine
		    strScript = strScript + "If location = ""APICalls.PragmaWarnings"" Then " + EndOfLine
		    strScript = strScript + "If bExistingTest=False Then" + EndOfLine
		    strScript = strScript + "strParameterPragma = ""#Pragma Warning """"Don't forget to adjust the test parameters for " + tfJsonDoc.Text + """""""" + EndOfLine
		    strScript = strScript + "Else" + EndOfLine
		    strScript = strScript + "strParameterPragma = ""#Pragma Warning """"You might need to adjust the test parameters for " + tfJsonDoc.Text + " due to changes to the call""""""" + EndOfLine
		    strScript = strScript + "End If" + EndOfLine
		    strScript = strScript + "if strPragma="""" or InStr(strPragma, strParameterPragma)=0 Then" + EndOfLine
		    strScript = strScript + "Text = Text + EndOfLine + strParameterPragma" + EndOfLine
		    //then let this program know that you wrote this api call
		    strScript = strScript + "Print ""Wrote Pragma for "  + tfJsonDoc.Text + " property to APICalls.PragmaWarnings method""" + EndOfLine
		    strScript = strScript + "Else" + EndOfLine
		    strScript = strScript + "Print ""Pragma for " + tfJsonDoc.Text + " property already existed""" + EndOfLine
		    strScript = strScript + "End If" + EndOfLine
		    strScript = strScript + "End If" + EndOfLine
		    
		    //Select LunaAPICalls to make an empty method for the xjDocs documentation
		    strScript = strScript + "selected = SelectProjectItem(""" + xjDocsClass + """)" + EndOfLine
		    strScript = strScript + "If selected = False Then " + EndOfLine
		    strScript = strScript + "Print ""Something went wrong selecting " + xjDocsClass + """" + EndOfLine
		    strScript = strScript + "Else" + EndOfLine
		    strScript = strScript + "location = """ + xjDocsClass + "." + tfJsonDoc.Text + """" + EndOfLine
		    strScript = strScript + "If location = """ + xjDocsClass + "." + tfJsonDoc.Text + """ Then " + EndOfLine
		    strScript = strScript + "ChangeDeclaration(""" + tfJsonDoc.Text + """, """", ""String"", 0, """")" + EndOfLine
		    strScript = strScript + "Else" + EndOfLine
		    strScript = strScript + "DoCommand(""NewMethod"")" + EndOfLine
		    strScript = strScript + "ChangeDeclaration(""" + tfJsonDoc.Text + """, """", ""String"", 0, """")" + EndOfLine
		    strScript = strScript + "End If" + EndOfLine
		    strScript = strScript + "End If" + EndOfLine
		    strScript = strScript + "location = """ + xjDocsClass + "." + tfJsonDoc.Text + """" + EndOfLine
		    strScript = strScript + "if location = """ + xjDocsClass + "." + tfJsonDoc.Text + """ Then" + EndOfLine
		    //then let this program know that you wrote this api call
		    strScript = strScript + "Print ""Wrote "  + tfJsonDoc.Text + " method to " + xjDocsClass + """" + EndOfLine
		    strScript = strScript + "End If" + EndOfLine
		    
		    //Select LunaAPICalls to make the property with the xjDocs documentation for the empty method above
		    strScript = strScript + "selected = SelectProjectItem(""" + xjDocsClass + """)" + EndOfLine
		    strScript = strScript + "If selected = False Then " + EndOfLine
		    strScript = strScript + "Print ""Something went wrong selecting " + xjDocsClass + """" + EndOfLine
		    strScript = strScript + "Else" + EndOfLine
		    strScript = strScript + "location = """ + xjDocsClass + ".]M:" + tfJsonDoc.Text + """" + EndOfLine
		    strScript = strScript + "If location = """ + xjDocsClass + ".]M:" + tfJsonDoc.Text + """ Then " + EndOfLine
		    strScript = strScript + "ChangeDeclaration(""]M:" + tfJsonDoc.Text + """, """", ""String"", 0, """")" + EndOfLine
		    //then let this program know that you wrote this api call
		    #Pragma Warning "This call at least on windows never seems to get called"
		    //location seems to select the note, but testing on location right after selecting seems to always be false
		    //tested on Windows 10
		    strScript = strScript + "Print ""Wrote .]M:"  + tfJsonDoc.Text + " property to " + xjDocsClass + " (update)""" + EndOfLine
		    strScript = strScript + "Else" + EndOfLine
		    strScript = strScript + "DoCommand(""NewNote"")" + EndOfLine
		    strScript = strScript + "ChangeDeclaration(""]M:" + tfJsonDoc.Text + """, """", ""String"", 0, """")" + EndOfLine
		    Dim strPathParameter As String=GetPathParameter
		    strScript = strScript + "Dim strDoc As String = """ + DocToPropertyText(GetDocFromDB(tfJsonDoc.Text,strPathParameter)) + """" + EndOfLine
		    strScript = strScript + "Text = strDoc" + EndOfLine
		    //then let this program know that you wrote this api call
		    strScript = strScript + "Print ""Wrote .]M:"  + tfJsonDoc.Text + " property to " + xjDocsClass + """" + EndOfLine
		    strScript = strScript + "End If" + EndOfLine
		    strScript = strScript + "End If" + EndOfLine
		    strScript = strScript + "location=""" + xjDocsClass + ".]M:" + tfJsonDoc.Text + """" + EndOfLine
		    
		    strScript = strScript + "DoCommand(""SaveFile"")" + EndOfLine
		    strScript = strScript + "Print ""Project Saved""" + EndOfLine
		    ScriptArea.Text = strScript
		    
		  End if
		  
		  Dim js As New JSONItem
		  js.Value("tag") = "build"
		  js.Value("script") = ScriptArea.Text
		  IDECommSocket.Write(js.ToString + Chr(0))
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pbDelete
	#tag Event
		Sub Action()
		  Dim d as New MessageDialog
		  Dim b as MessageDialogButton
		  d.icon=MessageDialog.GraphicCaution
		  d.ActionButton.Caption="Delete"
		  d.AlternateActionButton.Visible=True
		  d.AlternateActionButton.Caption="Don't Delete"
		  d.Message="Do you want to delete the " + tfJsonDoc.Text + " API branch from the database?"
		  d.Explanation="If you delete " + tfJsonDoc.Text + ", this api branch (and all underlying api calls) will be lost."
		  b=d.ShowModal
		  if b=d.ActionButton Then
		    DeleteJSONFromDB
		    cmbAPIPath.ListIndex=0
		    cmbAPIPath.DeleteAllRows
		    cmbAPIPath.Enabled=True
		    SetCmbAPIPaths
		    pmAPIVersion.Enabled=True
		    pmHTTPMethod.Enabled=True
		  end if
		  pbSave.Enabled=False
		  pbCancel.Enabled=False
		  pbDelete.Enabled=False
		  pbSendToProject.Enabled=False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pbGetXojoAPIBinaryProject
	#tag Event
		Sub Action()
		  tfProjectFile.Text=GetXojoBinaryProjectFile
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IDECommSocket
	#tag Event
		Sub Connected()
		  OutputList.InsertRow(0, CurrentMethodName)
		  bConnectedToXojo=True
		End Sub
	#tag EndEvent
	#tag Event
		Sub DataAvailable()
		  OutputList.InsertRow(0, CurrentMethodName)
		  
		  Dim jsonData As String = Me.ReadAll
		  Dim jsonText As String
		  #Pragma BreakOnExceptions False
		  Try
		    Dim js As New JSONItem(jsonData)
		    js.Compact = False
		    jsonText = js.ToString
		  Catch ex As JSONException
		    jsonText = jsonData
		  End Try
		  OutputArea.Text = OutputArea.Text + EndOfLine + Trim(jsonText)
		  If Instr(jsonText,"saved")<>0 Then
		    MsgBox "Done"
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error()
		  OutputList.InsertRow(0, CurrentMethodName)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="strOldBodyName"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="strOldHeaderName"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="strOldQueryName"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
