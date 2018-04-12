#tag Module
Protected Module ModGeneralFunctions
	#tag Method, Flags = &h0
		Function Dashes(n as integer) As string
		  if n<=0 Then Return ""
		  static sp as string = "----------"
		  while len(sp)< n
		    sp = sp + sp
		  wend
		  return left(sp, n)
		End Function
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
		Function GetXojoBinaryProjectFile() As String
		  Dim xpf As FolderItem=GetOpenFolderItem(FileTypes1.XojoBinaryProjects)
		  If xpf Is Nil Then
		    Return ""
		  End If
		  
		  Return xpf.NativePath
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InStrRev_MTC(Extends src As String, start As Integer = 0, find As String) As Integer
		  #pragma BackgroundTasks False
		  #pragma BoundsChecking False
		  #pragma NilObjectChecking False
		  
		  dim pos as integer
		  dim curPos as integer = 0
		  if start > 0 then src = src.Left( start )
		  
		  do
		    curPos = src.InStr( curPos + 1, find )
		    if curPos = 0 then
		      exit
		    else
		      pos = curPos
		    end if
		  loop
		  
		  return pos
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function JSONPrettyPrint(JSON As Text) As Text
		  //Code by Kem Tekinay and Tom McGrath
		  //https://forum.xojo.com/40819-pretty-print-json-in-new-framework/0
		  
		  If JSON="" Then Return ""
		  
		  Const Indent = &h09
		  Const EndOfLine = &h0A
		  
		  Dim Bytes() As UInt8
		  Dim Indents As UInteger
		  
		  Dim AddAsIs, InQuote As Boolean
		  
		  Dim Mem As Xojo.Core.MemoryBlock = Xojo.Core.TextEncoding.UTF8.ConvertTextToData(JSON)
		  Dim Bound As UInteger = Mem.Size - 1
		  Dim Pointer As Ptr = Mem.Data
		  For Offset As UInteger = 0 To Bound
		    Dim Char As UInt8 = Pointer.UInt8(Offset)
		    
		    If AddAsIs Then
		      Bytes.Append(Char)
		      AddAsIs = False
		    ElseIf Char = &h22 Then
		      Bytes.Append(Char)
		      InQuote = Not InQuote
		    ElseIf InQuote Then
		      Bytes.Append(Char)
		      If Char = &h5C Then
		        AddAsIs = True
		      End If
		    ElseIf Char = &h7B Or Char = &h5B Then
		      Indents = Indents + 1
		      Bytes.Append(Char)
		      Bytes.Append(EndOfLine)
		      For I As UInteger = 1 To Indents
		        Bytes.Append(Indent)
		      Next
		    ElseIf Char = &h7D Or Char = &h5D Then
		      Indents = Indents - 1
		      Bytes.Append(EndOfLine)
		      For I As UInteger = 1 To Indents
		        Bytes.Append(Indent)
		      Next
		      Bytes.Append(Char)
		    ElseIf Char = &h2C Then
		      Bytes.Append(Char)
		      Bytes.Append(EndOfLine)
		      For I As UInteger = 1 To Indents
		        Bytes.Append(Indent)
		      Next
		    ElseIf Char = &h3A Then
		      Bytes.Append(Char)
		      Bytes.Append(&h20)
		    ElseIf Char = &h0A Or Char = &h0D Or Char = &h20 Or Char = &h09 Then
		      // Skip it
		    Else
		      Bytes.Append(Char)
		    End If
		  Next
		  
		  Return Xojo.Core.TextEncoding.UTF8.ConvertDataToText(New Xojo.Core.MemoryBlock(Bytes))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function JSONToPropertyText(strJsonForScript As String) As String
		  Dim strReturn As String=""
		  Try
		    Dim JSONForProperty As New JSONItem(strJsonForScript)
		    Dim strJsonPropertyForScript As String
		    JSONForProperty.EscapeSlashes=False
		    strJsonPropertyForScript=JSONPrettyPrint(StringToText(JSONForProperty.ToString))
		    strJsonPropertyForScript=ReplaceAll(strJsonPropertyForScript,"""","""""")
		    strJsonPropertyForScript=ReplaceAll(strJsonPropertyForScript, EndOfLine.UNIX, """ + chr(10) + """)
		    strReturn = strJsonPropertyForScript
		  Catch
		    'Do Nothing
		  End Try
		  Return strReturn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Space(n as integer) As string
		  if n<=0 Then Return ""
		  static sp as string = "          "
		  while len(sp)< n
		    sp = sp + sp
		  wend
		  return left(sp, n)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (not TargetHasGUI and not TargetWeb and not TargetIOS) or  (TargetWeb) or  (TargetHasGUI)
		Function StringToText(s As String) As Text
		  //Code from XojoUnit https://github.com/xojo/XojoUnit
		  // Before a String can be converted to Text, it must have a valid encoding
		  // to avoid an exception. If the encoding is not valid, we will hex-encode the string instead.
		  
		  If s.Encoding Is Nil Or Not s.Encoding.IsValidData(s) Then
		    s = EncodeHex(s, True)
		    s = s.DefineEncoding(Encodings.UTF8) // Just to make sure
		  End If
		  
		  Return s.ToText
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		bConnectedToXojo As Boolean
	#tag EndProperty


	#tag Constant, Name = APIDocDBName, Type = String, Dynamic = False, Default = \"apidocsluna.db", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="bConnectedToXojo"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
