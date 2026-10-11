using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Globalization;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class RibbonFormShortcutEditor : ShortcutKeysEditor
{
	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		object obj = base.EditValue(context, provider, value);
		if (CheckValue(context, provider, obj))
		{
			return obj;
		}
		return value;
	}

	public bool CheckValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		bool result = true;
		if (!Keys.None.Equals(value) && provider != null && context != null)
		{
			object instance = context.Instance;
			if (instance != null && provider.GetService(typeof(IDesignerHost)) is IDesignerHost { RootComponent: RibbonForm rootComponent })
			{
				object shortcutTarget = rootComponent.GetShortcutTarget(value);
				if (shortcutTarget != null && shortcutTarget != instance)
				{
					CultureInfo currentCulture = CultureInfo.CurrentCulture;
					string caption = SR.GetString(currentCulture, "RibbonFormShortcutConfirmTitle");
					string text = SR.GetString(currentCulture, "RibbonFormShortcutConfirmText");
					result = MessageBox.Show(text, caption, MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes;
				}
			}
		}
		return result;
	}
}
