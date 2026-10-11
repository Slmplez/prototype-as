#define TRACE
using System;
using System.Diagnostics;
using System.Reflection;
using System.Text;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal sealed class GridTraceStack
{
	public static void TraceExceptionCatched(Exception e)
	{
		StackTrace stackTrace = new StackTrace(1, fNeedFileInfo: true);
		StackFrame frame = stackTrace.GetFrame(0);
		if (frame == null)
		{
			return;
		}
		MethodBase method = frame.GetMethod();
		Trace.WriteLine(e.ToString());
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.Append("catched in File ");
		stringBuilder.Append(frame.GetFileName());
		stringBuilder.Append(", line ");
		stringBuilder.Append(frame.GetFileLineNumber());
		Trace.WriteLine(stringBuilder.ToString());
		stringBuilder = new StringBuilder();
		stringBuilder.Append("in method ");
		stringBuilder.Append(method.ReflectedType.Name);
		stringBuilder.Append(".");
		stringBuilder.Append(method.Name);
		stringBuilder.Append("(");
		bool flag = true;
		ParameterInfo[] parameters = method.GetParameters();
		foreach (ParameterInfo parameterInfo in parameters)
		{
			if (!flag)
			{
				stringBuilder.Append(", ");
			}
			flag = false;
			stringBuilder.Append(parameterInfo.ParameterType.Name);
			stringBuilder.Append(" ");
			stringBuilder.Append(parameterInfo.Name);
		}
		stringBuilder.Append(");");
		Trace.WriteLine(stringBuilder.ToString());
	}

	public static object TraceMethodInfo()
	{
		if (Switches.General.TraceVerbose)
		{
			Trace.WriteLine("TraceVerbose");
		}
		StackTrace stackTrace = new StackTrace(1, fNeedFileInfo: true);
		StackFrame frame = stackTrace.GetFrame(0);
		if (frame != null)
		{
			MethodBase method = frame.GetMethod();
			StringBuilder stringBuilder = new StringBuilder();
			stringBuilder.Append(method.ReflectedType.Name);
			stringBuilder.Append(".");
			stringBuilder.Append(method.Name);
			stringBuilder.Append("(");
			bool flag = true;
			ParameterInfo[] parameters = method.GetParameters();
			foreach (ParameterInfo parameterInfo in parameters)
			{
				if (!flag)
				{
					stringBuilder.Append(", ");
				}
				flag = false;
				stringBuilder.Append(parameterInfo.ParameterType.Name);
				stringBuilder.Append(" ");
				stringBuilder.Append(parameterInfo.Name);
			}
			stringBuilder.Append(");");
			int num = 1;
			frame = stackTrace.GetFrame(num);
			if (frame != null)
			{
				stringBuilder.Append(" called from ");
				do
				{
					method = frame.GetMethod();
					stringBuilder.Append(method.ReflectedType.Name);
					stringBuilder.Append(".");
					stringBuilder.Append(method.Name);
					stringBuilder.Append(":");
					frame = stackTrace.GetFrame(++num);
				}
				while (frame != null);
			}
			Trace.WriteLine(stringBuilder.ToString());
		}
		return null;
	}
}
