using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Design;

internal class AdvancedBindingPropertyDescriptor : PropertyDescriptor
{
	internal static AdvancedBindingEditor advancedBindingEditor;

	public override Type PropertyType => typeof(object);

	public override bool IsReadOnly => false;

	public override Type ComponentType => typeof(ControlBindingsCollection);

	public override AttributeCollection Attributes => base.Attributes;

	internal AdvancedBindingPropertyDescriptor()
		: base("AdvancedBindingPropertyDescName", null)
	{
	}

	static AdvancedBindingPropertyDescriptor()
	{
		advancedBindingEditor = new AdvancedBindingEditor();
	}

	public override bool ShouldSerializeValue(object component)
	{
		return false;
	}

	public override void SetValue(object component, object value)
	{
	}

	public override void ResetValue(object component)
	{
	}

	public override object GetValue(object component)
	{
		return new AdvancedBindingObject((ControlBindingsCollection)component);
	}

	public override object GetEditor(Type type)
	{
		if (type == typeof(UITypeEditor))
		{
			return advancedBindingEditor;
		}
		return base.GetEditor(type);
	}

	public override bool CanResetValue(object component)
	{
		return false;
	}

	protected override void FillAttributes(IList attributeList)
	{
		attributeList.Add(RefreshPropertiesAttribute.All);
		base.FillAttributes(attributeList);
	}
}
