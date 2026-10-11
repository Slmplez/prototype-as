using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.ComponentModel.Design.Serialization;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class CurrencyEditDesigner : ControlDesigner, ICurrencyEditDesigner
{
	private CurrencyEditCollectionSerializationProvider dummySerProvider;

	private CurrencyEditButtonsCollectionSerializationProvider dummyButtonsSerProvider;

	private DesignerActionListCollection actionLists;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new CurrencyEditActionList(base.Component));
			}
			return actionLists;
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		IDesignerSerializationManager designerSerializationManager = (IDesignerSerializationManager)GetService(typeof(IDesignerSerializationManager));
		if (designerSerializationManager != null)
		{
			dummySerProvider = new CurrencyEditCollectionSerializationProvider(Control.Controls, this);
			designerSerializationManager.AddSerializationProvider(dummySerProvider);
			dummyButtonsSerProvider = new CurrencyEditButtonsCollectionSerializationProvider(((CurrencyEdit)Control).Buttons, this);
			designerSerializationManager.AddSerializationProvider(dummyButtonsSerProvider);
		}
	}

	protected override void Dispose(bool bdisposing)
	{
		base.Dispose(bdisposing);
	}

	protected override void OnPaintAdornments(PaintEventArgs pe)
	{
		if (Control != null)
		{
			ContainerControl control = (ContainerControl)Control;
			DrawingUtils.DrawDesignTimeBorder(pe.Graphics, control);
		}
		base.OnPaintAdornments(pe);
	}

	protected override void PreFilterProperties(IDictionary properties)
	{
		base.PreFilterProperties(properties);
		RemovePropertyBrowsable(strcolln: new string[3] { "DataBindings", "Buttons", "ShowTextBox" }, control: Control, properties: properties);
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

	public void RemoveUnserializableChildControls()
	{
		if (!(Control is ButtonEdit buttonEdit))
		{
			return;
		}
		ArrayList arrayList = new ArrayList();
		for (int num = buttonEdit.Controls.Count - 1; num >= 0; num--)
		{
			Control control = buttonEdit.Controls[num];
			if (control != null && control is ButtonEditChildButton)
			{
				arrayList.Add(control);
				buttonEdit.Controls.Remove(control);
			}
		}
		if (arrayList.Count > 0)
		{
			buttonEdit.ChildControlsRemovedByDesigner(arrayList);
		}
	}

	public void RemoveUnserializableButtons()
	{
		if (!(Control is CurrencyEdit currencyEdit))
		{
			return;
		}
		ArrayList arrayList = new ArrayList();
		for (int num = currencyEdit.Buttons.Count - 1; num >= 0; num--)
		{
			Control control = currencyEdit.Buttons[num];
			if (control != null && control is ButtonEditChildButton)
			{
				arrayList.Add(control);
				currencyEdit.Buttons.Remove((ButtonEditChildButton)control);
			}
		}
		if (arrayList.Count > 0)
		{
			currencyEdit.ChildButtonsRemovedByDesigner(arrayList);
		}
	}
}
