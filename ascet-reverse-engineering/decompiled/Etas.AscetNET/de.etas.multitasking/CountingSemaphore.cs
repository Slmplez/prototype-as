using System;
using System.Runtime.InteropServices;
using System.Threading;

namespace de.etas.multitasking;

[ComVisible(false)]
public sealed class CountingSemaphore
{
	private int anzahl;

	public CountingSemaphore()
	{
		anzahl = 0;
	}

	public CountingSemaphore(int v)
	{
		anzahl = v;
	}

	public void Put()
	{
		lock (this)
		{
			anzahl++;
			Monitor.Pulse(this);
		}
	}

	public int Test()
	{
		lock (this)
		{
			return anzahl;
		}
	}

	public void Wait()
	{
		lock (this)
		{
			if (anzahl < 1)
			{
				try
				{
					Monitor.Wait(this);
				}
				catch (Exception)
				{
					Console.Out.WriteLine("InterruptedException in de.etas.multitasking.CountingSemaphore.Wait()");
				}
			}
			anzahl--;
		}
	}
}
