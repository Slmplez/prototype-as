using System;
using System.Diagnostics;

namespace Etas.Base.Shared;

internal class HashStackTraceFormatter : StackTraceFormatter
{
	protected override void AppendStackFrame(StackFrame frame)
	{
		SB.Append("  at ");
		SB.AppendLine(CSharpFormatter.FormatMethod(frame.GetMethod()));
	}

	protected override void AppendExceptionHeader(Exception exception)
	{
		SB.AppendLine(exception.GetType().ToString());
	}

	protected override void AppendInnerExceptionSeparator()
	{
	}
}
