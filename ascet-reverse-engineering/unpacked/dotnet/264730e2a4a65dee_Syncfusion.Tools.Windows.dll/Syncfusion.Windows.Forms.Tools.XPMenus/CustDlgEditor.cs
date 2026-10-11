using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class CustDlgEditor : UITypeEditor
{
	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		BarManager barManager = null;
		if (context.Instance is BarManager)
		{
			barManager = context.Instance as BarManager;
		}
		else if (context.Instance is Bar)
		{
			barManager = ((Bar)context.Instance).Manager;
		}
		else if (value is BarItems)
		{
			barManager = ((BarItems)value).Manager;
		}
		if (barManager != null && provider.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			barManager.Customize(designerHost);
		}
		return value;
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.Modal;
	}
}
