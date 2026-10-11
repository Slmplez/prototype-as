using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class MDIChildState
{
	private FormBorderStyle m_BorderStyle;

	private bool m_bControlBox;

	private bool m_bHelpButton;

	private bool m_bMaximizeBox;

	private bool m_bMinimizeBox;

	private SizeGripStyle m_szGripStyle;

	private DockStyle m_dockStyle;

	private FormStartPosition m_frmStartPosition;

	internal FormBorderStyle FormBorderStyle
	{
		get
		{
			return m_BorderStyle;
		}
		set
		{
			m_BorderStyle = value;
		}
	}

	internal bool ControlBox
	{
		get
		{
			return m_bControlBox;
		}
		set
		{
			m_bControlBox = value;
		}
	}

	internal bool HelpButton
	{
		get
		{
			return m_bHelpButton;
		}
		set
		{
			m_bHelpButton = value;
		}
	}

	internal bool MaximizeBox
	{
		get
		{
			return m_bMaximizeBox;
		}
		set
		{
			m_bMaximizeBox = value;
		}
	}

	internal bool MinimizeBox
	{
		get
		{
			return m_bMinimizeBox;
		}
		set
		{
			m_bMinimizeBox = value;
		}
	}

	internal SizeGripStyle SizeGripStyle
	{
		get
		{
			return m_szGripStyle;
		}
		set
		{
			m_szGripStyle = value;
		}
	}

	internal DockStyle Dock
	{
		get
		{
			return m_dockStyle;
		}
		set
		{
			m_dockStyle = value;
		}
	}

	internal FormStartPosition StartPosition
	{
		get
		{
			return m_frmStartPosition;
		}
		set
		{
			m_frmStartPosition = value;
		}
	}

	internal MDIChildState(FormBorderStyle pFrmBorderStyle, bool pControlBox, bool pHelpButton, bool pMaximizeBox, bool pMinimizeBox, SizeGripStyle pSizeGripStyle, DockStyle pDockStyle, FormStartPosition pFrmStartPosition)
	{
		m_BorderStyle = pFrmBorderStyle;
		m_bControlBox = pControlBox;
		m_bHelpButton = pHelpButton;
		m_bMaximizeBox = pMaximizeBox;
		m_bMinimizeBox = pMinimizeBox;
		m_szGripStyle = pSizeGripStyle;
		m_dockStyle = pDockStyle;
		m_frmStartPosition = pFrmStartPosition;
	}
}
