using System;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class ButtonEditChildButtonDesigner : ControlDesigner
{
	public override SelectionRules SelectionRules => SelectionRules.None;

	protected override void PreFilterProperties(IDictionary properties)
	{
		base.PreFilterProperties(properties);
		RemovePropertyBrowsable(strcolln: new string[18]
		{
			"RightToLeft", "ContextMenu", "ImeMode", "Dock", "DockPadding", "Anchor", "AutoScroll", "CausesValidation", "AllowDrop", "BackgroundImage",
			"Cursor", "DialogResult", "Location", "Size", "AccessibleDescription", "AccessibleName", "AccessibleRole", "DataBindings"
		}, control: Control, properties: properties);
	}

	private static void RemovePropertyBrowsable(Control control, string[] strcolln, IDictionary properties)
	{
		foreach (string key in strcolln)
		{
			PropertyDescriptor propertyDescriptor = (PropertyDescriptor)properties[key];
			if (propertyDescriptor == null || !propertyDescriptor.IsBrowsable)
			{
				continue;
			}
			AttributeCollection attributes = propertyDescriptor.Attributes;
			bool flag = false;
			foreach (Attribute item in attributes)
			{
				if (item is BrowsableAttribute)
				{
					flag = true;
					break;
				}
			}
			int num = (flag ? attributes.Count : (attributes.Count + 1));
			Attribute[] array = new Attribute[num];
			attributes.CopyTo(array, 0);
			if (flag)
			{
				array[Array.IndexOf(array, BrowsableAttribute.Yes)] = BrowsableAttribute.No;
			}
			else
			{
				array[num - 1] = BrowsableAttribute.No;
			}
			properties[key] = TypeDescriptor.CreateProperty(control.GetType(), propertyDescriptor, array);
		}
	}
}
