using System;
using System.Drawing;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class StyleRendererPropertyVS2008 : OneNoteStyleRendererProperty
{
	private const int DEF_OVERLAP_HEIGHT = 7;

	internal bool IsVistaOS => Environment.OSVersion.Version.Major >= 6;

	public virtual Color DefaultBorderColor
	{
		get
		{
			Color empty = Color.Empty;
			if (IsVistaOS)
			{
				return Color.FromArgb(127, 157, 185);
			}
			return WindowsXPThemeColors.TabControlAdvActiveBorderColor;
		}
	}

	public override void OnPaintPanelBackground(ITabControl tabControl, Graphics g, Color bgColor, Rectangle bounds)
	{
	}

	public override Color DefaultTabPanelBackgroundColor(ITabPanelData panelData, ITabControl tabControl)
	{
		Color empty = Color.Empty;
		if (IsVistaOS)
		{
			return Color.FromArgb(233, 236, 250);
		}
		return WindowsXPThemeColors.TabControlAdvTabPanelBackGroundColor;
	}

	public override Color DefaultInactiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		Color empty = Color.Empty;
		if (IsVistaOS)
		{
			return Color.FromArgb(154, 182, 211);
		}
		return WindowsXPThemeColors.TabControlAdvInactiveBottomTabColor;
	}

	public override Color DefaultActiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		Color empty = Color.Empty;
		if (IsVistaOS)
		{
			return Color.FromArgb(210, 230, 250);
		}
		return WindowsXPThemeColors.TabControlAdvActiveBottomTabColor;
	}

	public override Font DefaultActiveTabFont(ITabPanelData panelData, ITabControl tabControl)
	{
		return FontUtil.CreateFont(DefaultInactiveTabFont(panelData, tabControl), FontStyle.Bold);
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		SizeF overlapSize = base.GetOverlapSize(tabSize);
		overlapSize.Height = 7f;
		return overlapSize;
	}
}
