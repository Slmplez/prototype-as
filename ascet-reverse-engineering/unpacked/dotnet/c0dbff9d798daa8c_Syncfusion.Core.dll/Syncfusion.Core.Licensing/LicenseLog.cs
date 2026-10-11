using System;
using System.Collections;
using System.ComponentModel;
using System.Text;

namespace Syncfusion.Core.Licensing;

internal class LicenseLog
{
	public LicenseUsageMode UsageMode;

	public bool isASPDotNet;

	public string runtimeLicenseKey = "No runtime license key found in licx.";

	public string executingVersionInfo = "";

	public string executingVersionInfoFromAssembly = "";

	public ArrayList runtimeKeys = new ArrayList();

	public string ErrorMessage = "";

	public ArrayList licxFoundAssemblyList = new ArrayList();

	public ArrayList LicxEntries = new ArrayList();

	public bool isExpired;

	public bool failed;

	public LicenseError GetErrorKind()
	{
		if (!failed)
		{
			return LicenseError.None;
		}
		if (UsageMode == LicenseUsageMode.Runtime)
		{
			if (licxFoundAssemblyList.Count == 0)
			{
				return LicenseError.RuntimeNoLicx;
			}
			if (isExpired)
			{
				return LicenseError.RuntimeKeyExpired;
			}
			if (runtimeKeys.Count == 0)
			{
				return LicenseError.RuntimeLicensedComponentEntryMissing;
			}
			return LicenseError.RuntimeNotLicensedControl;
		}
		if (isExpired)
		{
			return LicenseError.DesigntimeKeyExpired;
		}
		UnlockKeyInfo[] unlockKeyInfos = Sweep.GetUnlockKeyInfos();
		UnlockKeyInfo[] array = unlockKeyInfos;
		foreach (UnlockKeyInfo unlockKeyInfo in array)
		{
			if (unlockKeyInfo.encodedVersion != null)
			{
				string value = unlockKeyInfo.encodedVersion.Replace("*", "0");
				if (executingVersionInfo.IndexOf(value) != -1)
				{
					return LicenseError.DesigntimeNotLicensedControl;
				}
			}
		}
		return LicenseError.DesigntimeNoKey;
	}

	public override string ToString()
	{
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.AppendFormat("Syncfusion Licensing System - Detailed diagnostics.");
		stringBuilder.Append(Environment.NewLine);
		stringBuilder.Append(Environment.NewLine);
		stringBuilder.AppendFormat("ErrorKind = {0}", GetErrorKind());
		stringBuilder.Append(Environment.NewLine);
		stringBuilder.Append(Environment.NewLine);
		stringBuilder.AppendFormat("UsageMode = {0}", UsageMode);
		stringBuilder.Append(Environment.NewLine);
		stringBuilder.Append(Environment.NewLine);
		stringBuilder.AppendFormat("IsAspDotNet = {0}", isASPDotNet);
		stringBuilder.Append(Environment.NewLine);
		stringBuilder.Append(Environment.NewLine);
		stringBuilder.AppendFormat("RuntimeLicenseKey = {0}", runtimeLicenseKey);
		stringBuilder.Append(Environment.NewLine);
		stringBuilder.Append(Environment.NewLine);
		stringBuilder.AppendFormat("ExecutingVersionInfo = {0}", executingVersionInfo);
		stringBuilder.Append(Environment.NewLine);
		stringBuilder.Append(Environment.NewLine);
		stringBuilder.AppendFormat("ExecutingVersionInfoFromAssembly = {0}", executingVersionInfoFromAssembly);
		stringBuilder.Append(Environment.NewLine);
		stringBuilder.Append(Environment.NewLine);
		stringBuilder.AppendFormat("ErrorMessage = {0}", ErrorMessage);
		stringBuilder.Append(Environment.NewLine);
		stringBuilder.Append(Environment.NewLine);
		if (runtimeKeys.Count > 0)
		{
			stringBuilder.Append("Runtime Keys:");
			stringBuilder.Append(Environment.NewLine);
			stringBuilder.Append(Environment.NewLine);
			try
			{
				foreach (RuntimeKeyInfo runtimeKey in runtimeKeys)
				{
					if (runtimeKey.unlockKeyInfo != null)
					{
						stringBuilder.Append(runtimeKey.unlockKeyInfo.ToString());
					}
					stringBuilder.Append(Environment.NewLine);
				}
			}
			catch (Exception ex)
			{
				stringBuilder.Append(ex.Message);
			}
			stringBuilder.Append(Environment.NewLine);
			stringBuilder.Append(Environment.NewLine);
		}
		if (licxFoundAssemblyList.Count > 0)
		{
			stringBuilder.Append("Assemblies with licenses.licx resource:");
			stringBuilder.Append(Environment.NewLine);
			stringBuilder.Append(Environment.NewLine);
			try
			{
				foreach (string licxFoundAssembly in licxFoundAssemblyList)
				{
					stringBuilder.Append(licxFoundAssembly);
					stringBuilder.Append(Environment.NewLine);
				}
			}
			catch (Exception ex2)
			{
				stringBuilder.Append(ex2.Message);
			}
			stringBuilder.Append(Environment.NewLine);
			stringBuilder.Append(Environment.NewLine);
		}
		else
		{
			stringBuilder.Append("No Assemblies with licenses.licx resource found.");
			stringBuilder.Append(Environment.NewLine);
			stringBuilder.Append(Environment.NewLine);
		}
		if (LicxEntries.Count > 0)
		{
			stringBuilder.Append("Syncfusion.Core entries found in licenses.licx files:");
			stringBuilder.Append(Environment.NewLine);
			stringBuilder.Append(Environment.NewLine);
			try
			{
				foreach (string licxEntry in LicxEntries)
				{
					stringBuilder.Append(licxEntry);
					stringBuilder.Append(Environment.NewLine);
				}
			}
			catch (Exception ex3)
			{
				stringBuilder.Append(ex3.Message);
			}
		}
		else
		{
			stringBuilder.Append("No Syncfusion.Core entries found in licenses.licx files.");
			stringBuilder.Append(Environment.NewLine);
		}
		return stringBuilder.ToString();
	}

	public bool HasLicxEntries()
	{
		return LicxEntries.Count > 0;
	}
}
