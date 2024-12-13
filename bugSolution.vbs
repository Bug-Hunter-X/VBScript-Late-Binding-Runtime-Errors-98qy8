Early Binding and Error Handling:

To avoid late-binding issues, use early binding whenever possible. This involves declaring the object type explicitly.  Also, always include error handling to gracefully manage potential failures.

Improved Example:
```vbscript
On Error Resume Next
Dim obj As Object
Set obj = CreateObject("Some.Object.That.Might.Not.Exist")
If Err.Number <> 0 Then
  MsgBox "Error creating object: " & Err.Description
  Err.Clear
  Exit Sub
End If

'Check if method exists before calling it
If TypeName(obj) = "Some.Object.That.Might.Not.Exist" And _
   IsObject(obj) And _
   TypeSupport(obj, "NonExistentMethod") Then
    MsgBox obj.NonExistentMethod()
Else
    MsgBox "Object or method does not exist"
End If

Function TypeSupport(obj, methodName)
  On Error Resume Next
  Call obj.methodName
  TypeSupport = (Err.Number = 0)
  Err.Clear
End Function
```
This improved code checks for object creation errors and verifies that the method exists before calling it. The `TypeSupport` function performs runtime type checking for the existence of a method.  The `On Error Resume Next` statement should be used cautiously and with appropriate error handling.