#define TRACE
using System;
using System.Configuration;
using System.Diagnostics;
using System.Globalization;
using System.IO;

namespace Etas.Base.Shared;

public class EtasTextWriterTraceListener : TextWriterTraceListener
{
	private bool s_initialized;

	public EtasTextWriterTraceListener()
	{
	}

	public EtasTextWriterTraceListener(Stream stream)
		: base(stream)
	{
	}

	public EtasTextWriterTraceListener(Stream stream, string name)
		: base(stream, name)
	{
	}

	public EtasTextWriterTraceListener(TextWriter writer)
		: base(writer)
	{
	}

	public EtasTextWriterTraceListener(TextWriter writer, string name)
		: base(writer, name)
	{
	}

	public EtasTextWriterTraceListener(string argument)
	{
		if (argument == null)
		{
			throw new ArgumentNullException("argument");
		}
		SplitArgument(argument, out var traceFileName, out var createNewLogFile);
		InitializeTextWriter(traceFileName, createNewLogFile);
	}

	public EtasTextWriterTraceListener(string argument, string name)
	{
		if (string.IsNullOrEmpty(argument))
		{
			throw new ArgumentException("The string is null or empty", "argument");
		}
		if (string.IsNullOrEmpty(name))
		{
			throw new ArgumentException("The string is null or empty", "name");
		}
		SplitArgument(argument, out var traceFileName, out var createNewLogFile);
		InitializeTextWriter(traceFileName, createNewLogFile);
		Name = name;
	}

	public EtasTextWriterTraceListener(string traceFileName, string name, bool createNewLogFile)
	{
		if (string.IsNullOrEmpty(traceFileName))
		{
			throw new ArgumentException("The string is null or empty", "traceFileName");
		}
		if (string.IsNullOrEmpty(name))
		{
			throw new ArgumentException("The string is null or empty", "name");
		}
		InitializeTextWriter(traceFileName, createNewLogFile);
		Name = name;
	}

	public override void Fail(string message, string detailMessage)
	{
		base.Writer.WriteLine();
		base.Writer.WriteLine("---- DEBUG ASSERTION FAILED ----");
		base.Writer.WriteLine("---- Assert Short Message ----");
		if (message != null)
		{
			base.Writer.WriteLine(message);
		}
		base.Writer.WriteLine("---- Assert Long Message ----");
		if (detailMessage != null)
		{
			base.Writer.WriteLine(detailMessage);
		}
		StackTrace stackTrace = new StackTrace(4);
		base.Writer.WriteLine(stackTrace.ToString());
	}

	private void SplitArgument(string filename, out string traceFileName, out bool createNewLogFile)
	{
		createNewLogFile = false;
		string[] array = filename.Split(' ');
		if (1 == array.Length)
		{
			traceFileName = filename;
			return;
		}
		if (2 == array.Length)
		{
			if (array[0].ToLower(CultureInfo.InvariantCulture).CompareTo("new") == 0)
			{
				createNewLogFile = true;
			}
			traceFileName = array[1];
			return;
		}
		throw new ConfigurationErrorsException();
	}

	private void InitializeTextWriter(string traceFileName, bool createNewLogFile)
	{
		TextWriter textWriter = null;
		if (!s_initialized)
		{
			textWriter = InitializeFile(traceFileName, createNewLogFile);
		}
		if (textWriter == null)
		{
			textWriter = File.AppendText(traceFileName);
		}
		base.Writer = textWriter;
	}

	private TextWriter InitializeFile(string traceFileName, bool createNewLogFile)
	{
		if (traceFileName == null || traceFileName.Length == 0)
		{
			return null;
		}
		TextWriter textWriter;
		try
		{
			textWriter = ((!createNewLogFile) ? File.AppendText(traceFileName) : File.CreateText(traceFileName));
		}
		catch (Exception ex)
		{
			Trace.WriteLine(ex.ToString());
			return null;
		}
		string value = "*******************************************************************";
		textWriter.WriteLine();
		textWriter.WriteLine();
		textWriter.WriteLine(value);
		textWriter.WriteLine("Time:\t\t\t{0}", DateTime.Now.ToString(CultureInfo.InvariantCulture));
		textWriter.WriteLine("Process:\t\t{0}", Process.GetCurrentProcess().ProcessName);
		textWriter.WriteLine("Machine:\t\t{0}", Environment.MachineName);
		textWriter.WriteLine("Operating System:\t{0}", Environment.OSVersion);
		textWriter.WriteLine(".NET version:\t\t{0}", Environment.Version.ToString());
		textWriter.WriteLine("User name:\t\t{0}", Environment.UserName);
		textWriter.WriteLine("Domain:\t\t\t{0}", Environment.UserDomainName);
		textWriter.WriteLine("Interactive:\t\t{0}", Environment.UserInteractive);
		textWriter.WriteLine(value);
		s_initialized = true;
		return textWriter;
	}
}
