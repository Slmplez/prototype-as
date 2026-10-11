using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class ShadowWindow : DropDownWindow
{
	public static int ShadowWidth;

	public static int ShadowHeight;

	internal Point[] borderOverlapLine;

	public Point[] BorderOverlapLine
	{
		get
		{
			return borderOverlapLine;
		}
		set
		{
			if (value == null || value.Length == 2)
			{
				borderOverlapLine = value;
			}
			else
			{
				borderOverlapLine = null;
			}
		}
	}

	static ShadowWindow()
	{
		ShadowWidth = 4;
		ShadowHeight = 4;
		if (Environment.OSVersion.Platform != PlatformID.Win32NT || Environment.OSVersion.Version.Major < 5)
		{
			ShadowWidth = 2;
			ShadowHeight = 2;
		}
	}

	public ShadowWindow()
	{
		SuspendLayout();
		SetStyle(ControlStyles.AllPaintingInWmPaint, value: true);
		base.Size = new Size(0, 0);
		base.Location = new Point(-1000, -1000);
		base.AllowTransparency = true;
		base.Opacity = 0.20000000298023224;
		base.TransparencyKey = Color.LightGray;
		ResumeLayout(performLayout: false);
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
		base.TransparencyKey = Color.Empty;
	}

	protected virtual Rectangle GetRectToExclude()
	{
		if (borderOverlapLine != null)
		{
			Point[] array = new Point[2]
			{
				PointToClient(borderOverlapLine[0]),
				PointToClient(borderOverlapLine[1])
			};
			bool flag = false;
			if (array[0].Y == array[1].Y)
			{
				flag = true;
			}
			if (flag)
			{
				if (array[0].Y > base.Height - array[0].Y)
				{
					return new Rectangle(array[0].X, 0, array[1].X - array[0].X, base.Height);
				}
			}
			else if (array[0].X > base.Width - array[0].X)
			{
				return new Rectangle(0, array[0].Y, base.Width, array[1].Y - array[0].Y);
			}
		}
		return Rectangle.Empty;
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		Rectangle rectToExclude = GetRectToExclude();
		Region region = new Region(base.ClientRectangle);
		region.Exclude(rectToExclude);
		try
		{
			e.Graphics.FillRegion(new SolidBrush(SystemColors.ControlDark), region);
		}
		catch (Exception)
		{
		}
		e.Graphics.FillRectangle(new SolidBrush(Color.LightGray), rectToExclude);
	}
}
