using System.Collections;
using System.Runtime.InteropServices;

namespace de.etas.multitasking;

[ComVisible(false)]
public sealed class MessageBox
{
	internal Hashtable messageList;

	internal Semaphore schutz;

	public MessageBox()
	{
		messageList = Hashtable.Synchronized(new Hashtable());
		schutz = new Semaphore(v: true);
	}

	public object receiveMessage(string name)
	{
		schutz.Wait();
		Message message = (Message)messageList[name];
		if (message == null)
		{
			message = new Message();
			messageList[name] = message;
		}
		schutz.Put();
		object result = message.Receive();
		schutz.Wait();
		messageList.Remove(name);
		schutz.Put();
		return result;
	}

	public bool sendMessage(string name, object message)
	{
		schutz.Wait();
		Message message2 = (Message)messageList[name];
		if (message2 == null)
		{
			message2 = new Message();
			messageList[name] = message2;
		}
		schutz.Put();
		message2.Send(message);
		return true;
	}
}
