using System;

namespace Syncfusion.Windows.Forms.Design;

public class DefaultVisualStyleEnumFilter : VisualStyleEnumFilter
{
	private static readonly VisualStyle[] r_avsValuesToSkip = new VisualStyle[1] { VisualStyle.Office2007Outlook };

	public DefaultVisualStyleEnumFilter(Type type)
		: base(type, (VisualStyle[])r_avsValuesToSkip.Clone())
	{
	}

	public DefaultVisualStyleEnumFilter(Type type, VisualStyle[] valuesToSkip)
		: this(type)
	{
		if (valuesToSkip.Length > 0)
		{
			VisualStyle[] array = new VisualStyle[m_avsValuesToSkip.Length + valuesToSkip.Length];
			m_avsValuesToSkip.CopyTo(array, 0);
			valuesToSkip.CopyTo(array, m_avsValuesToSkip.Length);
			m_avsValuesToSkip = array;
		}
	}
}
