using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using System.Globalization;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class MaskedEditCultureEditor : UITypeEditor
{
	private IWindowsFormsEditorService edSvc;

	private ListBox lb;

	private MaskedEditBox maskedEditBox;

	private IServiceProvider serviceProvider;

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context != null && context.Instance != null && provider != null)
		{
			edSvc = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			serviceProvider = provider;
			if (edSvc != null)
			{
				lb = new ListBox();
				lb.BorderStyle = BorderStyle.None;
				lb.SelectedIndexChanged += ValueChanged;
				maskedEditBox = (MaskedEditBox)context.Instance;
				lb.Items.Add("(Default)");
				lb.Items.Add("(UICulture)");
				lb.Items.Add("(InstalledUICulture)");
				CultureInfo[] cultures = CultureInfo.GetCultures(CultureTypes.SpecificCultures);
				foreach (CultureInfo cultureInfo in cultures)
				{
					lb.Items.Add(cultureInfo.Name + "  " + cultureInfo.EnglishName);
				}
				if (maskedEditBox.SpecialCultureValue == SpecialCultureValues.CurrentCulture)
				{
					lb.SetSelected(0, value: true);
				}
				if (maskedEditBox.SpecialCultureValue == SpecialCultureValues.UICulture)
				{
					lb.SetSelected(1, value: true);
				}
				if (maskedEditBox.SpecialCultureValue == SpecialCultureValues.InstalledCulture)
				{
					lb.SetSelected(2, value: true);
				}
				edSvc.DropDownControl(lb);
			}
		}
		return value;
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		if (context != null && context.Instance != null)
		{
			return UITypeEditorEditStyle.DropDown;
		}
		return base.GetEditStyle(context);
	}

	private void ValueChanged(object sender, EventArgs e)
	{
		if (serviceProvider != null && serviceProvider.GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.OnComponentChanging(maskedEditBox, null);
			componentChangeService.OnComponentChanged(maskedEditBox, null, null, null);
		}
		if (edSvc != null)
		{
			edSvc.CloseDropDown();
			ListBox listBox = (ListBox)sender;
			string itemText = listBox.GetItemText(listBox.SelectedItem);
			if (itemText.Equals("(Default)"))
			{
				maskedEditBox.SpecialCultureValue = SpecialCultureValues.CurrentCulture;
				maskedEditBox.Culture = new CultureInfo(CultureInfo.CurrentCulture.LCID, maskedEditBox.UseUserOverride);
				return;
			}
			if (itemText.Equals("(UICulture)"))
			{
				maskedEditBox.SpecialCultureValue = SpecialCultureValues.UICulture;
				maskedEditBox.Culture = new CultureInfo(CultureInfo.CurrentUICulture.LCID, maskedEditBox.UseUserOverride);
				return;
			}
			if (itemText.Equals("(InstalledUICulture)"))
			{
				maskedEditBox.SpecialCultureValue = SpecialCultureValues.InstalledCulture;
				maskedEditBox.Culture = new CultureInfo(CultureInfo.InstalledUICulture.LCID, maskedEditBox.UseUserOverride);
				return;
			}
			int length = itemText.IndexOf(' ');
			string name = itemText.Substring(0, length);
			maskedEditBox.SpecialCultureValue = SpecialCultureValues.None;
			maskedEditBox.Culture = new CultureInfo(name, maskedEditBox.UseUserOverride);
		}
	}
}
