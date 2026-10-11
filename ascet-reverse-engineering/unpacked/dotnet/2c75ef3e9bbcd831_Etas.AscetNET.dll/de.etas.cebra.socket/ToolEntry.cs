using System.Runtime.InteropServices;

namespace de.etas.cebra.socket;

[ComVisible(false)]
public class ToolEntry
{
	public string host0;

	public string port0;

	public string host;

	public int port;

	public ToolEntry()
	{
	}

	public ToolEntry(string h, int p)
	{
		host = h;
		port = p;
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (!(obj is ToolEntry))
		{
			return false;
		}
		if (((ToolEntry)obj).port != port)
		{
			return false;
		}
		if (((ToolEntry)obj).host.ToUpper().Equals(host.ToUpper()))
		{
			return true;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return port + host.GetHashCode();
	}
}
