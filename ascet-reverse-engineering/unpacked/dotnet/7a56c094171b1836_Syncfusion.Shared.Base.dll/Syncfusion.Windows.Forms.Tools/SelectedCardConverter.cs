using System.Collections;
using System.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class SelectedCardConverter : StringConverter
{
	public override bool GetStandardValuesSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		ArrayList arrayList = new ArrayList();
		object instance = context.Instance;
		if (instance is CardLayout cardLayout)
		{
			arrayList = cardLayout.GetCardNames();
		}
		if (arrayList.Count == 0)
		{
			arrayList.Add(string.Empty);
		}
		return new StandardValuesCollection(arrayList);
	}

	public override bool GetStandardValuesExclusive(ITypeDescriptorContext context)
	{
		return true;
	}
}
