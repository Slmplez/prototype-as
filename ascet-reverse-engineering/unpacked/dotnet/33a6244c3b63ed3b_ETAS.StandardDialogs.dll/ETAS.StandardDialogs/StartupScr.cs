using System;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace ETAS.StandardDialogs;

[Guid("585016E9-1F82-4fb1-99BC-5F4292C85058")]
[ProgId("ETAS.StandardDialogs.StartupScr")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public sealed class StartupScr : IStartupScr, IDisposable
{
	private readonly InternalStartupScr m_InternalStartupScreen;

	private bool m_Disposed;

	public EApplicationDialogType DialogType
	{
		get
		{
			return m_InternalStartupScreen.DialogType;
		}
		set
		{
			m_InternalStartupScreen.DialogType = value;
			m_InternalStartupScreen.Headline = value.ToString();
		}
	}

	public string Headline
	{
		get
		{
			return m_InternalStartupScreen.Headline;
		}
		set
		{
			m_InternalStartupScreen.Headline = value;
		}
	}

	public string SubHeadline
	{
		get
		{
			return m_InternalStartupScreen.SubHeadline;
		}
		set
		{
			m_InternalStartupScreen.SubHeadline = value;
		}
	}

	public bool ShowInformationText
	{
		get
		{
			return m_InternalStartupScreen.ShowText;
		}
		set
		{
			m_InternalStartupScreen.ShowText = value;
		}
	}

	public string InformationText
	{
		get
		{
			return m_InternalStartupScreen.InformationText;
		}
		set
		{
			m_InternalStartupScreen.InformationText = value;
		}
	}

	public int ProgressBarValue
	{
		get
		{
			return m_InternalStartupScreen.ProgressBarValue;
		}
		set
		{
			m_InternalStartupScreen.ProgressBarValue = value;
		}
	}

	public bool ShowProgressBar
	{
		get
		{
			return m_InternalStartupScreen.ShowProgressBar;
		}
		set
		{
			m_InternalStartupScreen.ShowProgressBar = value;
		}
	}

	public bool SandClockMousePointer
	{
		get
		{
			return m_InternalStartupScreen.SandClockPointer;
		}
		set
		{
			m_InternalStartupScreen.SandClockPointer = value;
		}
	}

	public Icon SetStartupScreenIcon
	{
		get
		{
			return m_InternalStartupScreen.StartupScreenIcon;
		}
		set
		{
			m_InternalStartupScreen.StartupScreenIcon = value;
		}
	}

	public StartupScr()
		: this(EApplicationDialogType.ASCET)
	{
	}

	public StartupScr(EApplicationDialogType applicationType)
	{
		m_InternalStartupScreen = new InternalStartupScr(applicationType);
		m_InternalStartupScreen.Headline = applicationType.ToString();
	}

	public void Show()
	{
		m_InternalStartupScreen.ShowStartupDialog();
		if (string.IsNullOrEmpty(InformationText))
		{
			InformationText = string.Empty;
		}
		if (ProgressBarValue == 0)
		{
			ProgressBarValue = 0;
		}
	}

	public void Show(IWin32Window owner)
	{
		m_InternalStartupScreen.ShowStartupDialog(owner);
		if (string.IsNullOrEmpty(InformationText))
		{
			InformationText = string.Empty;
		}
		if (ProgressBarValue == 0)
		{
			ProgressBarValue = 0;
		}
	}

	private void Invoke(MethodInvoker methodInvoker)
	{
		throw new NotImplementedException();
	}

	public void Close()
	{
		m_InternalStartupScreen.CloseStartupDialog();
	}

	public void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	private void Dispose(bool disposing)
	{
		if (!m_Disposed && disposing && m_InternalStartupScreen != null)
		{
			m_InternalStartupScreen.Close();
			m_InternalStartupScreen.Dispose();
		}
		m_Disposed = true;
	}
}
