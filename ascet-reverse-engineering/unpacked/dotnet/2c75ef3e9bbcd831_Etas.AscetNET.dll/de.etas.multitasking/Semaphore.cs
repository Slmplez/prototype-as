using System;
using System.Runtime.InteropServices;
using System.Threading;

namespace de.etas.multitasking;

[ComVisible(false)]
public sealed class Semaphore
{
	internal bool belegt;

	public Semaphore()
	{
		belegt = false;
	}

	public Semaphore(bool v)
	{
		belegt = v;
	}

	public void Put()
	{
		lock (this)
		{
			belegt = true;
			Monitor.Pulse(this);
		}
	}

	public bool Test()
	{
		lock (this)
		{
			return belegt;
		}
	}

	public bool Wait()
	{
		return Wait(0L);
	}

	public bool Wait(long T)
	{
		lock (this)
		{
			if (!belegt)
			{
				try
				{
					Monitor.Wait(this);
				}
				catch (Exception ex)
				{
					Console.Out.WriteLine("Exception in " + GetType().FullName + ":" + ex);
				}
			}
			bool result = belegt;
			belegt = false;
			return result;
		}
	}
}
