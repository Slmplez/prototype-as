using System;
using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.socket;

[ComVisible(false)]
public sealed class ItemHandle
{
	internal object oHandle;

	internal char type;

	internal string ClassName
	{
		get
		{
			if (type != 'C')
			{
				throw new WrongItemTypeException("Item is not a class.");
			}
			return ((ClassName)oHandle).name;
		}
	}

	internal Type ClassOfItem
	{
		get
		{
			if (oHandle == null)
			{
				return null;
			}
			if (oHandle is char)
			{
				return typeof(bool);
			}
			if (oHandle is bool)
			{
				return typeof(bool);
			}
			if (oHandle is sbyte)
			{
				return typeof(sbyte);
			}
			if (oHandle is short)
			{
				return typeof(short);
			}
			if (oHandle is int)
			{
				return typeof(int);
			}
			if (oHandle is long)
			{
				return typeof(long);
			}
			if (oHandle is float)
			{
				return typeof(float);
			}
			if (oHandle is double)
			{
				return typeof(double);
			}
			if (oHandle is RemoteHandle)
			{
				return typeof(RemoteHandle);
			}
			if (oHandle is Identifiable)
			{
				object fromObjectTable;
				if ((fromObjectTable = ObjectTable.getFromObjectTable((Identifiable)oHandle)) == null)
				{
					return oHandle.GetType();
				}
				return fromObjectTable.GetType();
			}
			return oHandle.GetType();
		}
	}

	internal ItemHandle()
	{
	}

	internal ItemHandle(object h, char t)
	{
		oHandle = h;
		type = t;
	}

	internal int readInteger()
	{
		if (type != 'I')
		{
			throw new WrongItemTypeException("Item is not a String");
		}
		return (int)oHandle;
	}

	internal object readObject()
	{
		if (type == 'C')
		{
			return Cebra.getClassByName(((ClassName)oHandle).name);
		}
		return oHandle;
	}

	internal string readString()
	{
		if (type != 'Z')
		{
			throw new WrongItemTypeException("Item is not a String");
		}
		return (string)oHandle;
	}
}
