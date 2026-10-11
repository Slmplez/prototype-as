using System;
using System.Globalization;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
public class CalculatorValue
{
	private string internalValue;

	private NumberFormatInfo numberFormatInfoObject;

	public static CalculatorValue Empty => new CalculatorValue();

	public NumberFormatInfo NumberFormatInfoObject
	{
		get
		{
			if (numberFormatInfoObject == null)
			{
				numberFormatInfoObject = new NumberFormatInfo();
			}
			return numberFormatInfoObject;
		}
		set
		{
			if (numberFormatInfoObject == null)
			{
				numberFormatInfoObject = new NumberFormatInfo();
			}
			new NumberFormatInfo();
			if (value != null)
			{
				numberFormatInfoObject.CurrencyDecimalDigits = value.CurrencyDecimalDigits;
				numberFormatInfoObject.CurrencyDecimalSeparator = value.CurrencyDecimalSeparator;
				numberFormatInfoObject.NumberDecimalSeparator = value.CurrencyDecimalSeparator;
				numberFormatInfoObject.PercentDecimalSeparator = value.CurrencyDecimalSeparator;
				numberFormatInfoObject.CurrencyGroupSeparator = value.CurrencyGroupSeparator;
				numberFormatInfoObject.NumberGroupSeparator = value.CurrencyGroupSeparator;
				numberFormatInfoObject.PercentGroupSeparator = value.CurrencyGroupSeparator;
				numberFormatInfoObject.CurrencyGroupSizes = value.CurrencyGroupSizes;
				numberFormatInfoObject.CurrencyNegativePattern = value.CurrencyNegativePattern;
				numberFormatInfoObject.CurrencyPositivePattern = value.CurrencyPositivePattern;
				numberFormatInfoObject.CurrencySymbol = value.CurrencySymbol;
			}
		}
	}

	public CalculatorValue()
	{
		internalValue = "0";
	}

	public CalculatorValue(string val)
	{
		internalValue = val;
	}

	public CalculatorValue(double val)
	{
		try
		{
			internalValue = string.Format(NumberFormatInfoObject, "{0:G}", new object[1] { val });
		}
		catch
		{
		}
	}

	public double ToDouble()
	{
		double result = 0.0;
		try
		{
			result = double.Parse(internalValue, NumberFormatInfoObject);
		}
		catch
		{
		}
		return result;
	}

	public decimal ToDecimal()
	{
		decimal result = 0m;
		try
		{
			result = decimal.Parse(internalValue, NumberFormatInfoObject);
		}
		catch
		{
		}
		return result;
	}

	public override string ToString()
	{
		return internalValue;
	}

	public void SetValue(string val)
	{
		internalValue = val;
	}

	public void SetValue(double val)
	{
		try
		{
			internalValue = string.Format(NumberFormatInfoObject, "{0:G}", new object[1] { val });
		}
		catch
		{
		}
	}
}
