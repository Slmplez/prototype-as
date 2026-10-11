using System;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Microsoft.Win32;

namespace ETAS.StandardDialogs;

[Guid("32B6FCA5-BECF-4001-A8DE-71B7B89C63EF")]
[ProgId("ETAS.StandardDialogs.CheckRebootDialog")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public sealed class CheckRebootDialog : ICheckRebootDialog, IDisposable
{
	private readonly InternalCheckRebootDialog m_InternalCheckRebootDialog;

	private bool m_Disposed;

	private string m_RegPath;

	public ELanguageType Language
	{
		get
		{
			return m_InternalCheckRebootDialog.Language;
		}
		set
		{
			m_InternalCheckRebootDialog.Language = value;
		}
	}

	public EApplicationDialogType DialogType
	{
		get
		{
			return m_InternalCheckRebootDialog.DialogType;
		}
		set
		{
			m_InternalCheckRebootDialog.DialogType = value;
		}
	}

	public string AppTitle
	{
		get
		{
			return m_InternalCheckRebootDialog.AppTitle;
		}
		set
		{
			m_InternalCheckRebootDialog.AppTitle = value;
		}
	}

	public string RegPath
	{
		get
		{
			return m_RegPath;
		}
		set
		{
			m_RegPath = value;
		}
	}

	public CheckRebootDialog(EApplicationDialogType applicationDialog)
	{
		m_InternalCheckRebootDialog = new InternalCheckRebootDialog(applicationDialog);
	}

	public CheckRebootDialog()
		: this(EApplicationDialogType.INCA)
	{
	}

	private bool checkForReboot()
	{
		try
		{
			string text = BitConverter.ToString((byte[])Registry.GetValue("HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Control\\Windows", "ShutdownTime", ""));
			if (BitConverter.ToString((byte[])Registry.GetValue("HKEY_LOCAL_MACHINE\\" + m_RegPath, "STimeDuringInst", "")) != text)
			{
				return false;
			}
			return true;
		}
		catch (Exception)
		{
			return false;
		}
	}

	public bool CheckAndShow()
	{
		if (checkForReboot())
		{
			m_InternalCheckRebootDialog.ShowDialog();
			return true;
		}
		return false;
	}

	public bool CheckAndShow(IWin32Window owner)
	{
		if (checkForReboot())
		{
			m_InternalCheckRebootDialog.ShowDialog(owner);
			return true;
		}
		return false;
	}

	public void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	private void Dispose(bool disposing)
	{
		if (!m_Disposed && disposing && m_InternalCheckRebootDialog != null)
		{
			m_InternalCheckRebootDialog.Dispose();
		}
		m_Disposed = true;
	}
}
