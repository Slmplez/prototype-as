using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Provides the functionality of a calculator with the ability to perform arithmetic calculations")]
[DefaultProperty("DoubleValue")]
[ToolboxItem(true)]
[ToolboxBitmap(typeof(CalculatorControl), "ToolboxIcons.CalculatorControl.bmp")]
[Designer(typeof(CalculatorDesigner), typeof(IDesigner))]
public class CalculatorControl : ContainerControl, ICalculatorEngineParent, ICalculatorButtonParent
{
	internal class Engine : ICalculatorEngine
	{
		private CalculatorValue calculatorValue;

		private double memoryNumber;

		private bool decimalMode;

		private bool replaceMode;

		private bool errorCondition;

		private string message;

		private bool equalClicked;

		private bool percentLastClicked;

		private ArrayList stackObject;

		private int stackTopValue;

		private bool digitEntered;

		private ICalculatorEngineParent calculatorEngineParentObject;

		private NumberFormatInfo numberFormatInfoObject;

		private bool singleOperator;

		private int StackTop
		{
			get
			{
				return stackTopValue;
			}
			set
			{
				stackTopValue = value;
			}
		}

		public NumberFormatInfo NumberFormatInfoObject
		{
			get
			{
				if (numberFormatInfoObject != null)
				{
					return numberFormatInfoObject;
				}
				numberFormatInfoObject = new NumberFormatInfo();
				numberFormatInfoObject.CurrencyDecimalSeparator = NumberFormatInfo.CurrentInfo.CurrencyDecimalSeparator;
				return numberFormatInfoObject;
			}
			set
			{
				numberFormatInfoObject = value;
				if (Value != null)
				{
					Value.NumberFormatInfoObject = value;
				}
			}
		}

		public string DecimalSeparator
		{
			get
			{
				string empty = string.Empty;
				if (numberFormatInfoObject != null)
				{
					return NumberFormatInfoObject.CurrencyDecimalSeparator;
				}
				return NumberFormatInfo.CurrentInfo.CurrencyDecimalSeparator;
			}
			set
			{
				NumberFormatInfoObject.CurrencyDecimalSeparator = value;
			}
		}

		public bool ErrorCondition => errorCondition;

		public string Message => message;

		public CalculatorValue Value
		{
			get
			{
				if (calculatorValue != null)
				{
					return calculatorValue;
				}
				return CalculatorValue.Empty;
			}
			set
			{
				calculatorValue = value;
			}
		}

		public Engine(ICalculatorEngineParent parent)
		{
			calculatorValue = new CalculatorValue();
			InitializeCalculatorStack();
			numberFormatInfoObject = new NumberFormatInfo();
			calculatorEngineParentObject = null;
			replaceMode = false;
			singleOperator = false;
			calculatorEngineParentObject = parent;
		}

		private void InitializeCalculatorStack()
		{
			stackTopValue = 0;
			stackObject = new ArrayList();
			stackObject.Add(new object());
			stackObject.Add(new object());
			stackObject.Add(new object());
			digitEntered = true;
			equalClicked = false;
		}

		private string GetFormatDecimal()
		{
			return NumberFormatInfoObject.CurrencyDecimalSeparator;
		}

		private double DoCalculation(double op1, CalcActions oper, double op2)
		{
			double result = 0.0;
			try
			{
				return oper switch
				{
					CalcActions.CalcOperatorPlus => op1 + op2, 
					CalcActions.CalcOperatorMinus => op1 - op2, 
					CalcActions.CalcOperatorMultiply => op1 * op2, 
					CalcActions.CalcOperatorDivide => op1 / op2, 
					CalcActions.CalcOperatorPercent => op1 * op2 / 100.0, 
					_ => 0.0, 
				};
			}
			catch
			{
				errorCondition = true;
				message = "Calculation failed";
				return result;
			}
		}

		private void Push(object element)
		{
			StackTop++;
			stackObject[StackTop] = element;
		}

		private object Pop()
		{
			return stackObject[StackTop--];
		}

		private bool StackIsEmpty()
		{
			if (StackTop == 0)
			{
				return true;
			}
			return false;
		}

		private void ClearStack()
		{
			StackTop = 0;
		}

		public bool HandleClearEntry()
		{
			if (errorCondition)
			{
				HandleClear();
			}
			else
			{
				SetValue(CalculatorValue.Empty);
				replaceMode = true;
			}
			return true;
		}

		public bool HandleAction(CalcActions action)
		{
			bool result = true;
			double num = 0.0;
			double num2 = 0.0;
			try
			{
				if (errorCondition && action != CalcActions.CalcSpecialClear && action != CalcActions.CalcSpecialClearEntry)
				{
					return false;
				}
				num2 = Value.ToDouble();
				if ((num2 == double.NaN || num2 == double.PositiveInfinity || num2 == double.NegativeInfinity) && action != CalcActions.CalcSpecialClear && action != CalcActions.CalcSpecialClearEntry)
				{
					errorCondition = true;
					message = "Invalid input";
					return false;
				}
				switch (action)
				{
				case CalcActions.CalcDigit0:
				case CalcActions.CalcDigit1:
				case CalcActions.CalcDigit2:
				case CalcActions.CalcDigit3:
				case CalcActions.CalcDigit4:
				case CalcActions.CalcDigit5:
				case CalcActions.CalcDigit6:
				case CalcActions.CalcDigit7:
				case CalcActions.CalcDigit8:
				case CalcActions.CalcDigit9:
					HandleDigit(action);
					digitEntered = true;
					break;
				case CalcActions.CalcSpecialDecimal:
					HandleDecimalPoint();
					break;
				case CalcActions.CalcSpecialBackspace:
					HandleBackspace();
					break;
				case CalcActions.CalcSpecialClear:
					HandleClear();
					break;
				case CalcActions.CalcSpecialClearEntry:
					HandleClearEntry();
					break;
				case CalcActions.CalcOperatorEquals:
					if (!StackIsEmpty())
					{
						bool flag = true;
						double num4;
						CalcActions calcActions2;
						double op4;
						if (!equalClicked)
						{
							num4 = num2;
							calcActions2 = (CalcActions)Pop();
							op4 = (double)Pop();
							if (!calculatorEngineParentObject.RepeatAssignAction && percentLastClicked)
							{
								flag = false;
							}
						}
						else
						{
							op4 = num2;
							calcActions2 = (CalcActions)Pop();
							num4 = (double)Pop();
							if (!calculatorEngineParentObject.RepeatAssignAction)
							{
								flag = false;
							}
						}
						if (flag)
						{
							num = DoCalculation(op4, calcActions2, num4);
							ClearStack();
							Push(num4);
							Push(calcActions2);
							digitEntered = true;
							Value.SetValue(num);
						}
					}
					equalClicked = true;
					replaceMode = true;
					break;
				case CalcActions.CalcOperatorPercent:
					if (!StackIsEmpty())
					{
						double op3 = num2;
						CalcActions calcActions = (CalcActions)Pop();
						double num3 = (double)Pop();
						num = DoCalculation(num3, action, op3);
						Value.SetValue(num);
						Push(num3);
						Push(calcActions);
						percentLastClicked = true;
					}
					replaceMode = true;
					break;
				case CalcActions.CalcOperatorReciprocal:
					num = 1.0 / num2;
					Value.SetValue(num);
					replaceMode = true;
					digitEntered = false;
					singleOperator = true;
					break;
				case CalcActions.CalcOperatorSign:
					num = -1.0 * num2;
					Value.SetValue(num);
					break;
				case CalcActions.CalcOperatorSqrt:
					num = Math.Sqrt(num2);
					Value.SetValue(num);
					digitEntered = false;
					replaceMode = true;
					singleOperator = true;
					break;
				case CalcActions.CalcOperatorMultiply:
				case CalcActions.CalcOperatorPlus:
				case CalcActions.CalcOperatorMinus:
				case CalcActions.CalcOperatorDivide:
					if (digitEntered || singleOperator)
					{
						if (StackIsEmpty() || equalClicked)
						{
							ClearStack();
							Push(num2);
							Push(action);
						}
						else
						{
							double op = num2;
							CalcActions oper = (CalcActions)Pop();
							double op2 = (double)Pop();
							num = DoCalculation(op2, oper, op);
							Push(num);
							Push(action);
							Value.SetValue(num);
						}
						singleOperator = false;
					}
					else if (!StackIsEmpty())
					{
						Pop();
						Push(action);
					}
					replaceMode = true;
					decimalMode = false;
					digitEntered = false;
					break;
				case CalcActions.CalcOperatorMemoryClear:
					memoryNumber = 0.0;
					break;
				case CalcActions.CalcOperatorMemoryPlus:
					memoryNumber += num2;
					replaceMode = true;
					break;
				case CalcActions.CalcOperatorMemoryRecall:
					Value.SetValue(memoryNumber);
					digitEntered = true;
					replaceMode = true;
					break;
				case CalcActions.CalcOperatorMemoryStore:
					memoryNumber = num2;
					replaceMode = true;
					break;
				}
				if (action != CalcActions.CalcOperatorEquals && action != CalcActions.CalcSpecialBackspace)
				{
					equalClicked = false;
					if (action != CalcActions.CalcOperatorPercent)
					{
						percentLastClicked = false;
					}
				}
				if (double.IsInfinity(num))
				{
					errorCondition = true;
					message = "Infinity";
				}
				else if (double.IsNaN(num))
				{
					errorCondition = true;
					message = "Not a number";
				}
				RaiseCalculatorValueChangedEvent();
			}
			catch (ArgumentException e)
			{
				TraceUtil.TraceExceptionCatched(e);
				result = false;
			}
			catch (Exception ex)
			{
				result = false;
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(typeof(Engine), ex))
				{
					throw ex;
				}
			}
			return result;
		}

		protected void RaiseCalculatorValueChangedEvent()
		{
			if (calculatorEngineParentObject != null)
			{
				calculatorEngineParentObject.EngineValueChanged(Value, ErrorCondition, Message, memoryNumber);
			}
		}

		public bool HandleDigit(CalcActions action)
		{
			double num = 0.0;
			string formatDecimal = GetFormatDecimal();
			string text = Value.ToString();
			try
			{
				num = double.Parse(text, NumberFormatInfoObject);
			}
			catch (Exception ex)
			{
				errorCondition = true;
				message = "Invalid number Format";
				throw ex;
			}
			if (errorCondition)
			{
				return false;
			}
			if (equalClicked)
			{
				ClearStack();
			}
			string value = Convert.ToString((int)action);
			char c = Convert.ToChar(value);
			if (decimalMode)
			{
				if (replaceMode)
				{
					text = Convert.ToString(formatDecimal) + Convert.ToString(c);
				}
				else
				{
					int num2 = text.IndexOf(formatDecimal);
					if (num2 == -1)
					{
						text += formatDecimal;
					}
					text += Convert.ToString(c);
				}
			}
			else if (replaceMode)
			{
				text = Convert.ToString(c);
			}
			else if (num != 0.0 || action != CalcActions.CalcDigit0)
			{
				if (num == 0.0)
				{
					num += Convert.ToDouble(Convert.ToString(c));
					text = Convert.ToString(num);
				}
				else
				{
					int num2 = text.IndexOf(formatDecimal);
					if (num2 == -1)
					{
						text += Convert.ToString(c);
					}
					else
					{
						string text2 = text.Substring(0, num2);
						string text3 = text.Substring(num2 + 1, text.Length - num2 - 1);
						text2 += Convert.ToString(c);
						text = text2 + formatDecimal + text3;
					}
				}
			}
			Value.SetValue(text);
			replaceMode = false;
			return true;
		}

		public bool HandleDecimalPoint()
		{
			if (errorCondition)
			{
				return false;
			}
			decimalMode = true;
			return true;
		}

		public bool HandleBackspace()
		{
			GetFormatDecimal();
			if (errorCondition || !digitEntered || equalClicked)
			{
				return false;
			}
			replaceMode = false;
			Value.ToString();
			int length = Value.ToString().Length;
			int num = 1;
			char c = Value.ToString()[Value.ToString().Length - 1];
			if (c == Convert.ToChar(GetFormatDecimal()))
			{
				num++;
			}
			Value.SetValue(Value.ToString().Remove(length - Math.Min(num, length), 1));
			if (Value.ToString() == string.Empty || Value.ToString() == Convert.ToString(GetFormatDecimal()))
			{
				Value.SetValue(0.0);
				decimalMode = false;
			}
			return true;
		}

		public bool HandleClear()
		{
			Reset();
			replaceMode = false;
			decimalMode = false;
			return true;
		}

		public void Reset()
		{
			Value = CalculatorValue.Empty;
			Value.NumberFormatInfoObject = NumberFormatInfoObject;
			errorCondition = false;
			message = string.Empty;
			decimalMode = false;
			ClearStack();
		}

		public CalculatorValue GetValue()
		{
			return Value;
		}

		public void SetValue(CalculatorValue value)
		{
			Value = value;
		}
	}

	private static readonly Insets c_WindowsStandardInsets;

	private static readonly Insets c_FinancialInsets;

	private static int totalButtonCount;

	private Border3DStyle border3dStyleValue;

	private ToolTip toolTipHelp;

	private CalcActions lastAction;

	protected TextBox textCalculatorBox;

	private CalculatorButton[] calcButtons;

	private Label memoryStateDisplay;

	private CalculatorLayoutTypes calcLayoutType;

	private bool showDisplayArea;

	private Hashtable mnemonicKeys;

	private ICalculatorEngine calcEngineObject;

	private GridBagLayout calcWinStandardLayout;

	private bool themesEnabled = true;

	private GridBagLayout calcFinancialLayout;

	protected bool autoSizeValue;

	private CultureInfo selectedCulture = new CultureInfo(CultureInfo.CurrentCulture.LCID);

	private SpecialCultureValues specialCultureValue;

	private ArrayList rightToLeftCultures = new ArrayList();

	private bool useUserOverride = true;

	private NumberFormatInfo numberFormatInfoObject;

	private bool repeatAssignAction = true;

	protected Office2007Theme m_office2007Theme;

	private Container components;

	private FlatStyle flatStyle;

	private ButtonAppearance appearance = ButtonAppearance.Classic;

	private bool useVisualStyle;

	private BrushInfo m_bgBrush = BrushInfo.Empty;

	private int m_iVerticalSpacing = 10;

	private int m_iHorizontalSpacing = 10;

	private bool m_bUseVerticalAndHorizontalSpacing;

	[Description("Gets or sets the culture that is to be used for formatting the currency display.")]
	[Editor(typeof(CalculatorCultureEditor), typeof(UITypeEditor))]
	[Browsable(true)]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Localizable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public CultureInfo Culture
	{
		get
		{
			return selectedCulture;
		}
		set
		{
			if (SpecialCultureValue == SpecialCultureValues.None)
			{
				selectedCulture = value;
			}
			else if (SpecialCultureValue == SpecialCultureValues.CurrentCulture)
			{
				selectedCulture = CultureInfo.CurrentCulture;
			}
			else if (SpecialCultureValue == SpecialCultureValues.UICulture)
			{
				selectedCulture = CultureInfo.CurrentUICulture;
			}
			else if (SpecialCultureValue == SpecialCultureValues.InstalledCulture)
			{
				selectedCulture = CultureInfo.InstalledUICulture;
			}
			NumberFormatInfoObject = Culture.NumberFormat;
			ApplyRightToLeft();
			RaiseLayoutTypeChangedEvent();
			CalculatorEngine.NumberFormatInfoObject = NumberFormatInfoObject;
			SetDisplayString();
		}
	}

	[Browsable(false)]
	[Description("The NumberFormaInfo object that will be used for formatting the number value.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("Appearance")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public NumberFormatInfo NumberFormatInfoObject
	{
		get
		{
			if (numberFormatInfoObject == null)
			{
				numberFormatInfoObject = new NumberFormatInfo();
				numberFormatInfoObject.CurrencyDecimalDigits = Culture.NumberFormat.CurrencyDecimalDigits;
				numberFormatInfoObject.CurrencyDecimalSeparator = Culture.NumberFormat.CurrencyDecimalSeparator;
				numberFormatInfoObject.NumberDecimalSeparator = Culture.NumberFormat.CurrencyDecimalSeparator;
				numberFormatInfoObject.PercentDecimalSeparator = Culture.NumberFormat.CurrencyDecimalSeparator;
				numberFormatInfoObject.CurrencyGroupSeparator = Culture.NumberFormat.CurrencyGroupSeparator;
				numberFormatInfoObject.NumberGroupSeparator = Culture.NumberFormat.CurrencyGroupSeparator;
				numberFormatInfoObject.PercentGroupSeparator = Culture.NumberFormat.CurrencyGroupSeparator;
				numberFormatInfoObject.CurrencyGroupSizes = Culture.NumberFormat.CurrencyGroupSizes;
				numberFormatInfoObject.CurrencyNegativePattern = Culture.NumberFormat.CurrencyNegativePattern;
				numberFormatInfoObject.CurrencyPositivePattern = Culture.NumberFormat.CurrencyPositivePattern;
				numberFormatInfoObject.CurrencySymbol = Culture.NumberFormat.CurrencySymbol;
				numberFormatInfoObject.NumberNegativePattern = Culture.NumberFormat.NumberNegativePattern;
			}
			return numberFormatInfoObject;
		}
		set
		{
			NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
			if (numberFormatInfoObject == null)
			{
				numberFormatInfoObject = new NumberFormatInfo();
			}
			NumberFormatInfo numberFormatInfo = new NumberFormatInfo();
			numberFormatInfo = ((value == null) ? Culture.NumberFormat : value);
			numberFormatInfoObject.CurrencyDecimalDigits = numberFormatInfo.CurrencyDecimalDigits;
			numberFormatInfoObject.CurrencyDecimalSeparator = numberFormatInfo.CurrencyDecimalSeparator;
			numberFormatInfoObject.NumberDecimalSeparator = numberFormatInfo.CurrencyDecimalSeparator;
			numberFormatInfoObject.PercentDecimalSeparator = numberFormatInfo.CurrencyDecimalSeparator;
			numberFormatInfoObject.CurrencyGroupSeparator = numberFormatInfo.CurrencyGroupSeparator;
			numberFormatInfoObject.NumberGroupSeparator = numberFormatInfo.CurrencyGroupSeparator;
			numberFormatInfoObject.PercentGroupSeparator = numberFormatInfo.CurrencyGroupSeparator;
			numberFormatInfoObject.CurrencyGroupSizes = numberFormatInfo.CurrencyGroupSizes;
			numberFormatInfoObject.CurrencyNegativePattern = numberFormatInfo.CurrencyNegativePattern;
			numberFormatInfoObject.CurrencyPositivePattern = numberFormatInfo.CurrencyPositivePattern;
			numberFormatInfoObject.CurrencySymbol = numberFormatInfo.CurrencySymbol;
			FormatChanged(copyOfCurrentNumberFormatInfo);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Category("Appearance")]
	public SpecialCultureValues SpecialCultureValue
	{
		get
		{
			return specialCultureValue;
		}
		set
		{
			specialCultureValue = value;
		}
	}

	[Category("Culture")]
	[Browsable(true)]
	[Description("Specifies if the NumberFormatInfo used for formatting will use the User Overrides for the culture.")]
	[DefaultValue(true)]
	public bool UseUserOverride
	{
		get
		{
			return useUserOverride;
		}
		set
		{
			useUserOverride = value;
		}
	}

	[DefaultValue(typeof(Border3DStyle), "Adjust")]
	[Description("Specifies the Border3DStyle for the CalculatorControl's border.")]
	[Browsable(true)]
	[Category("Appearance")]
	public Border3DStyle BorderStyle
	{
		get
		{
			return border3dStyleValue;
		}
		set
		{
			border3dStyleValue = value;
			Invalidate();
		}
	}

	[Category("Appearance")]
	[Description("Specifies if the control is to be resized based on the layout.")]
	[Browsable(true)]
	public new bool AutoSize
	{
		get
		{
			return autoSizeValue;
		}
		set
		{
			if (value != autoSizeValue)
			{
				autoSizeValue = value;
				if (value)
				{
					SetLayoutSize();
				}
			}
		}
	}

	[Browsable(true)]
	[DefaultValue(10)]
	[Category("Layout")]
	[Description("Gets or sets vertical spacing between buttons.")]
	public int VerticalSpacing
	{
		get
		{
			return m_iVerticalSpacing;
		}
		set
		{
			if (value != m_iVerticalSpacing)
			{
				m_iVerticalSpacing = value;
				if (LayoutType == CalculatorLayoutTypes.WindowsStandard)
				{
					InitializeWindowsStandardLayout();
				}
				else
				{
					InitializeFinancialLayout();
				}
			}
		}
	}

	[Browsable(true)]
	[DefaultValue(10)]
	[Description("Gets or sets horizontal spacing between buttons.")]
	[Category("Layout")]
	public int HorizontalSpacing
	{
		get
		{
			return m_iHorizontalSpacing;
		}
		set
		{
			if (value != m_iHorizontalSpacing)
			{
				m_iHorizontalSpacing = value;
				if (LayoutType == CalculatorLayoutTypes.WindowsStandard)
				{
					InitializeWindowsStandardLayout();
				}
				else
				{
					InitializeFinancialLayout();
				}
			}
		}
	}

	[Browsable(true)]
	[Category("Layout")]
	[Description("Gets or sets use vertical and horizontal spacing between buttons.")]
	[DefaultValue(false)]
	public bool UseVerticalAndHorizontalSpacing
	{
		get
		{
			return m_bUseVerticalAndHorizontalSpacing;
		}
		set
		{
			if (value != m_bUseVerticalAndHorizontalSpacing)
			{
				m_bUseVerticalAndHorizontalSpacing = value;
				if (LayoutType == CalculatorLayoutTypes.WindowsStandard)
				{
					InitializeWindowsStandardLayout();
				}
				else
				{
					InitializeFinancialLayout();
				}
			}
		}
	}

	[DefaultValue(typeof(FlatStyle), "Flat")]
	[Browsable(true)]
	[Description("The flat style for the CalculatorButton objects.")]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public FlatStyle FlatStyle
	{
		get
		{
			return flatStyle;
		}
		set
		{
			if (value != flatStyle)
			{
				flatStyle = value;
				OnUseVisualStyleChanged();
				RaiseFlatStyleChangedEvent();
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates whether themes are enabled for the Calculator control.")]
	[DefaultValue(true)]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public bool ThemesEnabled
	{
		get
		{
			return themesEnabled;
		}
		set
		{
			themesEnabled = value;
			RaiseThemesChangedEvent();
		}
	}

	[Description("Specifies if the assignment action will repeat the previous action.")]
	[Browsable(true)]
	[DefaultValue(true)]
	[Category("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public bool RepeatAssignAction
	{
		get
		{
			return repeatAssignAction;
		}
		set
		{
			repeatAssignAction = value;
		}
	}

	private ICalculatorEngine CalculatorEngine => calcEngineObject;

	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("Gets or sets the value of CalculatorControl as a double value.")]
	public double DoubleValue
	{
		get
		{
			return Value.ToDouble();
		}
		set
		{
			Value.SetValue(value);
			SetDisplayString();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public CalculatorValue Value
	{
		get
		{
			if (CalculatorEngine != null)
			{
				return CalculatorEngine.GetValue();
			}
			return CalculatorValue.Empty;
		}
		set
		{
			if (CalculatorEngine != null)
			{
				CalculatorEngine.SetValue(value);
			}
			SetDisplayString();
		}
	}

	[Description("Gets or sets the text alignment.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	[Category("Appearance")]
	[DefaultValue(HorizontalAlignment.Right)]
	public HorizontalAlignment DisplayTextAlign
	{
		get
		{
			return textCalculatorBox.TextAlign;
		}
		set
		{
			textCalculatorBox.TextAlign = value;
		}
	}

	[DefaultValue(CalculatorLayoutTypes.WindowsStandard)]
	[Browsable(true)]
	[Description("Gets or sets the current layout type.")]
	[Category("Appearance")]
	public CalculatorLayoutTypes LayoutType
	{
		get
		{
			return calcLayoutType;
		}
		set
		{
			if (calcLayoutType != value)
			{
				calcLayoutType = value;
				RaiseLayoutTypeChangedEvent();
			}
		}
	}

	[Description("Indicates whether the calculator control is to display the display textbox.")]
	[Browsable(true)]
	[Category("Appearance")]
	[DefaultValue(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public bool ShowDisplayArea
	{
		get
		{
			return showDisplayArea;
		}
		set
		{
			showDisplayArea = value;
			SuspendLayout();
			if (calcLayoutType == CalculatorLayoutTypes.Financial)
			{
				InitializeFinancialLayout();
			}
			else
			{
				InitializeWindowsStandardLayout();
			}
			ResumeLayout();
		}
	}

	[Category("Appearance")]
	[Description("Lets you set the background color, gradient, etc.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public BrushInfo BackgroundColor
	{
		get
		{
			return m_bgBrush;
		}
		set
		{
			if (value != m_bgBrush)
			{
				m_bgBrush = value;
				Invalidate();
			}
		}
	}

	[Description("Colorschemes for Office2007 visual style.")]
	[DefaultValue(Office2007Theme.Blue)]
	[Category("Appearance")]
	public Office2007Theme Office2007Theme
	{
		get
		{
			return m_office2007Theme;
		}
		set
		{
			if (value != m_office2007Theme)
			{
				m_office2007Theme = value;
				OnOffice2007ThemeChanged();
			}
		}
	}

	[DefaultValue(false)]
	[Description("Indicates whether to use visual style.")]
	[Category("Behavior")]
	public bool UseVisualStyle
	{
		get
		{
			if (useVisualStyle)
			{
				return FlatStyle != FlatStyle.System;
			}
			return false;
		}
		set
		{
			if (useVisualStyle != value && FlatStyle != FlatStyle.System)
			{
				useVisualStyle = value;
				OnUseVisualStyleChanged();
				RaiseFlatStyleChangedEvent();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[DefaultValue(ButtonAppearance.Classic)]
	[Description("The button style for the Calculator Control.")]
	[Category("Appearance")]
	public ButtonAppearance ButtonStyle
	{
		get
		{
			return appearance;
		}
		set
		{
			if (appearance != value)
			{
				appearance = value;
				OnButtonStyleChanged();
				RaiseFlatStyleChangedEvent();
			}
		}
	}

	[Description("Occurs when the Office2007Theme property is changed.")]
	public event EventHandler Office2007ThemeChanged;

	[Description("Raised when the Value property changes.")]
	public event CalculatorValueCalculatedEventHandler ValueCalculated;

	[Description("Raised when LayoutType property changes.")]
	public event CalculatorLayoutTypeChangedEventHandler LayoutTypeChanged;

	[Description("Raised when the FlatStyle property changes.")]
	public event CalculatorStyleChangedEventHandler FlatStyleChanged;

	static CalculatorControl()
	{
		c_WindowsStandardInsets = new Insets(5, 5, 5, 5);
		c_FinancialInsets = new Insets(4, 4, 4, 4);
		totalButtonCount = 27;
	}

	public CalculatorControl()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(CalculatorControl));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		rightToLeftCultures.Add("ar");
		rightToLeftCultures.Add("fa");
		rightToLeftCultures.Add("he");
		rightToLeftCultures.Add("ur");
		rightToLeftCultures.Add("syr");
		rightToLeftCultures.Add("div");
		InitializeCalculatorEngine();
		InitializeCalculatorDisplay();
		lastAction = CalcActions.CalcOperatorNone;
		InitializeComponent();
		SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
	}

	protected NumberFormatInfo GetCopyOfCurrentNumberFormatInfo()
	{
		NumberFormatInfo numberFormatInfo = new NumberFormatInfo();
		if (NumberFormatInfoObject != null)
		{
			numberFormatInfo.CurrencyDecimalDigits = NumberFormatInfoObject.CurrencyDecimalDigits;
			numberFormatInfo.CurrencyDecimalSeparator = NumberFormatInfoObject.CurrencyDecimalSeparator;
			numberFormatInfo.NumberDecimalSeparator = NumberFormatInfoObject.NumberDecimalSeparator;
			numberFormatInfo.PercentDecimalSeparator = NumberFormatInfoObject.PercentDecimalSeparator;
			numberFormatInfo.CurrencyGroupSeparator = NumberFormatInfoObject.CurrencyGroupSeparator;
			numberFormatInfo.NumberGroupSeparator = NumberFormatInfoObject.NumberGroupSeparator;
			numberFormatInfo.PercentGroupSeparator = NumberFormatInfoObject.PercentGroupSeparator;
			numberFormatInfo.CurrencyGroupSizes = NumberFormatInfoObject.CurrencyGroupSizes;
			numberFormatInfo.CurrencyNegativePattern = NumberFormatInfoObject.CurrencyNegativePattern;
			numberFormatInfo.CurrencyPositivePattern = NumberFormatInfoObject.CurrencyPositivePattern;
			numberFormatInfo.CurrencySymbol = NumberFormatInfoObject.CurrencySymbol;
		}
		return numberFormatInfo;
	}

	[DocumentationExclude]
	protected virtual void FormatChanged(NumberFormatInfo previousFormat)
	{
	}

	protected void ApplyRightToLeft()
	{
		if (rightToLeftCultures.Contains(Culture.Parent.Name))
		{
			RightToLeft = RightToLeft.Yes;
		}
		else
		{
			RightToLeft = RightToLeft.No;
		}
	}

	protected virtual void InitializeCalculatorEngine()
	{
		calcEngineObject = new Engine(this);
	}

	protected virtual void InitializeCalculatorDisplay()
	{
		mnemonicKeys = new Hashtable();
		showDisplayArea = true;
		toolTipHelp = new ToolTip();
		flatStyle = FlatStyle.Flat;
		border3dStyleValue = Border3DStyle.Adjust;
		calcButtons = new CalculatorButton[totalButtonCount];
		CalculatorButton calculatorButton = new CalculatorButton(this);
		calculatorButton.TabStop = true;
		calculatorButton.Size = new Size(0, 0);
		base.Controls.Add(calculatorButton);
		for (int i = 0; i < totalButtonCount; i++)
		{
			CalculatorButton calculatorButton2 = new CalculatorButton(this);
			calcButtons[i] = calculatorButton2;
			calcButtons[i].Parent = this;
		}
		CreateCalculatorDisplayBox();
		if (textCalculatorBox != null)
		{
			textCalculatorBox.TextAlign = HorizontalAlignment.Right;
			SetTextBoxColor();
			textCalculatorBox.TabStop = false;
		}
		memoryStateDisplay = new Label();
		memoryStateDisplay.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
		memoryStateDisplay.BackColor = Color.Transparent;
		InitializeLayoutAndAddControls();
		base.SizeChanged += HandleBoundsChanged;
		SetDisplayString();
	}

	protected virtual void SetTextBoxColor()
	{
		textCalculatorBox.Enabled = true;
		ForeColor = SystemColors.ControlText;
	}

	protected override void OnPaint(PaintEventArgs pe)
	{
		DrawBorder(pe.Graphics);
		BrushInfo brushInfo = BackgroundColor;
		if (UseVisualStyle && ButtonStyle == ButtonAppearance.Office2007 && Office2007Theme == Office2007Theme.Managed)
		{
			Color backColor = default(Color);
			brushInfo = GetOffice2007BackColor(Office2007Theme, ref backColor);
		}
		if (!brushInfo.Equals(BrushInfo.Empty))
		{
			BrushPaint.FillRectangle(pe.Graphics, base.ClientRectangle, brushInfo);
		}
		base.OnPaint(pe);
	}

	protected virtual void DrawBorder(Graphics g)
	{
		Rectangle rectangle = new Rectangle(0, 0, base.Width, base.Height);
		ControlPaint.DrawBorder3D(g, rectangle, BorderStyle, Border3DSide.Left | Border3DSide.Top | Border3DSide.Right | Border3DSide.Bottom);
	}

	protected override void OnBackColorChanged(EventArgs arg)
	{
		base.OnBackColorChanged(arg);
		for (int i = 0; i < totalButtonCount; i++)
		{
			calcButtons[i].BackColor = BackColor;
		}
	}

	protected override bool ProcessDialogKey(Keys keyData)
	{
		if (keyData == Keys.Return)
		{
			if (mnemonicKeys.ContainsKey((int)keyData))
			{
				int buttonIndex = (int)mnemonicKeys[(int)keyData];
				SimulateButtonClick(buttonIndex);
				return true;
			}
		}
		return base.ProcessDialogKey(keyData);
	}

	protected virtual void CreateCalculatorDisplayBox()
	{
		textCalculatorBox = new CalculatorTextBox(this);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			base.SizeChanged -= HandleBoundsChanged;
			if (calcWinStandardLayout != null)
			{
				calcWinStandardLayout.Dispose();
				calcWinStandardLayout = null;
			}
			if (calcFinancialLayout != null)
			{
				calcFinancialLayout.Dispose();
				calcFinancialLayout = null;
			}
			if (textCalculatorBox != null)
			{
				base.Controls.Remove(textCalculatorBox);
				textCalculatorBox.Dispose();
				textCalculatorBox = null;
			}
			if (toolTipHelp != null)
			{
				toolTipHelp.Dispose();
				toolTipHelp = null;
			}
			if (calcButtons != null)
			{
				CalculatorButton[] array = calcButtons;
				foreach (CalculatorButton calculatorButton in array)
				{
					base.Controls.Remove(calculatorButton);
					calculatorButton.Dispose();
				}
				calcButtons = null;
			}
			if (components != null)
			{
				components.Dispose();
			}
		}
		base.Dispose(disposing);
	}

	public void HandleChildKeyDown(KeyEventArgs e)
	{
		int keyData = (int)e.KeyData;
		if (mnemonicKeys.ContainsKey(keyData))
		{
			int num = (int)mnemonicKeys[keyData];
			if (num >= 0)
			{
				SimulateButtonClick(num);
			}
		}
	}

	private void SimulateButtonClick(int buttonIndex)
	{
		CalculatorButton calculatorButton = calcButtons[buttonIndex];
		if (calculatorButton != null)
		{
			calculatorButton.Select();
			calculatorButton.PerformClick();
		}
	}

	private void InitializeComponent()
	{
	}

	public void ResetCalculator()
	{
		calcEngineObject.Reset();
		memoryStateDisplay.Text = string.Empty;
	}

	protected void RaiseLayoutTypeChangedEvent()
	{
		SuspendLayout();
		if (AutoSize)
		{
			SetLayoutSize();
		}
		if (calcLayoutType == CalculatorLayoutTypes.Financial)
		{
			calcFinancialLayout.AutoLayout = true;
			calcWinStandardLayout.AutoLayout = false;
			InitializeFinancialLayout();
			calcFinancialLayout.LayoutContainer();
		}
		else
		{
			calcFinancialLayout.AutoLayout = false;
			calcWinStandardLayout.AutoLayout = true;
			InitializeWindowsStandardLayout();
			calcWinStandardLayout.LayoutContainer();
		}
		ResetCalculator();
		ResumeLayout();
		CalculatorLayoutTypeChangedEventArgs args = new CalculatorLayoutTypeChangedEventArgs(LayoutType);
		OnLayoutTypeChange(args);
	}

	private void SetLayoutSize()
	{
		if (LayoutType == CalculatorLayoutTypes.Financial)
		{
			base.Size = new Size(200, 184);
		}
		else
		{
			base.Size = new Size(288, 232);
		}
	}

	protected virtual void OnLayoutTypeChange(CalculatorLayoutTypeChangedEventArgs args)
	{
		if (this.LayoutTypeChanged != null)
		{
			this.LayoutTypeChanged(this, args);
		}
	}

	protected void RaiseFlatStyleChangedEvent()
	{
		SuspendLayout();
		for (int i = 0; i < totalButtonCount; i++)
		{
			calcButtons[i].Appearance = ButtonStyle;
			calcButtons[i].ButtonStyle.FlatStyle = FlatStyle;
			calcButtons[i].UseVisualStyle = UseVisualStyle;
		}
		ResumeLayout();
		new CalculatorStyleChangedEventArgs(FlatStyle);
	}

	protected void RaiseThemesChangedEvent()
	{
		SuspendLayout();
		for (int i = 0; i < totalButtonCount; i++)
		{
			calcButtons[i].ThemesEnabled = ThemesEnabled;
		}
		ResumeLayout();
	}

	protected virtual void OnOffice2007ThemeChanged()
	{
		RaiseOffice2007ThemeChanged();
		for (int i = 0; i < totalButtonCount; i++)
		{
			calcButtons[i].Office2007ColorScheme = m_office2007Theme;
		}
		if (UseVisualStyle && ButtonStyle == ButtonAppearance.Office2007)
		{
			ChangeBackgroundColor(m_office2007Theme);
		}
	}

	private void ChangeBackgroundColor(Office2007Theme theme)
	{
		Color backColor = default(Color);
		BackgroundColor = GetOffice2007BackColor(theme, ref backColor);
		BackColor = backColor;
	}

	private BrushInfo GetOffice2007BackColor(Office2007Theme theme, ref Color backColor)
	{
		Office2007Colors colorTable = Office2007Colors.GetColorTable(theme);
		Color[] colors = new Color[2] { colorTable.ButtonDefaultTopColor, colorTable.ButtonDefaultBottomColor };
		backColor = colorTable.ButtonDefaultBottomColor;
		return new BrushInfo(GradientStyle.Vertical, colors);
	}

	private void RaiseOffice2007ThemeChanged()
	{
		if (this.Office2007ThemeChanged != null)
		{
			this.Office2007ThemeChanged(this, EventArgs.Empty);
		}
	}

	[DocumentationExclude]
	protected virtual void OnFlatStyleChange(CalculatorStyleChangedEventArgs args)
	{
		if (this.FlatStyleChanged != null)
		{
			this.FlatStyleChanged(this, args);
		}
	}

	public GridBagLayout GetLayoutManager()
	{
		return GetLayoutManager(LayoutType);
	}

	public GridBagLayout GetLayoutManager(CalculatorLayoutTypes layoutType)
	{
		if (layoutType == CalculatorLayoutTypes.Financial)
		{
			return calcFinancialLayout;
		}
		return calcWinStandardLayout;
	}

	protected void HandleBoundsChanged(object sender, EventArgs e)
	{
		GridBagLayout layoutManager = GetLayoutManager();
		layoutManager.AutoLayout = true;
		layoutManager.LayoutContainer();
	}

	[DocumentationExclude]
	public void SetButton(int index, CalculatorButtonStyle btnStyle, CalcActions action, string title)
	{
		calcButtons[index].Initialize(btnStyle, action, title);
		calcButtons[index].Visible = true;
	}

	private void CheckCalcActionValidity(CalcActions caCalcButton)
	{
		if (!Enum.IsDefined(typeof(CalcActions), caCalcButton))
		{
			throw new ArgumentOutOfRangeException("caCalcButton");
		}
	}

	public Color GetButtonColor(CalcActions caCalcButton)
	{
		CheckCalcActionValidity(caCalcButton);
		return calcButtons[(int)caCalcButton].ForeColor;
	}

	public Font GetButtonFont(CalcActions caCalcButton)
	{
		CheckCalcActionValidity(caCalcButton);
		return calcButtons[(int)caCalcButton].Font;
	}

	public void SetButtonColor(CalcActions caCalcButton, Color color)
	{
		CheckCalcActionValidity(caCalcButton);
		int calcButtonIndexFromAction = GetCalcButtonIndexFromAction(caCalcButton);
		if (calcButtonIndexFromAction != -1)
		{
			calcButtons[calcButtonIndexFromAction].ButtonStyle.ForeColor = color;
			calcButtons[calcButtonIndexFromAction].ForeColor = color;
		}
	}

	private int GetCalcButtonIndexFromAction(CalcActions caCalcButton)
	{
		int result = -1;
		int i = 0;
		for (int num = calcButtons.Length; i < num; i++)
		{
			if (calcButtons[i].Action == caCalcButton)
			{
				result = i;
				break;
			}
		}
		return result;
	}

	public void SetButtonFont(CalcActions caCalcButton, Font font)
	{
		CheckCalcActionValidity(caCalcButton);
		int calcButtonIndexFromAction = GetCalcButtonIndexFromAction(caCalcButton);
		if (calcButtonIndexFromAction != -1)
		{
			calcButtons[calcButtonIndexFromAction].ButtonStyle.Font = font;
			calcButtons[calcButtonIndexFromAction].Font = font;
		}
	}

	protected void AddShortcutKey(int index, int keyData)
	{
		if (!mnemonicKeys.ContainsKey(keyData))
		{
			mnemonicKeys.Add(keyData, index);
		}
	}

	private void SetLayoutConstraintsForControl(CalculatorLayoutTypes layoutType, Control control, GridBagConstraints gbc, Size minSize, Size prefSize)
	{
		GridBagLayout layoutManager = GetLayoutManager(layoutType);
		layoutManager.SetConstraints(control, gbc);
		layoutManager.SetMinimumSize(control, minSize);
		layoutManager.SetPreferredSize(control, prefSize);
	}

	private void SetAccessibilitySettingsForControl(Control control, AccessibleRole role, string name, string description, string defaultAction)
	{
		control.AccessibleRole = role;
		control.AccessibleName = name;
		control.AccessibleDescription = description;
		control.AccessibleDefaultActionDescription = defaultAction;
	}

	public void InitializeLayoutAndAddControls()
	{
		base.Size = new Size(288, 232);
		SetStyle(ControlStyles.ResizeRedraw, value: true);
		base.AccessibleDescription = "Calculator control";
		base.AccessibleName = "Calculator Control";
		base.AccessibleRole = AccessibleRole.Default;
		calcFinancialLayout = new GridBagLayout();
		calcWinStandardLayout = new GridBagLayout();
		calcFinancialLayout.AutoLayout = false;
		calcFinancialLayout.ContainerControl = this;
		calcWinStandardLayout.AutoLayout = false;
		calcWinStandardLayout.ContainerControl = this;
		base.Controls.Add(textCalculatorBox);
		base.Controls.Add(memoryStateDisplay);
		for (int i = 0; i < totalButtonCount; i++)
		{
			base.Controls.Add(calcButtons[i]);
		}
		LayoutType = CalculatorLayoutTypes.WindowsStandard;
	}

	protected void InitializeFinancialLayout()
	{
		mnemonicKeys.Clear();
		calcFinancialLayout.ContainerControl = this;
		Font font = FontUtil.CreateFont(Font, FontStyle.Regular);
		GridBagConstraints gbc = new GridBagConstraints();
		gbc.Fill = FillType.Horizontal;
		gbc.Insets = c_FinancialInsets;
		CalculatorButtonStyle btnStyle = new CalculatorButtonStyle(Color.Blue, font, flatStyle);
		CalculatorButtonStyle btnStyle2 = new CalculatorButtonStyle(Color.Red, font, flatStyle);
		Size size = new Size(104, 20);
		Size size2 = new Size(26, 20);
		Size size3 = new Size(52, 20);
		gbc.GridPosX = 0;
		gbc.GridPosY = 0;
		gbc.CellSpanX = 4;
		gbc.CellSpanY = 1;
		gbc.WeightX = 1.0;
		gbc.WeightY = 0.2;
		if (ShowDisplayArea)
		{
			textCalculatorBox.Visible = true;
			SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, textCalculatorBox, gbc, size, size);
			SetAccessibilitySettingsForControl(textCalculatorBox, AccessibleRole.StaticText, "Calculator Display", "Displays results for the calculator", string.Empty);
			gbc.GridPosY++;
		}
		else
		{
			textCalculatorBox.Visible = false;
		}
		gbc.Insets = FormatingGridBag(ref gbc);
		gbc.GridPosX = 0;
		gbc.CellSpanX = 1;
		gbc.CellSpanY = 1;
		SetButton(0, btnStyle, CalcActions.CalcSpecialClear, "C");
		AddShortcutKey(0, 27);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[0], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[0], AccessibleRole.PushButton, "CButton", "Clears the calculator control", "Press");
		gbc.GridPosX = 1;
		SetButton(1, btnStyle, CalcActions.CalcSpecialClearEntry, "CE");
		AddShortcutKey(1, 46);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[1], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[1], AccessibleRole.PushButton, "CEButton", "Clear the calculator's entry", "Press");
		gbc.GridPosX = 2;
		SetButton(2, btnStyle, CalcActions.CalcSpecialBackspace, "<-");
		AddShortcutKey(2, 8);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[2], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[2], AccessibleRole.PushButton, "BackSpaceButton", "Deletes text in the Calculator display", "Press");
		gbc.GridPosX = 3;
		SetButton(3, btnStyle, CalcActions.CalcOperatorPercent, "%");
		AddShortcutKey(3, 65589);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[3], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[3], AccessibleRole.PushButton, "PercentButton", "Computes the percentage", "Press");
		gbc.GridPosX = 0;
		gbc.GridPosY = 2;
		SetButton(4, btnStyle2, CalcActions.CalcDigit7, "7");
		AddShortcutKey(4, 55);
		AddShortcutKey(4, 103);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[4], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[4], AccessibleRole.PushButton, "SevenButton", "Inputs the numeral 7", "Press");
		gbc.GridPosX = 1;
		SetButton(5, btnStyle2, CalcActions.CalcDigit8, "8");
		AddShortcutKey(5, 56);
		AddShortcutKey(5, 104);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[5], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[5], AccessibleRole.PushButton, "EightButton", "Inputs the numeral 9", "Press");
		gbc.GridPosX = 2;
		SetButton(6, btnStyle2, CalcActions.CalcDigit9, "9");
		AddShortcutKey(6, 57);
		AddShortcutKey(6, 105);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[6], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[6], AccessibleRole.PushButton, "NineButton", "Inputs the numeral 9", "Press");
		gbc.GridPosX = 3;
		SetButton(7, btnStyle, CalcActions.CalcOperatorDivide, "/");
		AddShortcutKey(7, 111);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[7], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[7], AccessibleRole.PushButton, "DivideButton", "Divides two numbers", "Press");
		gbc.GridPosY++;
		gbc.GridPosX = 0;
		SetButton(8, btnStyle2, CalcActions.CalcDigit4, "4");
		AddShortcutKey(8, 52);
		AddShortcutKey(8, 100);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[8], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[8], AccessibleRole.PushButton, "FourButton", "Inputs the numeral 4", "Press");
		gbc.GridPosX = 1;
		AddShortcutKey(9, 53);
		AddShortcutKey(9, 101);
		SetButton(9, btnStyle2, CalcActions.CalcDigit5, "5");
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[9], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[9], AccessibleRole.PushButton, "FiveButton", "Inputs the numeral 5", "Press");
		gbc.GridPosX = 2;
		AddShortcutKey(10, 54);
		AddShortcutKey(10, 102);
		SetButton(10, btnStyle2, CalcActions.CalcDigit6, "6");
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[10], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[10], AccessibleRole.PushButton, "SixButton", "Inputs the numeral 6", "Press");
		gbc.GridPosX = 3;
		SetButton(11, btnStyle, CalcActions.CalcOperatorMultiply, "X");
		AddShortcutKey(11, 65592);
		AddShortcutKey(11, 106);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[11], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[11], AccessibleRole.PushButton, "MultiplyButton", "Multiplies two buttons", "Press");
		gbc.GridPosY++;
		gbc.GridPosX = 0;
		SetButton(12, btnStyle2, CalcActions.CalcDigit1, "1");
		AddShortcutKey(12, 49);
		AddShortcutKey(12, 97);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[12], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[12], AccessibleRole.PushButton, "OneButton", "Inputs the numeral 1", "Press");
		gbc.GridPosX = 1;
		SetButton(13, btnStyle2, CalcActions.CalcDigit2, "2");
		AddShortcutKey(13, 50);
		AddShortcutKey(13, 98);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[13], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[13], AccessibleRole.PushButton, "TwoButton", "Inputs the numeral 2", "Press");
		gbc.GridPosX = 2;
		SetButton(14, btnStyle2, CalcActions.CalcDigit3, "3");
		AddShortcutKey(14, 51);
		AddShortcutKey(14, 99);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[14], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[14], AccessibleRole.PushButton, "ThreeButton", "Inputs the numeral 3", "Press");
		gbc.GridPosX = 3;
		SetButton(15, btnStyle, CalcActions.CalcOperatorMinus, "-");
		AddShortcutKey(15, 109);
		AddShortcutKey(15, 189);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[15], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[15], AccessibleRole.PushButton, "SubtractButton", "Subtracts one number from another", "Press");
		gbc.GridPosY++;
		gbc.GridPosX = 0;
		gbc.CellSpanX = 2;
		SetButton(16, btnStyle2, CalcActions.CalcDigit0, "0");
		AddShortcutKey(16, 48);
		AddShortcutKey(16, 96);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[16], gbc, size3, size3);
		SetAccessibilitySettingsForControl(calcButtons[16], AccessibleRole.PushButton, "ZeroButton", "Inputs the numeral 0", "Press");
		gbc.GridPosX = 2;
		gbc.CellSpanX = 1;
		SetButton(17, btnStyle2, CalcActions.CalcSpecialDecimal, NumberFormatInfoObject.CurrencyDecimalSeparator);
		AddShortcutKey(17, 110);
		AddShortcutKey(17, 190);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[17], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[17], AccessibleRole.PushButton, "DecimalButton", "Decimal Input", "Press");
		gbc.GridPosX = 3;
		SetButton(18, btnStyle, CalcActions.CalcOperatorPlus, "+");
		AddShortcutKey(18, 187);
		AddShortcutKey(18, 107);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[18], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[18], AccessibleRole.PushButton, "AddButton", "Adds two numbers", "Press");
		gbc.GridPosY++;
		gbc.GridPosX = 0;
		gbc.CellSpanX = 4;
		SetButton(19, btnStyle2, CalcActions.CalcOperatorEquals, "=");
		AddShortcutKey(19, 13);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.Financial, calcButtons[19], gbc, size, size);
		SetAccessibilitySettingsForControl(calcButtons[19], AccessibleRole.PushButton, "EnterButton", "Initiates a calculation", "Press");
		memoryStateDisplay.Visible = false;
		calcButtons[20].Visible = false;
		calcButtons[21].Visible = false;
		calcButtons[22].Visible = false;
		calcButtons[23].Visible = false;
		calcButtons[24].Visible = false;
		calcButtons[25].Visible = false;
		calcButtons[26].Visible = false;
		Invalidate();
	}

	protected void InitializeWindowsStandardLayout()
	{
		Font font = FontUtil.CreateFont(Font, FontStyle.Regular);
		GridBagConstraints gbc = new GridBagConstraints();
		gbc.Fill = FillType.Horizontal;
		Insets insets = c_WindowsStandardInsets;
		gbc.Insets = insets;
		mnemonicKeys.Clear();
		CalculatorButtonStyle btnStyle = new CalculatorButtonStyle(Color.Blue, font, flatStyle);
		CalculatorButtonStyle btnStyle2 = new CalculatorButtonStyle(Color.Red, font, flatStyle);
		Size size = new Size(240, 22);
		Size size2 = new Size(34, 27);
		Size size3 = new Size(62, 27);
		gbc.GridPosX = 0;
		gbc.GridPosY = 0;
		gbc.CellSpanX = 6;
		gbc.CellSpanY = 1;
		gbc.WeightX = 1.0;
		gbc.WeightY = 0.2;
		if (ShowDisplayArea)
		{
			SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, textCalculatorBox, gbc, size, size);
			SetAccessibilitySettingsForControl(textCalculatorBox, AccessibleRole.StaticText, "CalculatorDisplay", "Displays the Calculator results", string.Empty);
			gbc.GridPosY++;
			textCalculatorBox.Visible = true;
			toolTipHelp.SetToolTip(textCalculatorBox, "The calculator display area");
		}
		else
		{
			textCalculatorBox.Visible = false;
		}
		insets = (gbc.Insets = FormatingGridBag(ref gbc));
		gbc.GridPosX = 0;
		gbc.CellSpanX = 1;
		gbc.CellSpanY = 1;
		gbc.WeightX = 0.2;
		gbc.WeightY = 0.2;
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, memoryStateDisplay, gbc, size2, size2);
		SetAccessibilitySettingsForControl(memoryStateDisplay, AccessibleRole.StaticText, "MemoryState", "Shows if there is a value in calculator memory.", string.Empty);
		memoryStateDisplay.Visible = true;
		gbc.GridPosX = 1;
		gbc.CellSpanX = 2;
		gbc.CellSpanY = 1;
		gbc.WeightX = 0.3;
		gbc.WeightY = 0.2;
		SetButton(0, btnStyle2, CalcActions.CalcSpecialBackspace, "Backspace");
		AddShortcutKey(0, 8);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[0], gbc, size3, size3);
		SetAccessibilitySettingsForControl(calcButtons[0], AccessibleRole.PushButton, "BackSpaceButton", "Backspace key to delete text.", "Press");
		gbc.GridPosX = 3;
		gbc.CellSpanX = 1;
		gbc.CellSpanY = 1;
		gbc.WeightX = 0.2;
		gbc.WeightY = 0.2;
		SetButton(1, btnStyle2, CalcActions.CalcSpecialClearEntry, "CE");
		AddShortcutKey(1, 46);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[1], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[1], AccessibleRole.PushButton, "CEButton", "Clears the content of the Calculator display.", "Press");
		gbc.GridPosX = 4;
		gbc.CellSpanX = 2;
		gbc.CellSpanY = 1;
		gbc.WeightX = 0.3;
		gbc.WeightY = 0.2;
		SetButton(2, btnStyle2, CalcActions.CalcSpecialClear, "C");
		AddShortcutKey(2, 27);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[2], gbc, size3, size3);
		SetAccessibilitySettingsForControl(calcButtons[2], AccessibleRole.PushButton, "CButton", "Clears the content of the Calculator display.", "Press");
		gbc.GridPosY++;
		gbc.GridPosX = 0;
		gbc.CellSpanX = 1;
		gbc.CellSpanY = 1;
		gbc.WeightY = 0.2;
		gbc.WeightX = 0.2;
		SetButton(3, btnStyle2, CalcActions.CalcOperatorMemoryClear, "MC");
		AddShortcutKey(3, 131127);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[3], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[3], AccessibleRole.PushButton, "MCButton", "Clears the memory of the Calculator.", "Press");
		gbc.GridPosX = 1;
		gbc.WeightX = 0.16;
		gbc.Insets = insets;
		SetButton(4, btnStyle, CalcActions.CalcDigit7, "7");
		AddShortcutKey(4, 55);
		AddShortcutKey(4, 103);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[4], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[4], AccessibleRole.PushButton, "SevenButton", "Enters Numeral 7.", "Press");
		gbc.GridPosX = 2;
		SetButton(5, btnStyle, CalcActions.CalcDigit8, "8");
		AddShortcutKey(5, 56);
		AddShortcutKey(5, 104);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[5], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[5], AccessibleRole.PushButton, "EightButton", "Enters Numeral 8.", "Press");
		gbc.GridPosX = 3;
		SetButton(6, btnStyle, CalcActions.CalcDigit9, "9");
		AddShortcutKey(6, 57);
		AddShortcutKey(6, 105);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[6], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[6], AccessibleRole.PushButton, "NineButton", "Enters Numeral 9.", "Press");
		gbc.GridPosX = 4;
		SetButton(7, btnStyle2, CalcActions.CalcOperatorDivide, "/");
		AddShortcutKey(7, 111);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[7], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[7], AccessibleRole.PushButton, "DivideButton", "Divides 2 numbers", "Press");
		gbc.GridPosX = 5;
		SetButton(8, btnStyle, CalcActions.CalcOperatorSqrt, "sqrt");
		AddShortcutKey(8, 65586);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[8], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[8], AccessibleRole.PushButton, "SquareRootButton", "Computes square root of a number", "Press");
		gbc.GridPosY++;
		gbc.WeightX = 0.2;
		gbc.GridPosX = 0;
		SetButton(9, btnStyle2, CalcActions.CalcOperatorMemoryRecall, "MR");
		AddShortcutKey(9, 131154);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[9], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[9], AccessibleRole.PushButton, "MRButton", "Computes square root of a number", "Press");
		gbc.GridPosX = 1;
		gbc.WeightX = 0.16;
		gbc.Insets = insets;
		SetButton(10, btnStyle, CalcActions.CalcDigit4, "4");
		AddShortcutKey(10, 52);
		AddShortcutKey(10, 100);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[10], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[10], AccessibleRole.PushButton, "FourButton", "Computes square root of a number", "Press");
		gbc.GridPosX = 2;
		SetButton(11, btnStyle, CalcActions.CalcDigit5, "5");
		AddShortcutKey(11, 53);
		AddShortcutKey(11, 101);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[11], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[11], AccessibleRole.PushButton, "FiveButton", "Computes square root of a number", "Press");
		gbc.GridPosX = 3;
		SetButton(12, btnStyle, CalcActions.CalcDigit6, "6");
		AddShortcutKey(12, 54);
		AddShortcutKey(12, 102);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[12], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[12], AccessibleRole.PushButton, "SixButton", "Computes square root of a number", "Press");
		gbc.GridPosX = 4;
		SetButton(13, btnStyle2, CalcActions.CalcOperatorMultiply, "*");
		AddShortcutKey(13, 65592);
		AddShortcutKey(13, 106);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[13], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[13], AccessibleRole.PushButton, "MultiplyButton", "Computes square root of a number", "Press");
		gbc.GridPosX = 5;
		SetButton(14, btnStyle, CalcActions.CalcOperatorPercent, "%");
		AddShortcutKey(14, 65589);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[14], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[14], AccessibleRole.PushButton, "PercentButton", "Computes square root of a number", "Press");
		gbc.GridPosY++;
		gbc.GridPosX = 0;
		gbc.WeightX = 0.2;
		SetButton(15, btnStyle2, CalcActions.CalcOperatorMemoryStore, "MS");
		AddShortcutKey(15, 131149);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[15], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[15], AccessibleRole.PushButton, "MSButton", "Computes square root of a number", "Press");
		gbc.GridPosX = 1;
		gbc.WeightX = 0.16;
		SetButton(16, btnStyle, CalcActions.CalcDigit1, "1");
		AddShortcutKey(16, 49);
		AddShortcutKey(16, 97);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[16], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[16], AccessibleRole.PushButton, "OneButton", "Inputs the numeral 1", "Press");
		gbc.GridPosX = 2;
		SetButton(17, btnStyle, CalcActions.CalcDigit2, "2");
		AddShortcutKey(17, 50);
		AddShortcutKey(17, 98);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[17], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[17], AccessibleRole.PushButton, "TwoButton", "Inputs the numeral 2", "Press");
		gbc.GridPosX = 3;
		SetButton(18, btnStyle, CalcActions.CalcDigit3, "3");
		AddShortcutKey(18, 51);
		AddShortcutKey(18, 99);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[18], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[18], AccessibleRole.PushButton, "ThreeButton", "Inputs the numeral 3", "Press");
		gbc.GridPosX = 4;
		SetButton(19, btnStyle2, CalcActions.CalcOperatorMinus, "-");
		AddShortcutKey(19, 189);
		AddShortcutKey(19, 109);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[19], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[19], AccessibleRole.PushButton, "MinusButton", "Computes the difference between two numbers", "Press");
		gbc.GridPosX = 5;
		SetButton(20, btnStyle, CalcActions.CalcOperatorReciprocal, "1/x");
		AddShortcutKey(20, 82);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[20], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[20], AccessibleRole.PushButton, "ReciprocalButton", "Computes the reciprocal of a number", "Press");
		gbc.GridPosY++;
		gbc.GridPosX = 0;
		gbc.WeightX = 0.2;
		SetButton(21, btnStyle2, CalcActions.CalcOperatorMemoryPlus, "M+");
		AddShortcutKey(21, 131152);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[21], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[21], AccessibleRole.PushButton, "M+Button", "Add the current display value to memory", "Press");
		gbc.GridPosX = 1;
		gbc.WeightX = 0.16;
		SetButton(22, btnStyle, CalcActions.CalcDigit0, "0");
		AddShortcutKey(22, 48);
		AddShortcutKey(22, 96);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[22], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[22], AccessibleRole.PushButton, "ZeroButton", "Inputs the numeral 0", "Press");
		gbc.GridPosX = 2;
		SetButton(23, btnStyle, CalcActions.CalcOperatorSign, "+/-");
		AddShortcutKey(23, 120);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[23], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[23], AccessibleRole.PushButton, "SignButton", "Toggles the sign of the display", "Press");
		gbc.GridPosX = 3;
		SetButton(24, btnStyle, CalcActions.CalcSpecialDecimal, NumberFormatInfoObject.CurrencyDecimalSeparator);
		AddShortcutKey(24, 110);
		AddShortcutKey(24, 190);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[24], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[24], AccessibleRole.PushButton, "DecimalButton", "Inputs the decimal character.", "Press");
		gbc.GridPosX = 4;
		SetButton(25, btnStyle2, CalcActions.CalcOperatorPlus, "+");
		AddShortcutKey(25, 187);
		AddShortcutKey(25, 107);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[25], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[25], AccessibleRole.PushButton, "AddButton", "Computes sum of two numbers", "Press");
		gbc.GridPosX = 5;
		SetButton(26, btnStyle2, CalcActions.CalcOperatorEquals, "=");
		AddShortcutKey(26, 13);
		SetLayoutConstraintsForControl(CalculatorLayoutTypes.WindowsStandard, calcButtons[26], gbc, size2, size2);
		SetAccessibilitySettingsForControl(calcButtons[26], AccessibleRole.PushButton, "EnterButton", "Initiates a calculation", "Press");
	}

	private Insets FormatingGridBag(ref GridBagConstraints gbc)
	{
		if (!UseVerticalAndHorizontalSpacing)
		{
			gbc.Fill = FillType.Horizontal;
			if (LayoutType == CalculatorLayoutTypes.WindowsStandard)
			{
				return c_WindowsStandardInsets;
			}
			return c_FinancialInsets;
		}
		gbc.Fill = FillType.Both;
		int num = HorizontalSpacing / 2;
		int num2 = VerticalSpacing / 2;
		int right = num + VerticalSpacing % 2;
		int bottom = num2 + HorizontalSpacing % 2;
		return new Insets(num, num2, right, bottom);
	}

	protected virtual void OnValueCalculated(CalculatorValueCalculatedEventArgs arg)
	{
		if (this.ValueCalculated != null)
		{
			this.ValueCalculated(this, arg);
		}
	}

	public void SetDisplayString()
	{
		if (ShowDisplayArea && textCalculatorBox != null)
		{
			textCalculatorBox.Text = Value.ToString();
		}
	}

	public void RefreshMemoryLabel(double memoryValue)
	{
		if (memoryValue > 0.0)
		{
			memoryStateDisplay.Text = "M";
		}
		else
		{
			memoryStateDisplay.Text = string.Empty;
		}
	}

	public void ButtonAction(CalcActions action)
	{
		lastAction = action;
		calcEngineObject.HandleAction(action);
	}

	public void EngineValueChanged(CalculatorValue internalValue, bool errorCondition, string feedbackMessage, double memoryValue)
	{
		SetDisplayString();
		RefreshMemoryLabel(memoryValue);
		CalculatorValueCalculatedEventArgs arg = new CalculatorValueCalculatedEventArgs(internalValue, errorCondition, feedbackMessage, lastAction);
		OnValueCalculated(arg);
	}

	private void OnUseVisualStyleChanged()
	{
		if (ButtonStyle == ButtonAppearance.Office2007)
		{
			if (UseVisualStyle)
			{
				ChangeBackgroundColor(Office2007Theme);
				return;
			}
			ResetBackgroundColor();
			ResetBackColor();
		}
	}

	private void OnButtonStyleChanged()
	{
		if (UseVisualStyle)
		{
			if (ButtonStyle == ButtonAppearance.Office2007)
			{
				ChangeBackgroundColor(Office2007Theme);
				return;
			}
			ResetBackgroundColor();
			ResetBackColor();
		}
	}

	protected void ResetBackgroundColor()
	{
		m_bgBrush = BrushInfo.Empty;
		Invalidate();
	}

	protected bool ShouldSerializeBackgroundColor()
	{
		return !m_bgBrush.Equals(BrushInfo.Empty);
	}
}
