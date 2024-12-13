This repository demonstrates a common but easily overlooked error in VBScript: runtime errors caused by late binding.  Late binding, while offering flexibility, can result in cryptic error messages when accessing nonexistent methods or properties. The `bug.vbs` file contains the problematic code, and `bugSolution.vbs` shows how to improve the code's robustness using early binding or explicit error handling. 