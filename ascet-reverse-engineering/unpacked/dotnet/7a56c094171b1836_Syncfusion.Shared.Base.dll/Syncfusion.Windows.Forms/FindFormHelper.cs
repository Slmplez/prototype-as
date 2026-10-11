using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public class FindFormHelper
{
	public static Form FindForm(Control c)
	{
		if (c is IFindParentForm)
		{
			return ((IFindParentForm)c).FindParentForm();
		}
		return c.FindForm();
	}
}
