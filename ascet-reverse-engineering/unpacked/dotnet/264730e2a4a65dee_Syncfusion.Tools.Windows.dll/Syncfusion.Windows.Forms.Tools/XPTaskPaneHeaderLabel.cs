using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class XPTaskPaneHeaderLabel : Label
{
	public override Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			XPTaskPane xPTaskPane = (base.Parent as XPTaskPaneHeader).Parent as XPTaskPane;
			if (xPTaskPane.VisualStyle == VisualStyle.Office2007 && value != Color.Transparent)
			{
				throw new ArgumentException("Cannot change BackColor, while VisualStyle isn't set to Default.");
			}
			base.BackColor = value;
		}
	}
}
