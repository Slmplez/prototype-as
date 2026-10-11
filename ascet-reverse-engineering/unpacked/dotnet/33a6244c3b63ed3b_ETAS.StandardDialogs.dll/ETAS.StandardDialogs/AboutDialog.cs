using System;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace ETAS.StandardDialogs;

[Guid("E010B1D3-B845-4b2e-993B-53BB259ECD54")]
[ProgId("ETAS.StandardDialogs.AboutDialog")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public sealed class AboutDialog : IAboutDialog, IDisposable
{
	private readonly InternalAboutDialog m_InternalAboutDialog;

	private bool m_Disposed;

	public EApplicationDialogType DialogType
	{
		get
		{
			return m_InternalAboutDialog.DialogType;
		}
		set
		{
			m_InternalAboutDialog.DialogType = value;
			m_InternalAboutDialog.Headline = value.ToString();
		}
	}

	public string Headline
	{
		get
		{
			return m_InternalAboutDialog.Headline;
		}
		set
		{
			m_InternalAboutDialog.Headline = value;
		}
	}

	public string SubHeadline
	{
		get
		{
			return m_InternalAboutDialog.Subheadline;
		}
		set
		{
			m_InternalAboutDialog.Subheadline = value;
		}
	}

	public string Content
	{
		get
		{
			return m_InternalAboutDialog.Content;
		}
		set
		{
			m_InternalAboutDialog.Content = value;
		}
	}

	public AboutDialog(EApplicationDialogType applicationDialog)
	{
		m_InternalAboutDialog = new InternalAboutDialog(applicationDialog);
		m_InternalAboutDialog.Headline = applicationDialog.ToString();
	}

	public AboutDialog()
		: this(EApplicationDialogType.ASCET)
	{
	}

	public void Show()
	{
		m_InternalAboutDialog.Show();
		m_InternalAboutDialog.BringToFront();
	}

	public void Show(IWin32Window owner)
	{
		m_InternalAboutDialog.Show(owner);
		m_InternalAboutDialog.BringToFront();
	}

	public void ShowDialog()
	{
		m_InternalAboutDialog.ShowDialog();
	}

	public void ShowDialog(IWin32Window owner)
	{
		m_InternalAboutDialog.ShowDialog(owner);
	}

	public void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	private void Dispose(bool disposing)
	{
		if (!m_Disposed && disposing && m_InternalAboutDialog != null)
		{
			m_InternalAboutDialog.Dispose();
		}
		m_Disposed = true;
	}
}
