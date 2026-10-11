using System.Runtime.InteropServices;

namespace de.etas.multitasking;

[ComVisible(false)]
public sealed class MessageQueue
{
	private int maxAnzahl;

	private int[] messages;

	private int indexRead;

	private int indexWrite;

	private string name;

	private CountingSemaphore writeBlock;

	private CountingSemaphore readBlock;

	public int Event
	{
		get
		{
			int result = 0;
			readBlock.Wait();
			lock (this)
			{
				result = messages[indexRead];
				indexRead++;
				if (indexRead == maxAnzahl)
				{
					indexRead = 0;
				}
			}
			writeBlock.Put();
			return result;
		}
	}

	public MessageQueue(string c, int n)
	{
		name = c;
		indexRead = 0;
		indexWrite = 0;
		if (n > 0)
		{
			maxAnzahl = n;
			messages = new int[n];
			writeBlock = new CountingSemaphore(n);
			readBlock = new CountingSemaphore(0);
		}
		else
		{
			maxAnzahl = 1;
			messages = new int[1];
			writeBlock = new CountingSemaphore(1);
			readBlock = new CountingSemaphore(0);
		}
	}

	public bool putEvent(int msg)
	{
		writeBlock.Wait();
		lock (this)
		{
			messages[indexWrite] = msg;
			indexWrite++;
			if (indexWrite == maxAnzahl)
			{
				indexWrite = 0;
			}
		}
		readBlock.Put();
		return true;
	}
}
