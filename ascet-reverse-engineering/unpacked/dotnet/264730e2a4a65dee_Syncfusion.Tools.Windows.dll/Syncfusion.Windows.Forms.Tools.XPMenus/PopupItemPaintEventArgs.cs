using System;
using System.Drawing;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class PopupItemPaintEventArgs : EventArgs
{
	private Graphics m_graphics;

	private Rectangle m_bounds;

	private bool m_selected;

	private DrawElement m_element;

	private bool m_handled;

	private GridStyleInfo m_style;

	public Graphics Graphics => m_graphics;

	public virtual Rectangle Bounds => m_bounds;

	public bool Selected
	{
		get
		{
			return m_selected;
		}
		set
		{
			m_selected = value;
		}
	}

	public DrawElement Element => m_element;

	public bool Handled
	{
		get
		{
			return m_handled;
		}
		set
		{
			m_handled = value;
		}
	}

	public GridStyleInfo Style => m_style;

	public PopupItemPaintEventArgs(Graphics g, Rectangle bounds, bool selected, DrawElement element, GridStyleInfo style)
	{
		m_graphics = g;
		m_bounds = bounds;
		m_selected = selected;
		m_element = element;
		m_style = style;
	}
}
