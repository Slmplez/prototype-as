using System;
using System.Drawing;
using System.Globalization;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridCurrencyTextBoxStaticCellAdapter
{
	internal static string GetFormattedText(GridStyleInfo info, out Color textColor)
	{
		decimal result = 0m;
		object valueFromStyle = GetValueFromStyle(info);
		string text = string.Empty;
		if (valueFromStyle != null)
		{
			text = ((!double.TryParse(valueFromStyle.ToString(), out var result2)) ? Convert.ToString(valueFromStyle, info.CurrencyEdit.NumberFormatInfoObject) : result2.ToString("c", info.CurrencyEdit.NumberFormatInfoObject));
		}
		string empty = string.Empty;
		empty = ((!decimal.TryParse(text, NumberStyles.Currency, info.CurrencyEdit.NumberFormatInfoObject, out result)) ? info.CurrencyEdit.NullString : CurrencyTextBox.CurrencyFormattedText(info.CurrencyEdit.NumberFormatInfoObject, text, info.CurrencyEdit.NullString, out result));
		if (result < 0m)
		{
			textColor = info.CurrencyEdit.NegativeColor;
		}
		else
		{
			textColor = info.CurrencyEdit.PositiveColor;
		}
		return empty;
	}

	internal static object GetValueFromStyle(GridStyleInfo info)
	{
		double result = 0.0;
		object obj = null;
		if (info.CellValue is string && info.CellValue.ToString() != string.Empty)
		{
			string s = info.CellValue.ToString();
			NumberFormatInfo provider = info.GetCulture(useCurrentCultureIfNull: true)?.NumberFormat;
			if (double.TryParse(s, NumberStyles.Currency, provider, out result))
			{
				return Convert.ToDecimal(result);
			}
			return info.CellValue;
		}
		return info.CellValue;
	}
}
