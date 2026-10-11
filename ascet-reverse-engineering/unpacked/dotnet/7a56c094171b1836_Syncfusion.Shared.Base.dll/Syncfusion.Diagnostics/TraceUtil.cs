#define TRACE
using System;
using System.Collections;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Text;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms;

namespace Syncfusion.Diagnostics;

public sealed class TraceUtil
{
	private static TextWriterTraceListener textListener;

	private static Hashtable switchTable = new Hashtable();

	private TraceUtil()
	{
	}

	[DocumentationExclude]
	public static void StartTraceFile(string fileName)
	{
		FileStream stream;
		try
		{
			stream = File.Create(fileName);
		}
		catch (Exception ex)
		{
			TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(null, ex))
			{
				throw;
			}
			return;
		}
		textListener = new TextWriterTraceListener(stream);
		Trace.Listeners.Add(textListener);
	}

	[DocumentationExclude]
	public static void CloseTraceFile()
	{
		if (textListener != null)
		{
			Trace.Listeners.Remove(textListener);
			textListener.Flush();
			textListener.Close();
			textListener = null;
		}
	}

	[DebuggerStepThrough]
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
		stringBuilder.Append("catched at ");
		stringBuilder.Append(method.ReflectedType.FullName);
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
		stringBuilder.Append(") in ");
		stringBuilder.Append(frame.GetFileName());
		stringBuilder.Append(":line ");
		stringBuilder.Append(frame.GetFileLineNumber());
		Console.WriteLine(stringBuilder.ToString());
	}

	public static bool IsCalledFrom(MethodBase method)
	{
		StackTrace stackTrace = new StackTrace(fNeedFileInfo: true);
		for (int i = 1; i < stackTrace.FrameCount; i++)
		{
			StackFrame frame = stackTrace.GetFrame(i);
			if (frame.GetMethod().Equals(method))
			{
				return true;
			}
		}
		return false;
	}

	[DebuggerStepThrough]
	[Conditional("DEBUG")]
	public static void TraceCalledFrom()
	{
	}

	[Conditional("DEBUG")]
	[DebuggerStepThrough]
	public static void TraceCalledFromIf(bool condition, int levels, params object[] args)
	{
		if (condition && args != null && args.Length > 0)
		{
			StackTrace stackTrace = new StackTrace(1, fNeedFileInfo: true);
			StackFrame frame = stackTrace.GetFrame(0);
			if (frame != null)
			{
				MethodBase method = frame.GetMethod();
				TraceMethodCall(method, args);
			}
		}
	}

	[Conditional("DEBUG")]
	[DebuggerStepThrough]
	public static void TraceCalledFrom(int levels)
	{
	}

	[Conditional("DEBUG")]
	[DebuggerStepThrough]
	private static void _TraceCalledFrom(int levels)
	{
		StackTrace stackTrace = new StackTrace(3, fNeedFileInfo: true);
		for (int i = 0; i < levels + 1; i++)
		{
			StackFrame frame = stackTrace.GetFrame(i);
			if (frame == null)
			{
				continue;
			}
			MethodBase method = frame.GetMethod();
			StringBuilder stringBuilder = new StringBuilder();
			if (levels > 1)
			{
				stringBuilder.Append(i.ToString());
			}
			stringBuilder.Append(": called from ");
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
			}
			stringBuilder.Append(") in ");
			stringBuilder.Append(Path.GetFileName(frame.GetFileName()));
			stringBuilder.Append(":line ");
			stringBuilder.Append(frame.GetFileLineNumber());
			Trace.WriteLine(stringBuilder.ToString());
		}
	}

	[Conditional("DEBUG")]
	[DebuggerStepThrough]
	public static void TraceCurrentMethodInfo(params object[] args)
	{
		StackTrace stackTrace = new StackTrace(1, fNeedFileInfo: true);
		StackFrame frame = stackTrace.GetFrame(0);
		if (frame != null)
		{
			MethodBase method = frame.GetMethod();
			TraceMethodCall(method, args);
		}
	}

	[Conditional("DEBUG")]
	[DebuggerStepThrough]
	public static void TraceCurrentMethodInfoIf(bool condition, params object[] args)
	{
		if (condition)
		{
			StackTrace stackTrace = new StackTrace(1, fNeedFileInfo: true);
			StackFrame frame = stackTrace.GetFrame(0);
			if (frame != null)
			{
				MethodBase method = frame.GetMethod();
				TraceMethodCall(method, args);
			}
		}
	}

	internal static void TraceMethodCall(Type type, string methodName, params object[] args)
	{
		int num = methodName.LastIndexOf(".");
		if (num != -1)
		{
			string name = type.Name;
			methodName = methodName.Substring(num + 1);
			if (type != null)
			{
				Type[] array = new Type[args.Length];
				for (int i = 0; i < args.Length; i++)
				{
					array[i] = ((args[i] == null) ? typeof(object) : args[i].GetType());
				}
				MethodInfo method = type.GetMethod(methodName, BindingFlags.Instance | BindingFlags.Static | BindingFlags.Public | BindingFlags.NonPublic, null, array, null);
				if (method != null)
				{
					TraceMethodCall(method, args);
				}
				else
				{
					Trace.WriteLine(name + ":" + methodName);
				}
				return;
			}
		}
		Trace.WriteLine(methodName);
	}

	[DebuggerStepThrough]
	internal static void TraceMethodCall(MethodBase mb, params object[] args)
	{
		TraceMethodCallWithNames(mb, showNames: false, args);
	}

	[DebuggerStepThrough]
	internal static void TraceMethodCallWithNames(MethodBase mb, bool showNames, params object[] args)
	{
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.Append(mb.ReflectedType.Name);
		stringBuilder.Append(".");
		stringBuilder.Append(mb.Name);
		string text = stringBuilder.ToString();
		BooleanSwitch booleanSwitch = switchTable[text] as BooleanSwitch;
		if (booleanSwitch == null)
		{
			booleanSwitch = new BooleanSwitch(text, "");
			switchTable.Add(text, booleanSwitch);
		}
		if (booleanSwitch.Enabled)
		{
			return;
		}
		stringBuilder.Append("(");
		ParameterInfo[] parameters = mb.GetParameters();
		for (int i = 0; i < parameters.Length; i++)
		{
			ParameterInfo parameterInfo = parameters[i];
			if (i > 0)
			{
				stringBuilder.Append(", ");
			}
			if (i < args.Length)
			{
				if (showNames)
				{
					stringBuilder.Append(parameterInfo.Name + " = ");
				}
				stringBuilder.Append((args[i] != null) ? args[i].ToString().Trim() : "null");
			}
		}
		for (int j = parameters.Length; j < args.Length; j++)
		{
			if (j > 0)
			{
				stringBuilder.Append(", ");
			}
			if (args[j] != null)
			{
				if (showNames)
				{
					stringBuilder.Append(args[j].GetType().Name + " = ");
				}
				stringBuilder.Append((args[j] != null) ? args[j].ToString().Trim() : "null");
			}
			else
			{
				stringBuilder.Append("null");
			}
		}
		stringBuilder.Append(")");
		Trace.WriteLine(stringBuilder.ToString());
	}

	[DebuggerStepThrough]
	internal static void TraceStack()
	{
		StackTrace stackTrace = new StackTrace(1, fNeedFileInfo: true);
		StackFrame frame = stackTrace.GetFrame(0);
		if (frame == null)
		{
			return;
		}
		MethodBase method = frame.GetMethod();
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.Append("File ");
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
		Trace.WriteLine(frame.ToString());
	}
}
