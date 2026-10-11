using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Reflection;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Runtime.Serialization;

[DocumentationExclude]
public class CustomSerializationBinder : SerializationBinder
{
	private Hashtable bindingInfo = new Hashtable();

	private Hashtable typeNameVsAssembly = new Hashtable();

	private Hashtable typeNameVsTypeName = new Hashtable();

	public Hashtable AssemblyNamesVsAssembly => bindingInfo;

	public Hashtable TypeNamesVsAssembly => typeNameVsAssembly;

	public Hashtable TypeNameVsTypeName => typeNameVsTypeName;

	public CustomSerializationBinder()
	{
		Type typeFromHandle = typeof(Point);
		bindingInfo[typeFromHandle.Assembly.GetName().Name.ToLower()] = typeFromHandle.Assembly;
		typeFromHandle = typeof(Form);
		bindingInfo[typeFromHandle.Assembly.GetName().Name.ToLower()] = typeFromHandle.Assembly;
		typeFromHandle = typeof(Component);
		bindingInfo[typeFromHandle.Assembly.GetName().Name.ToLower()] = typeFromHandle.Assembly;
	}

	public override Type BindToType(string assemblyName, string typeName)
	{
		if (typeNameVsTypeName[typeName] != null)
		{
			typeName = typeNameVsTypeName[typeName] as string;
		}
		string text = typeName + assemblyName;
		text = text.ToLower();
		if (typeNameVsAssembly[text] != null)
		{
			Assembly assembly = typeNameVsAssembly[text] as Assembly;
			return assembly.GetType(typeName);
		}
		assemblyName = assemblyName.ToLower();
		if (bindingInfo[assemblyName] != null)
		{
			Assembly assembly2 = bindingInfo[assemblyName] as Assembly;
			return assembly2.GetType(typeName);
		}
		int num = assemblyName.IndexOf(",");
		if (num > 0)
		{
			string key = assemblyName.Substring(0, num);
			if (bindingInfo[key] != null)
			{
				Assembly assembly3 = bindingInfo[key] as Assembly;
				return assembly3.GetType(typeName);
			}
		}
		return null;
	}
}
