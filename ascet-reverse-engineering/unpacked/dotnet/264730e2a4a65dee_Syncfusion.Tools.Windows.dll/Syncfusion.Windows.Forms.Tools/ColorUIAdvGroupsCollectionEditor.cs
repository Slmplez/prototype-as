using System;
using System.ComponentModel;
using System.ComponentModel.Design;

namespace Syncfusion.Windows.Forms.Tools;

internal class ColorUIAdvGroupsCollectionEditor : CollectionEditor
{
	private ColorPickerUIAdv m_colorPicker;

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context != null && context.Instance != null && provider != null)
		{
			m_colorPicker = context.Instance as ColorPickerUIAdv;
		}
		return base.EditValue(context, provider, value);
	}

	public ColorUIAdvGroupsCollectionEditor(Type type)
		: base(type)
	{
	}

	protected override object CreateInstance(Type itemType)
	{
		return new ColorUIAdvGroup(m_colorPicker, ColorUIAdvGroups.CustomColors, isDesignMode: true);
	}

	protected override void DestroyInstance(object instance)
	{
		base.DestroyInstance(instance);
		m_colorPicker.UpdateControl();
	}
}
