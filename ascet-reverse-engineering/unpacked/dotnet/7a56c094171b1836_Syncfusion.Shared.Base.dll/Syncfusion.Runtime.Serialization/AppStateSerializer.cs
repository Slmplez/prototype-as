using System;
using System.Collections;
using System.ComponentModel;
using System.IO;
using System.IO.IsolatedStorage;
using System.Reflection;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters;
using System.Runtime.Serialization.Formatters.Binary;
using System.Runtime.Serialization.Formatters.Soap;
using System.Security.Policy;
using System.Text;
using System.Windows.Forms;
using Microsoft.Win32;
using Syncfusion.Documentation;

namespace Syncfusion.Runtime.Serialization;

public sealed class AppStateSerializer
{
	private const string strDefault = "SyncfusionToolsStateInfo";

	private const string strApplicationVerisonName = "ApplicationVersion";

	private const IsolatedStorageScope issDefault = IsolatedStorageScope.User | IsolatedStorageScope.Domain | IsolatedStorageScope.Assembly;

	private static AppStateSerializer objInstance;

	private bool enabled = true;

	private SerializeMode serMode;

	private object serPath = "SyncfusionToolsStateInfo";

	private IsolatedStorageScope isoScope = IsolatedStorageScope.User | IsolatedStorageScope.Domain | IsolatedStorageScope.Assembly;

	private Hashtable htSerialize = new Hashtable();

	private WeakReference weakRef;

	private static CustomSerializationBinder customBinder;

	public static bool AppendFileExtension;

	private static bool shouldThrowException;

	public static bool ShouldThrowException
	{
		get
		{
			return shouldThrowException;
		}
		set
		{
			shouldThrowException = value;
		}
	}

	[DocumentationExclude]
	public static CustomSerializationBinder CustomBinder => customBinder;

	public SerializeMode SerializationMode => serMode;

	public object SerializationPath => serPath;

	public IsolatedStorageScope IsoStorageScope => isoScope;

	public bool Enabled
	{
		get
		{
			return enabled;
		}
		set
		{
			if (enabled != value)
			{
				enabled = value;
			}
		}
	}

	public string DeserializedInfoApplicationVersion
	{
		get
		{
			object obj = DeserializeObject("ApplicationVersion");
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
	}

	public event EventHandler BeforePersist;

	static AppStateSerializer()
	{
		objInstance = null;
		customBinder = new CustomSerializationBinder();
		AppendFileExtension = true;
		shouldThrowException = false;
	}

	public AppStateSerializer(SerializeMode mode, object persistpath)
		: this(mode, persistpath, IsolatedStorageScope.User | IsolatedStorageScope.Domain | IsolatedStorageScope.Assembly)
	{
	}

	public AppStateSerializer(SerializeMode mode, object persistpath, IsolatedStorageScope scope)
	{
		serMode = mode;
		switch (mode)
		{
		case SerializeMode.WindowsRegistry:
			if (!(persistpath is RegistryKey registryKey))
			{
				throw new ApplicationException("Invalid RegistryKey specified for the PersistencePath.");
			}
			serPath = registryKey.Name;
			break;
		case SerializeMode.XMLFmtStream:
		case SerializeMode.BinaryFmtStream:
			if (!(persistpath is Stream { CanRead: not false, CanSeek: not false }))
			{
				throw new ApplicationException("Syncfusion AppStateSerializer - Invalid Stream specified for the PersistencePath. The PersistencePath should be a valid Stream instance with Read and Seek capability.");
			}
			serPath = persistpath;
			break;
		default:
			serPath = persistpath;
			break;
		}
		isoScope = scope;
		Init();
	}

	private void Init()
	{
		LoadPersistedData();
		if (weakRef == null || !weakRef.IsAlive)
		{
			return;
		}
		Hashtable hashtable = weakRef.Target as Hashtable;
		foreach (string key in hashtable.Keys)
		{
			htSerialize.Add(key, hashtable[key]);
		}
	}

	[Obsolete("This method will be removed in a future version. Please use the GetSingleton method instead.", false)]
	[Browsable(false)]
	public static AppStateSerializer GetInstance()
	{
		return GetSingleton();
	}

	public static AppStateSerializer GetSingleton()
	{
		if (objInstance == null)
		{
			InitializeSingleton(SerializeMode.IsolatedStorage, "SyncfusionToolsStateInfo", IsolatedStorageScope.User | IsolatedStorageScope.Domain | IsolatedStorageScope.Assembly);
		}
		return objInstance;
	}

	public static void SetBindingInfo(string assemblyName, Assembly assembly)
	{
		assemblyName = assemblyName.ToLower();
		if (assembly != null)
		{
			customBinder.AssemblyNamesVsAssembly[assemblyName] = assembly;
		}
		else
		{
			customBinder.AssemblyNamesVsAssembly.Remove(assemblyName);
		}
	}

	public static void SetTypeBindingInfo(string assemblyName, string typeName, Assembly assembly)
	{
		string text = typeName + assemblyName;
		text = text.ToLower();
		if (assembly != null)
		{
			customBinder.TypeNamesVsAssembly[text] = assembly;
		}
		else
		{
			customBinder.TypeNamesVsAssembly.Remove(text);
		}
	}

	public static void SetTypeToTypeBindingInfo(string oldtypename, string newtypename)
	{
		if (newtypename != string.Empty)
		{
			customBinder.TypeNameVsTypeName[oldtypename] = newtypename;
		}
		else
		{
			customBinder.TypeNameVsTypeName.Remove(oldtypename);
		}
	}

	[Browsable(false)]
	[Obsolete("This method will be removed in a future version. Please use the InitializeSingleton method instead.", false)]
	public static void InitializeSerializer(SerializeMode mode, object persistpath, IsolatedStorageScope scope)
	{
		InitializeSingleton(mode, persistpath, scope);
	}

	public static void InitializeSingleton(SerializeMode mode, object persistpath, IsolatedStorageScope scope)
	{
		if (objInstance == null)
		{
			objInstance = new AppStateSerializer(mode, persistpath, scope);
			Application.ApplicationExit += objInstance.OnApplicationExit;
		}
	}

	public static void InitializeSingleton(SerializeMode mode, object persistpath)
	{
		InitializeSingleton(mode, persistpath, IsolatedStorageScope.User | IsolatedStorageScope.Domain | IsolatedStorageScope.Assembly);
	}

	public void FlushSerializer()
	{
		weakRef = null;
		DeletePersistentStore(serMode, serPath, isoScope, htSerialize.Keys);
		htSerialize.Clear();
	}

	private static void DeletePersistentStore(SerializeMode mode, object serpath, IsolatedStorageScope scope, ICollection values)
	{
		switch (mode)
		{
		case SerializeMode.IsolatedStorage:
		{
			IsolatedStorageFile store = IsolatedStorageFile.GetStore(scope, null, null);
			string[] fileNames = store.GetFileNames(ConcatFileName(serpath as string, ".bin"));
			string[] array = fileNames;
			foreach (string file in array)
			{
				store.DeleteFile(file);
			}
			break;
		}
		case SerializeMode.BinaryFile:
		{
			string path = ConcatFileName(serpath as string, ".bin");
			if (File.Exists(path))
			{
				File.Delete(path);
			}
			break;
		}
		case SerializeMode.XMLFile:
		{
			string path2 = ConcatFileName(serpath as string, ".xml");
			if (File.Exists(path2))
			{
				File.Delete(path2);
			}
			break;
		}
		case SerializeMode.WindowsRegistry:
		{
			RegistryKey registryKey = null;
			registryKey = ((!(serpath.GetType() == typeof(RegistryKey))) ? GetRegistryKey(serpath as string) : (serpath as RegistryKey));
			if (registryKey == null)
			{
				throw new ApplicationException("Invalid RegistryKey specified for the PersistencePath");
			}
			foreach (string value in values)
			{
				registryKey.DeleteValue(value, throwOnMissingValue: false);
			}
			registryKey.Close();
			break;
		}
		}
	}

	private static IFormatter GetSoapFormatter()
	{
		SoapFormatter soapFormatter = new SoapFormatter();
		soapFormatter.AssemblyFormat = FormatterAssemblyStyle.Simple;
		soapFormatter.Binder = customBinder;
		return soapFormatter;
	}

	private static IFormatter GetFormatter(SerializeMode mode)
	{
		if (mode == SerializeMode.XMLFile || mode == SerializeMode.XMLFmtStream)
		{
			return GetSoapFormatter();
		}
		BinaryFormatter binaryFormatter = new BinaryFormatter();
		binaryFormatter.AssemblyFormat = FormatterAssemblyStyle.Simple;
		binaryFormatter.Binder = customBinder;
		return binaryFormatter;
	}

	private static Stream GetStream(SerializeMode mode, object path, IsolatedStorageScope scope, bool bwrite)
	{
		try
		{
			if (bwrite)
			{
				switch (mode)
				{
				case SerializeMode.IsolatedStorage:
				{
					IsolatedStorageFile store = IsolatedStorageFile.GetStore(scope, null, null);
					string text = ConcatFileName(path as string, ".bin");
					string[] fileNames = store.GetFileNames(text);
					if (fileNames.Length > 0)
					{
						store.DeleteFile(text);
					}
					return new IsolatedStorageFileStream(text, FileMode.CreateNew, store);
				}
				case SerializeMode.BinaryFile:
					return File.Open(ConcatFileName(path as string, ".bin"), FileMode.Create);
				case SerializeMode.XMLFile:
					return File.Open(ConcatFileName(path as string, ".xml"), FileMode.Create);
				case SerializeMode.WindowsRegistry:
					return new MemoryStream();
				}
			}
			else
			{
				switch (mode)
				{
				case SerializeMode.IsolatedStorage:
				{
					Evidence evidence = AppDomain.CurrentDomain.Evidence;
					if (evidence.Count > 0)
					{
						IsolatedStorageFile store2 = IsolatedStorageFile.GetStore(scope, null, null);
						string[] fileNames2 = store2.GetFileNames(ConcatFileName(path as string, ".bin"));
						string[] array = fileNames2;
						int num = 0;
						if (num < array.Length)
						{
							string path3 = array[num];
							return new IsolatedStorageFileStream(path3, FileMode.Open, FileAccess.Read, FileShare.Read, store2);
						}
					}
					break;
				}
				case SerializeMode.BinaryFile:
				{
					string path4 = ConcatFileName(path as string, ".bin");
					if (File.Exists(path4))
					{
						return File.Open(path4, FileMode.Open, FileAccess.Read, FileShare.Read);
					}
					break;
				}
				case SerializeMode.XMLFile:
				{
					string path2 = ConcatFileName(path as string, ".xml");
					if (File.Exists(path2))
					{
						return File.Open(path2, FileMode.Open, FileAccess.Read, FileShare.Read);
					}
					break;
				}
				case SerializeMode.WindowsRegistry:
					return new MemoryStream();
				}
			}
		}
		catch (Exception)
		{
			if (shouldThrowException)
			{
				throw new Exception();
			}
		}
		return null;
	}

	private static string ConcatFileName(string fileName, string ext)
	{
		if (AppendFileExtension)
		{
			fileName += ext;
		}
		return fileName;
	}

	private static RegistryKey GetRegistryKey(string strregkey)
	{
		string value = strregkey.Substring(0, strregkey.IndexOf("\\", 0));
		RegistryHive[] array = Enum.GetValues(typeof(RegistryHive)) as RegistryHive[];
		RegistryHive[] array2 = array;
		foreach (RegistryHive hKey in array2)
		{
			RegistryKey registryKey = RegistryKey.OpenRemoteBaseKey(hKey, string.Empty);
			if (registryKey.Name.Equals(value))
			{
				return registryKey.CreateSubKey(strregkey.Substring(strregkey.IndexOf("\\") + 1));
			}
		}
		return null;
	}

	public void RemoveInfoForObject(string strName)
	{
		if (strName == null)
		{
			throw new ArgumentNullException("strName");
		}
		if (htSerialize[strName] != null)
		{
			htSerialize.Remove(strName);
		}
	}

	public void SerializeObject(string strname, object obj)
	{
		if (Enabled)
		{
			SerializeObject(strname, obj, infinalize: false);
		}
	}

	public void SerializeObject(string strname, object obj, bool infinalize)
	{
		if (!Enabled)
		{
			return;
		}
		if (htSerialize.Contains(strname) || obj == null)
		{
			htSerialize.Remove(strname);
			if (obj == null)
			{
				if (serMode == SerializeMode.WindowsRegistry)
				{
					RegistryKey registryKey = GetRegistryKey(serPath as string);
					if (registryKey == null)
					{
						throw new ApplicationException("Invalid RegistryKey specified for the PersistencePath.");
					}
					registryKey.DeleteValue(strname, throwOnMissingValue: false);
					registryKey.Close();
				}
				return;
			}
		}
		if (infinalize)
		{
			htSerialize.Add(strname, obj);
			return;
		}
		IFormatter formatter = GetFormatter(serMode);
		MemoryStream memoryStream = new MemoryStream();
		try
		{
			formatter.Serialize(memoryStream, obj);
		}
		catch (Exception)
		{
			return;
		}
		if (serMode == SerializeMode.XMLFile || serMode == SerializeMode.XMLFmtStream)
		{
			UTF8Encoding uTF8Encoding = new UTF8Encoding();
			string value = uTF8Encoding.GetString(memoryStream.ToArray());
			htSerialize.Add(strname, value);
		}
		else
		{
			htSerialize.Add(strname, memoryStream);
		}
	}

	public object DeserializeObject(string strname)
	{
		if (!Enabled)
		{
			return null;
		}
		if (htSerialize.Contains(strname))
		{
			return DeserializeFromHashtable(htSerialize, strname);
		}
		if (weakRef == null || !weakRef.IsAlive)
		{
			LoadPersistedData();
		}
		if (weakRef != null && weakRef.IsAlive)
		{
			Hashtable hashtable = weakRef.Target as Hashtable;
			if (hashtable.Contains(strname))
			{
				return DeserializeFromHashtable(hashtable, strname);
			}
		}
		return null;
	}

	private void LoadPersistedData()
	{
		if (!Enabled)
		{
			return;
		}
		IFormatter formatter = GetFormatter(serMode);
		Stream stream = null;
		stream = ((serMode != SerializeMode.BinaryFmtStream && serMode != SerializeMode.XMLFmtStream) ? GetStream(serMode, serPath, isoScope, bwrite: false) : (serPath as Stream));
		if (stream == null)
		{
			return;
		}
		Hashtable hashtable = null;
		if (serMode == SerializeMode.WindowsRegistry)
		{
			hashtable = new Hashtable();
			RegistryKey registryKey = GetRegistryKey(serPath as string);
			if (registryKey == null)
			{
				throw new ApplicationException("Invalid RegistryKey specified for the PersistencePath.");
			}
			string[] valueNames = registryKey.GetValueNames();
			string[] array = valueNames;
			foreach (string text in array)
			{
				byte[] array2 = registryKey.GetValue(text) as byte[];
				stream.Seek(0L, SeekOrigin.Begin);
				stream.Write(array2, 0, array2.Length);
				stream.Seek(0L, SeekOrigin.Begin);
				try
				{
					hashtable.Add(text, formatter.Deserialize(stream));
				}
				catch (Exception)
				{
				}
			}
			registryKey.Close();
		}
		else
		{
			try
			{
				if (stream.Length > 0 && stream.Position < stream.Length)
				{
					hashtable = formatter.Deserialize(stream) as Hashtable;
				}
			}
			catch (Exception)
			{
				if (serMode != SerializeMode.BinaryFmtStream && serMode != SerializeMode.XMLFmtStream)
				{
					stream.Close();
				}
				return;
			}
		}
		if (serMode != SerializeMode.BinaryFmtStream && serMode != SerializeMode.XMLFmtStream)
		{
			stream.Close();
		}
		weakRef = new WeakReference(hashtable);
	}

	private object DeserializeFromHashtable(Hashtable ht, string strname)
	{
		IFormatter formatter = GetFormatter(serMode);
		if (ht.Contains(strname))
		{
			object obj = ht[strname];
			if (!(obj.GetType() == typeof(MemoryStream)))
			{
				if (serMode == SerializeMode.XMLFile || serMode == SerializeMode.XMLFmtStream)
				{
					UTF8Encoding uTF8Encoding = new UTF8Encoding();
					byte[] bytes = uTF8Encoding.GetBytes(ht[strname] as string);
					MemoryStream memoryStream = new MemoryStream(bytes, 0, bytes.Length, writable: false);
					object result = null;
					try
					{
						result = formatter.Deserialize(memoryStream);
					}
					catch (Exception)
					{
					}
					finally
					{
						memoryStream.Close();
					}
					return result;
				}
				return ht[strname];
			}
			MemoryStream memoryStream2 = obj as MemoryStream;
			memoryStream2.Seek(0L, SeekOrigin.Begin);
			try
			{
				return formatter.Deserialize(obj as MemoryStream);
			}
			catch (Exception)
			{
			}
		}
		return null;
	}

	[Obsolete("This method will be removed in a future version. Please check the class reference for an alternative.", false)]
	[Browsable(false)]
	public static void SerializeIsolatedObject(SerializeMode mode, object persistpath, string strname, object obj)
	{
		SerializeIsolatedObject(mode, persistpath, IsolatedStorageScope.User | IsolatedStorageScope.Domain | IsolatedStorageScope.Assembly, strname, obj);
	}

	[Obsolete("This method will be removed in a future version. Please check the class reference for an alternative.", false)]
	[Browsable(false)]
	public static void SerializeIsolatedObject(object persistpath, IsolatedStorageScope scope, string strname, object obj)
	{
		SerializeIsolatedObject(SerializeMode.IsolatedStorage, persistpath, scope, strname, obj);
	}

	private static void SerializeIsolatedObject(SerializeMode mode, object persistpath, IsolatedStorageScope scope, string strname, object obj)
	{
		if (obj != null)
		{
			IFormatter formatter = GetFormatter(mode);
			Stream stream = null;
			if (mode == SerializeMode.BinaryFmtStream || mode == SerializeMode.XMLFmtStream)
			{
				stream = persistpath as Stream;
				if (stream == null || !stream.CanRead || !stream.CanWrite || !stream.CanSeek)
				{
					throw new ApplicationException("Syncfusion AppStateSerializer - Invalid Stream specified for the PersistencePath. The PersistencePath should be a valid Stream instance with Read, Write, and Seek capability.");
				}
			}
			else
			{
				stream = GetStream(mode, persistpath, scope, bwrite: true);
			}
			if (stream == null)
			{
				return;
			}
			try
			{
				if (mode == SerializeMode.WindowsRegistry)
				{
					if (!(persistpath is RegistryKey registryKey))
					{
						throw new ApplicationException("Invalid RegistryKey specified for the PersistencePath.");
					}
					formatter.Serialize(stream, obj);
					registryKey.SetValue(strname, (stream as MemoryStream).ToArray());
					registryKey.Close();
				}
				else
				{
					formatter.Serialize(stream, obj);
				}
				return;
			}
			catch (Exception)
			{
				return;
			}
			finally
			{
				if (mode != SerializeMode.BinaryFmtStream && mode != SerializeMode.XMLFmtStream)
				{
					stream.Close();
				}
			}
		}
		DeletePersistentStore(mode, persistpath, scope, new string[1] { strname });
	}

	[Browsable(false)]
	[Obsolete("This method will be removed in a future version. Please check the class reference for an alternative.", false)]
	public static object DeserializeIsolatedObject(SerializeMode mode, object persistpath, string strname)
	{
		return DeserializeIsolatedObject(mode, persistpath, IsolatedStorageScope.User | IsolatedStorageScope.Domain | IsolatedStorageScope.Assembly, strname);
	}

	[Obsolete("This method will be removed in a future version. Please check the class reference for an alternative.", false)]
	[Browsable(false)]
	public static object DeserializeIsolatedObject(object persistpath, IsolatedStorageScope scope, string strname)
	{
		return DeserializeIsolatedObject(SerializeMode.IsolatedStorage, persistpath, scope, strname);
	}

	private static object DeserializeIsolatedObject(SerializeMode mode, object persistpath, IsolatedStorageScope scope, string strname)
	{
		object result = null;
		IFormatter formatter = GetFormatter(mode);
		Stream stream = null;
		if (mode == SerializeMode.BinaryFmtStream || mode == SerializeMode.XMLFmtStream)
		{
			stream = persistpath as Stream;
			if (stream == null || !stream.CanRead || !stream.CanSeek)
			{
				throw new ApplicationException("Syncfusion AppStateSerializer - Invalid Stream specified for the PersistencePath. The PersistencePath should be a valid Stream instance with Read and Seek capability.");
			}
		}
		else
		{
			stream = GetStream(mode, persistpath, scope, bwrite: false);
		}
		if (stream == null)
		{
			return null;
		}
		try
		{
			if (mode == SerializeMode.WindowsRegistry)
			{
				if (!(persistpath is RegistryKey registryKey))
				{
					throw new ApplicationException("Invalid RegistryKey specified for the PersistencePath");
				}
				byte[] array = registryKey.GetValue(strname) as byte[];
				registryKey.Close();
				if (array != null)
				{
					stream.Seek(0L, SeekOrigin.Begin);
					stream.Write(array, 0, array.Length);
					stream.Seek(0L, SeekOrigin.Begin);
					result = formatter.Deserialize(stream);
				}
			}
			else
			{
				result = formatter.Deserialize(stream);
			}
		}
		catch (Exception)
		{
		}
		finally
		{
			if (mode != SerializeMode.BinaryFmtStream && mode != SerializeMode.XMLFmtStream)
			{
				stream.Close();
			}
		}
		return result;
	}

	private void OnBeforePersist(EventArgs e)
	{
		SerializeObject("ApplicationVersion", Application.ProductVersion);
		if (this.BeforePersist != null)
		{
			this.BeforePersist(this, e);
		}
	}

	public void PersistNow()
	{
		if (!Enabled)
		{
			return;
		}
		OnBeforePersist(EventArgs.Empty);
		if (htSerialize.Count > 0)
		{
			IFormatter formatter = GetFormatter(serMode);
			Stream stream = null;
			if (serMode == SerializeMode.BinaryFmtStream || serMode == SerializeMode.XMLFmtStream)
			{
				stream = serPath as Stream;
				if (!stream.CanWrite)
				{
					throw new ApplicationException("Syncfusion AppStateSerializer - Invalid Stream specified for the PersistencePath. The PersistencePath should be a valid Stream instance with Read, Write, and Seek capability.");
				}
			}
			else
			{
				stream = GetStream(serMode, serPath, isoScope, bwrite: true);
			}
			if (stream == null)
			{
				return;
			}
			try
			{
				if (serMode == SerializeMode.WindowsRegistry)
				{
					RegistryKey registryKey = GetRegistryKey(serPath as string);
					if (registryKey == null)
					{
						throw new ApplicationException("Invalid RegistryKey specified for the PersistencePath");
					}
					foreach (string key in htSerialize.Keys)
					{
						object obj = htSerialize[key];
						if (obj.GetType() == typeof(MemoryStream))
						{
							stream = obj as MemoryStream;
						}
						else
						{
							formatter.Serialize(stream, obj);
						}
						registryKey.SetValue(key, (stream as MemoryStream).ToArray());
						stream.Position = 0L;
					}
					registryKey.Close();
				}
				else
				{
					formatter.Serialize(stream, htSerialize);
				}
				return;
			}
			catch (Exception)
			{
				return;
			}
			finally
			{
				if (serMode != SerializeMode.BinaryFmtStream && serMode != SerializeMode.XMLFmtStream)
				{
					stream.Close();
				}
				weakRef = null;
				htSerialize.Clear();
			}
		}
		FlushSerializer();
	}

	[DocumentationExclude]
	public void OnApplicationExit(object sender, EventArgs e)
	{
		if (Enabled)
		{
			PersistNow();
		}
	}
}
