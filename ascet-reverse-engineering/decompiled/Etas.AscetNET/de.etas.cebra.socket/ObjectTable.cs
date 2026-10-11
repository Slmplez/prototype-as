using System.Collections;
using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.socket;

[ComVisible(false)]
internal sealed class ObjectTable
{
	private static Hashtable objectTable = Hashtable.Synchronized(new Hashtable(101));

	private ObjectTable()
	{
	}

	internal static Identifiable addToObjectTable(Identifiable obj)
	{
		if (obj == null)
		{
			return new Identifier();
		}
		if (obj.Registered)
		{
			return obj;
		}
		objectTable[obj.getIdentifier()] = obj;
		obj.Registered = true;
		return obj;
	}

	internal static Identifiable addToObjectTable(object obj)
	{
		if (obj == null)
		{
			return new Identifier();
		}
		Identifier identifier = new Identifier();
		Cebra.getNewIdentifier(identifier);
		objectTable[identifier.getIdentifier()] = obj;
		identifier.Registered = true;
		return identifier;
	}

	internal static object getFromObjectTable(Identifiable obj)
	{
		long identifier = obj.getIdentifier();
		if ((int)identifier == 1)
		{
			return double.PositiveInfinity;
		}
		if ((int)identifier == 2)
		{
			return double.NegativeInfinity;
		}
		return objectTable[identifier];
	}

	public static object removeFromObjectTable(Identifiable obj)
	{
		if (obj == null)
		{
			return null;
		}
		object result = objectTable[obj.getIdentifier()];
		objectTable.Remove(obj.getIdentifier());
		return result;
	}
}
