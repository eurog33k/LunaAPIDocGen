#tag Module
Protected Module modAPIDocFunctions
	#tag Method, Flags = &h0
		Function AddDefaultParameters(strCurrentJSONDoc  As String, strAPIPath As String, strSection As String, strHTTPMethod As String, lstTarget As MagicListBox) As String
		  Dim jParameters As JSONItem
		  Dim strUpdatedJSONDoc As String=strCurrentJSONDoc
		  jParameters=GetParameters(strSection,strHTTPMethod)
		  if jParameters<>nil Then
		    Dim iParameterCount As Integer = jParameters.Count
		    For i As Integer=0 To iParameterCount-1
		      Dim jParameter As JSONItem=jParameters.Value(i)
		      Select Case strSection
		      Case "Header"
		        strUpdatedJSONDoc = AddHeaderParameter(lstTarget, strUpdatedJSONDoc, strAPIPath, jParameter.Value("name").StringValue,jParameter.Value("type").StringValue, _
		        jParameter.Value("description").StringValue,jParameter.Value("required").BooleanValue, _
		        jParameter.Value("pathspecific").BooleanValue)
		      Case "Query"
		        strUpdatedJSONDoc = AddQueryParameter(lstTarget, strUpdatedJSONDoc, strAPIPath, jParameter.Value("name").StringValue,jParameter.Value("type").StringValue, _
		        jParameter.Value("description").StringValue,jParameter.Value("required").BooleanValue, _
		        jParameter.Value("pathspecific").BooleanValue)
		      End Select
		    Next
		  end if
		  Return strUpdatedJSONDoc
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function AddHeaderParameter(lstTarget As MagicListBox, strCurrentJSONDoc As String, strCurrentAPIPath As String, strName As String, strType As String, strDescription As String, bRequired As Boolean, bPathSpecific As Boolean) As String
		  //name,type,description,required,pathspecific
		  lstTarget.AddRow
		  //columns
		  lstTarget.SetValue(0,strName)
		  lstTarget.SetDropDownList(lstTarget.LastIndex,1, _ 
		  "integer,long,float,double,string,byte,binary,boolean,date,dateTime,password")
		  lstTarget.SetValue(1,strType)
		  lstTarget.SetValue(2,strDescription)
		  lstTarget.CellCheck(lstTarget.LastIndex,3)=bRequired
		  lstTarget.CellCheck(lstTarget.LastIndex,4)=bPathSpecific
		  Dim strUpdatedJSONDoc As String
		  strUpdatedJSONDoc = SetHeaderParameterName(strCurrentJSONDoc, strCurrentAPIPath, "",strName,bPathSpecific)
		  strUpdatedJSONDoc = SetHeaderParameterValue(strUpdatedJSONDoc, strCurrentAPIPath, lstTarget.Cell(lstTarget.LastIndex,0),"type",strType,bPathSpecific)
		  strUpdatedJSONDoc = SetHeaderParameterValue(strUpdatedJSONDoc, strCurrentAPIPath, lstTarget.Cell(lstTarget.LastIndex,0),"description",strDescription,bPathSpecific)
		  strUpdatedJSONDoc = SetHeaderParameterValue(strUpdatedJSONDoc, strCurrentAPIPath, lstTarget.Cell(lstTarget.LastIndex,0),"required",bRequired,bPathSpecific)
		  //not yet implemented
		  'ChangeQueryParameterPathSpecific(lstHeaderParameters.Cell(lstHeaderParameters.LastIndex,0),bPathSpecific)
		  lstTarget.ResizeColumns
		  Return strUpdatedJSONDoc
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function AddQueryParameter(lstTarget As MagicListBox, strCurrentJSONDoc As String, strCurrentAPIPath As String, strName As String, strType As String, strDescription As String, bRequired As Boolean, bPathSpecific As Boolean) As String
		  //name,type,description,required,pathspecific
		  Dim strUpdatedJSONDoc As String
		  lstTarget.AddRow
		  //columns
		  lstTarget.SetValue(0,strName)
		  lstTarget.SetDropDownList(lstTarget.LastIndex,1, _ 
		  "integer,long,float,double,string,byte,binary,boolean,date,dateTime,password")
		  lstTarget.SetValue(1,strType)
		  lstTarget.SetValue(2,strDescription)
		  lstTarget.CellCheck(lstTarget.LastIndex,3)=bRequired
		  lstTarget.CellCheck(lstTarget.LastIndex,4)=bPathSpecific
		  strUpdatedJSONDoc = SetQueryParameterName(strCurrentJSONDoc, strCurrentAPIPath, "",strName,bPathSpecific)
		  strUpdatedJSONDoc = SetQueryParameterValue(strUpdatedJSONDoc, strCurrentAPIPath, lstTarget.Cell(lstTarget.LastIndex,0),"type",strType,bPathSpecific)
		  strUpdatedJSONDoc = SetQueryParameterValue(strUpdatedJSONDoc, strCurrentAPIPath, lstTarget.Cell(lstTarget.LastIndex,0),"description",strDescription,bPathSpecific)
		  strUpdatedJSONDoc = SetQueryParameterValue(strUpdatedJSONDoc, strCurrentAPIPath, lstTarget.Cell(lstTarget.LastIndex,0),"required",bRequired,bPathSpecific)
		  strUpdatedJSONDoc = ChangeQueryParameterPathSpecific(strUpdatedJSONDoc, strCurrentAPIPath, lstTarget.Cell(lstTarget.LastIndex,0),bPathSpecific)
		  lstTarget.ResizeColumns
		  Return strUpdatedJSONDoc
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ChangeQueryParameterPathSpecific(strCurrentJSONDoc As String, strCurrentAPIPath As String, strQueryFieldName As String, bPathSpecific As Boolean) As String
		  Dim strOriginalJSONDoc As String = strCurrentJSONDoc
		  Dim jDocs As New JSONItem(strCurrentJSONDoc)
		  Dim jPathSpecific As JSONItem
		  if bPathSpecific=True Then
		    //if bPathSpecific=True then we only need to change it if it used to be false
		    //so look in the main branch
		    If jDocs.HasName("QueryParameters")=False Then
		      //no queryparameters at all, so something is wrong
		      System.DebugLog "QueryParameter " + strQueryFieldName + " not found in the main section!"
		      Return strOriginalJSONDoc
		    end if
		    Dim jQueryParameters As JSONItem=jDocs.Child("QueryParameters")
		    if jQueryParameters.HasName(strQueryFieldName) Then
		      //if it exists, remember it
		      Dim jQueryParameter As JSONItem=jQueryParameters.Child(strQueryFieldName)
		      //find the queryparameter section for the current path
		      if jDocs.HasName("PathSpecific")=False then
		        jDocs.Value("PathSpecific")=New JSONItem("{}")
		      end if
		      jPathSpecific=jDocs.Child("PathSpecific")
		      //check if the section contains the current apipath
		      if jPathSpecific.HasName(strCurrentAPIPath)=False then
		        //if not, then create it
		        jPathSpecific.Value(strCurrentAPIPath)=New JSONItem("{}")
		      end if
		      Dim jApiPath As JSONItem=jPathSpecific.Child(strCurrentAPIPath)
		      //check if the apipath contains a QueryParameter section
		      if jApiPath.HasName("QueryParameters")=False then
		        //if not, create it
		        jApiPath.Value("QueryParameters")=New JSONItem("{}")
		      end if
		      Dim jQueryParameterPath As JSONItem=jApiPath.Child("QueryParameters")
		      jQueryParameterPath.Value(strQueryFieldName)=jQueryParameter
		      //now remove the original in the main branch
		      jQueryParameters.Remove(strQueryFieldName)
		    else
		      //queryparameter not found in the queryparameter section
		      //so it was probably already in the pathspecific section
		      //don't do anything
		      System.DebugLog "QueryParameter " + strQueryFieldName + " not found in the main section!"
		      Return strOriginalJSONDoc
		    end if
		  Else
		    //if bPathSpecific=False then we only need to change it if it used to be True
		    //so look in the pathspecific branch
		    If jDocs.HasName("PathSpecific") Then
		      jPathSpecific=jDocs.Child("PathSpecific")
		      if jPathSpecific.HasName(strCurrentAPIPath)=False Then
		        //api path not found in the pathspecific section, so something is wrong
		        System.DebugLog "API Path " + strCurrentAPIPath + " not found in the pathspecific section!"
		        return strOriginalJSONDoc
		      end if
		      Dim jAPIPath As JSONItem=jPathSpecific.Child(strCurrentAPIPath)
		      if jAPIPath.HasName("QueryParameters")=False Then
		        //no queryparameters in the apipath, so something is wrong
		        Return strOriginalJSONDoc
		      end if
		      Dim jQueryParameters As JSONItem=jAPIPath.Child("QueryParameters")
		      if jQueryParameters.HasName(strQueryFieldName) Then
		        //if it exists, remember it
		        Dim jQueryParameter As JSONItem=jQueryParameters.Child(strQueryFieldName)
		        if jDocs.HasName("QueryParameters")=False then
		          jDocs.Value("QueryParameters")=New JSONItem("{}")
		        end if
		        Dim jQueryParametersMain As JSONItem=jDocs.Child("QueryParameters")
		        jQueryParametersMain.Value(strQueryFieldName)=jQueryParameter
		        //now remove the original in the specific branch
		        jQueryParameters.Remove(strQueryFieldName)
		      else
		        //queryparameters not found in the queryparameter section
		        //so it was probably already in the pathspecific section
		        //don't do anything
		        System.DebugLog "QueryParameter " + strQueryFieldName + " not found in the pathspecific section!"
		        Return strOriginalJSONDoc
		      end if
		    end if
		  end if
		  jDocs.EscapeSlashes=False
		  Return JSONPrettyPrint(StringToText(jDocs.ToString))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function cleanupparameterjsonfornote(strSource As String, strParameterType As String) As string
		  Dim jOriginalSource As New JSONItem(strSource)
		  Dim iCount As Integer=jOriginalSource.Count
		  if iCount=0 Then
		    Return ""
		  end if
		  if jOriginalSource.IsArray=false and strParameterType="body" Then
		    //body is an empty object in case there is no content
		    Return ""
		  end if
		  Dim strReturn As String
		  For j As Integer=0 to jOriginalSource.Count-1
		    Dim jItem As JSONItem
		    Dim strName As String
		    Dim strValue As String
		    if jOriginalSource.IsArray Then
		      //JSON array
		      jItem=jOriginalSource.Value(j)
		    else
		      jItem=jOriginalSource
		    end if
		    
		    strName=jItem.Name(j)
		    strValue=jItem.Value(strName)
		    
		    if strParameterType="body" then
		      jItem=New JSONItem(strValue)
		      Dim strLine() As String
		      jItem.EscapeSlashes=False
		      Dim strTarget As String=JSONPrettyPrint(StringToText(jItem.ToString))
		      strLine=Split(strTarget,EndOfLine)
		      Dim iLineCount As Integer=strLine.Ubound
		      For i As Integer=0 to iLineCount
		        Dim strLinePart() As String=Split(strLine(i),":")
		        Dim strLineFirstPartWithEscapedQuotes As String=ReplaceAll(strLinePart(0),"""","\""")
		        strLine(i)=strLineFirstPartWithEscapedQuotes
		        if strLinePart.Ubound>0 Then
		          //we have a part after the ":"
		          strLinePart.Remove(0)
		          Dim strLineRestOfTheLine As String=Join(strLinePart,":")
		          Dim iStartQuotePosition As Integer=strLineRestOfTheLine.Instr("""")
		          if iStartQuotePosition<>0 Then
		            //we have a String
		            //change the startquote to \"
		            Dim strLeftPart As String=left(strLineRestOfTheLine,iStartQuotePosition-1) + "\""" '+ Right(strLineRestOfTheLine,Len(strLineRestOfTheLine)-iStartQuotePosition)
		            //change the endquote to \"
		            Dim strRightPart As String
		            Dim iEndQuotePosition As Integer=strLineRestOfTheLine.InStrRev_MTC("""")
		            if iEndQuotePosition<>0 Then 
		              strRightPart="\""" + Right(strLineRestOfTheLine,Len(strLineRestOfTheLine)-iEndQuotePosition) 
		            end if
		            Dim strMidPart As String=ReplaceAll(mid(strLineRestOfTheLine,iStartQuotePosition+1,iEndQuotePosition-(iStartQuotePosition+1)),"\""","\\\""")
		            strLine(i)=strLine(i) + ":" + strLeftPart + strMidPart + strRightPart
		          else
		            //we don't have a string
		            strLine(i)=strLine(i) + ":" + strLineRestOfTheLine
		          end if
		        end if
		      Next i
		      strTarget=Join(strLine,EndOfLine)
		      strTarget=ReplaceAll(strTarget,Chr(9),"&nbsp;&nbsp;")
		      strTarget=ReplaceLineEndings(strTarget, "  " + EndOfLine) + "  "
		      If strname="" Then
		        strReturn = strReturn + strTarget + EndOfLine
		      else
		        strReturn = strReturn + "ParameterName: " + strName + "  " + EndOfLine + "ParameterValue:  " + EndofLine + strTarget + EndOfLine
		      end if
		    else
		      strReturn = strReturn + "ParameterName: " + strName + " , ParameterValue: " + strValue + EndOfLine
		    end if
		  Next j
		  
		  Return strReturn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function cleanupresultjsonfornote(strSource As String) As string
		  Dim jSource As New JSONItem(strSource)
		  Dim bMoreThanTwoElements As Boolean=False
		  if jSource.Count>2 Then
		    //if there are more than two, we will show the two first in the result
		    bMoreThanTwoElements=True
		    Dim tmpJSONItem As New JSONItem("[]")
		    tmpJSONItem.Append jSource.Value(0)
		    tmpJSONItem.Append jSource.Value(1)
		    jSource=tmpJSONItem
		  end if
		  if jSource.Count=0 Then
		    Return ""
		  end if
		  jSource.EscapeSlashes=False
		  Dim strTarget As String=JSONPrettyPrint(StringToText(jSource.ToString))
		  Dim strLine() As String=Split(strTarget,EndOfLine)
		  Dim iLineCount As Integer=strLine.Ubound
		  For i As Integer=0 to iLineCount
		    Dim strLinePart() As String=Split(strLine(i),":")
		    Dim strLineFirstPartWithEscapedQuotes As String=ReplaceAll(strLinePart(0),"""","\""")
		    strLine(i)=strLineFirstPartWithEscapedQuotes
		    if strLinePart.Ubound>0 Then
		      //we have a part after the ":"
		      strLinePart.Remove(0)
		      Dim strLineRestOfTheLine As String=Join(strLinePart,":")
		      Dim iStartQuotePosition As Integer=strLineRestOfTheLine.Instr("""")
		      if iStartQuotePosition<>0 Then
		        //we have a String
		        //change the startquote to \"
		        Dim strLeftPart As String=left(strLineRestOfTheLine,iStartQuotePosition-1) + "\""" '+ Right(strLineRestOfTheLine,Len(strLineRestOfTheLine)-iStartQuotePosition)
		        //change the endquote to \"
		        Dim strRightPart As String
		        Dim iEndQuotePosition As Integer=strLineRestOfTheLine.InStrRev_MTC("""")
		        if iEndQuotePosition<>0 Then 
		          strRightPart="\""" + Right(strLineRestOfTheLine,Len(strLineRestOfTheLine)-iEndQuotePosition) 
		        end if
		        Dim strMidPart As String=ReplaceAll(mid(strLineRestOfTheLine,iStartQuotePosition+1,iEndQuotePosition-(iStartQuotePosition+1)),"\""","\\\""")
		        strLine(i)=strLine(i) + ":" + strLeftPart + strMidPart + strRightPart
		      else
		        //we don't have a string
		        strLine(i)=strLine(i) + ":" + strLineRestOfTheLine
		      end if
		    end if
		  Next
		  strTarget=Join(strLine,EndOfLine)
		  strTarget=ReplaceAll(strTarget,Chr(9),"&nbsp;&nbsp;")
		  if bMoreThanTwoElements=true then
		    Dim iPosLastSquareBracket As Integer
		    iPosLastSquareBracket=strTarget.InStrRev_MTC("]")
		    if iPosLastSquareBracket<>-1 Then
		      strTarget=  Left(strTarget, iPosLastSquareBracket-1) + "," + EndOfLine + "..." + EndOfLine + "]" + EndOfLine
		    end if
		    
		  end if
		  strTarget=ReplaceLineEndings(strTarget, "  " + EndOfLine) + "  "
		  Return strTarget
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DocToPropertyText(strDoc As String) As String
		  Dim strReturn As String
		  strReturn=ReplaceLineEndings(strDoc,EndOfLine.UNIX)
		  strReturn=ReplaceAll(strReturn,"""","""""")
		  strReturn=ReplaceAll(strReturn, EndOfLine.UNIX, """ + chr(10) + """)
		  Return strReturn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FillQueryParameters(strCurrentJSONDoc As String, strCurrentAPIPath As String, strHTTPMethod As String, lstTarget As MagicListBox, pbToEnable As PushButton, bNewAPICall As Boolean=False) As String
		  Dim jDocs As New JSONItem(strCurrentJSONDoc)
		  Dim jPathSpecific As JSONItem
		  Dim bPathFound As Boolean=False
		  Dim bPathSpecificQueryParametersFound As Boolean=False
		  Dim bUpload As Boolean=False
		  Dim strAPIMethod As String=""
		  if bNewAPICall = True Then
		    Return AddDefaultParameters(strCurrentJSONDoc, strCurrentAPIPath, "Query", strHTTPMethod, lstTarget)
		  else
		    if jDocs.HasName("QueryParameters") Then
		      Dim jQueryParameters As JSONItem=jDocs.Child("QueryParameters") //array
		      Dim strQueryParameterNames() As String=jQueryParameters.Names
		      For j As Integer=0 to strQueryParameterNames.Ubound
		        //name,type,description,required,pathspecific
		        lstTarget.AddRow
		        lstTarget.SetValue(0,strQueryParameterNames(j))
		        lstTarget.SetDropDownList(lstTarget.LastIndex,1, _ 
		        "integer,long,float,double,string,byte,binary,boolean,date,dateTime,password")
		        Dim jParameterInfo As JSONItem=jQueryParameters.Child(strQueryParameterNames(j))
		        lstTarget.SetValue(1,jParameterInfo.Value("type").StringValue)
		        lstTarget.SetValue(2,jParameterInfo.Value("description").StringValue)
		        if jParameterInfo.HasName("required")=True then
		          lstTarget.CellCheck(lstTarget.LastIndex,3)=jParameterInfo.Value("required").BooleanValue
		        else
		          lstTarget.CellCheck(lstTarget.LastIndex,3)=False
		        end if
		        lstTarget.CellCheck(lstTarget.LastIndex,4)=False
		      Next
		    end if
		    If jDocs.HasName("PathSpecific") Then
		      jPathSpecific=jDocs.Child("PathSpecific")
		      Dim strAPIPathNames() As String=jPathSpecific.Names
		      For i As Integer=0 to strAPIPathNames.Ubound
		        if strAPIPathNames(i) = strCurrentAPIPath Then
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
		          if jAPIPath.HasName("QueryParameters") Then
		            bPathSpecificQueryParametersFound=True
		            Dim jQueryParameters As JSONItem=jAPIPath.Child("QueryParameters") //array
		            Dim strQueryNames() As String=jQueryParameters.Names
		            For j As Integer=0 to strQueryNames.Ubound
		              //name,type,description,required,pathspecific
		              lstTarget.AddRow
		              lstTarget.SetValue(0,strQueryNames(j))
		              lstTarget.SetDropDownList(lstTarget.LastIndex,1, _ 
		              "integer,long,float,double,string,byte,binary,boolean,date,dateTime,password")
		              Dim jParameterInfo As JSONItem=jQueryParameters.Child(strQueryNames(j))
		              lstTarget.SetValue(1,jParameterInfo.Value("type").StringValue)
		              lstTarget.SetValue(2,jParameterInfo.Value("description").StringValue)
		              if jParameterInfo.HasName("required") Then
		                lstTarget.CellCheck(lstTarget.LastIndex,3)=jParameterInfo.Value("required").BooleanValue
		              else
		                lstTarget.CellCheck(lstTarget.LastIndex,3)=False
		              end if
		              lstTarget.CellCheck(lstTarget.LastIndex,4)=True
		            Next
		          end if
		          exit for
		        end if
		      Next
		    end if
		    if (bPathFound=False or bPathSpecificQueryParametersFound=False) AND strAPIMethod<>"DELETE" Then
		      //new (we don't have queryparameters with delete
		      Dim strAPIPathParts() As String=Split(strCurrentAPIPath,"/")
		      Dim bPathParametersInPath As Boolean=False
		      For i As Integer=0 to strAPIPathParts.Ubound
		        if left(strAPIPathParts(i),1)="{" and right(strAPIPathParts(i),1)="}" Then
		          bPathParametersInPath=True
		          pbToEnable.Enabled=True
		          exit for
		        end if
		      Next
		      Dim strParameter As String
		      Dim brequired As Boolean=False
		      if strAPIMethod="PUT" or strAPIMethod="POST" Then
		        if bUpload=True Then
		          strParameter="folder"
		          'elseif strAPIPathParts.Ubound=2 Then
		          '#Pragma Warning "Remove Bouwsoft specific code"
		          '//we end with the id (so not for methods on top of the id like MakeCustomer or MakeSupplier)
		          'strParameter="columns"
		          'brequired=True
		        end if
		        Dim strDescription As String
		        if bUpload=True Then
		          strDescription="The name of the folder that will contain the upload."
		          'elseif strAPIPathParts.Ubound=2 Then
		          '//we end with the id (so not for methods on top of the id like MakeCustomer or MakeSupplier)
		          'strDescription="column assignment for the columns with a value (comma delimited)"
		        end if
		        if bUpload=true Then //or strAPIPathParts.Ubound=2 Then
		          strCurrentJSONDoc = AddQueryParameter(lstTarget, strCurrentJSONDoc, strCurrentAPIPath, strParameter, "string", strDescription, brequired, True)
		          //reconstruct jdocs
		          jDocs = New JSONItem(strCurrentJSONDoc)
		        end if
		      end if
		    end if
		    jDocs.EscapeSlashes=False
		    Return JSONPrettyPrint(StringToText(jDocs.ToString))
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FilterAuthorizationFields(strToParse As String) As String
		  Dim strReturn As String
		  Try
		    Dim jToParse As New JSONItem(strToParse)
		    For i As integer = jToParse.Count-1 DownTo 0
		      Dim jItem As JSONItem=jToParse.Value(i)
		      if InStr(jItem.Name(0), "Authorization")<>0 then
		        //Name contains Authorization, so delete this element
		        jToParse.Remove(i)
		      end if
		    Next
		    jToParse.EscapeSlashes=False
		    if jToParse.Count=0 Then
		      strReturn=""
		    else
		      strReturn=jToParse.ToString
		    end if
		  End Try
		  Return strReturn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDocFromDB(strAPICallTag As String, optional strPathParameter As String="") As String
		  Dim strReturn As String
		  Dim strAPICallParts() As String=Split(strAPICallTag,"_")
		  Dim strAPIVer As String=strAPICallParts(0)
		  Dim strAPICall As String=strAPICallParts(1)
		  Dim strHTTPMethod As String=strAPICallParts(2)
		  Dim db As New SQLiteDatabase
		  db.DatabaseFile = SpecialFolder.ApplicationData.Child(APIDocDBName)
		  if db.Connect Then
		    Dim rs As RecordSet
		    Dim strSQL As String
		    if strPathParameter<>"" Then
		      strSQL="SELECT doc FROM docs WHERE httpmethod='" + EscapeSQLData(strHTTPMethod) + "' and withparameters=1;"
		    else
		      strSQL="SELECT doc FROM docs WHERE httpmethod='" + EscapeSQLData(strHTTPMethod) + "' and withparameters=0;"
		    end if
		    rs=db.SQLSelect(strSQL)
		    if db.Error Then
		      //handle error here
		      MsgBox("Could not read apidocs.")
		      Exit Function
		    End If
		    if rs<>nil and rs.EOF=False Then
		      strReturn=rs.Field("doc").StringValue
		    end if
		  else
		    System.DebugLog "The database could not be opened. Error: " + db.ErrorMessage
		  end if
		  if strReturn<>"" Then
		    strReturn=ReplaceAll(strReturn,"{apicall_item}", MakePathSingular(strAPICall))
		    strReturn=ReplaceAll(strReturn,"{apicall}", strAPICall)
		    strReturn=ReplaceAll(strReturn,"{apicall_version}", strAPIVer)
		    strReturn=ReplaceAll(strReturn,"{apicall_pathparameter}",strPathParameter)
		    strReturn=ReplaceAll(strReturn,"{apicall_structure}",StructureToNote(strAPICallTag,strHTTPMethod,"https","lunaapi.ga","/api/v1"))
		    strReturn=ReplaceAll(strReturn,"{apicall_examples}",TestResultToNote(strAPICallTag,strHTTPMethod,"https","lunaapi.ga","/api/v1",False))
		    strReturn=ReplaceAll(strReturn,"{apicall_pathparameter_examples}",TestResultToNote(strAPICallTag,strHTTPMethod,"https","lunaapi.ga","/api/v1",true))
		  end if
		  Return strReturn
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetParameters(strLocation As String, strMethod As String) As JSONItem
		  Dim jParameters As JSONItem
		  Dim db As New SQLiteDatabase
		  //Get the documentation database
		  db.DatabaseFile = SpecialFolder.ApplicationData.Child(APIDocDBName)
		  if db.Connect Then
		    Dim rs As RecordSet
		    //don't bother to escape since you can't edit the location or method (defined in the button code)
		    //and therefore since they are predefined by the programmer
		    //we have full control over the values
		    Dim strSQL As String="SELECT * FROM parameters WHERE location LIKE '%" + strLocation + "%' " + _
		    "AND (methods LIKE '%" + strMethod + "%' OR methods='ALL');"
		    rs=db.SQLSelect(strSQL)
		    if db.Error Then
		      //handle error here
		      MsgBox("Problem reading from parameters table.")
		      Exit Function
		    End If
		    if rs<>nil and rs.EOF=False Then
		      jParameters = New JSONItem
		      While not rs.EOF
		        Dim jRecord As New JSONItem
		        For i As Integer=1 to rs.FieldCount
		          Dim strName As String=rs.IdxField(i).Name
		          Dim strValue As String=rs.IdxField(i).StringValue
		          jRecord.Value(strName)=strValue
		        Next i
		        jParameters.Append jRecord
		        rs.MoveNext
		      Wend
		    end if
		  else
		    System.DebugLog "The database could not be opened. Error: " + db.ErrorMessage
		  end if
		  Return jParameters
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MakePathSingular(strAPIPath As String) As String
		  Dim strAPIPathSingular As String
		  if len(strAPIPath)>1 and strAPIPath.Right(1)="s" Then
		    // try to make it singular by dropping the ending s (it the apipath is not just s)
		    // (very general solution, not guaranteed to work correctly)
		    strAPIPathSingular=left(strAPIPath,len(strAPIPath)-1)
		    if strAPIPathSingular.Right(1)="e" Then
		      // if we don't have an e, then we are done
		      // if we have an e, we check if it is preceded by two s's)
		      // if it is, we drop the e
		      if len(strAPIPathSingular)>=3 and right(strAPIPathSingular,3)="sse" then
		        strAPIPathSingular=left(strAPIPathSingular,len(strAPIPathSingular)-1)
		      end if 
		    end if
		  else
		    strAPIPathSingular=strAPIPath
		  end if
		  Return strAPIPathSingular
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetHeaderParameterName(strCurrentJSONDoc As String, strCurrentAPIPath As String, strOldHeaderFieldName As String, strHeaderFieldName As String, bPathSpecific As Boolean) As String
		  Dim strUpdatedJSONDoc As String = strCurrentJSONDoc
		  if strOldHeaderFieldName<>strHeaderFieldName Then
		    Dim jDocs As New JSONItem(strCurrentJSONDoc)
		    Dim jPathSpecific As JSONItem
		    if bPathSpecific=False Then
		      If jDocs.HasName("HeaderParameters")=False Then
		        jDocs.Value("HeaderParameters")=New JSONItem("{}")
		      end if
		      Dim jHeaderParameters As JSONItem=jDocs.Child("HeaderParameters")
		      If jHeaderParameters.HasName(strOldHeaderFieldName) Then
		        //see if this field exists
		        //if it exists, create the new one and remove the old one
		        Dim jHeaderInfo As JSONItem=jHeaderParameters.Child(strOldHeaderFieldName)
		        jHeaderParameters.Value(strHeaderFieldName)=jHeaderInfo
		        jHeaderParameters.Remove(strOldHeaderFieldName)
		      else
		        //if the field did not exist, then create it
		        jHeaderParameters.Value(strHeaderFieldName)=new JSONItem("{}")
		      end if
		    Else
		      If jDocs.HasName("PathSpecific") Then
		        jPathSpecific=jDocs.Child("PathSpecific")
		        Dim strAPIPathNames() As String = jPathSpecific.Names
		        For i As Integer = 0 to strAPIPathNames.Ubound
		          if strAPIPathNames(i) = strCurrentAPIPath Then
		            Dim jAPIPath As JSONItem = jPathSpecific.Child(strAPIPathNames(i))
		            if jAPIPath.HasName("HeaderParameters")=False Then
		              jAPIPath.Value("HeaderParameters")=New JSONItem("{}")
		            end if
		            Dim jHeaderParameters As JSONItem=jAPIPath.Child("HeaderParameters")
		            If jHeaderParameters.HasName(strOldHeaderFieldName) Then
		              //see if this field exists
		              //if it exists, create the new one and remove the old one
		              Dim jHeaderInfo As JSONItem = jHeaderParameters.Child(strOldHeaderFieldName)
		              jHeaderParameters.Value(strHeaderFieldName) = jHeaderInfo
		              jHeaderParameters.Remove(strOldHeaderFieldName)
		            else
		              //if the field did not exist, then create it
		              jHeaderParameters.Value(strHeaderFieldName) = new JSONItem("{}")
		              jAPIPath.Value("HeaderParameters") = jHeaderParameters
		            end if
		            'end if
		            exit for
		          end if
		        Next
		      end if
		    end if
		    jDocs.EscapeSlashes = False
		    strUpdatedJSONDoc = JSONPrettyPrint(StringToText(jDocs.ToString))
		  end if
		  Return strUpdatedJSONDoc
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetHeaderParameterValue(strCurrentJSONDoc As String, strCurrentAPIPath As String, strHeaderFieldName As String, strParameterName As String, bParameterValue As Boolean, bPathSpecific As Boolean) As string
		  Dim jDocs As New JSONItem(strCurrentJSONDoc)
		  Dim jPathSpecific As JSONItem
		  if bPathSpecific=False Then
		    If jDocs.HasName("HeaderParameters")=False Then
		      jDocs.Value("HeaderParameters")=New JSONItem("{}")
		    end if
		    Dim jHeaderParameters As JSONItem=jDocs.Child("HeaderParameters")
		    try
		      //try to read this field
		      //if it exists, replace it
		      Dim jHeaderInfo As JSONItem=jHeaderParameters.Child(strHeaderFieldName)
		      jHeaderInfo.Value(strParameterName)=bParameterValue
		    Catch
		      //if the field did not exist, then create it
		      jHeaderParameters.Value(strHeaderFieldName)=new JSONItem("{}")
		      Dim jHeaderInfo As JSONItem=jHeaderParameters.Child(strHeaderFieldName)
		      jHeaderInfo.Value(strParameterName)=bParameterValue
		    end try
		  Else
		    If jDocs.HasName("PathSpecific") Then
		      jPathSpecific=jDocs.Child("PathSpecific")
		      Dim strAPIPathNames() As String=jPathSpecific.Names
		      For i As Integer=0 to strAPIPathNames.Ubound
		        if strAPIPathNames(i)=strCurrentAPIPath Then
		          Dim jAPIPath As JSONItem=jPathSpecific.Child(strAPIPathNames(i))
		          if jAPIPath.HasName("HeaderParameters") Then
		            Dim jHeaderParameters As JSONItem=jAPIPath.Child("HeaderParameters")
		            try
		              //try to read this field
		              //if it exists, replace it
		              Dim jHeaderInfo As JSONItem=jHeaderParameters.Child(strHeaderFieldName)
		              jHeaderInfo.Value(strParameterName)=bParameterValue
		              if jHeaderInfo.HasName("required")=False then
		                jHeaderInfo.Value("required")=False
		              end if
		            Catch
		              //if the field did not exist, then create it
		              jHeaderParameters.Value(strHeaderFieldName)=new JSONItem("{}")
		              Dim jHeaderInfo As JSONItem=jHeaderParameters.Child(strHeaderFieldName)
		              jHeaderInfo.Value(strParameterName)=bParameterValue
		              jHeaderInfo.Value("required")=False
		            end try
		          end if
		          exit for
		        end if
		      Next
		    end if
		  end if
		  jDocs.EscapeSlashes=False
		  Return JSONPrettyPrint(StringToText(jDocs.ToString))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetHeaderParameterValue(strCurrentJSONDoc As String, strCurrentAPIPath As String, strHeaderFieldName As String, strParameterName As String, strParameterValue As String, bPathSpecific As Boolean) As String
		  Dim jDocs As New JSONItem(strCurrentJSONDoc)
		  Dim jPathSpecific As JSONItem
		  if bPathSpecific=False Then
		    If jDocs.HasName("HeaderParameters")=False Then
		      jDocs.Value("HeaderParameters")=New JSONItem("{}")
		    end if
		    Dim jHeaderParameters As JSONItem=jDocs.Child("HeaderParameters")
		    try
		      //try to read this field
		      //if it exists, replace it
		      Dim jHeaderInfo As JSONItem=jHeaderParameters.Child(strHeaderFieldName)
		      jHeaderInfo.Value(strParameterName)=strParameterValue
		      if jHeaderInfo.HasName("required")=False then
		        jHeaderInfo.Value("required")=False
		      end if
		    Catch
		      //if the field did not exist, then create it
		      jHeaderParameters.Value(strHeaderFieldName)=new JSONItem("{}")
		      Dim jHeaderInfo As JSONItem=jHeaderParameters.Child(strHeaderFieldName)
		      jHeaderInfo.Value(strParameterName)=strParameterValue
		      jHeaderInfo.Value("required")=False
		    end try
		  Else
		    If jDocs.HasName("PathSpecific") Then
		      jPathSpecific=jDocs.Child("PathSpecific")
		      Dim strAPIPathNames() As String=jPathSpecific.Names
		      For i As Integer=0 to strAPIPathNames.Ubound
		        if strAPIPathNames(i)=strCurrentAPIPath Then
		          Dim jAPIPath As JSONItem=jPathSpecific.Child(strAPIPathNames(i))
		          if jAPIPath.HasName("HeaderParameters") Then
		            Dim jHeaderParameters As JSONItem=jAPIPath.Child("HeaderParameters")
		            try
		              //try to read this field
		              //if it exists, replace it
		              Dim jHeaderInfo As JSONItem=jHeaderParameters.Child(strHeaderFieldName)
		              jHeaderInfo.Value(strParameterName)=strParameterValue
		              if jHeaderInfo.HasName("required")=False then
		                jHeaderInfo.Value("required")=False
		              end if
		            Catch
		              //if the field did not exist, then create it
		              jHeaderParameters.Value(strHeaderFieldName)=new JSONItem("{}")
		              Dim jHeaderInfo As JSONItem=jHeaderParameters.Child(strHeaderFieldName)
		              jHeaderInfo.Value(strParameterName)=strParameterValue
		              jHeaderInfo.Value("required")=False
		            end try
		          end if
		          exit for
		        end if
		      Next
		    end if
		  end if
		  jDocs.EscapeSlashes=False
		  Return JSONPrettyPrint(StringToText(jDocs.ToString))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetQueryParameterName(strCurrentJSONDoc As String, strCurrentAPIPath As String, strOldQueryFieldName As String, strQueryFieldName As String, bPathSpecific As Boolean) As String
		  Dim strUpdatedJSONDoc As String = strCurrentJSONDoc
		  if strOldQueryFieldName<>strQueryFieldName Then
		    Dim jDocs As New JSONItem(strCurrentJSONDoc)
		    Dim jPathSpecific As JSONItem
		    if bPathSpecific=False Then
		      If jDocs.HasName("QueryParameters")=False Then
		        jDocs.Value("QueryParameters")=New JSONItem("{}")
		      end if
		      Dim jQueryParameters As JSONItem=jDocs.Child("QueryParameters")
		      If jQueryParameters.HasName(strOldQueryFieldName) Then
		        //see if this field exists
		        //if it exists, create the new one and remove the old one
		        Dim jQueryInfo As JSONItem=jQueryParameters.Child(strOldQueryFieldName)
		        jQueryParameters.Value(strQueryFieldName)=jQueryInfo
		        jQueryParameters.Remove(strOldQueryFieldName)
		      else
		        //if the field did not exist, then create it
		        jQueryParameters.Value(strQueryFieldName)=new JSONItem("{}")
		      end if
		    Else
		      If jDocs.HasName("PathSpecific") Then
		        jPathSpecific=jDocs.Child("PathSpecific")
		        Dim strAPIPathNames() As String=jPathSpecific.Names
		        For i As Integer=0 to strAPIPathNames.Ubound
		          if strAPIPathNames(i) = strCurrentAPIPath Then
		            Dim jAPIPath As JSONItem=jPathSpecific.Child(strAPIPathNames(i))
		            if jAPIPath.HasName("QueryParameters")=False Then
		              jAPIPath.Value("QueryParameters")=New JSONItem("{}")
		            end if
		            Dim jQueryParameters As JSONItem=jAPIPath.Child("QueryParameters")
		            If jQueryParameters.HasName(strOldQueryFieldName) Then
		              //see if this field exists
		              //if it exists, create the new one and remove the old one
		              Dim jQueryInfo As JSONItem=jQueryParameters.Child(strOldQueryFieldName)
		              jQueryParameters.Value(strQueryFieldName)=jQueryInfo
		              jQueryParameters.Remove(strOldQueryFieldName)
		            else
		              //if the field did not exist, then create it
		              jQueryParameters.Value(strQueryFieldName)=new JSONItem("{}")
		              jAPIPath.Value("QueryParameters")=jQueryParameters
		            end if
		            exit for
		          end if
		        Next
		      end if
		    end if
		    jDocs.EscapeSlashes=False
		    strUpdatedJSONDoc=JSONPrettyPrint(StringToText(jDocs.ToString))
		  end if
		  Return strUpdatedJSONDoc
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetQueryParameterValue(strCurrentJSONDoc As String, strCurrentAPIPath As String, strQueryFieldName As String, strParameterName As String, bParameterValue As Boolean, bPathSpecific As Boolean) As string
		  Dim jDocs As New JSONItem(strCurrentJSONDoc)
		  Dim jPathSpecific As JSONItem
		  if bPathSpecific=False Then
		    If jDocs.HasName("QueryParameters")=False Then
		      jDocs.Value("QueryParameters")=New JSONItem("{}")
		    end if
		    Dim jQueryParameters As JSONItem=jDocs.Child("QueryParameters")
		    if jQueryParameters.HasName(strQueryFieldName) Then
		      //try to read this field
		      //if it exists, replace it
		      Dim jQueryInfo As JSONItem=jQueryParameters.Child(strQueryFieldName)
		      jQueryInfo.Value(strParameterName)=bParameterValue
		      if jQueryInfo.HasName("required")=False Then
		        jQueryInfo.Value("required")=False
		      end if
		    Else
		      //if the field did not exist, then create it
		      jQueryParameters.Value(strQueryFieldName)=new JSONItem("{}")
		      Dim jQueryInfo As JSONItem=jQueryParameters.Child(strQueryFieldName)
		      jQueryInfo.Value(strParameterName)=bParameterValue
		      jQueryInfo.Value("required")=False
		    end if
		  Else
		    If jDocs.HasName("PathSpecific") Then
		      jPathSpecific=jDocs.Child("PathSpecific")
		      Dim strAPIPathNames() As String=jPathSpecific.Names
		      For i As Integer=0 to strAPIPathNames.Ubound
		        if strAPIPathNames(i)=strCurrentAPIPath Then
		          Dim jAPIPath As JSONItem=jPathSpecific.Child(strAPIPathNames(i))
		          if jAPIPath.HasName("QueryParameters") Then
		            Dim jQueryParameters As JSONItem=jAPIPath.Child("QueryParameters")
		            if jQueryParameters.HasName(strQueryFieldName) Then
		              //try to read this field
		              //if it exists, replace it
		              Dim jQueryInfo As JSONItem=jQueryParameters.Child(strQueryFieldName)
		              jQueryInfo.Value(strParameterName)=bParameterValue
		              if jQueryInfo.HasName("required")=False Then
		                jQueryInfo.Value("required")=False
		              end if
		            Else
		              //if the field did not exist, then create it
		              jQueryParameters.Value(strQueryFieldName)=new JSONItem("{}")
		              Dim jQueryInfo As JSONItem=jQueryParameters.Child(strQueryFieldName)
		              jQueryInfo.Value(strParameterName)=bParameterValue
		              jQueryInfo.Value("required")=False
		            end if
		          end if
		          exit for
		        end if
		      Next
		    end if
		  end if
		  jDocs.EscapeSlashes=False
		  Return JSONPrettyPrint(StringToText(jDocs.ToString))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetQueryParameterValue(strCurrentJSONDoc As String, strCurrentAPIPath As String, strQueryFieldName As String, strParameterName As String, strParameterValue As String, bPathSpecific As Boolean) As String
		  Dim jDocs As New JSONItem(strCurrentJSONDoc)
		  Dim jPathSpecific As JSONItem
		  if bPathSpecific=False Then
		    If jDocs.HasName("QueryParameters")=False Then
		      jDocs.Value("QueryParameters")=New JSONItem("{}")
		    end if
		    Dim jQueryParameters As JSONItem=jDocs.Child("QueryParameters")
		    if jQueryParameters.HasName(strQueryFieldName) Then
		      //try to read this field
		      //if it exists, replace it
		      Dim jQueryInfo As JSONItem=jQueryParameters.Child(strQueryFieldName)
		      jQueryInfo.Value(strParameterName)=strParameterValue
		      if jQueryInfo.HasName("required")=False Then
		        jQueryInfo.Value("required")=False
		      end if
		    Else
		      //if the field did not exist, then create it
		      jQueryParameters.Value(strQueryFieldName)=new JSONItem("{}")
		      Dim jQueryInfo As JSONItem=jQueryParameters.Child(strQueryFieldName)
		      jQueryInfo.Value(strParameterName)=strParameterValue
		      jQueryInfo.Value("required")=False
		    end if
		  Else
		    If jDocs.HasName("PathSpecific") Then
		      jPathSpecific=jDocs.Child("PathSpecific")
		      Dim strAPIPathNames() As String=jPathSpecific.Names
		      For i As Integer=0 to strAPIPathNames.Ubound
		        if strAPIPathNames(i) = strCurrentAPIPath Then
		          Dim jAPIPath As JSONItem=jPathSpecific.Child(strAPIPathNames(i))
		          if jAPIPath.HasName("QueryParameters") Then
		            Dim jQueryParameters As JSONItem=jAPIPath.Child("QueryParameters")
		            if jQueryParameters.HasName(strQueryFieldName) Then
		              //try to read this field
		              //if it exists, replace it
		              Dim jQueryInfo As JSONItem=jQueryParameters.Child(strQueryFieldName)
		              jQueryInfo.Value(strParameterName)=strParameterValue
		              if jQueryInfo.HasName("required")=False then
		                jQueryInfo.Value("required")=False
		              end if
		            Else
		              //if the field did not exist, then create it
		              jQueryParameters.Value(strQueryFieldName)=new JSONItem("{}")
		              Dim jQueryInfo As JSONItem=jQueryParameters.Child(strQueryFieldName)
		              jQueryInfo.Value(strParameterName)=strParameterValue
		              jQueryInfo.Value("required")=False
		            end if
		          end if
		          exit for
		        end if
		      Next
		    end if
		  end if
		  jDocs.EscapeSlashes=False
		  Return JSONPrettyPrint(StringToText(jDocs.ToString))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StructureToNote(strTestMethod As String, strHTTPMethod As String,  strHTTPConnectionMethod As String, strHost As String, strBasePath As String) As String
		  Dim strReturn As String
		  Dim db As New SQLiteDatabase
		  db.DatabaseFile = SpecialFolder.ApplicationData.Child(APIDocDBName)
		  if db.Connect Then
		    
		    Dim strMethodParts() As String=split(strTestMethod,"_")
		    Dim strMethod As String=strMethodParts(1)
		    
		    Dim strAPIPathForCall As String
		    strAPIPathForCall=strHTTPConnectionMethod + "://" + strHost +  strBasePath + "/" + strMethod
		    
		    Dim strSQL As String
		    //get the results for this httpmethod that start with the callpath
		    strSQL="SELECT structure FROM testresults WHERE method = '" + Lowercase(strHTTPMethod) + "' AND url LIKE '" + strAPIPathForCall + "%';"
		    
		    Dim rs As RecordSet
		    Dim strStructureFromDB As String
		    Dim strStructureLinesFromDB() As String
		    Dim strFieldNames() As String
		    Dim strFieldTypes() As String
		    Dim iMaxLenFieldName As Integer
		    rs=db.SQLSelect(strSQL)
		    if rs<>nil and rs.eof=False Then
		      //found, so we need to build the structure and write it to the note
		      While rs.eof=False
		        strStructureFromDB=rs.Field("structure").StringValue
		        strStructureLinesFromDB=Split(strStructureFromDB,EndOfLine)
		        Dim iMaxLineInStructure As Integer=strStructureLinesFromDB.Ubound
		        for i As Integer = 0 to iMaxLineInStructure
		          Dim strFieldName As String=NthField(strStructureLinesFromDB(i),",",1)
		          If strFieldName<>"" and strFieldNames.IndexOf(strFieldName)=-1 Then
		            //not found, add it
		            Dim iLenFieldName As Integer=Len(strFieldName)
		            if iLenFieldName>iMaxLenFieldName Then
		              iMaxLenFieldName=iLenFieldName
		            End If
		            Dim strFieldType As String=NthField(strStructureLinesFromDB(i),",",2)
		            strFieldNames.Append strFieldName
		            strFieldTypes.Append strFieldType
		          End If
		        next
		        rs.MoveNext
		      Wend
		    end if
		    Dim strBuildStructure As String
		    if strFieldNames.Ubound<>-1 Then
		      //we have names build the structure
		      strBuildStructure = "| Field Name" + Space(iMaxLenFieldName-len("Field Name")+1) + "| Type         |" + EndOfLine
		      strBuildStructure = strBuildStructure + "|" + Dashes(iMaxLenFieldName+2) + "|--------------|" + EndOfLine
		      For i As Integer=0 to strFieldNames.Ubound
		        strBuildStructure = strBuildStructure + "| " + strFieldNames(i)  + Space(iMaxLenFieldName-len(strFieldNames(i))) + " | "
		        Dim vType As Integer=CLong(strFieldTypes(i))
		        SELECT Case vType
		        Case 2,3,4,5,6
		          //Number
		          strBuildStructure = strBuildStructure + "Number       |" + EndOfLine
		        Case 7,8,37
		          //String
		          strBuildStructure = strBuildStructure + "String       |" + EndOfLine
		        Case 11
		          //Boolean
		          strBuildStructure = strBuildStructure + "Boolean      |" + EndOfLine
		        Case Else
		          //Error
		          strBuildStructure = strBuildStructure + "Error        |" + EndOfLine
		        END SELECT
		      Next
		      strReturn=strBuildStructure
		    end if
		  end if
		  Return strReturn
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TestResultToNote(strTestMethod As String, strHTTPMethod As String,  strHTTPConnectionMethod As String, strHost As String, strBasePath As String, bWithPathParameters As Boolean) As String
		  Dim strReturn As String
		  Dim db As New SQLiteDatabase
		  db.DatabaseFile = SpecialFolder.ApplicationData.Child(APIDocDBName)
		  if db.Connect Then
		    
		    Dim strMethodParts() As String=split(strTestMethod,"_")
		    Dim strMethod As String=strMethodParts(1)
		    
		    Dim strAPIPathForCall As String
		    strAPIPathForCall=strHTTPConnectionMethod + "://" + strHost +  strBasePath + "/" + strMethod
		    
		    Dim strSQL As String
		    //get the results for this httpmethod that start with the callpath
		    strSQL="SELECT responsehttpstatus, responsebody, headerparameters, pathparameters, queryparameters, " + _
		    "bodyparameters FROM testresults WHERE method = '" + Lowercase(strHTTPMethod) + _
		    "' AND url LIKE '" + strAPIPathForCall + "%';"
		    Dim rs As RecordSet
		    Dim strResponseStatus As String
		    Dim strResponseBody As String
		    Dim strHeaderParameters As String
		    Dim strPathParameters As String
		    Dim strQueryParameters As String
		    Dim strBodyParameters As String
		    rs=db.SQLSelect(strSQL)
		    if rs<>nil and rs.eof=False Then
		      //found, so we need to build the structure and write it to the note
		      While rs.eof=False
		        strPathParameters=rs.Field("pathparameters").StringValue
		        if (bWithPathParameters=True and strPathParameters<>"") or (bWithPathParameters=False and strPathParameters="") then
		          //we collect the ones where we have pathparameters if bWithPathParameters=True
		          //we collect the ones where we don't have pathparameters if bWithPathParameters=False
		          strResponseStatus=rs.Field("responsehttpstatus").StringValue
		          strResponseBody=rs.Field("responsebody").StringValue
		          strHeaderParameters=cleanupparameterjsonfornote(FilterAuthorizationFields(rs.Field("headerparameters").StringValue),"header")
		          strQueryParameters=cleanupparameterjsonfornote(rs.Field("queryparameters").StringValue,"query")
		          strBodyParameters=cleanupparameterjsonfornote(rs.Field("bodyparameters").StringValue,"body")
		          if strReturn="" Then 
		            strReturn="**Examples:**  " + EndOfLine + "  " + EndOfLine
		          else
		            strReturn=strReturn + EndOfLine + "  " + EndOfLine
		          end if
		          if strPathParameters<>"" Then
		            Dim strPathParameterValue As String
		            Try
		              Dim jPathParameters As New JSONItem(strPathParameters)
		              strPathParameterValue=jPathParameters.Value(jPathParameters.name(0))
		            Catch
		              strPathParameterValue=""
		            End Try
		            strAPIPathForCall=strAPIPathForCall + "/" + strPathParameterValue
		          end if
		          strReturn = strReturn + "**" + strAPIPathForCall + "**  " + EndOfLine + " " + EndOfLine
		          if strHeaderParameters<>"" or strQueryParameters<>"" or strBodyParameters<>"" Then
		            strReturn = strReturn + "with the following parameters :  " + EndOfLine + "  " + EndOfLine
		          end if
		          if strHeaderParameters<>"" Then
		            strReturn = strReturn + "Header Parameters :  " + EndOfLine
		            strReturn = strReturn + strHeaderParameters + EndOfLine + "  " + EndOfLine
		          end if
		          if strQueryParameters<>"" Then
		            strReturn = strReturn + "Query Parameters :  " + EndOfLine
		            strReturn = strReturn + strQueryParameters + EndOfLine + "  " + EndOfLine
		          end if
		          if strBodyParameters<>"" Then
		            strReturn = strReturn + "Body Parameters :  " + EndOfLine
		            strReturn = strReturn + strBodyParameters + EndOfLine + "  " + EndOfLine
		          end if
		          strReturn = strReturn + "  " + EndOfLine
		          strReturn = strReturn + "Success gives statuscode " + strResponseStatus + " " + EndOfLine
		          if strResponseBody<>"" Then
		            strReturn = strReturn + "And the following result " + EndOfLine + "  " + EndOfLine + cleanupresultjsonfornote(strResponseBody) + " " + EndOfLine
		          end if
		          
		        end if
		        rs.MoveNext
		      Wend
		    end if
		  end if
		  
		  Return strReturn
		  
		  
		End Function
	#tag EndMethod


	#tag ViewBehavior
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
