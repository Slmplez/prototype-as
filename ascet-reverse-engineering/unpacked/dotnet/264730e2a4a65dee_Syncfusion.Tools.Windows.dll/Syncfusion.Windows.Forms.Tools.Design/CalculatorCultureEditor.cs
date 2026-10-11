using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using System.Globalization;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class CalculatorCultureEditor : UITypeEditor
{
	private IWindowsFormsEditorService edSvc;

	private ListBox lb;

	private CalculatorControl calculatorControl;

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
				calculatorControl = (CalculatorControl)context.Instance;
				lb.Items.Add("(Default)");
				lb.Items.Add("(UICulture)");
				lb.Items.Add("(InstalledUICulture)");
				CultureInfo[] cultures = CultureInfo.GetCultures(CultureTypes.SpecificCultures);
				foreach (CultureInfo cultureInfo in cultures)
				{
					lb.Items.Add(cultureInfo.Name + "  " + cultureInfo.EnglishName);
				}
				if (calculatorControl.SpecialCultureValue == SpecialCultureValues.CurrentCulture)
				{
					lb.SetSelected(0, value: true);
				}
				if (calculatorControl.SpecialCultureValue == SpecialCultureValues.UICulture)
				{
					lb.SetSelected(1, value: true);
				}
				if (calculatorControl.SpecialCultureValue == SpecialCultureValues.InstalledCulture)
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
			componentChangeService.OnComponentChanging(calculatorControl, null);
			componentChangeService.OnComponentChanged(calculatorControl, null, null, null);
		}
		if (edSvc != null)
		{
			edSvc.CloseDropDown();
			ListBox listBox = (ListBox)sender;
			string itemText = listBox.GetItemText(listBox.SelectedItem);
			if (itemText.Equals("(Default)"))
			{
				calculatorControl.SpecialCultureValue = SpecialCultureValues.CurrentCulture;
				calculatorControl.Culture = new CultureInfo(CultureInfo.CurrentCulture.LCID, calculatorControl.UseUserOverride);
				return;
			}
			if (itemText.Equals("(UICulture)"))
			{
				calculatorControl.SpecialCultureValue = SpecialCultureValues.UICulture;
				calculatorControl.Culture = new CultureInfo(CultureInfo.CurrentUICulture.LCID, calculatorControl.UseUserOverride);
				return;
			}
			if (itemText.Equals("(InstalledUICulture)"))
			{
				calculatorControl.SpecialCultureValue = SpecialCultureValues.InstalledCulture;
				calculatorControl.Culture = new CultureInfo(CultureInfo.InstalledUICulture.LCID, calculatorControl.UseUserOverride);
				return;
			}
			int length = itemText.IndexOf(" ");
			string name = itemText.Substring(0, length);
			calculatorControl.SpecialCultureValue = SpecialCultureValues.None;
			calculatorControl.Culture = new CultureInfo(name, calculatorControl.UseUserOverride);
		}
	}
}
