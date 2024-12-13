Late Binding: VBScript's late binding can lead to runtime errors if an object doesn't support a method or property you're trying to use.  This is particularly problematic because it often results in a generic error message, making debugging difficult.

Example:
```vbscript
Dim obj As Object
Set obj = CreateObject("Some.Object.That.Might.Not.Exist")
'No error checking to see if object exists before trying to use it
MsgBox obj.NonExistentMethod()
```
This code will fail at runtime if `Some.Object.That.Might.Not.Exist` doesn't have a `NonExistentMethod` method, but the error message might not be specific enough to pinpoint the problem immediately. 