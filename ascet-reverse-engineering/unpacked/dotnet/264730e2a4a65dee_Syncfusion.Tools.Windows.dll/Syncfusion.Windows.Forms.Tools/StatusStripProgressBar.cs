using System.ComponentModel;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.StatusStrip)]
public class StatusStripProgressBar : ToolStripProgressBar, IStatusItem2, IStatusItem
{
	private bool m_bEndOfGroup;

	private string m_statusString;

	[DefaultValue(false)]
	[Description("Gets or sets a value indicating whether the label is the last component in the group.")]
	public bool EndOfGroup
	{
		get
		{
			return m_bEndOfGroup;
		}
		set
		{
			if (m_bEndOfGroup != value)
			{
				m_bEndOfGroup = value;
				if (base.Parent != null)
				{
					base.Parent.PerformLayout();
				}
			}
		}
	}

	bool IStatusItem.Active
	{
		get
		{
			return base.Available;
		}
		set
		{
			base.Available = value;
		}
	}

	bool IStatusItem.EndOfGroup
	{
		get
		{
			return EndOfGroup;
		}
		set
		{
			EndOfGroup = value;
		}
	}

	string IStatusItem.Text => Text;

	[DefaultValue(null)]
	public string StatusString
	{
		get
		{
			return m_statusString;
		}
		set
		{
			m_statusString = value;
		}
	}

	public StatusStripProgressBar()
	{
		base.Margin = new Padding(0, 4, 0, 2);
	}
}
