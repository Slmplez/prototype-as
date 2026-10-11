using System;
using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Text;
using System.Windows.Forms;
using Microsoft.Win32;

namespace Syncfusion.Core.Licensing;

internal class Sweep
{
	internal static string ErrorMessage = "";

	internal static string assemblyName;

	internal int ver1;

	internal int ver2;

	internal int ver3;

	internal static string UK;

	internal static string s1 = "";

	private int rt;

	private DateTime expire = DateTime.Now;

	public void InitAssemblyInfo(Type t)
	{
		GetAssemblyInformation(t, ref ver1, ref ver2, ref ver3, ref assemblyName);
	}

	public static int[] ValidateKey(string v1, string v2, string v3, string pszKey, string email, ref int type)
	{
		int[] _prod = null;
		_ = DateTime.MinValue;
		int num = Convert.ToInt16(v1);
		int num2 = Convert.ToInt16(v2);
		int num3 = Convert.ToInt16(v3);
		try
		{
			if (!pszKey.StartsWith("@"))
			{
				return _prod;
			}
			if (!ValidateVersion(pszKey.Substring(1, 10), num, num2, num3))
			{
				return _prod;
			}
			KeyLogic keyLogic = new KeyLogic(PublicKeyDecryptProxy.SyncfusionDecode(pszKey.Substring(11)));
			if (!ValidateVersion(pszKey.Substring(1, 10), keyLogic.V1, keyLogic.V2, keyLogic.V3))
			{
				return _prod;
			}
			if (keyLogic.V1 < num)
			{
				return _prod;
			}
			if (keyLogic.V1 == num)
			{
				if (keyLogic.V2 < num2)
				{
					return _prod;
				}
				if (keyLogic.V2 == num2 && keyLogic.V3 < num3)
				{
					return _prod;
				}
			}
			if (keyLogic.EmailChecksum != Checksum(email))
			{
				return _prod;
			}
			type = keyLogic.Type;
			_ = keyLogic.DateExpire;
			GetProdArray(keyLogic.Prods, ref _prod);
			return _prod;
		}
		catch
		{
			return _prod;
		}
	}

	public int GetRTResultForIsKeyValid2()
	{
		return rt;
	}

	public DateTime GetExpireResultForIsKeyValid2()
	{
		return expire;
	}

	public bool IsKeyValid2(string key, bool bLinkServer, int length)
	{
		return IsKeyValid(key, bLinkServer, length, ref rt, ref expire);
	}

	public virtual bool IsKeyValid(string key, bool bLinkServer, int length, ref int rt, ref DateTime expire)
	{
		if (s1 == "")
		{
			GetS1();
		}
		bool result = false;
		if (key != null)
		{
			int type = -1;
			int num = ver2;
			if (ver2 >= 100)
			{
				string text = ver2.ToString();
				try
				{
					text = text.Substring(0, text.Length - 2);
					num = Convert.ToInt16(text);
				}
				catch
				{
					num = ver2;
				}
			}
			if (!bLinkServer)
			{
				result = Decode(assemblyName, ver1, num, ver3, key, ref type, ref expire);
				rt = type;
			}
		}
		return result;
	}

	private bool CheckCallStack(Type type, LicenseContext context)
	{
		if (context == null)
		{
			return false;
		}
		UK = "INTERNAL";
		StackTrace stackTrace = new StackTrace(3, fNeedFileInfo: true);
		int num = 0;
		string text = type.Assembly.FullName;
		object[] customAttributes = type.Assembly.GetCustomAttributes(inherit: false);
		string text2 = "";
		bool flag = false;
		if (text.StartsWith("Syncfusion."))
		{
			object[] array = customAttributes;
			foreach (object obj in array)
			{
				if (obj.GetType() == typeof(AssemblyDefaultAliasAttribute))
				{
					text2 = ((AssemblyDefaultAliasAttribute)obj).DefaultAlias.Replace(".dll", "");
					if (text2.StartsWith("Syncfusion."))
					{
						flag = true;
					}
					break;
				}
			}
		}
		if (flag)
		{
			text = text.Replace(text.Substring(0, text.IndexOf(",")), text2);
		}
		for (StackFrame frame = stackTrace.GetFrame(num); frame != null; frame = stackTrace.GetFrame(num))
		{
			MethodBase method = frame.GetMethod();
			if (method != null)
			{
				string text3 = "";
				if (method.ReflectedType != null)
				{
					try
					{
						text3 = method.ReflectedType.Assembly.FullName;
						if (GetEncLic(method.ReflectedType.Assembly, type, context))
						{
							return true;
						}
					}
					catch
					{
					}
					flag = false;
					if (text3.StartsWith("Syncfusion."))
					{
						object[] array2 = customAttributes;
						foreach (object obj3 in array2)
						{
							if (obj3.GetType() == typeof(AssemblyDefaultAliasAttribute))
							{
								text2 = ((AssemblyDefaultAliasAttribute)obj3).DefaultAlias.Replace(".dll", "");
								if (text2.StartsWith("Syncfusion."))
								{
									flag = true;
								}
								break;
							}
						}
					}
					if (flag)
					{
						text3 = text3.Replace(text3.Substring(0, text3.IndexOf(",")), text2);
					}
					if (text3 != text && method.ReflectedType.Assembly.FullName.StartsWith("Syncfusion.") && !method.ReflectedType.Assembly.FullName.StartsWith("Syncfusion.Core") && method.Name != "GetLicense")
					{
						return true;
					}
				}
			}
			num++;
		}
		return false;
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

	public static string ByteArray2String(byte[] bs)
	{
		StringBuilder stringBuilder = new StringBuilder();
		for (int i = 0; i < bs.Length; i++)
		{
			stringBuilder.Append(Convert.ToChar(bs[i]));
		}
		return stringBuilder.ToString();
	}

	public bool CreateSLF(string path, Type type)
	{
		return true;
	}

	internal static void GetS1()
	{
		if (s1 == "")
		{
			s1 = "syncfusion.core,0;1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;29;30;31|syncfusion.shared,0;1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;29;30;31|syncfusion.chart,0;1|syncfusion.edit,2;3|syncfusion.grid,4;5|syncfusion.tools,6;7|syncfusion.diagram,9;10|syncfusion.grouping,11;12|syncfusion.excelrw,13;14|syncfusion.reports,15;16|syncfusion.calculate,17;18|syncfusion.pdf,19;20|syncfusion.htmlui,21;22|syncfusion.docio,23;24|syncfusion.gauge,25;26|syncfusion.bi,29;30|syncfusion.UI MVC Promo,31|syncfusion.UI Silverlight Promo,32";
		}
	}

	public License GetDevLicense(LicenseContext context, Type type, object instance, bool allowExceptions, out bool isExpired)
	{
		isExpired = false;
		ErrorMessage = "";
		if (s1 == "")
		{
			GetS1();
		}
		FusionLicense fusionLicense = null;
		try
		{
			if (instance == null)
			{
				instance = type;
			}
			GetAssemblyInformation((Type)instance, ref ver1, ref ver2, ref ver3, ref assemblyName);
			if (CheckCallStack((Type)instance, context))
			{
				fusionLicense = new FusionLicense(this, UK);
				if (UK.Length > 10)
				{
					context.SetSavedLicenseKey(type, Guid.NewGuid().ToString());
				}
				return fusionLicense;
			}
			if (context != null)
			{
				string text = "";
				ArrayList arrayList = null;
				int num = -1;
				bool flag = false;
				bool flag2 = true;
				bool flag3 = false;
				if (fusionLicense == null)
				{
					DateTime minValue = DateTime.MinValue;
					new IntPtr(0);
					new IntPtr(0);
					new IntPtr(0);
					new IntPtr(0);
					new string('*', 20);
					arrayList = new ArrayList();
					if (ver2 >= 100)
					{
						string text2 = ver2.ToString();
						try
						{
							text2 = text2.Substring(0, text2.Length - 2);
							Convert.ToInt16(text2);
						}
						catch
						{
						}
					}
					string[] array = _Find_UnlockKey();
					if (array != null)
					{
						string[] array2 = array;
						foreach (string text3 in array2)
						{
							if (text3.Length > 32 && text3.StartsWith("@"))
							{
								arrayList.Add(text3);
							}
						}
					}
					new ArrayList();
					string[] array3 = (string[])arrayList.ToArray(typeof(string));
					int length = array3.GetLength(0);
					for (int j = 0; j < length; j++)
					{
						if (array3[j] == null || array3[j].Length <= 0 || !IsKeyValid(array3[j], bLinkServer: false, array3[j].Length, ref num, ref minValue))
						{
							continue;
						}
						switch (num)
						{
						case 0:
						case 2:
							break;
						case 1:
							flag3 = true;
							try
							{
								if (DateTime.Compare(minValue, DateTime.Now) >= 0)
								{
									flag2 = false;
									flag = true;
								}
							}
							catch
							{
							}
							continue;
						default:
							continue;
						}
						flag = true;
						break;
					}
					if (flag)
					{
						foreach (object item in arrayList)
						{
							text = text + item.ToString() + ";";
						}
						fusionLicense = new FusionLicense(this, text);
					}
					if (fusionLicense == null && !CoreAssembly.EnforceLicensing)
					{
						fusionLicense = new FusionLicense(this, "develop");
						num = 0;
					}
				}
				if (fusionLicense != null)
				{
					if (num == 0 || num == 2)
					{
						context.SetSavedLicenseKey(type, Guid.NewGuid().ToString());
					}
					else
					{
						context.SetSavedLicenseKey(type, text);
					}
					return fusionLicense;
				}
				if (flag2 && flag3)
				{
					isExpired = true;
					ErrorMessage = "The installed evaluation is time-limited and has now expired.";
				}
			}
		}
		catch (Exception ex)
		{
			MessageBox.Show(ex.ToString());
		}
		return fusionLicense;
	}

	public string GetErrorMessage()
	{
		return ErrorMessage;
	}

	public bool GetEncLic(Assembly asm, Type type, LicenseContext context)
	{
		bool result = false;
		try
		{
			_ = asm.GetName(copiedName: false).Name;
			string codeBase = asm.GetName(copiedName: false).CodeBase;
			codeBase = codeBase.Replace("file:///", "");
			codeBase = codeBase.Replace("/", "\\");
			int num = codeBase.LastIndexOf("\\");
			codeBase = codeBase.Remove(num + 1, codeBase.Length - (num + 1));
			if (codeBase.ToLower().IndexOf("gac\\" + assemblyName.ToLower() + "\\" + ver1 + "." + ver2 + "." + ver3) > -1)
			{
				StreamReader streamReader = new StreamReader(codeBase + "__assemblyinfo__.ini");
				string text = streamReader.ReadToEnd().ToLower();
				streamReader.Close();
				try
				{
					int num2 = text.IndexOf("url=file:///") + "url=file:///".Length;
					int length = text.LastIndexOf(assemblyName.ToLower() + ".dll") - num2;
					codeBase = text.Substring(num2, length);
				}
				catch
				{
				}
			}
			if (context.UsageMode == LicenseUsageMode.Runtime)
			{
				codeBase += "sr.slf";
			}
			else
			{
				codeBase += "sl.slf";
			}
		}
		catch (Exception ex)
		{
			Console.WriteLine(ex.ToString());
		}
		return result;
	}

	private static bool ValidateVersion(string str, int ver1, int ver2, int ver3)
	{
		str = ByteArray2String(Hex.decode(str));
		string[] array = str.Split('.');
		try
		{
			if (ver1 != Convert.ToInt16(array[0]))
			{
				return false;
			}
			if (ver2 != Convert.ToInt16(array[1]))
			{
				return false;
			}
			string text = array[2];
			if (text.Length > 1)
			{
				text = text.Substring(0, 1);
			}
			if (ver3 != Convert.ToInt16(text))
			{
				return false;
			}
		}
		catch
		{
			return false;
		}
		return true;
	}

	private static bool Validate(int ver1, int ver2, int ver3, string pszKey, ref int[] _prod, ref int type, ref DateTime date)
	{
		try
		{
			if (!pszKey.StartsWith("@"))
			{
				return false;
			}
			if (!ValidateVersion(pszKey.Substring(1, 10), ver1, ver2, ver3))
			{
				return false;
			}
			KeyLogic keyLogic = new KeyLogic(PublicKeyDecryptProxy.SyncfusionDecode(pszKey.Substring(11)));
			if (!ValidateVersion(pszKey.Substring(1, 10), keyLogic.V1, keyLogic.V2, keyLogic.V3))
			{
				return false;
			}
			if (keyLogic.V1 < ver1)
			{
				return false;
			}
			if (keyLogic.V1 == ver1)
			{
				if (keyLogic.V2 < ver2)
				{
					return false;
				}
				if (keyLogic.V2 == ver2 && keyLogic.V3 < ver3)
				{
					return false;
				}
			}
			type = keyLogic.Type;
			date = keyLogic.DateExpire;
			GetProdArray(keyLogic.Prods, ref _prod);
		}
		catch
		{
			return false;
		}
		return true;
	}

	internal static bool Decode(string assembly, int ver1, int ver2, int ver3, string pszKey, ref int type, ref DateTime date)
	{
		int[] _prod = null;
		bool flag = Validate(ver1, ver2, ver3, pszKey, ref _prod, ref type, ref date);
		if (flag)
		{
			flag = Compare(_prod, assembly);
		}
		return flag;
	}

	private static bool Compare(int[] _prod, string assembly)
	{
		assembly = assembly.ToLower().Replace("xlsio", "excelrw");
		string[] array = s1.Split('|');
		string[] array2 = array;
		foreach (string text in array2)
		{
			string[] array3 = text.Split(',');
			if (assembly.ToLower().IndexOf(array3[0]) <= -1)
			{
				continue;
			}
			string[] array4 = array3[1].Split(';');
			string[] array5 = array4;
			foreach (string value in array5)
			{
				if (_prod[Convert.ToInt16(value)] == 1)
				{
					return true;
				}
			}
		}
		return false;
	}

	internal static bool CheckLicense(int ver1, int ver2, int ver3, string pszKey, string pszEmail, ref string pszAssembly, int unlock, ref IntPtr t, ref IntPtr a, ref IntPtr b, ref IntPtr c)
	{
		return false;
	}

	internal static string[] _Find_UnlockKey()
	{
		string[] array = null;
		StringCollection stringCollection = new StringCollection();
		RegistryKey hKey = TryGetLegacyKey();
		GetValuesFromKey(hKey, stringCollection);
		hKey = TryGetCurrentUserKey();
		GetValuesFromKey(hKey, stringCollection);
		hKey = TryGetLocalMachineKey();
		GetValuesFromKey(hKey, stringCollection);
		array = new string[stringCollection.Count];
		stringCollection.CopyTo(array, 0);
		return array;
	}

	private static void GetValuesFromKey(RegistryKey hKey, StringCollection sc)
	{
		if (hKey != null)
		{
			string[] valueNames = hKey.GetValueNames();
			hKey.Close();
			if (valueNames != null && valueNames.GetLength(0) > 0)
			{
				sc.AddRange(valueNames);
			}
		}
	}

	internal static RegistryKey TryGetLegacyKey()
	{
		RegistryKey result = null;
		try
		{
			result = Registry.ClassesRoot.OpenSubKey("CLSID\\{f82541ac-3346-4ffc-b975-a33807feec24}\\sf");
		}
		catch (Exception)
		{
		}
		return result;
	}

	internal static RegistryKey TryGetCurrentUserKey()
	{
		RegistryKey result = null;
		try
		{
			result = Registry.CurrentUser.OpenSubKey("Software\\Syncfusion\\Essential Suite\\InstalledVersions\\keys");
		}
		catch (Exception)
		{
		}
		return result;
	}

	internal static RegistryKey TryGetLocalMachineKey()
	{
		RegistryKey result = null;
		try
		{
			result = Registry.LocalMachine.OpenSubKey("Software\\Syncfusion\\Essential Suite\\InstalledVersions\\keys");
		}
		catch (Exception)
		{
		}
		return result;
	}

	public static void GetProdArray(uint wProds, ref int[] _prod)
	{
		_prod = new int[32];
		if ((wProds & 1) == 1)
		{
			_prod[0] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[1] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[2] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[3] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[4] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[5] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[6] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[7] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[8] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[9] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[10] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[11] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[12] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[13] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[14] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[15] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[16] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[17] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[18] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[19] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[20] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[21] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[22] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[23] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[24] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[25] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[26] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[29] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[30] = 1;
		}
		wProds >>= 1;
		if ((wProds & 1) == 1)
		{
			_prod[31] = 1;
		}
	}

	private static int ParseHexDigit(char c)
	{
		if (c >= '0' && c <= '9')
		{
			return c - 48;
		}
		if (c >= 'a' && c <= 'f')
		{
			return c - 97 + 10;
		}
		if (c >= 'A' && c <= 'F')
		{
			return c - 65 + 10;
		}
		throw new ArgumentException("Invalid   hex     char  acter");
	}

	private static string ParseHex(string hex)
	{
		char[] array = new char[hex.Length / 2];
		int num = 0;
		for (int i = 0; i < array.Length; i++)
		{
			array[i] = (char)(ParseHexDigit(hex[num++]) * 16 + ParseHexDigit(hex[num++]));
		}
		return new string(array);
	}

	private static int Checksum(string str)
	{
		char[] array = str.ToLower().ToCharArray();
		int num = 0;
		char[] array2 = array;
		foreach (char value in array2)
		{
			num += Convert.ToInt16(value);
		}
		return num * str.Length;
	}

	public static string[] GetUnlockTextInformation()
	{
		UnlockKeyInfo[] unlockKeyInfos = GetUnlockKeyInfos();
		string[] array = new string[unlockKeyInfos.Length];
		for (int i = 0; i < unlockKeyInfos.Length; i++)
		{
			array[i] = unlockKeyInfos[i].ToString();
		}
		return array;
	}

	public static UnlockKeyInfo[] GetUnlockKeyInfos()
	{
		GetS1();
		string[] array = _Find_UnlockKey();
		ArrayList arrayList = new ArrayList();
		if (array != null)
		{
			string[] array2 = array;
			foreach (string key in array2)
			{
				UnlockKeyInfo value = new UnlockKeyInfo(key);
				arrayList.Add(value);
			}
		}
		return (UnlockKeyInfo[])arrayList.ToArray(typeof(UnlockKeyInfo));
	}
}
