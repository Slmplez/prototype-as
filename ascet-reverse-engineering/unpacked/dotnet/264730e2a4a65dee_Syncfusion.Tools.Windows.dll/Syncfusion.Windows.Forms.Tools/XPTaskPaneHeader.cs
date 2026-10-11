using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class XPTaskPaneHeader : GradientPanel
{
	public override Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			XPTaskPane xPTaskPane = base.Parent as XPTaskPane;
			if (xPTaskPane.VisualStyle == VisualStyle.Office2007 && value != Color.Transparent)
			{
				throw new ArgumentException("Cannot change BackColor, while VisualStyle isn't set to Default.");
			}
			base.BackColor = value;
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (base.Parent is XPTaskPane { VisualStyle: VisualStyle.Office2007 } xPTaskPane)
		{
			Color groupBarItemColorLight = xPTaskPane.Office2007ColorTable.GroupBarItemColorLight;
			Color groupBarItemColorDark = xPTaskPane.Office2007ColorTable.GroupBarItemColorDark;
			Blend blend = new Blend();
			blend.Positions = new float[4] { 0f, 0.4f, 0.401f, 1f };
			blend.Factors = new float[4] { 0f, 0.5f, 1f, 0.5f };
			using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(base.ClientRectangle, groupBarItemColorLight, groupBarItemColorDark, LinearGradientMode.Vertical);
			linearGradientBrush.Blend = blend;
			e.Graphics.FillRectangle(linearGradientBrush, base.ClientRectangle);
		}
	}
}
