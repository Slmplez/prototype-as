using System;
using System.Collections;
using System.Text;

namespace Syncfusion.Core.Licensing;

public class UnlockKeyInfo
{
	public string fullKey = "";

	public string version = "";

	public string encodedKeyPart = "";

	public string encodedVersion = "";

	public KeyLogic kc;

	public string[] assemblies = new string[0];

	public string filterVersion = "";

	public int[] prodArray;

	public override string ToString()
	{
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.Append(Environment.NewLine);
		stringBuilder.Append(Environment.NewLine);
		if (IsPossiblyValidKey(fullKey))
		{
			stringBuilder.AppendFormat("This key licenses Essential Studio version {0}", version);
			stringBuilder.Append(Environment.NewLine);
			stringBuilder.Append(Environment.NewLine);
		}
		else
		{
			stringBuilder.Append("This key does not appear to be valid");
			stringBuilder.Append(Environment.NewLine);
			stringBuilder.Append(Environment.NewLine);
		}
		if (kc != null)
		{
			if (encodedVersion != version)
			{
				stringBuilder.Append("Invalid Key - encoded version not matching.");
			}
			else
			{
				if (kc.Type == 1)
				{
					stringBuilder.AppendFormat("Evaluation Expiry Date - {0}", kc.DateExpire);
					stringBuilder.Append(Environment.NewLine);
					stringBuilder.Append(Environment.NewLine);
				}
				else if (kc.Type == 2)
				{
					stringBuilder.Append("LinkLicense");
					stringBuilder.Append(Environment.NewLine);
					stringBuilder.Append(Environment.NewLine);
				}
				stringBuilder.AppendFormat("Syncfusion products licensed with this key are listed below - ");
				stringBuilder.Append(Environment.NewLine);
				stringBuilder.Append(Environment.NewLine);
				stringBuilder.Append(string.Join(Environment.NewLine, ProductNamesFromAssemblyNames(assemblies)));
				stringBuilder.Append(Environment.NewLine);
				stringBuilder.Append(Environment.NewLine);
				stringBuilder.AppendFormat("Diagnostic - Email Checksum = H{0:x}", kc.EmailChecksum);
			}
			stringBuilder.Append(Environment.NewLine);
			stringBuilder.Append(Environment.NewLine);
		}
		return stringBuilder.ToString();
	}

	public UnlockKeyInfo(string key)
		: this(key, "")
	{
	}

	public UnlockKeyInfo(string key, string filterVersion)
	{
		if (filterVersion != null && filterVersion.EndsWith(".*"))
		{
			this.filterVersion = filterVersion;
		}
		fullKey = key;
		if (!IsPossiblyValidKey(key))
		{
			version = "Unable to interpret key. Key may be obsolete or invalid.";
			return;
		}
		version = ExtractPrefixVersionInfo(key);
		if (!(this.filterVersion != "") || !(version != this.filterVersion))
		{
			encodedKeyPart = key.Substring(11);
			kc = new KeyLogic(int.Parse(version.Substring(0, 2).Trim('.')), PublicKeyDecryptProxy.SyncfusionDecode(encodedKeyPart));
			encodedVersion = kc.V1.ToString() + '.' + kc.V2.ToString() + '.' + kc.V3.ToString() + ".*";
			Sweep.GetProdArray(kc.Prods, ref prodArray);
			ArrayList arrayList = DecodeAssembliesFromProductIds(prodArray);
			assemblies = (string[])arrayList.ToArray(typeof(string));
		}
	}

	private bool IsPossiblyValidKey(string key)
	{
		return key.StartsWith("@");
	}

	private ArrayList DecodeAssembliesFromProductIds(int[] prodArray)
	{
		Sweep.GetS1();
		string[] array = Sweep.s1.Split('|');
		ArrayList arrayList = new ArrayList();
		string[] array2 = array;
		foreach (string text in array2)
		{
			string[] array3 = text.Split(',');
			string[] array4 = array3[1].Split(';');
			string[] array5 = array4;
			foreach (string s in array5)
			{
				try
				{
					if (int.TryParse(s, out var result) && result < prodArray.Length && prodArray[result] == 1)
					{
						arrayList.Add(array3[0]);
					}
				}
				catch
				{
				}
			}
		}
		arrayList.Sort();
		return RemoveDuplicates(arrayList);
	}

	public ArrayList RemoveDuplicates(ArrayList assms)
	{
		ArrayList arrayList = new ArrayList();
		string text = "";
		foreach (string assm in assms)
		{
			if (!(assm == text))
			{
				text = assm;
				arrayList.Add(assm);
			}
		}
		return arrayList;
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

	public static string ExtractPrefixVersionInfo(string str)
	{
		str = ByteArray2String(Hex.decode(str.Substring(1)));
		string[] array = str.Split('.');
		string text = array[2];
		if (text.Length > 1)
		{
			text = text.Substring(0, 1);
		}
		return array[0] + '.' + array[1] + '.' + text.Substring(0, 1) + ".*";
	}

	private string[] ProductNamesFromAssemblyNames(string[] assemblyNames)
	{
		if (assemblyNames.GetLength(0) <= 0)
		{
			return assemblyNames;
		}
		string[] array = new string[assemblyNames.GetLength(0)];
		for (int i = 0; i < assemblyNames.GetLength(0); i++)
		{
			string[] array2 = assemblyNames[i].Split('.');
			if (array2[1] == "shared" || array2[1] == "core")
			{
				array[i] = $"Syncfusion Infrastructure Library {ToCapitalCase(array2[1])}";
			}
			else
			{
				array[i] = $"Syncfusion Essential {ToCapitalCase(array2[1])}";
			}
		}
		return array;
	}

	private string ToCapitalCase(string s)
	{
		if (s == string.Empty)
		{
			return s;
		}
		char[] array = s.ToCharArray();
		array[0] = new string(array[0], 1).ToUpper().ToCharArray()[0];
		return new string(array);
	}
}
