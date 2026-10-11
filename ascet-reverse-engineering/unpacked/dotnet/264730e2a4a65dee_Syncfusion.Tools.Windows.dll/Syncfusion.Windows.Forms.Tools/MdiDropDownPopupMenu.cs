using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
internal class MdiDropDownPopupMenu : PopupMenu
{
	private MDITabPanel m_MDITabPanel;

	public MDITabPanel MDITabPanel
	{
		get
		{
			return m_MDITabPanel;
		}
		set
		{
			m_MDITabPanel = value;
		}
	}

	public override bool IsRelatedControl(Control control, bool askParent)
	{
		if (m_MDITabPanel != null && control == m_MDITabPanel)
		{
			Point pt = m_MDITabPanel.PointToClient(Control.MousePosition);
			if (m_MDITabPanel.DropDownButton.Bounds.Contains(pt))
			{
				return true;
			}
		}
		return base.IsRelatedControl(control, askParent);
	}
}
