using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[ToolboxItem(false)]
public class MdiPopupMenu : PopupMenu
{
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

	public override bool IsRelatedControl(Control control, bool askParent)
	{
		if (control is BarControlInternal)
		{
			Point pt = control.PointToClient(Control.MousePosition);
			if (ActiveBounds.Contains(pt))
			{
				return true;
			}
		}
		return base.IsRelatedControl(control, askParent);
	}
}
