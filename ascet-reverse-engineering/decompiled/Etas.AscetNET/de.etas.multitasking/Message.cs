using System;
using System.Runtime.InteropServices;
using System.Threading;

namespace de.etas.multitasking;

[ComVisible(false)]
public sealed class Message
{
	internal object message;

	internal bool readyToSend;

	internal bool readyToReceive;

	public object Receive()
	{
		lock (this)
		{
			try
			{
				if (readyToReceive)
				{
					readyToReceive = false;
					Monitor.Pulse(this);
					return message;
				}
				readyToSend = true;
				Monitor.Wait(this);
				return message;
			}
			catch (Exception ex)
			{
				Console.Out.WriteLine("Exception in " + GetType().FullName + ":" + ex);
				return null;
			}
		}
	}

	public void Send(object msg)
	{
		lock (this)
		{
			try
			{
				if (readyToSend)
				{
					readyToSend = false;
					message = msg;
					Monitor.PulseAll(this);
				}
				else if (readyToReceive)
				{
					Monitor.Wait(this);
				}
				else
				{
					readyToReceive = true;
					message = msg;
					Monitor.Wait(this);
				}
			}
			catch (Exception ex)
			{
				Console.Out.WriteLine("Exception in " + GetType().FullName + ":" + ex);
			}
		}
	}
}
