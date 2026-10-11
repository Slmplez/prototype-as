using System;
using System.Reflection;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public class PropertyGridContextMenuHelper
{
	public static bool ShouldSerializeSelectedValue(PropertyGrid pg)
	{
		if (pg.SelectedGridItem == null)
		{
			return false;
		}
		GridItem selectedGridItem = pg.SelectedGridItem;
		Type type = Type.GetType("System.Windows.Forms.PropertyGridInternal.GridEntry, System.Windows.Forms");
		if (type != null)
		{
			MethodInfo method = type.GetMethod("ShouldSerializePropertyValue", BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.InvokeMethod);
			if (method != null)
			{
				return (bool)method.Invoke(selectedGridItem, new object[0]);
			}
		}
		return true;
	}
}
