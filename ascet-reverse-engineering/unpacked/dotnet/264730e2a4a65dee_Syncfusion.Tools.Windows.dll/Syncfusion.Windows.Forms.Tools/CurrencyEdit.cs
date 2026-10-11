using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(CurrencyEditDesigner), typeof(IDesigner))]
[ToolboxBitmap(typeof(CurrencyEdit), "ToolboxIcons.CurrencyEdit.bmp")]
[Description("Represents a Currency TextBox control and adds the ability to drop down a PopupCalculator.")]
[ToolboxItem(true)]
[DefaultProperty("TextBox")]
public class CurrencyEdit : ButtonEdit
{
	private Container components;

	private ButtonEditChildButton btnCalculator;

	private PopupCalculator calcPopup;

	private bool showCalculator;

	private CalcActions calcCloseAction;

	private bool transferFromCalculator = true;

	private bool transferToCalculator = true;

	private CalculatorLayoutTypes calculatorLayoutType;

	private ArrayList childButtons;

	private bool beforeCalcShow;

	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Appearance")]
	public ButtonEditChildButton CalculatorButton => btnCalculator;

	[Description("The popup calculation will close when this action is encountered.")]
	[Browsable(true)]
	[DefaultValue(typeof(CalcActions), "CalcOperatorEquals")]
	[Category("Behavior")]
	public CalcActions CloseAction
	{
		get
		{
			return calcCloseAction;
		}
		set
		{
			calcCloseAction = value;
		}
	}

	[Description("Gets or sets the layout type for the Calculator Control.")]
	[Browsable(true)]
	[DefaultValue(CalculatorLayoutTypes.Financial)]
	[Category("Appearance")]
	public CalculatorLayoutTypes CalculatorLayoutType
	{
		get
		{
			return calculatorLayoutType;
		}
		set
		{
			calculatorLayoutType = value;
			if (calculatorLayoutType == CalculatorLayoutTypes.Financial)
			{
				calcPopup.Size = new Size(158, 200);
			}
			else
			{
				calcPopup.Size = new Size(200, 300);
			}
		}
	}

	[Description("This property specifies the alignment of the Popup Calculator with respect to the ButtonEdit control.")]
	[Category("Appearance")]
	[DefaultValue(typeof(CalculatorPopupAlignment), "Right")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public CalculatorPopupAlignment PopupCalculatorAlignment
	{
		get
		{
			return calcPopup.PopupCalculatorAlignment;
		}
		set
		{
			calcPopup.PopupCalculatorAlignment = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public PopupCalculator CalcPopup
	{
		get
		{
			return calcPopup;
		}
		set
		{
			calcPopup = value;
		}
	}

	[Category("Appearance")]
	[Description("Indicates whether the calculator button is to be displayed.")]
	[DefaultValue(true)]
	[Browsable(true)]
	public bool ShowCalculator
	{
		get
		{
			return showCalculator;
		}
		set
		{
			if (showCalculator != value)
			{
				showCalculator = value;
				InitializeLayout();
			}
		}
	}

	[Category("Behavior")]
	[Browsable(true)]
	[Description("Indicates whether to transfer the values from the edit control to the calculator.")]
	[DefaultValue(true)]
	public bool TransferToCalculator
	{
		get
		{
			return transferToCalculator;
		}
		set
		{
			transferToCalculator = value;
		}
	}

	[Category("Behavior")]
	[DefaultValue(true)]
	[Browsable(true)]
	[Description("Indicates whether to transfer the calculated value to the edit control.")]
	public bool TransferFromCalculator
	{
		get
		{
			return transferFromCalculator;
		}
		set
		{
			transferFromCalculator = value;
		}
	}

	[Description("The collection of Buttons that make up this ButtonEdit control.")]
	[Category("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Localizable(true)]
	[MergableProperty(false)]
	public new ButtonEditChildButtonCollection Buttons => base.Buttons;

	[Browsable(true)]
	[Category("Appearance")]
	public override bool ShowTextBox
	{
		get
		{
			bool result = true;
			if (TextBox != null)
			{
				result = TextBox.Visible;
			}
			return result;
		}
	}

	[Category("Appearance")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("The CurrencyTextBox control that defines the Currency behavior for this control.")]
	public new CurrencyTextBox TextBox => (CurrencyTextBox)base.TextBox;

	[Description("The decimal value of the currency control.")]
	[Category("Data")]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[DefaultValue(0)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public decimal DecimalValue
	{
		get
		{
			decimal result = 0m;
			if (TextBox != null)
			{
				result = TextBox.DecimalValue;
			}
			return result;
		}
		set
		{
			if (TextBox != null)
			{
				TextBox.DecimalValue = value;
			}
		}
	}

	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			base.Text = value;
		}
	}

	[Description("Event raised before the calculator popup is displayed.")]
	public event CancelEventHandler CalculatorShowing;

	[Description("Event raised by a popup calculator when closing after the specified button was clicked.")]
	public event PopupCalculatorClosingEventHandler CalculatorClosing;

	[Category("Property Changed")]
	[Description("Occurs when the DecimalValue property is changed.")]
	public event EventHandler DecimalValueChanged;

	[Description("Raised when an unacceptable character is encountered as input.")]
	public event ValidationErrorEventHandler ValidationError;

	public CurrencyEdit()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(CurrencyEdit));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		InitializeComponent();
		showCalculator = true;
		calculatorLayoutType = CalculatorLayoutTypes.Financial;
		btnCalculator = new ButtonEditChildButton();
		calcPopup = new PopupCalculator();
		calcPopup.PopupCalculatorAlignment = CalculatorPopupAlignment.Right;
		calcPopup.ParentControl = this;
		SuspendLayout();
		if (!Buttons.Contains(btnCalculator))
		{
			Buttons.Add(btnCalculator);
		}
		btnCalculator.ButtonAlign = ButtonAlignment.Right;
		btnCalculator.ButtonType = ButtonTypes.Calculator;
		btnCalculator.Image = ButtonEdit.GetImage("Calculator.bmp");
		calcPopup.Size = new Size(158, 200);
		calcPopup.BorderStyle = Border3DStyle.Raised;
		calcPopup.Value.SetValue(0.0);
		calcCloseAction = CalcActions.CalcOperatorEquals;
		btnCalculator.Click += HandleCalculatorBtnClick;
		CalcPopup.BeforeCalculatorPopupDisplay += HandleBeforeCalculatorDisplayEvent;
		CalcPopup.Closing += HandleCalculatorPopupClosingEvent;
		base.RightToLeftChanged += CurrencyEdit_RightToLeftChanged;
		ResumeLayout();
	}

	public void InitializeLayout()
	{
		if (btnCalculator != null)
		{
			if (!showCalculator && Buttons.Contains(btnCalculator))
			{
				Buttons.Remove(btnCalculator);
			}
			else if (showCalculator && !Buttons.Contains(btnCalculator))
			{
				SuspendLayout();
				Buttons.Add(btnCalculator);
				Layout();
				ResumeLayout(performLayout: false);
			}
		}
	}

	protected override void OnEndInit()
	{
		btnCalculator.UseVisualStyle = base.UseVisualStyle;
		btnCalculator.SetAppearance(base.ButtonStyle);
		CalcPopup.UseVisualStyle = base.UseVisualStyle;
		CalcPopup.ButtonStyle = base.ButtonStyle;
		base.OnEndInit();
	}

	private void InitializeComponent()
	{
	}

	protected override void DrawBackground(Graphics g, Rectangle rect)
	{
		Brush brush = new SolidBrush((TextBox != null && TextBox.ReadOnly) ? TextBox.ReadOnlyBackColor : BackColor);
		g.FillRectangle(brush, rect);
	}

	private void HandleCalculatorBtnClick(object sender, EventArgs e)
	{
		DisplayCalculator();
	}

	private void DisplayCalculator()
	{
		if (!base.DesignMode)
		{
			if (CalcPopup.Calculator.Culture != TextBox.Culture)
			{
				CalcPopup.Calculator.Culture = TextBox.Culture;
			}
			CalcPopup.CloseAction = CloseAction;
			calcPopup.DisplayCalculator();
			beforeCalcShow = true;
		}
	}

	private void TextBox_GotFocus(object sender, EventArgs e)
	{
		if (beforeCalcShow && CalcPopup.Calculator != null)
		{
			CalcPopup.Calculator.Focus();
			beforeCalcShow = false;
		}
	}

	private void TextBox_ReadOnlyChanged(object sender, EventArgs e)
	{
		Invalidate();
	}

	private void HandleBeforeCalculatorDisplayEvent(object sender, CancelEventArgs args)
	{
		CalcPopup.LayoutType = CalculatorLayoutType;
		if (TransferToCalculator)
		{
			decimal decimalValue = TextBox.DecimalValue;
			double value = Convert.ToDouble(decimalValue);
			CalculatorValue calculatorValue = new CalculatorValue();
			calculatorValue.NumberFormatInfoObject = CalcPopup.Calculator.NumberFormatInfoObject;
			calculatorValue.SetValue(value);
			CalcPopup.Value = calculatorValue;
		}
		args.Cancel = RaiseCalculatorShowingEvent();
	}

	private void HandleCalculatorPopupClosingEvent(object sender, CalculatorClosingEventArgs args)
	{
		if (TransferFromCalculator && args.CloseType == CalculatorCloseType.Done)
		{
			double value = args.FinalValue.ToDouble();
			decimal decimalValue = Convert.ToDecimal(value);
			TextBox.DecimalValue = decimalValue;
		}
		RaiseCalculatorClosingEvent(args.CloseType);
	}

	protected bool RaiseCalculatorShowingEvent()
	{
		bool cancel = false;
		CancelEventArgs args = new CancelEventArgs(cancel);
		return OnCalculatorShowing(args);
	}

	protected void RaiseCalculatorClosingEvent(CalculatorCloseType closeType)
	{
		CalculatorClosingEventArgs args = new CalculatorClosingEventArgs(closeType, CalcPopup.Value);
		OnCalculatorClosing(args);
	}

	protected virtual void OnCalculatorClosing(CalculatorClosingEventArgs args)
	{
		if (this.CalculatorClosing != null)
		{
			this.CalculatorClosing(this, args);
		}
	}

	[DocumentationExclude]
	protected virtual bool OnCalculatorShowing(CancelEventArgs args)
	{
		if (this.CalculatorShowing != null)
		{
			this.CalculatorShowing(this, args);
		}
		return args.Cancel;
	}

	protected void HandleTextBoxKeyDownEvent(object sender, KeyEventArgs e)
	{
		if (e.Alt && e.KeyCode == Keys.Down)
		{
			DisplayCalculator();
		}
	}

	protected override TextBoxExt CreateTextBox()
	{
		TextBoxExt textBoxExt = new CurrencyTextBox();
		textBoxExt.BorderStyle = BorderStyle.None;
		return textBoxExt;
	}

	protected override void OnLayout(LayoutEventArgs levent)
	{
		ResetChildButtons();
		InitializeLayout();
		base.OnLayout(levent);
	}

	protected internal override void AttachTextBox()
	{
		base.AttachTextBox();
		TextBox.ValidationError += HandleTextBoxValidationErrorEvent;
		TextBox.KeyDown += HandleTextBoxKeyDownEvent;
		TextBox.DecimalValueChanged += HandleTextBoxDecimalValueChanged;
		TextBox.GotFocus += TextBox_GotFocus;
		TextBox.ReadOnlyChanged += TextBox_ReadOnlyChanged;
	}

	protected internal override void DetachTextBox()
	{
		if (TextBox != null)
		{
			TextBox.ValidationError -= HandleTextBoxValidationErrorEvent;
			TextBox.KeyDown -= HandleTextBoxKeyDownEvent;
			TextBox.DecimalValueChanged -= HandleTextBoxDecimalValueChanged;
			TextBox.GotFocus -= TextBox_GotFocus;
			TextBox.ReadOnlyChanged -= TextBox_ReadOnlyChanged;
			base.DetachTextBox();
		}
	}

	private void CurrencyEdit_RightToLeftChanged(object sender, EventArgs e)
	{
		TextBox.RightToLeft = RightToLeft;
	}

	protected virtual void OnDecimalValueChanged(EventArgs e)
	{
		if (this.DecimalValueChanged != null)
		{
			this.DecimalValueChanged(this, e);
		}
	}

	private void HandleTextBoxDecimalValueChanged(object sender, EventArgs e)
	{
		OnDecimalValueChanged(e);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			base.RightToLeftChanged -= CurrencyEdit_RightToLeftChanged;
			if (components != null)
			{
				components.Dispose();
			}
			if (btnCalculator != null)
			{
				btnCalculator.Click -= HandleCalculatorBtnClick;
				btnCalculator.Dispose();
				btnCalculator = null;
			}
			if (calcPopup != null)
			{
				CalcPopup.BeforeCalculatorPopupDisplay -= HandleBeforeCalculatorDisplayEvent;
				CalcPopup.Closing -= HandleCalculatorPopupClosingEvent;
				calcPopup.ParentControl = null;
				calcPopup.Dispose();
				calcPopup = null;
			}
		}
		base.Dispose(disposing);
	}

	protected virtual void OnValidationError(ValidationErrorArgs args)
	{
		if (this.ValidationError != null)
		{
			this.ValidationError(this, args);
		}
	}

	private void HandleTextBoxValidationErrorEvent(object sender, ValidationErrorArgs args)
	{
		OnValidationError(args);
	}

	protected override void OnValidating(CancelEventArgs e)
	{
		if (Text.Length == 0)
		{
			DecimalValue = 0m;
		}
		else
		{
			try
			{
				DecimalValue = DecimalValue;
			}
			catch
			{
			}
		}
		base.OnValidating(e);
	}

	[DocumentationExclude]
	[Browsable(false)]
	public void ChildButtonsRemovedByDesigner(ArrayList childButtons)
	{
		this.childButtons = childButtons;
		Invalidate(invalidateChildren: false);
	}

	private void ResetChildButtons()
	{
		if (childButtons == null)
		{
			return;
		}
		if (childButtons.Count > 0)
		{
			foreach (Control childButton in childButtons)
			{
				Buttons.Add((ButtonEditChildButton)childButton);
			}
		}
		childButtons.Clear();
	}
}
