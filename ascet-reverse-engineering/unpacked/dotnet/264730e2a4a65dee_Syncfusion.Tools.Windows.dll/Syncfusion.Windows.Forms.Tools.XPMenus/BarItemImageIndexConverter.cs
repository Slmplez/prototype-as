using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class BarItemImageIndexConverter : ImageIndexConverter
{
	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		IList images = GetImages(context);
		ArrayList arrayList = new ArrayList();
		if (images != null)
		{
			int count = images.Count;
			for (int i = 0; i < count; i++)
			{
				arrayList.Add(i);
			}
			if (IncludeNoneAsStandardValue)
			{
				arrayList.Add(-1);
			}
		}
		else
		{
			arrayList.Add(IncludeNoneAsStandardValue ? (-1) : 0);
		}
		return new StandardValuesCollection(arrayList);
	}

	protected virtual IList GetImages(ITypeDescriptorContext context)
	{
		IList result = null;
		if (context != null && context.Instance is BarItem item)
		{
			result = GetImages(item);
		}
		return result;
	}

	protected virtual IList GetImages(BarItem item)
	{
		return item.GetImageListInternal(item.Manager?.LargeIcons ?? false);
	}
}
