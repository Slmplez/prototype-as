using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class CalculatorDesigner : ControlDesigner
{
	protected DesignerVerb dvWindowsStandard;

	protected DesignerVerb dvFinancial;

	protected DesignerVerbCollection dvcVerbs;

	private DesignerActionListCollection actionLists;

	public override DesignerVerbCollection Verbs
	{
		get
		{
			if (((CalculatorControl)Control).LayoutType == CalculatorLayoutTypes.Financial)
			{
				dvWindowsStandard.Enabled = true;
				dvFinancial.Enabled = false;
			}
			else
			{
				dvFinancial.Enabled = true;
				dvWindowsStandard.Enabled = false;
			}
			return dvcVerbs;
		}
	}

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new CalculatorControlActionList(base.Component));
			}
			return actionLists;
		}
	}

	public CalculatorDesigner()
	{
		dvWindowsStandard = new DesignerVerb("Windows Standard Layout", OnWindowsStandardLayout);
		dvFinancial = new DesignerVerb("Financial Layout", OnFinancialLayout);
		dvWindowsStandard.Enabled = false;
		DesignerVerb[] value = new DesignerVerb[2] { dvWindowsStandard, dvFinancial };
		dvcVerbs = new DesignerVerbCollection(value);
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		GetService(typeof(IDesignerHost));
		IComponentChangeService componentChangeService = GetService(typeof(IComponentChangeService)) as IComponentChangeService;
		componentChangeService.ComponentChanged += OnComponentChanged;
	}

	public void OnComponentChanged(object sender, ComponentChangedEventArgs e)
	{
		if (dvcVerbs == null || dvcVerbs.Count <= 0)
		{
			return;
		}
		if (Control != null)
		{
			if (((CalculatorControl)Control).LayoutType == CalculatorLayoutTypes.Financial)
			{
				dvFinancial.Enabled = false;
				dvWindowsStandard.Enabled = true;
			}
			else
			{
				dvFinancial.Enabled = true;
				dvWindowsStandard.Enabled = false;
			}
		}
		else
		{
			dvFinancial.Enabled = false;
			dvWindowsStandard.Enabled = false;
		}
	}

	public void OnWindowsStandardLayout(object sender, EventArgs e)
	{
		GetService(typeof(IDesignerHost));
		CalculatorControl calculatorControl = Control as CalculatorControl;
		CalculatorLayoutTypes layoutType = calculatorControl.LayoutType;
		calculatorControl.LayoutType = CalculatorLayoutTypes.WindowsStandard;
		RaiseComponentChanged(TypeDescriptor.GetProperties((CalculatorControl)Control)["LayoutType"], layoutType, ((CalculatorControl)Control).LayoutType);
	}

	public void OnFinancialLayout(object sender, EventArgs e)
	{
		GetService(typeof(IDesignerHost));
		_ = ((CalculatorControl)Control).LayoutType;
		((CalculatorControl)Control).LayoutType = CalculatorLayoutTypes.Financial;
		RaiseComponentChanged(TypeDescriptor.GetProperties((CalculatorControl)Control)["LayoutType"], CalculatorLayoutTypes.WindowsStandard, ((CalculatorControl)Control).LayoutType);
	}
}
