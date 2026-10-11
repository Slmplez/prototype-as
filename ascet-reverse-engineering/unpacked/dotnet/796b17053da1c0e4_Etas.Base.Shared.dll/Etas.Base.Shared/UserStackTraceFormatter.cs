using System;
using System.Collections;
using System.Diagnostics;

namespace Etas.Base.Shared;

internal class UserStackTraceFormatter : StackTraceFormatter
{
	protected override void AppendStackFrame(StackFrame frame)
	{
		SB.Append(base.Prefix);
		SB.Append("  at ");
		SB.Append(CSharpFormatter.FormatMethod(frame.GetMethod()));
		string fileName = frame.GetFileName();
		if (fileName != null)
		{
			SB.Append(" in ");
			SB.Append(fileName);
			int fileLineNumber = frame.GetFileLineNumber();
			if (fileLineNumber != 0)
			{
				SB.Append(":line ");
				SB.Append(fileLineNumber);
				SB.Append(" (");
				SB.Append(frame.GetFileColumnNumber());
				SB.Append(")");
			}
		}
		SB.AppendLine();
	}

	protected override void AppendExceptionHeader(Exception exception)
	{
		SB.Append(base.Prefix);
		SB.Append(exception.GetType());
		SB.Append(": ");
		SB.AppendLine(exception.Message);
		foreach (DictionaryEntry datum in exception.Data)
		{
			SB.Append("  Data: ");
			SB.Append(SafeToString(datum.Key));
			SB.Append(" = ");
			SB.AppendLine(SafeToString(datum.Value));
		}
	}

	protected override void AppendInnerExceptionSeparator()
	{
		SB.AppendLine();
		SB.AppendLine("-- Inner Exception of Above Exception -----------------------------------------------------------------------------");
		SB.AppendLine();
	}

	private static string SafeToString(object key)
	{
		if (key == null)
		{
			return "null";
		}
		return SafeEval(key.ToString, "exception");
	}

	private static T SafeEval<T>(Func<T> func, T valueOnThrown)
	{
		try
		{
			return func();
		}
		catch (Exception)
		{
			return valueOnThrown;
		}
	}
}
