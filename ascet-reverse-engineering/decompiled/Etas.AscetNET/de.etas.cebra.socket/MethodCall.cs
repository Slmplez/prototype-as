using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI;
using de.etas.types;

namespace de.etas.cebra.socket;

[ComVisible(false)]
public abstract class MethodCall
{
	protected internal CebraMessage msg;

	protected internal CebraMessage result;

	private int numOfArgs;

	private readonly ToolAPI api;

	public virtual CebraMessage Message => msg;

	public virtual CebraMessage Result => result;

	public virtual bool ResultBoolean
	{
		get
		{
			ItemHandle resultItem = ResultItem;
			char type = resultItem.type;
			if (type == 'T')
			{
				return (bool)resultItem.oHandle;
			}
			throw new WrongResultTypeException();
		}
	}

	public virtual bool[] ResultBooleanArray
	{
		get
		{
			if (result == null)
			{
				throw new NullResultException();
			}
			return result.readBooleanAll();
		}
	}

	public virtual sbyte ResultByte
	{
		get
		{
			ItemHandle resultItem = ResultItem;
			char type = resultItem.type;
			if (type == 'B')
			{
				return (sbyte)resultItem.oHandle;
			}
			throw new WrongResultTypeException();
		}
	}

	public virtual sbyte[] ResultByteArray
	{
		get
		{
			ItemHandle resultItem = ResultItem;
			char type = resultItem.type;
			if (type == 'Y')
			{
				return (sbyte[])resultItem.oHandle;
			}
			throw new WrongResultTypeException();
		}
	}

	public virtual char ResultCharacter
	{
		get
		{
			ItemHandle resultItem = ResultItem;
			char type = resultItem.type;
			if (type == 'A')
			{
				return (char)resultItem.oHandle;
			}
			throw new WrongResultTypeException();
		}
	}

	public virtual char[] ResultCharacterArray
	{
		get
		{
			if (result == null)
			{
				throw new NullResultException();
			}
			return result.readCharacterAll();
		}
	}

	public virtual double ResultDouble
	{
		get
		{
			ItemHandle resultItem = ResultItem;
			switch (resultItem.type)
			{
			case 'F':
				return (float)resultItem.oHandle;
			case 'D':
				return (double)resultItem.oHandle;
			case 'L':
				return (long)resultItem.oHandle;
			case 'I':
				return (int)resultItem.oHandle;
			case 'S':
				return (short)(int)resultItem.oHandle;
			case 'B':
				return (sbyte)resultItem.oHandle;
			case 'T':
				if ((bool)resultItem.oHandle)
				{
					return 1.0;
				}
				return 0.0;
			default:
				throw new WrongResultTypeException();
			}
		}
	}

	public virtual double[] ResultDoubleArray
	{
		get
		{
			if (result == null)
			{
				throw new NullResultException();
			}
			return result.readDoubleAll();
		}
	}

	public virtual float ResultFloat
	{
		get
		{
			ItemHandle resultItem = ResultItem;
			return resultItem.type switch
			{
				'F' => (float)resultItem.oHandle, 
				'D' => (float)(double)resultItem.oHandle, 
				_ => throw new WrongResultTypeException(), 
			};
		}
	}

	public virtual float[] ResultFloatArray
	{
		get
		{
			if (result == null)
			{
				throw new NullResultException();
			}
			return result.readFloatAll();
		}
	}

	public virtual int ResultInteger
	{
		get
		{
			ItemHandle resultItem = ResultItem;
			return resultItem.type switch
			{
				'I' => (int)resultItem.oHandle, 
				'S' => (short)(int)resultItem.oHandle, 
				'B' => (sbyte)resultItem.oHandle, 
				_ => throw new WrongResultTypeException(), 
			};
		}
	}

	public virtual int[] ResultIntegerArray
	{
		get
		{
			if (result == null)
			{
				throw new NullResultException();
			}
			return result.readIntegerAll();
		}
	}

	protected internal virtual ItemHandle ResultItem
	{
		get
		{
			if (result == null)
			{
				ErrorHandle toolError = new ErrorHandle(921, "Null result");
				api.ToolError = toolError;
				throw new NullResultException();
			}
			if (!result.reset())
			{
				ErrorHandle errorHandle = new ErrorHandle(920, "No connection");
				api.ToolError = errorHandle;
				throw new ErrorResultException(errorHandle);
			}
			ItemHandle itemHandle = result.readNext();
			if (itemHandle.type == 'E')
			{
				ErrorHandle errorHandle2 = (ErrorHandle)itemHandle.oHandle;
				api.ToolError = errorHandle2;
				throw new ErrorResultException(errorHandle2);
			}
			return itemHandle;
		}
	}

	public virtual object ResultLocalObject
	{
		get
		{
			ItemHandle resultItem = ResultItem;
			char type = resultItem.type;
			if (type == 'O')
			{
				return resultItem.oHandle;
			}
			throw new WrongResultTypeException();
		}
	}

	public virtual object[] ResultLocalObjectArray
	{
		get
		{
			if (result == null)
			{
				throw new NullResultException();
			}
			return result.readLocalObjectsAll();
		}
	}

	public virtual long ResultLong
	{
		get
		{
			ItemHandle resultItem = ResultItem;
			return resultItem.type switch
			{
				'L' => (long)resultItem.oHandle, 
				'I' => (int)resultItem.oHandle, 
				'S' => (short)(int)resultItem.oHandle, 
				'B' => (sbyte)resultItem.oHandle, 
				_ => throw new WrongResultTypeException(), 
			};
		}
	}

	public virtual long[] ResultLongArray
	{
		get
		{
			if (result == null)
			{
				throw new NullResultException();
			}
			return result.readLongAll();
		}
	}

	public virtual object ResultObject
	{
		get
		{
			ItemHandle resultItem = ResultItem;
			return resultItem.oHandle;
		}
	}

	public virtual object[] ResultObjectArray
	{
		get
		{
			if (result == null)
			{
				throw new NullResultException();
			}
			return result.readObjectAll();
		}
	}

	public virtual Identifiable ResultRemoteObject
	{
		get
		{
			ItemHandle resultItem = ResultItem;
			char type = resultItem.type;
			if (type == 'R')
			{
				return (Identifiable)resultItem.oHandle;
			}
			throw new WrongResultTypeException();
		}
	}

	public virtual Identifiable[] ResultRemoteObjectArray
	{
		get
		{
			if (result == null)
			{
				throw new NullResultException();
			}
			return result.readRemoteObjectsAll();
		}
	}

	public virtual short ResultShort
	{
		get
		{
			ItemHandle resultItem = ResultItem;
			return resultItem.type switch
			{
				'S' => (short)(int)resultItem.oHandle, 
				'B' => (sbyte)resultItem.oHandle, 
				_ => throw new WrongResultTypeException(), 
			};
		}
	}

	public virtual short[] ResultShortArray
	{
		get
		{
			if (result == null)
			{
				throw new NullResultException();
			}
			return result.readShortAll();
		}
	}

	public virtual string ResultString
	{
		get
		{
			ItemHandle resultItem = ResultItem;
			char type = resultItem.type;
			if (type == 'Z')
			{
				return (string)resultItem.oHandle;
			}
			throw new WrongResultTypeException();
		}
	}

	public virtual string[] ResultStringArray
	{
		get
		{
			if (result == null)
			{
				throw new NullResultException();
			}
			return result.readStringsAll();
		}
	}

	private int NumberOfArguments
	{
		set
		{
			msg.message[2] = value;
		}
	}

	protected internal MethodCall(ToolAPI a)
	{
		msg = new CebraMessage();
		result = new CebraMessage();
		numOfArgs = 0;
		api = a;
	}

	public virtual void appendParameter()
	{
		msg.catItem();
		numOfArgs++;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameter(sbyte[] i)
	{
		msg.catItem(i);
		numOfArgs++;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameter(char[] i)
	{
		ETASArray eTASArray = api.setArrayFromValues(i);
		if (eTASArray != null)
		{
			msg.catItem(eTASArray);
			numOfArgs++;
			NumberOfArguments = numOfArgs;
		}
	}

	public virtual void appendParameter(double[] i)
	{
		ETASArray eTASArray = api.setArrayFromValues(i);
		if (eTASArray != null)
		{
			msg.catItem(eTASArray);
			numOfArgs++;
			NumberOfArguments = numOfArgs;
		}
	}

	public virtual void appendParameter(float[] i)
	{
		ETASArray eTASArray = api.setArrayFromValues(i);
		if (eTASArray != null)
		{
			msg.catItem(eTASArray);
			numOfArgs++;
			NumberOfArguments = numOfArgs;
		}
	}

	public virtual void appendParameter(int[] i)
	{
		ETASArray eTASArray = api.setArrayFromValues(i);
		if (eTASArray != null)
		{
			msg.catItem(eTASArray);
			numOfArgs++;
			NumberOfArguments = numOfArgs;
		}
	}

	public virtual void appendParameter(long[] i)
	{
		ETASArray eTASArray = api.setArrayFromValues(i);
		if (eTASArray != null)
		{
			msg.catItem(eTASArray);
			numOfArgs++;
			NumberOfArguments = numOfArgs;
		}
	}

	public virtual void appendParameter(Identifiable[] i)
	{
		ETASArray eTASArray = api.setArrayFromValues(i);
		if (eTASArray != null)
		{
			msg.catItem(eTASArray);
			numOfArgs++;
			NumberOfArguments = numOfArgs;
		}
	}

	public virtual void appendParameter(object[] i)
	{
		ETASArray eTASArray = api.setArrayFromValues(i);
		if (eTASArray != null)
		{
			msg.catItem(eTASArray);
			numOfArgs++;
			NumberOfArguments = numOfArgs;
		}
	}

	public virtual void appendParameter(string[] i)
	{
		ETASArray eTASArray = api.setArrayFromValues(i);
		if (eTASArray != null)
		{
			msg.catItem(eTASArray);
			numOfArgs++;
			NumberOfArguments = numOfArgs;
		}
	}

	public virtual void appendParameter(short[] i)
	{
		ETASArray eTASArray = api.setArrayFromValues(i);
		if (eTASArray != null)
		{
			msg.catItem(eTASArray);
			numOfArgs++;
			NumberOfArguments = numOfArgs;
		}
	}

	public virtual void appendParameter(bool[] i)
	{
		ETASArray eTASArray = api.setArrayFromValues(i);
		if (eTASArray != null)
		{
			msg.catItem(eTASArray);
			numOfArgs++;
			NumberOfArguments = numOfArgs;
		}
	}

	public virtual void appendParameter(sbyte i)
	{
		msg.catItem(i);
		numOfArgs++;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameter(char i)
	{
		msg.catItem(i);
		numOfArgs++;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameter(double i)
	{
		msg.catItem(i);
		numOfArgs++;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameter(float i)
	{
		msg.catItem(i);
		numOfArgs++;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameter(int i)
	{
		msg.catItem(i);
		numOfArgs++;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameter(long i)
	{
		msg.catItem(i);
		numOfArgs++;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameter(ClassName i)
	{
		msg.catItem(i);
		numOfArgs++;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameter(ControlSequence i)
	{
		msg.catItem(i);
		numOfArgs++;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameter(ErrorHandle i)
	{
		msg.catItem(i);
		numOfArgs++;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameter(ItemHandle obj)
	{
		msg.catItem(obj);
		numOfArgs++;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameter(Identifiable i)
	{
		msg.catItem(i);
		numOfArgs++;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameter(object obj)
	{
		msg.catItem(obj);
		numOfArgs++;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameter(string i)
	{
		msg.catItem(i);
		numOfArgs++;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameter(short i)
	{
		msg.catItem(i);
		numOfArgs++;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameter(bool i)
	{
		msg.catItem(i);
		numOfArgs++;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameters(char[] i)
	{
		for (int j = 0; j < i.Length; j++)
		{
			msg.catItem(i[j]);
		}
		numOfArgs += i.Length;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameters(double[] i)
	{
		for (int j = 0; j < i.Length; j++)
		{
			msg.catItem(i[j]);
		}
		numOfArgs += i.Length;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameters(float[] i)
	{
		for (int j = 0; j < i.Length; j++)
		{
			msg.catItem(i[j]);
		}
		numOfArgs += i.Length;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameters(int[] i)
	{
		for (int j = 0; j < i.Length; j++)
		{
			msg.catItem(i[j]);
		}
		numOfArgs += i.Length;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameters(long[] i)
	{
		for (int j = 0; j < i.Length; j++)
		{
			msg.catItem(i[j]);
		}
		numOfArgs += i.Length;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameters(Identifiable[] i)
	{
		for (int j = 0; j < i.Length; j++)
		{
			msg.catItem(i[j]);
		}
		numOfArgs += i.Length;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameters(object[] i)
	{
		for (int j = 0; j < i.Length; j++)
		{
			msg.catItem(i[j]);
		}
		numOfArgs += i.Length;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameters(string[] i)
	{
		for (int j = 0; j < i.Length; j++)
		{
			msg.catItem(i[j]);
		}
		numOfArgs += i.Length;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameters(short[] i)
	{
		for (int j = 0; j < i.Length; j++)
		{
			msg.catItem(i[j]);
		}
		numOfArgs += i.Length;
		NumberOfArguments = numOfArgs;
	}

	public virtual void appendParameters(bool[] i)
	{
		for (int j = 0; j < i.Length; j++)
		{
			msg.catItem(i[j]);
		}
		numOfArgs += i.Length;
		NumberOfArguments = numOfArgs;
	}

	public virtual void getResultVoid()
	{
		ItemHandle resultItem = ResultItem;
		char type = resultItem.type;
		if (type == 'V')
		{
			return;
		}
		throw new WrongResultTypeException();
	}
}
