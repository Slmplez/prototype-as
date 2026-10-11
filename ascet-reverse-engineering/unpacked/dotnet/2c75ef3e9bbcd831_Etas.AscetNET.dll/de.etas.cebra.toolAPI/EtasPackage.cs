using System.IO;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.util;

namespace de.etas.cebra.toolAPI;

[ClassInterface(ClassInterfaceType.None)]
public abstract class EtasPackage : SmalltalkToolAPI
{
	protected internal string toolName;

	protected internal virtual string VersionString => "";

	protected internal virtual bool Initialized => toolName != null;

	public EtasPackage()
	{
	}

	public EtasPackage(ClientSender q)
		: base(q)
	{
	}

	protected internal virtual string getClassName()
	{
		string text = GetType().ToString();
		int num = text.LastIndexOf(".");
		return text.Substring(num + 1, text.Length - (num + 1));
	}

	protected internal virtual string getCOMClassName(string LibOrItem)
	{
		return getCOMLibName(LibOrItem) + VersionString + "." + getClassName();
	}

	protected internal virtual string getCOMLibName(string LibOrItem)
	{
		FileInfo fileInfo = new FileInfo(LibOrItem);
		if (Directory.Exists(fileInfo.FullName))
		{
			return getToolName(LibOrItem);
		}
		return LibOrItem;
	}

	protected internal virtual string getToolName(string libNameOrPath)
	{
		if (toolName != null)
		{
			return toolName;
		}
		FileInfo fileInfo = new FileInfo(libNameOrPath);
		if (!Directory.Exists(fileInfo.FullName))
		{
			EtasGeneralDll.getCOMDLLPath(libNameOrPath + "." + getClassName());
		}
		return null;
	}
}
