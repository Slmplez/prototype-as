using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class DrawToolbarItemEventArgs : DrawItemEventArgs
{
	public delegate void DrawDefaultBackground(DrawToolbarItemEventArgs drawItemInfo, bool useThemes);

	public delegate void DrawDefaultBorders(DrawToolbarItemEventArgs drawItemInfo, bool useThemes);

	public delegate void DrawDefaultInterior(DrawToolbarItemEventArgs drawItemInfo);

	private bool mousedown;

	private bool dropdown;

	private Color bgColor2 = Color.Empty;

	[DocumentationExclude]
	internal DrawDefaultBackground defaultDrawBackground;

	[DocumentationExclude]
	internal DrawDefaultBorders defaultDrawBorders;

	[DocumentationExclude]
	internal DrawDefaultInterior defaultDrawInterior;

	private Rectangle rectInterior;

	public Rectangle BoundsInterior => rectInterior;

	public Color BackColor2 => bgColor2;

	public bool MouseDown => mousedown;

	public bool DropDown => dropdown;

	public DrawToolbarItemEventArgs(Graphics g, bool mouseDown, bool dropdown, Font font, Rectangle bounds, int index, DrawItemState state, Color foreColor, Color backColor, Color backColor2, Rectangle boundsInterior, DrawDefaultBackground defaultDrawBackground, DrawDefaultBorders defaultDrawBorders, DrawDefaultInterior defaultDrawInterior)
		: base(g, font, bounds, index, state, foreColor, backColor)
	{
		this.defaultDrawBackground = defaultDrawBackground;
		this.defaultDrawBorders = defaultDrawBorders;
		this.defaultDrawInterior = defaultDrawInterior;
		rectInterior = boundsInterior;
		mousedown = mouseDown;
		this.dropdown = dropdown;
		bgColor2 = backColor2;
	}

	public override void DrawBackground()
	{
		if (defaultDrawBackground != null)
		{
			defaultDrawBackground(this, useThemes: true);
		}
	}

	public void DrawBorders()
	{
		if (defaultDrawBorders != null)
		{
			defaultDrawBorders(this, useThemes: true);
		}
	}

	public void DrawInterior()
	{
		if (defaultDrawInterior != null)
		{
			defaultDrawInterior(this);
		}
	}
}
