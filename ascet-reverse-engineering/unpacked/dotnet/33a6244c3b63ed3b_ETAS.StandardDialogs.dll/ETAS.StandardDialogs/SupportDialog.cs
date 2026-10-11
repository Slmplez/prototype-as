using System;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace ETAS.StandardDialogs;

[Guid("204A2F2D-4781-4f89-8637-FF4523D37363")]
[ProgId("ETAS.StandardDialogs.SupportDialog")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public sealed class SupportDialog : ISupportDialog, IDisposable
{
	private readonly InternalSupportDialog m_InternalSupportDialog;

	private bool m_Disposed;

	public ELanguageType Language
	{
		get
		{
			return m_InternalSupportDialog.Language;
		}
		set
		{
			m_InternalSupportDialog.Language = value;
		}
	}

	public EApplicationDialogType DialogType
	{
		get
		{
			return m_InternalSupportDialog.DialogType;
		}
		set
		{
			m_InternalSupportDialog.DialogType = value;
			m_InternalSupportDialog.Headline = string.Concat(value, " Support");
		}
	}

	public Location LocationEurope
	{
		get
		{
			return m_InternalSupportDialog.LocationEurope;
		}
		set
		{
			m_InternalSupportDialog.LocationEurope = value;
		}
	}

	public Location LocationFrBeLux
	{
		get
		{
			return m_InternalSupportDialog.LocationFrBeLux;
		}
		set
		{
			m_InternalSupportDialog.LocationFrBeLux = value;
		}
	}

	public Location LocationGreatBritain
	{
		get
		{
			return m_InternalSupportDialog.LocationGreatBritain;
		}
		set
		{
			m_InternalSupportDialog.LocationGreatBritain = value;
		}
	}

	public Location LocationUSA
	{
		get
		{
			return m_InternalSupportDialog.LocationUSA;
		}
		set
		{
			m_InternalSupportDialog.LocationUSA = value;
		}
	}

	public Location LocationJapan
	{
		get
		{
			return m_InternalSupportDialog.LocationJapan;
		}
		set
		{
			m_InternalSupportDialog.LocationJapan = value;
		}
	}

	public Location LocationKorea
	{
		get
		{
			return m_InternalSupportDialog.LocationKorea;
		}
		set
		{
			m_InternalSupportDialog.LocationKorea = value;
		}
	}

	public Location LocationChina
	{
		get
		{
			return m_InternalSupportDialog.LocationChina;
		}
		set
		{
			m_InternalSupportDialog.LocationChina = value;
		}
	}

	public Location LocationIndia
	{
		get
		{
			return m_InternalSupportDialog.LocationIndia;
		}
		set
		{
			m_InternalSupportDialog.LocationIndia = value;
		}
	}

	public string Headline
	{
		get
		{
			return m_InternalSupportDialog.Headline;
		}
		set
		{
			m_InternalSupportDialog.Headline = value;
		}
	}

	public SupportDialog(EApplicationDialogType applicationDialog)
	{
		m_InternalSupportDialog = new InternalSupportDialog(applicationDialog);
		m_InternalSupportDialog.Headline = string.Concat(applicationDialog, " Support");
	}

	public SupportDialog()
		: this(EApplicationDialogType.ASCET)
	{
	}

	public void Show()
	{
		m_InternalSupportDialog.Show();
		m_InternalSupportDialog.BringToFront();
	}

	public void Show(IWin32Window owner)
	{
		m_InternalSupportDialog.Show(owner);
		m_InternalSupportDialog.BringToFront();
	}

	public void ShowDialog()
	{
		m_InternalSupportDialog.ShowDialog();
	}

	public void ShowDialog(IWin32Window owner)
	{
		m_InternalSupportDialog.ShowDialog(owner);
	}

	public void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	private void Dispose(bool disposing)
	{
		if (!m_Disposed && disposing && m_InternalSupportDialog != null)
		{
			m_InternalSupportDialog.Dispose();
		}
		m_Disposed = true;
	}
}
