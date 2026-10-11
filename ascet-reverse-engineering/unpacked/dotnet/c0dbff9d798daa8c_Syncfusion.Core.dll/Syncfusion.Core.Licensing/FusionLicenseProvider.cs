#define DEBUG
using System;
using System.Collections;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Reflection.Emit;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using System.Security;
using System.Security.Permissions;
using System.Windows.Forms;
using System.Xml;

namespace Syncfusion.Core.Licensing;

public class FusionLicenseProvider : LicenseProvider
{
	public static bool EnforceWebLicenseCheck = false;

	private bool web;

	private string assemblyName = "";

	private string ErrorMessage = "";

	private int ver1;

	private int ver2;

	private int ver3;

	private static LicenseContext lc = null;

	private static LicenseLog licenseLog;

	private static bool isexpired = false;

	private static LicManager licMgr = new LicManager();

	private static bool localKeysValidated = false;

	private static string executablePathURI = null;

	private static bool isDevStudio = false;

	private static DateTime timeOfLastLicensingMessage = DateTime.MinValue;

	public static bool IsEvalExpired => isexpired;

	private static LicenseContext CurrentContext
	{
		get
		{
			return lc;
		}
		set
		{
			lc = value;
		}
	}

	public static bool IsDevStudio
	{
		get
		{
			if (executablePathURI == null)
			{
				try
				{
					Assembly entryAssembly = Assembly.GetEntryAssembly();
					if (entryAssembly != null)
					{
						executablePathURI = entryAssembly.EscapedCodeBase.ToLower();
					}
					else
					{
						executablePathURI = Application.ExecutablePath.ToLower();
					}
				}
				catch (Exception ex)
				{
					Debug.WriteLine("Exception occurred in SystemInformationExt.IsDevStudio: " + ex.Message);
					executablePathURI = "";
				}
				isDevStudio = executablePathURI.IndexOf("devenv.exe") >= 0 || executablePathURI.IndexOf("vbexpress.exe") >= 0 || executablePathURI.IndexOf("vcsexpress.exe") >= 0 || executablePathURI.IndexOf("vcexpress.exe") >= 0 || executablePathURI.IndexOf("vwdexpress.exe") >= 0;
			}
			return isDevStudio;
		}
	}

	private void GetAssemblyInformation(Type type, ref int ver1, ref int ver2, ref int ver3, ref string assemblyname)
	{
		bool flag = false;
		object[] customAttributes = type.Assembly.GetCustomAttributes(inherit: false);
		object[] array = customAttributes;
		foreach (object obj in array)
		{
			if (obj.GetType() == typeof(AssemblyDefaultAliasAttribute))
			{
				assemblyName = ((AssemblyDefaultAliasAttribute)obj).DefaultAlias;
				flag = true;
			}
			if (obj.GetType() == typeof(AssemblyInformationalVersionAttribute))
			{
				string informationalVersion = ((AssemblyInformationalVersionAttribute)obj).InformationalVersion;
				ver1 = Convert.ToInt16(informationalVersion.Substring(0, informationalVersion.IndexOf(".")));
				informationalVersion = informationalVersion.Substring(informationalVersion.IndexOf(".") + 1);
				ver2 = Convert.ToInt16(informationalVersion.Substring(0, informationalVersion.IndexOf(".")));
				informationalVersion = informationalVersion.Substring(informationalVersion.IndexOf(".") + 1);
				ver3 = Convert.ToInt16(informationalVersion.Substring(0, informationalVersion.IndexOf(".")));
			}
		}
		if (!flag)
		{
			assemblyName = type.Assembly.FullName;
			int startIndex = assemblyName.IndexOf("Version=") + 8;
			string informationalVersion = assemblyName.Substring(startIndex);
			ver1 = Convert.ToInt16(informationalVersion.Substring(0, informationalVersion.IndexOf(".")));
			informationalVersion = informationalVersion.Substring(informationalVersion.IndexOf(".") + 1);
			ver2 = Convert.ToInt16(informationalVersion.Substring(0, informationalVersion.IndexOf(".")));
			informationalVersion = informationalVersion.Substring(informationalVersion.IndexOf(".") + 1);
			ver3 = Convert.ToInt16(informationalVersion.Substring(0, informationalVersion.IndexOf(".")));
			int length = assemblyName.IndexOf(",");
			assemblyName = assemblyName.Substring(0, length);
		}
	}

	public bool CreateSLF(string path, Type type)
	{
		return SweepProxy.CreateSLF(path, type);
	}

	private License ASPLic(string SLFpath)
	{
		StreamReader streamReader = File.OpenText(SLFpath);
		string text = "";
		string text2 = "";
		string text3 = "";
		string text4 = "";
		string text5 = "";
		bool flag = false;
		bool flag2 = false;
		bool flag3 = true;
		_ = DateTime.MinValue;
		EncryptionHelper encryptionHelper = new EncryptionHelper(5);
		Stream stream = encryptionHelper.Decrypt(streamReader.BaseStream);
		stream.Position = 0L;
		string text6 = ver2.ToString();
		string text7 = "";
		int num = 0;
		int num2 = 0;
		try
		{
			text6 = text6.Substring(0, text6.Length - 2);
			num = Convert.ToInt16(text6);
		}
		catch
		{
			num = ver2;
		}
		XmlTextReader xmlTextReader = new XmlTextReader(stream);
		try
		{
			while (xmlTextReader.Read())
			{
				XmlNodeType nodeType = xmlTextReader.NodeType;
				if (nodeType != XmlNodeType.Element)
				{
					continue;
				}
				new Hashtable();
				_ = xmlTextReader.NamespaceURI;
				string name = xmlTextReader.Name;
				string text8;
				if ((text8 = name.ToLower()) == null || !(text8 == "assembly"))
				{
					continue;
				}
				text = xmlTextReader.GetAttribute("name");
				text4 = xmlTextReader.GetAttribute("ver1");
				text7 = xmlTextReader.GetAttribute("ver2");
				text5 = xmlTextReader.GetAttribute("ver3");
				text2 = xmlTextReader.GetAttribute("t");
				text3 = xmlTextReader.GetAttribute("a");
				try
				{
					text7 = text7.Substring(0, text7.Length - 2);
					num2 = Convert.ToInt16(text7);
				}
				catch
				{
					num2 = ver2;
				}
				if (!assemblyName.ToLower().StartsWith(text.ToLower()))
				{
					continue;
				}
				if (Convert.ToInt16(text4.Trim()) > ver1)
				{
					flag = true;
				}
				else if (Convert.ToInt16(text4.Trim()) == ver1)
				{
					if (num2 > num)
					{
						flag = true;
					}
					else if (num2 == num && Convert.ToInt16(text5.Trim()) >= ver3)
					{
						flag = true;
					}
				}
				if (!flag)
				{
					continue;
				}
				if (text2.Trim() == "0" || text2.Trim() == "2")
				{
					flag2 = true;
					xmlTextReader.Close();
					streamReader.Close();
					return new FusionLicense(this, "valid");
				}
				if (text2.Trim() == "1")
				{
					flag2 = true;
					DateTime t = Convert.ToDateTime(text3);
					if (DateTime.Compare(t, DateTime.Now) >= 0)
					{
						flag3 = false;
					}
				}
			}
		}
		catch
		{
		}
		xmlTextReader.Close();
		streamReader.Close();
		if (flag2)
		{
			if (!flag3)
			{
				return new FusionLicense(this, "eval");
			}
			throw new SyncfusionLicenseException("The evaluation period has expired. Please contact Syncfusion Sales to obtain a new key.");
		}
		throw new SyncfusionLicenseException("License file does not contain the appropriate information.");
	}

	private string GetSlfFile()
	{
		return "";
	}

	public override License GetLicense(LicenseContext context, Type type, object instance, bool allowExceptions)
	{
		if (context.UsageMode == LicenseUsageMode.Runtime)
		{
			return new FusionLicense(this, "Validated");
		}
		if (licenseLog == null)
		{
			licenseLog = new LicenseLog();
		}
		string qualifiedName = CoreAssembly.QualifiedName;
		licenseLog.executingVersionInfo = NormalizeAssemblyQualifiedName(qualifiedName);
		licenseLog.executingVersionInfoFromAssembly = NormalizeAssemblyQualifiedName(GetType().AssemblyQualifiedName);
		bool flag = false;
		try
		{
			if (IsDevStudio)
			{
				flag = true;
			}
		}
		catch
		{
		}
		if (CurrentContext == null || CurrentContext.UsageMode != context.UsageMode)
		{
			CurrentContext = context;
		}
		FusionLicense fusionLicense = null;
		string text = null;
		web = false;
		if (CurrentContext.UsageMode == LicenseUsageMode.Runtime && !flag)
		{
			ErrorMessage = "Unable to grant a runtime license. Please ensure that the project was compiled with an appropriate licenses.licx file as an embedded resource.\r\n\r\nClicking the button below will launch a utility that will adjust your project settings appropriately.";
			licenseLog.UsageMode = LicenseUsageMode.Runtime;
			if (!CoreAssembly.EnforceLicensing)
			{
				return new FusionLicense(this, "Validated");
			}
		}
		else
		{
			ErrorMessage = "Unable to grant license for design time.";
			licenseLog.UsageMode = LicenseUsageMode.Designtime;
		}
		if (CurrentContext != null)
		{
			Directory.GetCurrentDirectory();
			Assembly[] assemblies = AppDomain.CurrentDomain.GetAssemblies();
			Assembly[] array = assemblies;
			foreach (Assembly assembly in array)
			{
				if (assembly.FullName.ToLower().StartsWith("system.web,"))
				{
					licenseLog.isASPDotNet = true;
					web = true;
					break;
				}
			}
			if (CurrentContext.UsageMode == LicenseUsageMode.Runtime)
			{
				if (web && EnforceWebLicenseCheck)
				{
					ErrorMessage = string.Empty;
					string applicationBase = AppDomain.CurrentDomain.SetupInformation.ApplicationBase;
					FileInfo[] files = new DirectoryInfo(applicationBase).GetFiles("licensecontext.slf", SearchOption.AllDirectories);
					if (files.Length != 0)
					{
						FileInfo[] array2 = files;
						int num = 0;
						if (num < array2.Length)
						{
							FileInfo lcxtFile = array2[num];
							try
							{
								LicCnxtParser licCnxtParser = new LicCnxtParser(lcxtFile);
								string text2 = licCnxtParser.ParseSLFFile();
								if (text2.StartsWith("@"))
								{
									if (Validate(text2))
									{
										return new FusionLicense(this, text2);
									}
									ErrorMessage = "Evaluation period has expired. Unable to grant runtime license.";
									throw new SyncfusionLicenseException(ErrorMessage);
								}
								ErrorMessage = "There is an error in parsing the licensecontext.slf. Key appears to be not valid. Please ensure that a proper licensecontext.slf file is present.";
								throw new SyncfusionLicenseException(ErrorMessage);
							}
							catch (Exception)
							{
								if (ErrorMessage != string.Empty)
								{
									throw new SyncfusionLicenseException(ErrorMessage);
								}
								ErrorMessage = "There is an error in parsing the licensecontext.slf. Key appears to be not valid. Please ensure that a proper licensecontext.slf file is present.";
								throw new SyncfusionLicenseException(ErrorMessage);
							}
						}
						return fusionLicense;
					}
					TryAddingSLF(applicationBase);
				}
				else
				{
					text = GetSavedLicenseKey(type);
					if (text != null && text != "")
					{
						licenseLog.runtimeLicenseKey = text;
						if (!text.StartsWith("@"))
						{
							return new FusionLicense(this, "Validated");
						}
						if (Validate(text))
						{
							fusionLicense = new FusionLicense(this, text);
						}
					}
				}
			}
			if (fusionLicense == null && (CurrentContext.UsageMode != LicenseUsageMode.Runtime || flag))
			{
				try
				{
					bool isExpired;
					License devLicense = SweepProxy.GetDevLicense(context, type, instance, allowExceptions, out isExpired);
					if (devLicense == null)
					{
						ErrorMessage = SweepProxy.GetErrorMessage() + "\n\n" + ErrorMessage;
						if (web)
						{
							if (isExpired)
							{
								ErrorMessage = devLicense.LicenseKey + " has expired. Please check the unlock key in the registry.";
								throw new SyncfusionLicenseException(ErrorMessage);
							}
							throw new SyncfusionLicenseException(ErrorMessage);
						}
						licenseLog.isExpired = isExpired;
						licenseLog.failed = true;
						LicenseErrorDialog licenseErrorDialog = new LicenseErrorDialog(licenseLog);
						licenseLog.ErrorMessage = ErrorMessage;
						licenseErrorDialog.ShowDialog();
						licenseLog = null;
						return null;
					}
					return devLicense;
				}
				catch (Exception ex2)
				{
					MessageBox.Show(ex2.ToString());
				}
			}
		}
		if (fusionLicense == null)
		{
			if (web)
			{
				return new FusionLicense(this, "Invalid");
			}
			if (DateTime.Now - timeOfLastLicensingMessage > TimeSpan.FromMinutes(1.0))
			{
				if (web)
				{
					licenseLog.failed = true;
					timeOfLastLicensingMessage = DateTime.Now;
				}
				else
				{
					licenseLog.failed = true;
					LicenseErrorDialog licenseErrorDialog2 = new LicenseErrorDialog(licenseLog);
					licenseLog.ErrorMessage = ErrorMessage;
					licenseErrorDialog2.ErrorLabel.Text = ErrorMessage;
					licenseErrorDialog2.ShowDialog();
					timeOfLastLicensingMessage = DateTime.Now;
				}
			}
			if (licenseLog.UsageMode == LicenseUsageMode.Runtime)
			{
				return new FusionLicense(this, "Invalid");
			}
		}
		return fusionLicense;
	}

	private void TryAddingSLF(string workingDir)
	{
		DirectoryInfo directoryInfo = new DirectoryInfo(workingDir);
		if (!directoryInfo.Exists)
		{
			return;
		}
		string[] allKeys = licMgr.GetAllKeys();
		string[] array = allKeys;
		foreach (string text in array)
		{
			if (text.StartsWith("@") && Validate(text))
			{
				CreateLicenseContextSLF(directoryInfo, text);
				localKeysValidated = true;
				break;
			}
			localKeysValidated = false;
		}
		if (!localKeysValidated)
		{
			ErrorMessage = "No valid key found to create licensecontext.slf. License context generation failed. Please include a valid key and try rebuilding the application.";
			throw new SyncfusionLicenseException(ErrorMessage);
		}
	}

	private void CreateLicenseContextSLF(DirectoryInfo dirInf, string regkey)
	{
		SLFGenerator sLFGenerator = new SLFGenerator(regkey);
		string value = sLFGenerator.GenerateSLFContext();
		string path = dirInf.FullName + "\\licensecontext.slf";
		if (File.Exists(path))
		{
			File.Delete(path);
		}
		TextWriter textWriter = new StreamWriter(path);
		textWriter.WriteLine(value);
		textWriter.Close();
	}

	private void CreateLicenseContextSLF(string regkey)
	{
		SLFGenerator sLFGenerator = new SLFGenerator(regkey);
		string value = sLFGenerator.GenerateSLFContext();
		string path = "licensecontext.slf";
		if (File.Exists(path))
		{
			File.Delete(path);
		}
		TextWriter textWriter = new StreamWriter(path);
		textWriter.WriteLine(value);
		textWriter.Close();
	}

	private bool Validate(string str)
	{
		_ = str.Length / 32;
		int rt = 0;
		DateTime expire = DateTime.MinValue;
		GetAssemblyInformation(GetType(), ref ver1, ref ver2, ref ver3, ref assemblyName);
		string[] array = str.Split(';');
		licenseLog.runtimeKeys = new ArrayList();
		string[] array2 = array;
		foreach (string text in array2)
		{
			RuntimeKeyInfo runtimeKeyInfo = new RuntimeKeyInfo();
			licenseLog.runtimeKeys.Add(runtimeKeyInfo);
			runtimeKeyInfo.key = text;
			bool flag = false;
			runtimeKeyInfo.unlockKeyInfo = new UnlockKeyInfo(text);
			if (!SweepProxy.IsKeyValid(text, bLinkServer: false, text.Length, ref rt, ref expire))
			{
				continue;
			}
			runtimeKeyInfo.type = rt;
			runtimeKeyInfo.expire = expire;
			switch (rt)
			{
			case 0:
			case 2:
				return true;
			case 1:
				if (DateTime.Compare(expire, DateTime.Now) >= 0)
				{
					return true;
				}
				licenseLog.failed = true;
				licenseLog.isExpired = true;
				ErrorMessage = "Evaluation period has expired. Unable to grant runtime license.";
				licenseLog.ErrorMessage = ErrorMessage;
				break;
			}
		}
		return false;
	}

	public static string NormalizeAssemblyQualifiedName(string qualifiedName)
	{
		if (qualifiedName == null)
		{
			return "";
		}
		string[] array = qualifiedName.Split(',');
		if (array.Length != 5)
		{
			return qualifiedName;
		}
		string[] array2 = array[2].Split('.');
		if (array2.Length != 4)
		{
			return qualifiedName;
		}
		array2[3] = "0";
		if (array2[1].Length > 2 && (array2[1].EndsWith("00") || array2[1].EndsWith("01") || array2[1].EndsWith("02")))
		{
			array2[1] = array2[1].Substring(0, array2[1].Length - 2);
		}
		array[2] = array2[0] + "." + array2[1] + "." + array2[2] + "." + array2[3];
		qualifiedName = array[0] + "," + array[1] + "," + array[2] + "," + array[3] + "," + array[4];
		return qualifiedName;
	}

	public static string FindLicenseKey(Hashtable licenseKeys, string qualifiedName)
	{
		qualifiedName = NormalizeAssemblyQualifiedName(qualifiedName);
		foreach (DictionaryEntry licenseKey in licenseKeys)
		{
			string text = NormalizeAssemblyQualifiedName((string)licenseKey.Key);
			if (text == qualifiedName)
			{
				return (string)licenseKey.Value;
			}
		}
		return null;
	}

	public string GetSavedLicenseKey(Type type)
	{
		try
		{
			Type typeFromHandle = typeof(LicensedComponent);
			string assemblyQualifiedName = typeFromHandle.AssemblyQualifiedName;
			string qualifiedName = "Syncfusion.Core.Licensing.LicensedComponent, " + CoreAssembly.QualifiedName;
			Hashtable hashtable = null;
			Assembly[] assemblies = AppDomain.CurrentDomain.GetAssemblies();
			assemblies = AppDomain.CurrentDomain.GetAssemblies();
			foreach (Assembly assembly in assemblies)
			{
				if (assembly is AssemblyBuilder)
				{
					continue;
				}
				string[] manifestResourceNames = assembly.GetManifestResourceNames();
				if (manifestResourceNames == null)
				{
					continue;
				}
				string[] array = manifestResourceNames;
				foreach (string text in array)
				{
					if (!text.EndsWith(".licenses"))
					{
						continue;
					}
					if (!licenseLog.licxFoundAssemblyList.Contains(assembly.FullName))
					{
						licenseLog.licxFoundAssemblyList.Add(assembly.FullName);
					}
					Stream manifestResourceStream = assembly.GetManifestResourceStream(text);
					if (manifestResourceStream == null)
					{
						manifestResourceStream = GetManifestResourceStream(assembly, text);
					}
					if (manifestResourceStream == null)
					{
						continue;
					}
					hashtable = Deserialize(manifestResourceStream, text.ToUpper(CultureInfo.InvariantCulture).Replace(".LICENSES", ""));
					manifestResourceStream.Close();
					manifestResourceStream = null;
					foreach (DictionaryEntry item in hashtable)
					{
						string text2 = NormalizeAssemblyQualifiedName((string)item.Key);
						if (!licenseLog.LicxEntries.Contains(text2))
						{
							licenseLog.LicxEntries.Add(text2);
						}
					}
					string text3 = FindLicenseKey(hashtable, qualifiedName);
					if (text3 == null)
					{
						text3 = FindLicenseKey(hashtable, assemblyQualifiedName);
					}
					if (text3 != null)
					{
						return text3;
					}
				}
			}
		}
		catch (Exception ex)
		{
			Debug.WriteLine(ex.Message);
		}
		return null;
	}

	private Stream GetManifestResourceStream(Assembly satellite, string name)
	{
		CompareInfo compareInfo = CultureInfo.InvariantCulture.CompareInfo;
		string[] manifestResourceNames = satellite.GetManifestResourceNames();
		foreach (string text in manifestResourceNames)
		{
			if (compareInfo.Compare(text, name, CompareOptions.IgnoreCase) == 0)
			{
				name = text;
				break;
			}
		}
		return satellite.GetManifestResourceStream(name);
	}

	private Hashtable Deserialize(Stream stream, string embeddedLicenseName)
	{
		IFormatter formatter = new BinaryFormatter();
		new SecurityPermission(SecurityPermissionFlag.SerializationFormatter).PermitOnly();
		new SecurityPermission(SecurityPermissionFlag.SerializationFormatter).Assert();
		object obj;
		try
		{
			obj = formatter.Deserialize(stream);
		}
		finally
		{
			CodeAccessPermission.RevertAssert();
			CodeAccessPermission.RevertPermitOnly();
		}
		if (obj is object[])
		{
			object[] array = (object[])obj;
			if (array[0] is string && (string)array[0] == embeddedLicenseName)
			{
				return (Hashtable)array[1];
			}
		}
		return null;
	}
}
