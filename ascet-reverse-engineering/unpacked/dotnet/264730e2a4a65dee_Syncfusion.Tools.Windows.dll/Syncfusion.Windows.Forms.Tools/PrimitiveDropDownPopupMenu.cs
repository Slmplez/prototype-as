using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class PrimitiveDropDownPopupMenu : PopupMenu
{
	private TabControlAdv m_tabControlAdv;

	private Rectangle m_activeBounds = Rectangle.Empty;

	public Rectangle ActiveBounds
	{
		get
		{
			return m_activeBounds;
		}
		set
		{
			m_activeBounds = value;
		}
	}

	public TabControlAdv TabControlAdv
	{
		get
		{
			return m_tabControlAdv;
		}
		set
		{
			m_tabControlAdv = value;
		}
	}

	public override bool IsRelatedControl(Control control, bool askParent)
	{
		if (m_tabControlAdv != null && control == m_tabControlAdv)
		{
			Point pt = m_tabControlAdv.PointToClient(Control.MousePosition);
			if (m_activeBounds.Contains(pt))
			{
				return true;
			}
		}
		return base.IsRelatedControl(control, askParent);
	}
}
