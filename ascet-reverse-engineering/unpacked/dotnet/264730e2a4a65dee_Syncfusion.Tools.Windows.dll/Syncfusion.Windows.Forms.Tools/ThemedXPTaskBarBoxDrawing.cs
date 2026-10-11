using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class ThemedXPTaskBarBoxDrawing : ThemedControlDrawing
{
	private XPTaskBarBox taskBarBox;

	public ThemedXPTaskBarBoxDrawing(XPTaskBarBox control, string classList)
		: base(classList)
	{
		taskBarBox = control;
	}

	public void DrawHeader(Graphics g, Rectangle rect)
	{
		DrawThemeBackground(g, 8, 0, rect);
	}

	public void DrawItemsBG(Graphics g, Rectangle rect)
	{
		DrawThemeBackground(g, 5, 0, rect);
	}

	public void DrawButton(Graphics g, Rectangle rect, bool expand)
	{
		int stateID = 2;
		if (taskBarBox.HeaderHit && taskBarBox.ShouldToggle())
		{
			stateID = 1;
		}
		if (Control.MouseButtons == MouseButtons.Left && taskBarBox.HeaderHit && taskBarBox.ShouldToggle())
		{
			stateID = 3;
		}
		DrawThemeBackground(g, expand ? 7 : 6, stateID, rect);
	}

	public Size GetHeaderButtonSize()
	{
		Graphics graphics = taskBarBox.CreateGraphics();
		Size partSize = GetPartSize(graphics, 7, 1, 2);
		graphics.Dispose();
		return partSize;
	}

	public Rectangle GetBarTextExtent(string text, Rectangle boundingRect, bool forheader)
	{
		Graphics graphics = taskBarBox.CreateGraphics();
		Rectangle textExtent = GetTextExtent(graphics, forheader ? 8 : 5, 0, text, boundingRect, 1040u);
		graphics.Dispose();
		return textExtent;
	}

	public void DrawBarText(Graphics g, string text, Rectangle boundingRect, bool forheader, bool hot, bool bIsMirrored, bool bClipText)
	{
		int num = 16;
		num = ((!bIsMirrored) ? num : (num | 0x20002));
		if (!bClipText)
		{
			num |= 0x18000;
		}
		DrawThemeText(g, forheader ? 8 : 5, 0, text, boundingRect, num, 0);
	}

	public void DrawBarText(Graphics g, string text, Rectangle boundingRect, bool forheader, bool hot, bool bIsMirrored, StringAlignment alignmentFormat, bool bClipText)
	{
		int num = 16;
		if (bIsMirrored)
		{
			num |= 0x20000;
		}
		switch (alignmentFormat)
		{
		case StringAlignment.Near:
			num = ((!bIsMirrored) ? num : (num | 2));
			break;
		case StringAlignment.Center:
			num |= 1;
			break;
		case StringAlignment.Far:
			num = ((!bIsMirrored) ? (num | 2) : num);
			break;
		}
		if (!bClipText)
		{
			num |= 0x18000;
		}
		DrawThemeText(g, forheader ? 8 : 5, 0, text, boundingRect, num, 0);
	}

	public Color GetTextThemeColor(bool header, bool hot)
	{
		int iPartId = (header ? 8 : 5);
		int iStateId = 0;
		ulong color = 0uL;
		Syncfusion.Runtime.InteropServices.NativeMethods.GetThemeColor(base.HTheme, iPartId, iStateId, 3803, ref color);
		int rgb = Syncfusion.Runtime.InteropServices.NativeMethods.COLORREFToRGB((int)color);
		return Color.FromArgb(Syncfusion.Runtime.InteropServices.NativeMethods.GetRValue(rgb), Syncfusion.Runtime.InteropServices.NativeMethods.GetGValue(rgb), Syncfusion.Runtime.InteropServices.NativeMethods.GetBValue(rgb));
	}
}
