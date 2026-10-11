using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;

namespace Etas.Base.ComSupport.IncaComAPI.ServerProcess;

[ComVisible(false)]
public static class DotNetAsLocalServerRegistration
{
	private static Dictionary<Type, int> GlobalTypeToCookieDictionary;

	private static readonly RegistrationServices RegistrationServices;

	static DotNetAsLocalServerRegistration()
	{
		GlobalTypeToCookieDictionary = new Dictionary<Type, int>();
		RegistrationServices = new RegistrationServices();
		AppDomain.CurrentDomain.ProcessExit += AppDomainProcessExitEventHandler;
	}

	public static void RegisterServerImplForTunnel(Type InterfaceCOMServerFleshType, Type ITagIncaCOMAPIServerFleshImpl_Class)
	{
		CheckCOMInteropAttributationAndTyping(InterfaceCOMServerFleshType, ITagIncaCOMAPIServerFleshImpl_Class);
		RegisterTypeForTunnel(ITagIncaCOMAPIServerFleshImpl_Class);
	}

	public static void RegisterServerImplForTunnel(Type ITagIncaCOMAPIServerFleshImpl_Class)
	{
		if (ITagIncaCOMAPIServerFleshImpl_Class.GetCustomAttributes(typeof(ComDefaultInterfaceAttribute), inherit: false).Length != 1)
		{
			throw new ArgumentException("ClassCOMServerFleshType requires exactly one ComDefaultInterfaceAttribute");
		}
		Type value = ((ComDefaultInterfaceAttribute)ITagIncaCOMAPIServerFleshImpl_Class.GetCustomAttributes(typeof(ComDefaultInterfaceAttribute), inherit: false)[0]).Value;
		RegisterServerImplForTunnel(value, ITagIncaCOMAPIServerFleshImpl_Class);
	}

	private static void UnregisterAllTypesFromTunnel()
	{
		foreach (KeyValuePair<Type, int> item in GlobalTypeToCookieDictionary)
		{
			RegistrationServices.UnregisterTypeForComClients(item.Value);
		}
		GlobalTypeToCookieDictionary = new Dictionary<Type, int>();
	}

	private static void AppDomainProcessExitEventHandler(object sender, EventArgs e)
	{
	}

	private static void CheckCOMInteropAttributationAndTyping(Type InterfaceCOMServerFleshType, Type ClassCOMServerFleshType)
	{
		if (!InterfaceCOMServerFleshType.IsInterface)
		{
			throw new ArgumentException("InterfaceCOMServerFleshType wrong type - an interface type is required");
		}
		if (!ClassCOMServerFleshType.IsClass | ClassCOMServerFleshType.IsAbstract)
		{
			throw new ArgumentException("ClassCOMServerFleshType wrong type - a non-abstract class type is required");
		}
		if (!InterfaceCOMServerFleshType.IsAssignableFrom(ClassCOMServerFleshType))
		{
			throw new ArgumentException("ClassCOMServerFleshType not assignable to InterfaceCOMServerFleshType");
		}
		if (InterfaceCOMServerFleshType.GetCustomAttributes(typeof(ComVisibleAttribute), inherit: false).Length < 1)
		{
			throw new ArgumentException("InterfaceCOMServerFleshType requires a ComVisibleAttribute");
		}
		if (ClassCOMServerFleshType.GetCustomAttributes(typeof(ComVisibleAttribute), inherit: false).Length < 1)
		{
			throw new ArgumentException("ClassCOMServerFleshType requires a ComVisibleAttribute");
		}
		if (InterfaceCOMServerFleshType.GetCustomAttributes(typeof(GuidAttribute), inherit: false).Length != 1)
		{
			throw new ArgumentException("InterfaceCOMServerFleshType requires exactly one GuidAttribute");
		}
		if (ClassCOMServerFleshType.GetCustomAttributes(typeof(GuidAttribute), inherit: false).Length != 1)
		{
			throw new ArgumentException("ClassCOMServerFleshType requires exactly one GuidAttribute");
		}
		if (ClassCOMServerFleshType.GetCustomAttributes(typeof(ComDefaultInterfaceAttribute), inherit: false).Length != 1)
		{
			throw new ArgumentException("ClassCOMServerFleshType requires exactly one ComDefaultInterfaceAttribute");
		}
		object obj = ClassCOMServerFleshType.GetCustomAttributes(typeof(ComDefaultInterfaceAttribute), inherit: false)[0];
		if (((ComDefaultInterfaceAttribute)obj).Value != InterfaceCOMServerFleshType)
		{
			throw new ArgumentException("InterfaceCOMServerFleshType not declared as ComDefaultInterfaceAttribute at ClassCOMServerFleshType");
		}
	}

	private static void RegisterTypeForTunnel(Type AType)
	{
		if (!AType.IsInterface & !(AType.IsClass & !AType.IsAbstract))
		{
			throw new ArgumentException("Only Interfaces and Classes supported");
		}
		if (!GlobalTypeToCookieDictionary.ContainsKey(AType))
		{
			int value = RegistrationServices.RegisterTypeForComClients(AType, RegistrationClassContext.LocalServer, RegistrationConnectionType.MultiSeparate);
			GlobalTypeToCookieDictionary.Add(AType, value);
		}
	}
}
