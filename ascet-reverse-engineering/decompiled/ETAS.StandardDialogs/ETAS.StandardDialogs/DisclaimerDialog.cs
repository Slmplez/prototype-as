using System;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace ETAS.StandardDialogs;

[Guid("90D6FEE0-8D6A-4113-97E2-829631B4E3A6")]
[ProgId("ETAS.StandardDialogs.DisclaimerDialog")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public sealed class DisclaimerDialog : IDisclaimerDialog, IDisposable
{
	private readonly InternalDisclaimerDialog _internalDisclaimerDialog;

	private bool m_Disposed;

	public string DialogTitle
	{
		set
		{
			_internalDisclaimerDialog.DialogTitle = value;
		}
	}

	public ELanguageType Language
	{
		get
		{
			return _internalDisclaimerDialog.Language;
		}
		set
		{
			_internalDisclaimerDialog.Language = value;
		}
	}

	public EApplicationDialogType DialogType
	{
		get
		{
			return _internalDisclaimerDialog.DialogType;
		}
		set
		{
			_internalDisclaimerDialog.DialogType = value;
		}
	}

	public DisclaimerDialog()
	{
		_internalDisclaimerDialog = new InternalDisclaimerDialog();
	}

	public void Show()
	{
		_internalDisclaimerDialog.Show();
		_internalDisclaimerDialog.BringToFront();
	}

	public void Show(IWin32Window owner)
	{
		_internalDisclaimerDialog.Show(owner);
		_internalDisclaimerDialog.BringToFront();
	}

	public DialogResult ShowDialog()
	{
		return _internalDisclaimerDialog.ShowDialog();
	}

	public DialogResult ShowDialog(IWin32Window owner)
	{
		return _internalDisclaimerDialog.ShowDialog(owner);
	}

	public void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	private void Dispose(bool disposing)
	{
		if (!m_Disposed && disposing && _internalDisclaimerDialog != null)
		{
			_internalDisclaimerDialog.Dispose();
		}
		m_Disposed = true;
	}
}
