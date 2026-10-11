using System;
using System.Collections.Specialized;
using System.Runtime.InteropServices;

namespace de.etas.cebra.socket;

[ComVisible(false)]
public sealed class ErrorHandle
{
	private static NameValueCollection ErrTable;

	private static NameValueCollection sections;

	public int errcode;

	public string errmsg;

	internal ErrorHandle(int c)
		: this(c, null)
	{
	}

	internal ErrorHandle(int c, string n)
	{
		if (c < 1)
		{
			c = 999;
		}
		if (c > 999)
		{
			c = 999;
		}
		errcode = c;
		if (n == null)
		{
			errmsg = ErrTable[Convert.ToString(c)];
			if (errmsg == null)
			{
				errmsg = "Unknown error.";
			}
		}
		else
		{
			errmsg = n;
		}
	}

	public int errorCode()
	{
		return errcode;
	}

	public string errorMessage()
	{
		return errmsg;
	}

	private static void initialize()
	{
	}

	private static void save()
	{
	}

	public override string ToString()
	{
		return "Error #" + errcode + ": " + errmsg;
	}

	static ErrorHandle()
	{
		ErrTable = new NameValueCollection();
		sections = new NameValueCollection();
		initialize();
		sections["0"] = "Classes and objects";
		sections["100"] = "methods";
		sections["200"] = "server";
		sections["500"] = "format";
		sections["900"] = "system";
	}
}
