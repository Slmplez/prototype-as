using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using System.Globalization;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class CurrencyCultureEditor : UITypeEditor
{
	private IWindowsFormsEditorService edSvc;

	private ListBox lb;

	private NumberTextBoxBase currencyTextBox;

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
				currencyTextBox = (NumberTextBoxBase)context.Instance;
				lb.Items.Add("(Default)");
				lb.Items.Add("(UICulture)");
				lb.Items.Add("(InstalledUICulture)");
				CultureInfo[] cultures = CultureInfo.GetCultures(CultureTypes.SpecificCultures);
				foreach (CultureInfo cultureInfo in cultures)
				{
					lb.Items.Add(cultureInfo.Name + "  " + cultureInfo.EnglishName);
				}
				if (currencyTextBox.SpecialCultureValue == SpecialCultureValues.CurrentCulture)
				{
					lb.SetSelected(0, value: true);
				}
				if (currencyTextBox.SpecialCultureValue == SpecialCultureValues.UICulture)
				{
					lb.SetSelected(1, value: true);
				}
				if (currencyTextBox.SpecialCultureValue == SpecialCultureValues.InstalledCulture)
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
			componentChangeService.OnComponentChanging(currencyTextBox, null);
			componentChangeService.OnComponentChanged(currencyTextBox, null, null, null);
		}
		if (edSvc != null)
		{
			edSvc.CloseDropDown();
			ListBox listBox = (ListBox)sender;
			string itemText = listBox.GetItemText(listBox.SelectedItem);
			if (itemText.Equals("(Default)"))
			{
				currencyTextBox.SpecialCultureValue = SpecialCultureValues.CurrentCulture;
				currencyTextBox.Culture = new CultureInfo(CultureInfo.CurrentCulture.LCID, currencyTextBox.UseUserOverride);
				return;
			}
			if (itemText.Equals("(UICulture)"))
			{
				currencyTextBox.SpecialCultureValue = SpecialCultureValues.UICulture;
				currencyTextBox.Culture = new CultureInfo(CultureInfo.CurrentUICulture.LCID, currencyTextBox.UseUserOverride);
				return;
			}
			if (itemText.Equals("(InstalledUICulture)"))
			{
				currencyTextBox.SpecialCultureValue = SpecialCultureValues.InstalledCulture;
				currencyTextBox.Culture = new CultureInfo(CultureInfo.InstalledUICulture.LCID, currencyTextBox.UseUserOverride);
				return;
			}
			int length = itemText.IndexOf(" ");
			string name = itemText.Substring(0, length);
			currencyTextBox.SpecialCultureValue = SpecialCultureValues.None;
			currencyTextBox.Culture = new CultureInfo(name, currencyTextBox.UseUserOverride);
		}
	}
}
