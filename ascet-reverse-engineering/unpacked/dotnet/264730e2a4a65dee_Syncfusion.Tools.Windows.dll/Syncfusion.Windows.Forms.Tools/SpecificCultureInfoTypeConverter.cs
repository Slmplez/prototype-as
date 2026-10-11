using System.Collections;
using System.ComponentModel;
using System.Globalization;

namespace Syncfusion.Windows.Forms.Tools;

public class SpecificCultureInfoTypeConverter : CultureInfoConverter
{
	private StandardValuesCollection values;

	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		if (values == null)
		{
			CultureInfo[] cultures = CultureInfo.GetCultures(CultureTypes.SpecificCultures);
			ArrayList arrayList = new ArrayList();
			arrayList.Add(CultureInfo.InvariantCulture);
			arrayList.AddRange(cultures);
			values = new StandardValuesCollection(arrayList.ToArray());
		}
		return values;
	}
}
