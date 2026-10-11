using System;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public class ScrollTipWindow : TopLevelWindow
{
	private BorderStyle borderStyle = BorderStyle.FixedSingle;

	private StringFormat sf;

	protected override CreateParams CreateParams
	{
		[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ExStyle |= 128;
			switch (borderStyle)
			{
			case BorderStyle.Fixed3D:
				createParams.ExStyle |= 512;
				break;
			case BorderStyle.FixedSingle:
				createParams.Style |= 8388608;
				break;
			}
			return createParams;
		}
	}

	public BorderStyle BorderStyle
	{
		get
		{
			return borderStyle;
		}
		set
		{
			if (borderStyle != value)
			{
				if (!Enum.IsDefined(typeof(BorderStyle), value))
				{
					throw new InvalidEnumArgumentException("value", (int)value, typeof(BorderStyle));
				}
				borderStyle = value;
				UpdateStyles();
			}
		}
	}

	public StringFormat Format
	{
		get
		{
			return sf;
		}
		set
		{
			if (sf != value)
			{
				if (sf != null)
				{
					sf.Dispose();
				}
				sf = value;
			}
		}
	}

	public ScrollTipWindow()
	{
		SetStyle(ControlStyles.AllPaintingInWmPaint | WhidbeyCompatibleControlStyles.DoubleBuffer, value: true);
		SetStyle(ControlStyles.Selectable, value: false);
		BackColor = SystemColors.Info;
		ForeColor = SystemColors.InfoText;
		sf = new StringFormat(StringFormatFlags.NoWrap | StringFormatFlags.NoClip);
		sf.Alignment = StringAlignment.Center;
		sf.LineAlignment = StringAlignment.Center;
		sf.Trimming = StringTrimming.Character;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && sf != null)
		{
			sf.Dispose();
			sf = null;
		}
		base.Dispose(disposing);
	}

	protected override void OnTextChanged(EventArgs e)
	{
		base.OnTextChanged(e);
		Refresh();
	}

	protected override void OnPaint(PaintEventArgs pe)
	{
		Graphics graphics = pe.Graphics;
		SolidBrush brush = new SolidBrush(ForeColor);
		graphics.DrawString(Text, Font, brush, base.ClientRectangle, sf);
	}

	public Size GetPreferredSize(string text)
	{
		Graphics graphics = CreateGraphics();
		Size result = graphics.MeasureString(text, Font).ToSize();
		result.Width += 8;
		result.Height += 8;
		graphics.Dispose();
		return result;
	}
}
