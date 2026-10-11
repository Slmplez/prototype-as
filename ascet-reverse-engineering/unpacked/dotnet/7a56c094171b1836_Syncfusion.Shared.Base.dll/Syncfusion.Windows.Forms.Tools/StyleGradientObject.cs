using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[TypeConverter(typeof(StyleGradientObjectConvertor))]
public class StyleGradientObject
{
	private Color m_clrStart;

	private Color m_clrEnd;

	private LinearGradientMode m_gradient;

	[Description("Get or set start gradient color.")]
	public Color StartColor
	{
		get
		{
			return m_clrStart;
		}
		set
		{
			if (value != m_clrStart)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_clrStart, value);
				m_clrStart = value;
				OnStartColorChanged(args);
			}
		}
	}

	[Description("Get or set end gradient color.")]
	public Color EndColor
	{
		get
		{
			return m_clrEnd;
		}
		set
		{
			if (value != m_clrEnd)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_clrEnd, value);
				m_clrEnd = value;
				OnEndColorChanged(args);
			}
		}
	}

	[Description("Get or set gradient style.")]
	public LinearGradientMode GradientMode
	{
		get
		{
			return m_gradient;
		}
		set
		{
			if (value != m_gradient)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_gradient, value);
				m_gradient = value;
				OnGradientModeChanged(args);
			}
		}
	}

	public event EventHandler OnChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler StartColorChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler EndColorChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler GradientModeChanged;

	public StyleGradientObject()
	{
	}

	public StyleGradientObject(Color start, Color end, LinearGradientMode mode)
		: this()
	{
		m_clrStart = start;
		m_clrEnd = end;
		m_gradient = mode;
	}

	public void FillRectangle(Graphics g, Rectangle bounds)
	{
		Brush brush = CreateBrush(bounds);
		g.FillRectangle(brush, bounds);
		brush.Dispose();
	}

	public void FillRectangle(Graphics g, GraphicsPath bounds)
	{
		Region region = new Region(bounds);
		RectangleF bounds2 = bounds.GetBounds();
		Region clip = g.Clip;
		g.Clip = region;
		Brush brush = CreateBrush(bounds2);
		g.FillRectangle(brush, bounds2);
		brush.Dispose();
		g.Clip = clip;
		region.Dispose();
	}

	private Brush CreateBrush(RectangleF bounds)
	{
		Brush brush = null;
		if (EndColor == StartColor)
		{
			return new SolidBrush(StartColor);
		}
		return new LinearGradientBrush(bounds, StartColor, EndColor, GradientMode);
	}

	protected void RaiseOnChanged(ValueChangedEventArgs args)
	{
		if (this.OnChanged != null)
		{
			this.OnChanged(this, args);
		}
	}

	protected void RaiseStartColorChanged(ValueChangedEventArgs args)
	{
		if (this.StartColorChanged != null)
		{
			this.StartColorChanged(this, args);
		}
		RaiseOnChanged(args);
	}

	protected void RaiseEndColorChanged(ValueChangedEventArgs args)
	{
		if (this.EndColorChanged != null)
		{
			this.EndColorChanged(this, args);
		}
		RaiseOnChanged(args);
	}

	protected void RaiseGradientModeChanged(ValueChangedEventArgs args)
	{
		if (this.GradientModeChanged != null)
		{
			this.GradientModeChanged(this, args);
		}
		RaiseOnChanged(args);
	}

	public override string ToString()
	{
		return $"Start: {StartColor} End: {EndColor} Mode: {GradientMode}";
	}

	protected virtual void OnStartColorChanged(ValueChangedEventArgs args)
	{
		RaiseStartColorChanged(args);
	}

	protected virtual void OnEndColorChanged(ValueChangedEventArgs args)
	{
		RaiseEndColorChanged(args);
	}

	protected virtual void OnGradientModeChanged(ValueChangedEventArgs args)
	{
		RaiseGradientModeChanged(args);
	}
}
