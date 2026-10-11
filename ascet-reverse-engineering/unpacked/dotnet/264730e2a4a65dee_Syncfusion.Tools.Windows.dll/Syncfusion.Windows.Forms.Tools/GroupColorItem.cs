using System;
using System.ComponentModel;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[TypeConverter(typeof(GroupColorItemTypeConverter))]
public class GroupColorItem : ColorItem
{
	private ColorItemCollection m_inheritColorsCollection;

	private ColorUIAdvGroup m_group;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public ColorItemCollection SubItems
	{
		get
		{
			if (m_inheritColorsCollection == null)
			{
				m_inheritColorsCollection = new ColorItemCollection(Group, isBaseCollection: false);
			}
			return m_inheritColorsCollection;
		}
		set
		{
			if (m_inheritColorsCollection != value)
			{
				m_inheritColorsCollection = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ColorUIAdvGroup Group
	{
		get
		{
			return m_group;
		}
		set
		{
			if (m_group != value)
			{
				m_group = value;
			}
		}
	}

	public GroupColorItem(ColorUIAdvGroup group, Color color)
		: base(color)
	{
		m_group = group;
		if (group != null)
		{
			m_inheritColorsCollection = new ColorItemCollection(group, isBaseCollection: false);
		}
	}
}
