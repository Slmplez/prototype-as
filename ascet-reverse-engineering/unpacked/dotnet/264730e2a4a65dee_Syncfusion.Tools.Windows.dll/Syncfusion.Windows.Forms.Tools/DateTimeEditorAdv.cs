using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Windows.Forms.Design;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class DateTimeEditorAdv : UITypeEditor
{
	private IWindowsFormsEditorService edSvc;

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		edSvc = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
		if (edSvc != null)
		{
			MonthCalendarAdv monthCalendarAdv = new MonthCalendarAdv();
			((ISupportInitialize)monthCalendarAdv).BeginInit();
			monthCalendarAdv.DaysFont = new Font("Verdana", 8f);
			monthCalendarAdv.HeaderFont = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Bold, GraphicsUnit.Point, 0);
			monthCalendarAdv.Style = VisualStyle.Default;
			monthCalendarAdv.WeekFont = new Font("Verdana", 8f);
			monthCalendarAdv.WeekInterior = new BrushInfo(GradientStyle.Vertical, Color.PeachPuff, Color.AntiqueWhite);
			monthCalendarAdv.NoneButton.Visible = false;
			monthCalendarAdv.TodayButton.Appearance = ButtonAppearance.WindowsXP;
			monthCalendarAdv.TodayButton.BackColor = SystemColors.Control;
			if (context.Instance is ISupportCulture supportCulture)
			{
				monthCalendarAdv.Culture = supportCulture.Culture;
			}
			monthCalendarAdv.DateSelected += OnDateSelected;
			((ISupportInitialize)monthCalendarAdv).EndInit();
			monthCalendarAdv.Value = (DateTime)value;
			edSvc.DropDownControl(monthCalendarAdv);
			value = monthCalendarAdv.Value;
			monthCalendarAdv.DateSelected -= OnDateSelected;
		}
		return value;
	}

	public void OnDateSelected(object sender, EventArgs e)
	{
		edSvc.CloseDropDown();
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.DropDown;
	}
}
