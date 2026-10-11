using System;
using System.Collections.Generic;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class ToolStripTabGroup
{
	private string m_name;

	private Color m_color;

	private List<Rectangle> m_boundsList;

	private bool m_bVisible = true;

	public string Name
	{
		get
		{
			return m_name;
		}
		set
		{
			if (m_name != value)
			{
				m_name = value;
				if (this.NameChanged != null)
				{
					this.NameChanged(this, EventArgs.Empty);
				}
			}
		}
	}

	public Color Color
	{
		get
		{
			return m_color;
		}
		set
		{
			if (m_color != value)
			{
				m_color = value;
				if (this.ColorChanged != null)
				{
					this.ColorChanged(this, EventArgs.Empty);
				}
			}
		}
	}

	public bool Visible
	{
		get
		{
			return m_bVisible;
		}
		set
		{
			if (m_bVisible != value)
			{
				m_bVisible = value;
				if (this.VisibilityChanged != null)
				{
					this.VisibilityChanged(this, EventArgs.Empty);
				}
			}
		}
	}

	internal List<Rectangle> BoundsList => m_boundsList;

	public event EventHandler NameChanged;

	public event EventHandler ColorChanged;

	public event EventHandler VisibilityChanged;

	public ToolStripTabGroup()
	{
		m_boundsList = new List<Rectangle>();
	}

	public override string ToString()
	{
		return m_name;
	}
}
