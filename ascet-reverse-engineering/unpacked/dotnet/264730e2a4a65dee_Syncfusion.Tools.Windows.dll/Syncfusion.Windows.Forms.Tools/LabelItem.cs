using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class LabelItem
{
	private readonly Size DEF_LABELSIZE = new Size(172, 20);

	private Size m_size = Size.Empty;

	private DockStyle m_dockStyle = DockStyle.Top;

	public Size Size
	{
		get
		{
			return m_size;
		}
		set
		{
			if (m_size != value)
			{
				m_size = value;
			}
		}
	}

	[DefaultValue(DockStyle.Top)]
	public DockStyle Dock => m_dockStyle;

	public LabelItem(ColorUIAdvGroup group)
	{
		Size = new Size(172, group.HeaderHeight);
	}
}
