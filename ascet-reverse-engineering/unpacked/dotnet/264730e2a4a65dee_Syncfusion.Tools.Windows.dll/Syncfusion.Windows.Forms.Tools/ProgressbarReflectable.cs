using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.None)]
public class ProgressbarReflectable : ToolStripProgressBar, INativeMessageFilter
{
	private const int PBM_SETRANGE = 1025;

	private const int PBM_SETPOS = 1026;

	private const int PBM_DELTAPOS = 1027;

	private const int PBM_SETSTEP = 1028;

	private const int PBM_STEPIT = 1029;

	private const int PBM_SETRANGE32 = 1030;

	private ToolStripProgressBar m_reflectedProgressbar;

	private NativeMessageHandler m_nativeMesHandler;

	private bool m_bExactCopy;

	public ToolStripProgressBar ReflectedProgressBar
	{
		get
		{
			return m_reflectedProgressbar;
		}
		set
		{
			if (m_reflectedProgressbar != null)
			{
				m_nativeMesHandler.MessageFilter = null;
			}
			m_reflectedProgressbar = value;
			if (m_reflectedProgressbar != null)
			{
				base.Maximum = m_reflectedProgressbar.Maximum;
				base.Minimum = m_reflectedProgressbar.Minimum;
				base.Step = m_reflectedProgressbar.Step;
				base.Style = m_reflectedProgressbar.Style;
				base.Value = m_reflectedProgressbar.Value;
				if (m_bExactCopy)
				{
					base.AutoSize = m_reflectedProgressbar.AutoSize;
				}
				m_nativeMesHandler = new NativeMessageHandler();
				m_nativeMesHandler.MessageFilter = this;
				m_nativeMesHandler.Assign(m_reflectedProgressbar.ProgressBar.Handle);
			}
		}
	}

	public override Size Size
	{
		get
		{
			if (m_bExactCopy && m_reflectedProgressbar != null && !base.AutoSize)
			{
				return m_reflectedProgressbar.Size;
			}
			return base.Size;
		}
		set
		{
			base.Size = value;
		}
	}

	public ProgressbarReflectable()
	{
	}

	public ProgressbarReflectable(ToolStripProgressBar reflectedItem)
		: this(reflectedItem, bExactCopy: false)
	{
	}

	public ProgressbarReflectable(ToolStripProgressBar reflectedItem, bool bExactCopy)
	{
		m_bExactCopy = bExactCopy;
		ReflectedProgressBar = reflectedItem;
	}

	public bool ProcessMessage(ref Message m)
	{
		switch (m.Msg)
		{
		case 1025:
		case 1026:
		case 1027:
		case 1028:
		case 1029:
		case 1030:
			WindowsAPI.SendMessage(base.ProgressBar.Handle, m.Msg, m.WParam, m.LParam);
			break;
		}
		return false;
	}

	protected override void Dispose(bool disposing)
	{
		if (m_reflectedProgressbar != null)
		{
			m_nativeMesHandler.MessageFilter = null;
		}
		base.Dispose(disposing);
	}

	public override Size GetPreferredSize(Size constrainingSize)
	{
		if (m_bExactCopy && m_reflectedProgressbar != null)
		{
			return m_reflectedProgressbar.GetPreferredSize(constrainingSize);
		}
		return base.GetPreferredSize(constrainingSize);
	}
}
