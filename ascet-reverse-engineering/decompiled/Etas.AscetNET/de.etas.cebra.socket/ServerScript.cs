using System;
using System.Reflection;
using System.Runtime.InteropServices;
using de.etas.types;
using de.etas.util;

namespace de.etas.cebra.socket;

[ComVisible(false)]
public sealed class ServerScript : SupportClass.ThreadClass
{
	private CebraMessage msg;

	private CebraServer server;

	private static int numberOfInstances;

	private static LogFile lf;

	public CebraServer CebraServer => server;

	internal ServerScript(CebraMessage m, CebraServer serv)
		: base("Server Handler")
	{
		msg = m;
		server = serv;
		numberOfInstances++;
		Start();
	}

	private CebraMessage cs_alive()
	{
		CebraMessage cebraMessage = msg.answer();
		cebraMessage.aliveMessage();
		return cebraMessage;
	}

	private CebraMessage cs_class(object obj)
	{
		CebraMessage cebraMessage = msg.answer();
		string fullName = obj.GetType().FullName;
		cebraMessage.catItem(fullName);
		return cebraMessage;
	}

	private CebraMessage cs_quit()
	{
		CebraMessage cebraMessage = msg.answer();
		cebraMessage.setQuitMessage();
		return cebraMessage;
	}

	private CebraMessage evaluateMethod()
	{
		object obj = null;
		Type type = null;
		MethodInfo methodInfo = null;
		object obj2 = null;
		msg.reset();
		ItemHandle itemHandle = msg.readNext();
		CebraMessage cebraMessage = msg.answer();
		ItemHandle itemHandle2 = msg.readNext();
		string text;
		try
		{
			text = itemHandle2.readString();
		}
		catch (WrongItemTypeException)
		{
			cebraMessage.catItem(new ErrorHandle(501));
			return cebraMessage;
		}
		switch (itemHandle.type)
		{
		case 'C':
			try
			{
				if ((type = Cebra.getClassByName(itemHandle.ClassName)) == null)
				{
					Cebra.println("Could not find class: " + itemHandle.ClassName.ToString());
					lf.logMessage("Could not find class: " + itemHandle.ClassName.ToString());
				}
			}
			catch (WrongItemTypeException ex2)
			{
				Cebra.println(ex2.ToString());
				lf.logMessage(ex2.ToString());
			}
			break;
		case 'O':
			obj = itemHandle.oHandle;
			type = obj.GetType();
			break;
		case 'X':
			obj = this;
			type = GetType();
			text = "cs_" + text;
			break;
		default:
			cebraMessage.catItem(new ErrorHandle(501));
			return cebraMessage;
		}
		ItemHandle itemHandle3 = msg.readNext();
		object[] array;
		Type[] array2;
		try
		{
			int num = itemHandle3.readInteger();
			array = new object[num];
			array2 = new Type[num];
			for (int i = 0; i < num; i++)
			{
				itemHandle3 = msg.readNext();
				if (itemHandle3 == null)
				{
					cebraMessage.catItem(new ErrorHandle(501));
					return cebraMessage;
				}
				array[i] = itemHandle3.readObject();
				array2[i] = itemHandle3.ClassOfItem;
				if (array2[i] == null)
				{
					cebraMessage.catItem(new ErrorHandle(501));
					return cebraMessage;
				}
			}
		}
		catch (WrongItemTypeException)
		{
			cebraMessage.catItem(new ErrorHandle(501));
			return cebraMessage;
		}
		try
		{
			methodInfo = type.GetMethod(text, (array2 == null) ? new Type[0] : array2);
			obj2 = methodInfo.Invoke(obj, array);
		}
		catch (MethodAccessException)
		{
			if (obj == this)
			{
				if ((methodInfo = getKnownMethod(text, array2)) == null)
				{
					cebraMessage.catItem(new ErrorHandle(102));
					return cebraMessage;
				}
			}
			else if ((methodInfo = getKnownMethod(type, text, array2)) == null)
			{
				cebraMessage.catItem(new ErrorHandle(888, "Error calling " + text + " in class " + type.FullName));
				return cebraMessage;
			}
			try
			{
				obj2 = methodInfo.Invoke(obj, array);
			}
			catch (UnauthorizedAccessException)
			{
				cebraMessage.catItem(new ErrorHandle(999, "IllegalAccessException"));
				return cebraMessage;
			}
			catch (TargetInvocationException)
			{
				cebraMessage.catItem(new ErrorHandle(999, "InvocationTargetException"));
				return cebraMessage;
			}
			catch (Exception ex7)
			{
				cebraMessage.catItem(new ErrorHandle(999, "Exception " + ex7));
				return cebraMessage;
			}
		}
		catch (UnauthorizedAccessException)
		{
			cebraMessage.catItem(new ErrorHandle(999, "IllegalAccessException"));
			return cebraMessage;
		}
		catch (TargetInvocationException)
		{
			cebraMessage.catItem(new ErrorHandle(999, "InvocationTargetException"));
			return cebraMessage;
		}
		catch (Exception ex10)
		{
			cebraMessage.catItem(new ErrorHandle(999, "Exception " + ex10));
			return cebraMessage;
		}
		if (obj == this)
		{
			return (CebraMessage)obj2;
		}
		if (obj2 == null)
		{
			cebraMessage.catItem();
		}
		else if (obj2 is char)
		{
			cebraMessage.catItem((char)obj2);
		}
		else if (obj2 is bool)
		{
			cebraMessage.catItem((bool)obj2);
		}
		else if (obj2 is sbyte)
		{
			cebraMessage.catItem((sbyte)obj2);
		}
		else if (obj2 is short)
		{
			cebraMessage.catItem((short)obj2);
		}
		else if (obj2 is int)
		{
			cebraMessage.catItem((int)obj2);
		}
		else if (obj2 is long)
		{
			cebraMessage.catItem((long)obj2);
		}
		else if (obj2 is float)
		{
			cebraMessage.catItem((float)obj2);
		}
		else if (obj2 is double)
		{
			cebraMessage.catItem((double)obj2);
		}
		else if (obj2 is Identifiable)
		{
			cebraMessage.catItem((Identifiable)obj2);
		}
		else if (obj2 is ErrorHandle)
		{
			cebraMessage.catItem((ErrorHandle)obj2);
		}
		else if (obj2 is ItemHandle)
		{
			cebraMessage.catItem((ItemHandle)obj2);
		}
		else if (obj2 is ClassName)
		{
			cebraMessage.catItem((ClassName)obj2);
		}
		else if (obj2 is string)
		{
			cebraMessage.catItem((string)obj2);
		}
		else if (obj2 is Type)
		{
			cebraMessage.catItem((Type)obj2);
		}
		else
		{
			cebraMessage.catItem(obj2);
		}
		return cebraMessage;
	}

	private MethodInfo getKnownMethod(Type clazz, string method, Type[] args)
	{
		MethodInfo[] methods = clazz.GetMethods();
		MethodInfo[] array = new MethodInfo[methods.Length];
		int num = args.Length;
		int num2 = 0;
		int num3 = 0;
		for (int i = 0; i < methods.Length; i++)
		{
			if (methods[i].Name.Equals(method))
			{
				array[num2] = methods[i];
				num2++;
			}
		}
		if (num2 == 0)
		{
			return null;
		}
		for (int j = 0; j < num2; j++)
		{
			if (array[j].GetParameters().Length != num)
			{
				array[j] = null;
				continue;
			}
			methods[num3] = array[j];
			num3++;
		}
		if (num3 == 0)
		{
			return null;
		}
		num2 = 0;
		int[][] array2 = new int[num3][];
		for (int k = 0; k < num3; k++)
		{
			array2[k] = new int[num];
		}
		for (int l = 0; l < num3; l++)
		{
			bool flag = true;
			int num4 = 0;
			ParameterInfo[] parameters = methods[l].GetParameters();
			while (flag && num4 < num)
			{
				array2[num2][num4] = Utilities.distClass(args[num4], parameters[num4].ParameterType);
				flag = array2[num2][num4] >= 0;
				num4++;
			}
			if (flag)
			{
				array[num2] = methods[l];
				num2++;
			}
		}
		switch (num2)
		{
		case 0:
			return null;
		case 1:
			return array[0];
		default:
		{
			int num5 = 0;
			methods[0] = array[0];
			for (int m = 1; m < num2; m++)
			{
				bool flag2 = false;
				bool flag3 = false;
				int num6 = 0;
				while (!flag3 && !flag2 && num6 < num)
				{
					flag2 = array2[num5][num6] < array2[m][num6];
					flag3 = array2[num5][num6] > array2[m][num6];
					num6++;
				}
				if (flag3)
				{
					methods[0] = array[m];
					num5 = m;
				}
				else if (!flag2 && Utilities.distClass(array[m].DeclaringType, methods[0].DeclaringType) > 0)
				{
					methods[0] = array[m];
					num5 = m;
				}
			}
			return methods[0];
		}
		}
	}

	private MethodInfo getKnownMethod(string method, Type[] args)
	{
		MethodInfo[] methods = GetType().GetMethods(BindingFlags.DeclaredOnly | BindingFlags.Instance | BindingFlags.Static | BindingFlags.Public | BindingFlags.NonPublic);
		MethodInfo[] array = new MethodInfo[methods.Length];
		int num = args.Length;
		int num2 = 0;
		int num3 = 0;
		for (int i = 0; i < methods.Length; i++)
		{
			if (methods[i].Name.Equals(method))
			{
				array[num2] = methods[i];
				num2++;
			}
		}
		if (num2 == 0)
		{
			return null;
		}
		for (int j = 0; j < num2; j++)
		{
			if (array[j].GetParameters().Length != num)
			{
				array[j] = null;
				continue;
			}
			methods[num3] = array[j];
			num3++;
		}
		if (num3 == 0)
		{
			return null;
		}
		num2 = 0;
		int[][] array2 = new int[num3][];
		for (int k = 0; k < num3; k++)
		{
			array2[k] = new int[num];
		}
		for (int l = 0; l < num3; l++)
		{
			bool flag = true;
			int num4 = 0;
			ParameterInfo[] parameters = methods[l].GetParameters();
			while (flag && num4 < num)
			{
				array2[num2][num4] = Utilities.distClass(args[num4], parameters[num4].ParameterType);
				flag = array2[num2][num4] >= 0;
				num4++;
			}
			if (flag)
			{
				array[num2] = methods[l];
				num2++;
			}
		}
		switch (num2)
		{
		case 0:
			return null;
		case 1:
			return array[0];
		default:
		{
			int num5 = 0;
			methods[0] = array[0];
			for (int m = 1; m < num2; m++)
			{
				bool flag2 = false;
				bool flag3 = false;
				int num6 = 0;
				while (!flag3 && !flag2 && num6 < num)
				{
					flag2 = array2[num5][num6] < array2[m][num6];
					flag3 = array2[num5][num6] > array2[m][num6];
					num6++;
				}
				if (flag3)
				{
					methods[0] = array[m];
					num5 = m;
				}
				else if (!flag2 && Utilities.distClass(array[m].DeclaringType, methods[0].DeclaringType) > 0)
				{
					methods[0] = array[m];
					num5 = m;
				}
			}
			return methods[0];
		}
		}
	}

	public static bool hasInstances()
	{
		return numberOfInstances > 0;
	}

	public override void Run()
	{
		CebraMessage cebraMessage = evaluateMethod();
		if (cebraMessage.HandshakeMessage)
		{
			server.send(cebraMessage);
		}
		numberOfInstances--;
	}

	static ServerScript()
	{
		numberOfInstances = 0;
		lf = new LogFile(Cebra.cebraLogPath + Cebra.FS + "ServerScript.log");
	}
}
