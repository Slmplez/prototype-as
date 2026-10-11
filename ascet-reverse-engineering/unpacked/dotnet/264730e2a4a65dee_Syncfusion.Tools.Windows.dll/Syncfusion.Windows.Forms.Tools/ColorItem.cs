using System;
using System.ComponentModel;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[ToolboxItem(false)]
[TypeConverter(typeof(ColorItemTypeConverter))]
public class ColorItem : ColorItemBase
{
	private Color m_color = Color.Empty;

	private Rectangle m_bounds = Rectangle.Empty;

	private ColorItemState m_state;

	private int m_index = -1;

	private GroupColorItem m_baseItem;

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
				OnColorChanged(EventArgs.Empty);
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Rectangle Bounds
	{
		get
		{
			return m_bounds;
		}
		set
		{
			if (m_bounds != value)
			{
				m_bounds = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ColorItemState State
	{
		get
		{
			return m_state;
		}
		set
		{
			if (m_state != value)
			{
				m_state = value;
			}
		}
	}

	[Browsable(false)]
	[DefaultValue(-1)]
	public int Index
	{
		get
		{
			return m_index;
		}
		set
		{
			if (m_index != value)
			{
				m_index = value;
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	internal GroupColorItem BaseItem => m_baseItem;

	public event EventHandler ColorChanged;

	protected virtual void OnColorChanged(EventArgs e)
	{
		if (this.ColorChanged != null)
		{
			this.ColorChanged(this, e);
		}
	}

	public ColorItem()
		: this(null, Color.White)
	{
	}

	public ColorItem(Color color)
		: this(null, color)
	{
	}

	public ColorItem(GroupColorItem baseItem, Color color)
	{
		m_color = color;
		m_baseItem = baseItem;
	}
}
