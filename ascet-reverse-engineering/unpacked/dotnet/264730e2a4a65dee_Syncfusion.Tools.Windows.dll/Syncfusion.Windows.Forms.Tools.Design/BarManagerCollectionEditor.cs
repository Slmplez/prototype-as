using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using Syncfusion.Collections;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class BarManagerCollectionEditor : CollectionEditor
{
	public BarManagerCollectionEditor(Type type)
		: base(type)
	{
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		BarManager barManager = null;
		if (context.Instance is BarManager)
		{
			barManager = context.Instance as BarManager;
		}
		else if (value is BarItems)
		{
			barManager = ((BarItems)value).Manager;
		}
		else if (value is IntList && context.Instance is ParentBarItem)
		{
			barManager = ((ParentBarItem)context.Instance).Manager;
		}
		if (barManager != null)
		{
			if (provider.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
			{
				barManager.Customize(designerHost);
			}
			return value;
		}
		return base.EditValue(context, provider, value);
	}
}
