using System;
using System.Diagnostics;
using System.Text;

namespace Etas.Base.Shared;

internal abstract class StackTraceFormatter
{
	protected readonly StringBuilder SB = new StringBuilder();

	private string _Prefix = "";

	public string FormattedStackTrace => SB.ToString();

	protected string Prefix => _Prefix;

	public void FormatException(Exception exception)
	{
		Exception ex = exception;
		FormatSingleException(ex);
		while (true)
		{
			ex = ex.InnerException;
			if (ex == null)
			{
				break;
			}
			AppendInnerExceptionSeparator();
			FormatSingleException(ex);
		}
	}

	private void FormatSingleException(Exception exception)
	{
		AppendExceptionHeader(exception);
		StackTrace stackTrace = new StackTrace(exception, fNeedFileInfo: true);
		if (stackTrace.FrameCount > 0)
		{
			AppendStackTrace(stackTrace);
		}
	}

	public void FormatStackTrace(StackTrace stack)
	{
		AppendStackTrace(stack);
	}

	private void AppendStackTrace(StackTrace stack)
	{
		StackFrame[] frames = stack.GetFrames();
		foreach (StackFrame frame in frames)
		{
			AppendStackFrame(frame);
		}
	}

	protected abstract void AppendInnerExceptionSeparator();

	protected abstract void AppendExceptionHeader(Exception exception);

	protected abstract void AppendStackFrame(StackFrame frame);
}
