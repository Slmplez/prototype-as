using Microsoft.Win32;
using Syncfusion.Documentation;

namespace Syncfusion.Win32;

[DocumentationExclude]
public struct RegistryEntry
{
	private string registrySubKey;

	private RegistryKey registryKey;

	public RegistryKey SourceRegistryKey
	{
		get
		{
			return registryKey;
		}
		set
		{
			registryKey = value;
		}
	}

	public string SourceRegistrySubKey
	{
		get
		{
			return registrySubKey;
		}
		set
		{
			registrySubKey = value;
		}
	}

	public RegistryEntry(RegistryKey key, string subkey)
	{
		registryKey = key;
		registrySubKey = subkey;
	}
}
