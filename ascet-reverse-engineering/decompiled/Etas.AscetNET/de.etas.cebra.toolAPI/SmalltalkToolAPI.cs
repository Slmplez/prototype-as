using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI;

[ClassInterface(ClassInterfaceType.None)]
public abstract class SmalltalkToolAPI : ToolAPI
{
	protected internal SmalltalkToolAPI()
	{
	}

	protected internal SmalltalkToolAPI(ClientSender q)
		: base(q)
	{
	}

	public virtual bool equals(SmalltalkToolAPI item)
	{
		if (Equals(item))
		{
			return true;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("equals:");
			instanceMethodCall.appendParameter(item);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			handleException(ex);
		}
		return false;
	}

	public virtual void finalize()
	{
		try
		{
			removeObject(this);
		}
		catch
		{
		}
	}

	~SmalltalkToolAPI()
	{
		finalize();
	}

	public override bool[] getBooleanFromCollection(Collection coll)
	{
		if (coll == null)
		{
			return null;
		}
		try
		{
			ControlMessageCall controlMessageCall = createControlMessageCall("serialize:");
			controlMessageCall.appendParameter(coll);
			call(controlMessageCall);
			return controlMessageCall.ResultBooleanArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override sbyte[] getBytesFromCollection(Collection coll)
	{
		if (coll == null)
		{
			return null;
		}
		try
		{
			ControlMessageCall controlMessageCall = createControlMessageCall("serialize:");
			controlMessageCall.appendParameter(coll);
			call(controlMessageCall);
			return controlMessageCall.ResultByteArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override char[] getCharacterFromCollection(Collection coll)
	{
		if (coll == null)
		{
			return null;
		}
		try
		{
			ControlMessageCall controlMessageCall = createControlMessageCall("serialize:");
			controlMessageCall.appendParameter(coll);
			call(controlMessageCall);
			return controlMessageCall.ResultCharacterArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public string getClassName(Identifiable handle)
	{
		if (nullHandle())
		{
			return null;
		}
		if (handle.nullHandle())
		{
			return "null";
		}
		try
		{
			ControlMessageCall controlMessageCall = createControlMessageCall("className:");
			controlMessageCall.appendParameter(handle);
			call(controlMessageCall);
			return controlMessageCall.ResultString;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override double[] getDoubleFromCollection(Collection coll)
	{
		if (coll == null)
		{
			return null;
		}
		try
		{
			ControlMessageCall controlMessageCall = createControlMessageCall("serialize:");
			controlMessageCall.appendParameter(coll);
			call(controlMessageCall);
			return controlMessageCall.ResultDoubleArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override float[] getFloatFromCollection(Collection coll)
	{
		if (coll == null)
		{
			return null;
		}
		try
		{
			ControlMessageCall controlMessageCall = createControlMessageCall("serialize:");
			controlMessageCall.appendParameter(coll);
			call(controlMessageCall);
			return controlMessageCall.ResultFloatArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override int[] getIntegerFromCollection(Collection coll)
	{
		if (coll == null)
		{
			return null;
		}
		try
		{
			ControlMessageCall controlMessageCall = createControlMessageCall("serialize:");
			controlMessageCall.appendParameter(coll);
			call(controlMessageCall);
			return controlMessageCall.ResultIntegerArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override object[] getLocalObjectsFromCollection(Collection coll)
	{
		if (coll == null)
		{
			return null;
		}
		try
		{
			ControlMessageCall controlMessageCall = createControlMessageCall("serialize:");
			controlMessageCall.appendParameter(coll);
			call(controlMessageCall);
			return controlMessageCall.ResultLocalObjectArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override long[] getLongFromCollection(Collection coll)
	{
		if (coll == null)
		{
			return null;
		}
		try
		{
			ControlMessageCall controlMessageCall = createControlMessageCall("serialize:");
			controlMessageCall.appendParameter(coll);
			call(controlMessageCall);
			return controlMessageCall.ResultLongArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override object[] getObjectsFromCollection(Collection coll)
	{
		if (coll == null)
		{
			return null;
		}
		try
		{
			ControlMessageCall controlMessageCall = createControlMessageCall("serialize:");
			controlMessageCall.appendParameter(coll);
			call(controlMessageCall);
			return controlMessageCall.ResultObjectArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	protected internal virtual Identifiable getPoint(int x, int y)
	{
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("Point", "x:y:");
			classMethodCall.appendParameter(x);
			classMethodCall.appendParameter(y);
			call(classMethodCall);
			return classMethodCall.ResultRemoteObject;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".getPoint(): failed -> APIError: " + ex);
		}
		return null;
	}

	public Hashtable getRemoteHashtable(Identifiable obj)
	{
		Hashtable hashtable = Hashtable.Synchronized(new Hashtable());
		try
		{
			ControlMessageCall controlMessageCall = createControlMessageCall("serialize:");
			controlMessageCall.appendParameter(obj);
			call(controlMessageCall);
			object[] resultObjectArray = controlMessageCall.ResultObjectArray;
			for (int i = 0; i < resultObjectArray.Length; i += 2)
			{
				hashtable[resultObjectArray[i]] = resultObjectArray[i + 1];
			}
			return hashtable;
		}
		catch (Exception)
		{
			return null;
		}
	}

	protected internal override Identifiable[] getRemoteObjectsFromCollection(Collection coll)
	{
		if (coll == null)
		{
			return null;
		}
		try
		{
			ControlMessageCall controlMessageCall = createControlMessageCall("serialize:");
			controlMessageCall.appendParameter(coll);
			call(controlMessageCall);
			return controlMessageCall.ResultRemoteObjectArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override short[] getShortFromCollection(Collection coll)
	{
		if (coll == null)
		{
			return null;
		}
		try
		{
			ControlMessageCall controlMessageCall = createControlMessageCall("serialize:");
			controlMessageCall.appendParameter(coll);
			call(controlMessageCall);
			return controlMessageCall.ResultShortArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override string[] getStringsFromCollection(Collection coll)
	{
		if (coll == null)
		{
			return null;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = new InstanceMethodCall(coll, "size", this);
			call(instanceMethodCall);
			int resultInteger = instanceMethodCall.ResultInteger;
			if (resultInteger > 200)
			{
				string[] array = new string[resultInteger];
				for (int i = 0; i < resultInteger; i++)
				{
					instanceMethodCall = new InstanceMethodCall(coll, "at:", this);
					instanceMethodCall.appendParameter(i + 1);
					call(instanceMethodCall);
					array[i] = instanceMethodCall.ResultString;
				}
				return array;
			}
			ControlMessageCall controlMessageCall = createControlMessageCall("serialize:");
			controlMessageCall.appendParameter(coll);
			call(controlMessageCall);
			return controlMessageCall.ResultStringArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	protected internal virtual bool isXXX(Identifiable id, string s)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = new InstanceMethodCall(id, "is" + s, this);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (ErrorResultException ex)
		{
			logEntry(GetType().FullName + ".is" + s + "() failed due to an API error. " + ex);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".is" + s + "() failed.");
		}
		return false;
	}

	protected internal virtual bool isXXX(string s)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("is" + s);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			return false;
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".is" + s + "() failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".is" + s + "() failed.");
		}
		return false;
	}

	public virtual bool perform(string s)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall(s);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultItem;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".perform(" + s + ") failed." + ex);
		}
		return false;
	}

	public virtual bool performIsMethod(Identifiable id, string s)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = new InstanceMethodCall(id, "is" + s, this);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (ErrorResultException ex)
		{
			logEntry(GetType().FullName + ".is" + s + "() failed due to an API error. " + ex);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".is" + s + "() failed.");
		}
		return false;
	}

	public virtual Identifiable performObjectRequest(string s)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall(s);
			call(instanceMethodCall);
			return instanceMethodCall.ResultRemoteObject;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".performObjectRequest(" + s + ") failed." + ex);
		}
		return null;
	}

	protected internal virtual bool registerObjectInSmalltalk(object obj)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("registerObject:");
			instanceMethodCall.appendParameter(obj);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".registerObjectInSmalltalk(): failed -> APIError: " + ex);
		}
		return false;
	}

	public override ETASArray setArrayFromValues(sbyte[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("Array", "new:");
			classMethodCall.appendParameter(v.Length);
			call(classMethodCall);
			ETASArray eTASArray = new ETASArray(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(eTASArray);
			controlMessageCall.appendParameter(v);
			call(controlMessageCall);
			return eTASArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override ETASArray setArrayFromValues(char[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("Array", "new:");
			classMethodCall.appendParameter(v.Length);
			call(classMethodCall);
			ETASArray eTASArray = new ETASArray(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(eTASArray);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return eTASArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override ETASArray setArrayFromValues(double[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("Array", "new:");
			classMethodCall.appendParameter(v.Length);
			call(classMethodCall);
			ETASArray eTASArray = new ETASArray(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(eTASArray);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return eTASArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override ETASArray setArrayFromValues(float[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("Array", "new:");
			classMethodCall.appendParameter(v.Length);
			call(classMethodCall);
			ETASArray eTASArray = new ETASArray(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(eTASArray);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return eTASArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override ETASArray setArrayFromValues(int[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("Array", "new:");
			classMethodCall.appendParameter(v.Length);
			call(classMethodCall);
			ETASArray eTASArray = new ETASArray(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(eTASArray);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return eTASArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override ETASArray setArrayFromValues(long[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("Array", "new:");
			classMethodCall.appendParameter(v.Length);
			call(classMethodCall);
			ETASArray eTASArray = new ETASArray(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(eTASArray);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return eTASArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override ETASArray setArrayFromValues(Identifiable[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("Array", "new:");
			classMethodCall.appendParameter(v.Length);
			call(classMethodCall);
			ETASArray eTASArray = new ETASArray(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(eTASArray);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return eTASArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override ETASArray setArrayFromValues(object[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("Array", "new:");
			classMethodCall.appendParameter(v.Length);
			call(classMethodCall);
			ETASArray eTASArray = new ETASArray(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(eTASArray);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return eTASArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override ETASArray setArrayFromValues(string[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("Array", "new:");
			classMethodCall.appendParameter(v.Length);
			call(classMethodCall);
			ETASArray eTASArray = new ETASArray(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(eTASArray);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return eTASArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override ETASArray setArrayFromValues(short[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("Array", "new:");
			classMethodCall.appendParameter(v.Length);
			call(classMethodCall);
			ETASArray eTASArray = new ETASArray(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(eTASArray);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return eTASArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override ETASArray setArrayFromValues(bool[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("Array", "new:");
			classMethodCall.appendParameter(v.Length);
			call(classMethodCall);
			ETASArray eTASArray = new ETASArray(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(eTASArray);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return eTASArray;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override OrderedCollection setOrderedCollectionFromValues(sbyte[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("OrderedCollection", "new");
			call(classMethodCall);
			OrderedCollection orderedCollection = new OrderedCollection(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(orderedCollection);
			controlMessageCall.appendParameter(v);
			call(controlMessageCall);
			return orderedCollection;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override OrderedCollection setOrderedCollectionFromValues(char[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("OrderedCollection", "new");
			call(classMethodCall);
			OrderedCollection orderedCollection = new OrderedCollection(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(orderedCollection);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return orderedCollection;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override OrderedCollection setOrderedCollectionFromValues(double[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("OrderedCollection", "new");
			call(classMethodCall);
			OrderedCollection orderedCollection = new OrderedCollection(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(orderedCollection);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return orderedCollection;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override OrderedCollection setOrderedCollectionFromValues(float[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("OrderedCollection", "new");
			call(classMethodCall);
			OrderedCollection orderedCollection = new OrderedCollection(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(orderedCollection);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return orderedCollection;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override OrderedCollection setOrderedCollectionFromValues(int[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("OrderedCollection", "new");
			call(classMethodCall);
			OrderedCollection orderedCollection = new OrderedCollection(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(orderedCollection);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return orderedCollection;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override OrderedCollection setOrderedCollectionFromValues(long[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("OrderedCollection", "new");
			call(classMethodCall);
			OrderedCollection orderedCollection = new OrderedCollection(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(orderedCollection);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return orderedCollection;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override OrderedCollection setOrderedCollectionFromValues(Identifiable[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("OrderedCollection", "new");
			call(classMethodCall);
			OrderedCollection orderedCollection = new OrderedCollection(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(orderedCollection);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return orderedCollection;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override OrderedCollection setOrderedCollectionFromValues(object[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("OrderedCollection", "new");
			call(classMethodCall);
			OrderedCollection orderedCollection = new OrderedCollection(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(orderedCollection);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return orderedCollection;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override OrderedCollection setOrderedCollectionFromValues(string[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("OrderedCollection", "new");
			call(classMethodCall);
			OrderedCollection orderedCollection = new OrderedCollection(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(orderedCollection);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return orderedCollection;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override OrderedCollection setOrderedCollectionFromValues(short[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("OrderedCollection", "new");
			call(classMethodCall);
			OrderedCollection orderedCollection = new OrderedCollection(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(orderedCollection);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return orderedCollection;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public override OrderedCollection setOrderedCollectionFromValues(bool[] v)
	{
		if (v == null)
		{
			return null;
		}
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("OrderedCollection", "new");
			call(classMethodCall);
			OrderedCollection orderedCollection = new OrderedCollection(this, classMethodCall.ResultRemoteObject);
			ControlMessageCall controlMessageCall = createControlMessageCall("deserialize:", b: true);
			controlMessageCall.appendParameter(orderedCollection);
			controlMessageCall.appendParameters(v);
			call(controlMessageCall);
			return orderedCollection;
		}
		catch (Exception)
		{
			return null;
		}
	}
}
