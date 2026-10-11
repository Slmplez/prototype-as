using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
[DesignTimeVisible(false)]
public class TextPrimitive : Primitive
{
	private const int DEF_ANGLE_ROTATE = 180;

	private string m_text = string.Empty;

	private Font m_textFont = new Font("Arial", 8f);

	private Color m_textColor = SystemColors.ControlText;

	[Category("Appearance")]
	[DefaultValue("")]
	[Description("Displayed text.")]
	public string Text
	{
		get
		{
			return m_text;
		}
		set
		{
			if (value != m_text)
			{
				m_text = value;
				OnTextChanged();
			}
		}
	}

	[Category("Appearance")]
	[Description("Font for displayed text.")]
	public Font TextFont
	{
		get
		{
			return m_textFont;
		}
		set
		{
			if (value != m_textFont)
			{
				m_textFont = value;
				OnTextFontChanged();
			}
		}
	}

	[Category("Appearance")]
	[Description("Color of the displayed text.")]
	public Color TextColor
	{
		get
		{
			return m_textColor;
		}
		set
		{
			if (value != m_textColor)
			{
				m_textColor = value;
				OnTextColorChanged();
			}
		}
	}

	public event EventHandler TextChanged;

	public event EventHandler TextFontChanged;

	public event EventHandler TextColorChanged;

	public TextPrimitive(Size size, string text, GradientPanelExt owner)
		: base(size, owner)
	{
		Text = text;
		base.BackColor = Color.Transparent;
		base.PrimitiveBorderStyle = PrimitiveBorderStyle.Single;
	}

	public TextPrimitive(string text, GradientPanelExt owner)
		: this(Primitive.c_primitiveSize, text, owner)
	{
	}

	public TextPrimitive(GradientPanelExt owner)
		: this(Primitive.c_primitiveSize, string.Empty, owner)
	{
	}

	public TextPrimitive()
		: this(Primitive.c_primitiveSize, string.Empty, null)
	{
	}

	protected override void DrawBackground(Graphics g)
	{
		base.DrawBackground(g);
		Rectangle clientRect = base.ClientRect;
		Brush brush = new SolidBrush(TextColor);
		StringFormat stringFormat = new StringFormat();
		stringFormat.FormatFlags |= StringFormatFlags.NoWrap;
		stringFormat.Trimming = StringTrimming.EllipsisCharacter;
		stringFormat.Alignment = StringAlignment.Center;
		stringFormat.LineAlignment = StringAlignment.Center;
		Matrix matrix = null;
		if (base.Alignment == Alignment.Left)
		{
			stringFormat.FormatFlags |= StringFormatFlags.DirectionVertical;
			matrix = g.Transform;
			Matrix matrix2 = new Matrix();
			matrix2.RotateAt(180f, GetCenter());
			g.Transform = matrix2;
		}
		if (base.Alignment == Alignment.Right)
		{
			stringFormat.FormatFlags |= StringFormatFlags.DirectionVertical;
		}
		g.DrawString(Text, TextFont, brush, clientRect, stringFormat);
		if (matrix != null)
		{
			g.Transform = matrix;
		}
	}

	public override object Clone()
	{
		TextPrimitive textPrimitive = new TextPrimitive(base.Size, Text, base.OwnerControl);
		textPrimitive.Alignment = base.Alignment;
		textPrimitive.BackColor = base.BackColor;
		textPrimitive.BorderColor = base.BorderColor;
		textPrimitive.PrimitiveBorderStyle = base.PrimitiveBorderStyle;
		textPrimitive.Bounds = base.Bounds;
		textPrimitive.Selected = base.Selected;
		textPrimitive.Visible = base.Visible;
		textPrimitive.Position = base.Position;
		textPrimitive.TextColor = TextColor;
		textPrimitive.TextFont = TextFont;
		return textPrimitive;
	}

	private void RaiseTextChanged()
	{
		if (this.TextChanged != null)
		{
			this.TextChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseTextFontChanged()
	{
		if (this.TextFontChanged != null)
		{
			this.TextFontChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseTextColorChanged()
	{
		if (this.TextColorChanged != null)
		{
			this.TextColorChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnTextChanged()
	{
		Invalidate();
		RaiseTextChanged();
	}

	protected virtual void OnTextFontChanged()
	{
		Invalidate();
		RaiseTextFontChanged();
	}

	protected virtual void OnTextColorChanged()
	{
		Invalidate();
		RaiseTextFontChanged();
	}
}
