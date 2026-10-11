using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class TabUIDefaultProperties : ITabDefaultProperties
{
	public virtual bool DrawLeftToRight => true;

	public virtual bool DrawEllipsis => true;

	public virtual bool ShowInDesignMode => true;

	public virtual Color DefaultTabPanelBackgroundColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return tabControl.GetControl().BackColor;
	}

	public virtual Color DefaultTabForeColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return SystemColors.WindowText;
	}

	public virtual Color DefaultActiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return tabControl.GetControl().BackColor;
	}

	public virtual Color DefaultInactiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return tabControl.GetControl().BackColor;
	}

	public virtual Color DefaultFixedSingleBorderColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return SystemColors.WindowText;
	}

	public virtual Font DefaultTabPanelFont(ITabPanelData panelData, ITabControl tabControl)
	{
		return tabControl.GetControl().Font;
	}

	public virtual Font DefaultInactiveTabFont(ITabPanelData panelData, ITabControl tabControl)
	{
		if (panelData.Font != null)
		{
			return panelData.Font;
		}
		return DefaultTabPanelFont(panelData, tabControl);
	}

	public virtual Font DefaultActiveTabFont(ITabPanelData panelData, ITabControl tabControl)
	{
		return DefaultInactiveTabFont(panelData, tabControl);
	}

	public virtual SizeF GetOverlapSize(SizeF tabSize)
	{
		return new SizeF(0f, 0f);
	}

	public virtual void OnPaintPanelBackground(ITabControl tabControl, Graphics g, Color bgColor, Rectangle bounds)
	{
		if (tabControl.GetControl().BackColor != bgColor)
		{
			g.FillRectangle(new SolidBrush(bgColor), bounds);
		}
	}

	public virtual bool IsBackgroundSolid()
	{
		return true;
	}
}
