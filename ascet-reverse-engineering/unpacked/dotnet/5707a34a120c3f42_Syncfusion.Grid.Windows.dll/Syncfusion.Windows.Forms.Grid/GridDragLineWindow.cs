using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal class GridDragLineWindow : TopLevelWindow
{
	private GridBorder border;

	private bool firstTime = true;

	protected override CreateParams CreateParams
	{
		[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ExStyle |= 128;
			return createParams;
		}
	}

	public GridBorder Border
	{
		get
		{
			return border;
		}
		set
		{
			border = value;
		}
	}

	public GridDragLineWindow()
	{
		SetStyle(ControlStyles.AllPaintingInWmPaint | WhidbeyCompatibleControlStyles.DoubleBuffer, value: true);
		SetStyle(ControlStyles.Selectable, value: false);
		base.TopLevel = true;
		base.TransparencyKey = Color.White;
	}

	protected override void OnPaint(PaintEventArgs pe)
	{
		if (!(border == null))
		{
			Graphics graphics = pe.Graphics;
			if (base.Height > base.Width)
			{
				GridBorderPaint.DrawRectangle(graphics, border, base.ClientRectangle, Color.White, GridBorderSide.Left);
			}
			else
			{
				GridBorderPaint.DrawRectangle(graphics, border, base.ClientRectangle, Color.White, GridBorderSide.Top);
			}
		}
	}

	public void ShowAt(Rectangle bounds, GridBorder border)
	{
		base.Visible = false;
		this.border = border;
		base.Location = new Point(10000, 10000);
		base.Size = bounds.Size;
		ShowWindowTopMost();
		Update();
		base.Bounds = bounds;
		ShowWindowTopMost();
		if (firstTime)
		{
			base.Bounds = bounds;
			Update();
			firstTime = false;
		}
	}

	public void Fade()
	{
		base.Location = new Point(10000, 10000);
		Hide();
	}
}
