using System;
using System.Diagnostics;
using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI;

[ComVisible(false)]
public class ExeAPI
{
	private string startup;

	private string parameter;

	private string command;

	private int status;

	private Process proz;

	private Process rt;

	public ExeAPI(string command)
		: this(command, null, null)
	{
	}

	public ExeAPI(string command, string parameter)
		: this(command, parameter, null)
	{
	}

	public ExeAPI(string command, string parameter, string startup)
	{
		rt = Process.GetCurrentProcess();
		this.command = command;
		this.parameter = parameter;
		this.startup = startup;
		status = 1;
	}

	public virtual void end()
	{
		try
		{
			proz.Kill();
		}
		catch (Exception ex)
		{
			Cebra.println("Exception ending " + command + ". " + ex);
		}
	}

	public virtual void execute()
	{
		if (status != 1)
		{
			return;
		}
		try
		{
			if (parameter == null)
			{
				if (startup == null)
				{
					proz = Process.Start(command);
					return;
				}
				proz = Process.Start(arguments: (new string[1] { "user.dir=" + startup })[0], fileName: command);
			}
			else if (startup == null)
			{
				proz = Process.Start(command + " " + parameter);
			}
			else
			{
				proz = Process.Start(arguments: (new string[1] { "user.dir=" + startup })[0], fileName: command + " " + parameter);
			}
		}
		catch (Exception ex)
		{
			Cebra.println("Exception in de.etas.cebra.ExeAPI.Execute()" + ex);
		}
	}

	public virtual int waitFor()
	{
		try
		{
			proz.WaitForExit();
			return proz.ExitCode;
		}
		catch (Exception ex)
		{
			Cebra.println("Exception waiting for " + command + ". " + ex);
		}
		return 0;
	}
}
