using System;
using System.Collections;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Renderers;

public class BasicRenderer : IRenderer
{
	protected class Bitmaps : Hashtable
	{
		public override object this[object key]
		{
			get
			{
				return base[key];
			}
			set
			{
				if (base[key] is IDisposable disposable)
				{
					disposable.Dispose();
				}
				base[key] = value;
			}
		}

		public Bitmaps(int capacity)
			: base(capacity)
		{
		}
	}

	protected ScrollBarCustomDraw m_parent;

	protected bool m_isVerticalScroll;

	protected ScrollBarCustomDraw Parent => m_parent;

	public virtual bool IsVerticalScrollBar
	{
		get
		{
			return m_isVerticalScroll;
		}
		set
		{
			if (m_isVerticalScroll != value)
			{
				m_isVerticalScroll = value;
			}
		}
	}

	protected internal BasicRenderer(bool isVerticalScrollBar)
	{
		m_isVerticalScroll = isVerticalScrollBar;
	}

	public BasicRenderer(ScrollBarCustomDraw parent)
	{
		m_parent = parent;
		if (parent is HScrollBarCustomDraw)
		{
			IsVerticalScrollBar = false;
		}
		else if (parent is VScrollBarCustomDraw)
		{
			IsVerticalScrollBar = true;
		}
	}

	public virtual void DrawBackground(Graphics g, Rectangle bounds, ButtonState state)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		if (bounds.Width <= 0 || bounds.Height <= 0)
		{
			return;
		}
		Color controlLight = SystemColors.ControlLight;
		using (Brush brush = new SolidBrush(controlLight))
		{
			g.FillRectangle(brush, bounds);
		}
		if (state == ButtonState.Pushed)
		{
			Color highlight = SystemColors.Highlight;
			Color color = Color.FromArgb(200, highlight);
			using Brush brush2 = new SolidBrush(color);
			g.FillRectangle(brush2, bounds);
		}
	}

	public virtual void DrawArrowButton(Graphics g, Rectangle bounds, ScrollButton type, ButtonState state)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		if (bounds.Height > 0 && bounds.Width > 0)
		{
			ControlPaint.DrawScrollButton(g, bounds, type, state);
		}
	}

	public virtual void DrawThumb(Graphics g, Rectangle bounds, ButtonState state)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		if (bounds.Width > 0 && bounds.Height > 0)
		{
			if (state == ButtonState.Inactive)
			{
				DrawBackground(g, bounds, state);
			}
			else
			{
				ControlPaint.DrawButton(g, bounds, state);
			}
		}
	}
}
