using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Design;

public class VisualStyleEnumFilter : EnumConverter
{
	protected VisualStyle[] m_avsValuesToSkip;

	protected VisualStyleEnumFilter(Type type)
		: base(type)
	{
	}

	public VisualStyleEnumFilter(Type type, VisualStyle[] valuesToSkip)
		: base(type)
	{
		m_avsValuesToSkip = valuesToSkip;
	}

	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		StandardValuesCollection standardValues = base.GetStandardValues(context);
		VisualStyle[] array = new VisualStyle[standardValues.Count - m_avsValuesToSkip.Length];
		int i = 0;
		int num = 0;
		for (; i < standardValues.Count; i++)
		{
			VisualStyle visualStyle = (VisualStyle)standardValues[i];
			if (Array.IndexOf(m_avsValuesToSkip, visualStyle) < 0)
			{
				array.SetValue(visualStyle, num++);
			}
		}
		return new StandardValuesCollection(array);
	}
}
