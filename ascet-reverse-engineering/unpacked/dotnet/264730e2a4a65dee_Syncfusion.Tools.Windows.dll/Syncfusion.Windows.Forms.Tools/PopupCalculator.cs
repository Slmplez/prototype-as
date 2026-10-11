using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class PopupCalculator : Control, ISupportOffice2007Theme
{
	private PopupCalculatorContainer calcPopupContainer;

	private CalculatorControl calcControl;

	private CalcActions closeAction;

	private CalculatorPopupAlignment calculatorAlignment;

	private bool calcInitialized;

	private FlatStyle initFlatStyle;

	private Size initSize = new Size(158, 200);

	private Border3DStyle initBorderStyle;

	private CalculatorValue initValue;

	private CalculatorLayoutTypes initLayoutType;

	private bool initUseVisualStyle;

	private ButtonAppearance initAppearance;

	private Office2007Theme initOffice2007Theme;

	public FlatStyle FlatStyle
	{
		set
		{
			initFlatStyle = value;
			if (calcControl != null)
			{
				calcControl.FlatStyle = value;
			}
		}
	}

	public Border3DStyle BorderStyle
	{
		set
		{
			initBorderStyle = value;
			if (calcControl != null)
			{
				calcControl.BorderStyle = value;
			}
		}
	}

	public new Size Size
	{
		set
		{
			initSize = value;
			if (calcPopupContainer != null)
			{
				calcPopupContainer.Size = value;
			}
		}
	}

	public CalculatorValue Value
	{
		get
		{
			if (calcControl != null)
			{
				return calcControl.Value;
			}
			return initValue;
		}
		set
		{
			initValue = value;
			if (calcControl != null)
			{
				calcControl.Value = value;
			}
		}
	}

	public CalculatorLayoutTypes LayoutType
	{
		set
		{
			initLayoutType = value;
			if (calcControl != null)
			{
				calcControl.LayoutType = value;
			}
		}
	}

	[Category("Behavior")]
	public CalcActions CloseAction
	{
		get
		{
			return closeAction;
		}
		set
		{
			closeAction = value;
		}
	}

	public Control ParentControl
	{
		get
		{
			return calcPopupContainer.ParentControl;
		}
		set
		{
			calcPopupContainer.ParentControl = value;
		}
	}

	public CalculatorPopupAlignment PopupCalculatorAlignment
	{
		get
		{
			return calculatorAlignment;
		}
		set
		{
			calculatorAlignment = value;
		}
	}

	public CalculatorControl Calculator
	{
		get
		{
			if (calcControl == null)
			{
				InitializeCalculatorControl();
			}
			return calcControl;
		}
	}

	public bool UseVisualStyle
	{
		set
		{
			initUseVisualStyle = value;
			if (calcControl != null)
			{
				calcControl.UseVisualStyle = value;
			}
		}
	}

	public ButtonAppearance ButtonStyle
	{
		set
		{
			initAppearance = value;
			if (calcControl != null)
			{
				calcControl.ButtonStyle = value;
			}
		}
	}

	[Description("Specifies Office2007Theme to use.")]
	public Office2007Theme Office2007ColorTheme
	{
		get
		{
			return initOffice2007Theme;
		}
		set
		{
			initOffice2007Theme = value;
		}
	}

	public bool Office2007StyleEnabled => initAppearance == ButtonAppearance.Office2007;

	public event CancelEventHandler BeforeCalculatorPopupDisplay;

	public event PopupCalculatorClosingEventHandler Closing;

	public PopupCalculator()
	{
		calcPopupContainer = new PopupCalculatorContainer(this);
		initValue = new CalculatorValue();
		calcPopupContainer.Location = new Point(0, 48);
		calcPopupContainer.Name = "popupControlContainer1";
		calcPopupContainer.Size = new Size(158, 202);
		calcPopupContainer.TabIndex = 0;
		calcPopupContainer.BeforePopup += HandleCalcPopupContainerBeforePopup;
		calcPopupContainer.CloseUp += HandlePopupControlClosing;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (calcPopupContainer != null)
			{
				if (calcPopupContainer.IsShowing())
				{
					calcPopupContainer.HidePopup(PopupCloseType.Done);
				}
				calcPopupContainer.Controls.Clear();
				calcPopupContainer.ParentControl = null;
				calcPopupContainer.BeforePopup -= HandleCalcPopupContainerBeforePopup;
				calcPopupContainer.CloseUp -= HandlePopupControlClosing;
				calcPopupContainer.Dispose();
				calcPopupContainer = null;
			}
			if (calcControl != null)
			{
				calcControl.ValueCalculated -= HandleCalculatorValueCalculated;
				calcControl.Dispose();
				calcControl = null;
			}
			initValue = null;
		}
		base.Dispose(disposing);
	}

	protected virtual void InitializeCalculatorControl()
	{
		calcControl = new CalculatorControl();
		calculatorAlignment = CalculatorPopupAlignment.Left;
		calcPopupContainer.SuspendLayout();
		calcPopupContainer.Controls.Add(calcControl);
		calcControl.ValueCalculated += HandleCalculatorValueCalculated;
		calcControl.Dock = DockStyle.Fill;
		calcControl.AutoSize = true;
		calcControl.BorderStyle = Border3DStyle.Raised;
		calcControl.TabIndex = 0;
		calcControl.Dock = DockStyle.Fill;
		calcControl.BorderStyle = initBorderStyle;
		calcControl.FlatStyle = initFlatStyle;
		calcControl.LayoutType = initLayoutType;
		calcControl.Size = initSize;
		calcControl.Value = initValue;
		calcControl.UseVisualStyle = initUseVisualStyle;
		calcControl.ButtonStyle = initAppearance;
		calcControl.Office2007Theme = initOffice2007Theme;
		if (calcControl.UseVisualStyle && calcControl.ButtonStyle != ButtonAppearance.Classic)
		{
			calcControl.BorderStyle = Border3DStyle.Flat;
		}
		calcPopupContainer.ResumeLayout(performLayout: false);
		calcInitialized = true;
	}

	[DocumentationExclude]
	public void HandleEnterKey()
	{
		KeyEventArgs e = new KeyEventArgs(Keys.Return);
		calcControl.HandleChildKeyDown(e);
	}

	[DocumentationExclude]
	protected void RaiseClosingEvent(CalculatorCloseType closeType)
	{
		CalculatorClosingEventArgs args = new CalculatorClosingEventArgs(closeType, Calculator.Value);
		OnClosing(args);
	}

	[DocumentationExclude]
	public void HandlePopupControlClosing(object sender, PopupClosedEventArgs args)
	{
		PopupCloseType popupCloseType = args.PopupCloseType;
		CalculatorCloseType calculatorCloseType = CalculatorCloseType.Done;
		RaiseClosingEvent(popupCloseType switch
		{
			PopupCloseType.Canceled => CalculatorCloseType.Canceled, 
			PopupCloseType.Deactivated => CalculatorCloseType.Deactivated, 
			_ => CalculatorCloseType.Done, 
		});
	}

	[DocumentationExclude]
	public void HandleCalculatorValueCalculated(object sender, CalculatorValueCalculatedEventArgs args)
	{
		CalcActions lastAction = args.LastAction;
		if (lastAction == closeAction)
		{
			CloseCalculator();
		}
	}

	protected virtual void OnClosing(CalculatorClosingEventArgs args)
	{
		CloseCalculator();
		if (this.Closing != null)
		{
			this.Closing(this, args);
		}
	}

	protected bool RaiseBeforeCalculatorPopupDisplayEvent()
	{
		bool cancel = false;
		CancelEventArgs args = new CancelEventArgs(cancel);
		return OnBeforeCalculatorPopupDisplay(args);
	}

	protected virtual bool OnBeforeCalculatorPopupDisplay(CancelEventArgs args)
	{
		if (this.BeforeCalculatorPopupDisplay != null)
		{
			this.BeforeCalculatorPopupDisplay(this, args);
		}
		return args.Cancel;
	}

	public void CloseCalculator()
	{
		if (calcPopupContainer.IsShowing())
		{
			calcPopupContainer.HidePopup(PopupCloseType.Done);
		}
		if (calcControl != null)
		{
			initBorderStyle = calcControl.BorderStyle;
			initFlatStyle = calcControl.FlatStyle;
			initLayoutType = calcControl.LayoutType;
			initSize = calcControl.Size;
			Value = calcControl.Value;
			calcControl.ValueCalculated -= HandleCalculatorValueCalculated;
			calcInitialized = false;
			calcControl.Dispose();
			calcControl = null;
		}
	}

	private void HandleCalcPopupContainerBeforePopup(object sender, CancelEventArgs e)
	{
		calcPopupContainer.BorderStyle = System.Windows.Forms.BorderStyle.None;
		calcPopupContainer.BackColor = BackColor;
	}

	public void DisplayCalculator()
	{
		DisplayCalculator(Point.Empty);
	}

	public void DisplayCalculator(Point location)
	{
		if (!RaiseBeforeCalculatorPopupDisplayEvent())
		{
			if (!calcInitialized)
			{
				InitializeCalculatorControl();
			}
			calcPopupContainer.Size = Calculator.Size;
			calcPopupContainer.ShowPopup(location);
		}
	}

	public void EnableOffice2007Style()
	{
		initAppearance = ButtonAppearance.Office2007;
	}
}
