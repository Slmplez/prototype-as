using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class ColorItemCollectionEditor : CollectionEditor
{
	private ColorUIAdvGroup m_group;

	private GroupColorItem m_baseItem;

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context != null && context.Instance != null && provider != null)
		{
			if (context.Instance is ColorUIAdvGroup)
			{
				m_group = context.Instance as ColorUIAdvGroup;
			}
			else if (context.Instance is GroupColorItem)
			{
				m_baseItem = context.Instance as GroupColorItem;
			}
		}
		return base.EditValue(context, provider, value);
	}

	public ColorItemCollectionEditor(Type type)
		: base(type)
	{
	}

	protected override object CreateInstance(Type itemType)
	{
		if (m_group != null)
		{
			return new GroupColorItem(m_group, Color.White);
		}
		return new ColorItem(m_baseItem, Color.White);
	}
}
