using System;
using System.Drawing;
using System.Globalization;
using System.Runtime.Serialization;
using Syncfusion.ComponentModel;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridCurrencyTextBoxCellModel : GridStaticCellModel
{
	private CurrencyTextBox currencyTextBox = new CurrencyTextBox();

	private bool validateNumberDuringCellPaste = true;

	public bool ValidateNumberDuringCellPaste
	{
		get
		{
			return validateNumberDuringCellPaste;
		}
		set
		{
			validateNumberDuringCellPaste = value;
		}
	}

	public GridCurrencyTextBoxCellModel(GridModel grid)
		: base(grid)
	{
		base.AllowFloating = true;
		currencyTextBox.DefaultValue = DBNull.Value;
	}

	protected GridCurrencyTextBoxCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridCurrencyTextBoxCellRenderer(control, this);
	}

	public override string GetFormattedText(GridStyleInfo style, object value, int textInfo)
	{
		if (textInfo == 1 && style.CurrencyEdit.ClipMode == CurrencyClipModes.ExcludeFormatting)
		{
			return GetText(style, value);
		}
		Color textColor;
		return GridCurrencyTextBoxStaticCellAdapter.GetFormattedText(style, out textColor);
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
		if (disposing && currencyTextBox != null)
		{
			currencyTextBox.Dispose();
			currencyTextBox = null;
		}
	}

	public override bool ApplyText(GridStyleInfo style, string text)
	{
		GridCellTextEventArgs e = new GridCellTextEventArgs(text, style, null, -1);
		base.Grid.RaiseSaveCellText(e);
		if (!e.Handled)
		{
			try
			{
				style.BeginUpdate();
				if (text.Equals(string.Empty))
				{
					style.CellValue = GridCurrencyTextBoxStaticCellAdapter.GetValueFromStyle(style);
				}
				else
				{
					style.CellValue = text;
				}
				style.ResetError();
			}
			catch (Exception ex)
			{
				style.Error = ex.Message;
				if (style.StrictValueType)
				{
					throw;
				}
				if (!(ex is FormatException) && !(ex.InnerException is FormatException))
				{
					throw;
				}
				style.CellValue = text;
			}
			finally
			{
				style.EndUpdate();
			}
		}
		return true;
	}

	public override bool ApplyFormattedText(GridStyleInfo style, string text, int textInfo)
	{
		GridCellTextEventArgs e = new GridCellTextEventArgs(text, style, null, textInfo);
		base.Grid.RaiseSaveCellFormattedText(e);
		if (!e.Handled)
		{
			NumberFormatInfo numberFormatInfoObject = style.CurrencyEdit.NumberFormatInfoObject;
			try
			{
				if (e.Text.Length > 0 && !e.Text.Equals(style.CurrencyEdit.NullString))
				{
					decimal num = decimal.Parse(e.Text, NumberStyles.Currency, numberFormatInfoObject);
					if (style.CellValueType != null)
					{
						style.CellValue = NullableHelper.ChangeType(num, style.CellValueType);
					}
					else if (style.CurrencyEdit.ClipMode == CurrencyClipModes.IncludeFormatting)
					{
						style.CellValue = GridCurrencyTextBoxStaticCellAdapter.GetFormattedText(style, out var _);
					}
					else
					{
						style.CellValue = num;
					}
				}
				else
				{
					style.CellValue = style.CurrencyEdit.NullValue;
				}
			}
			catch (Exception ex)
			{
				if (!(ex is FormatException) && !(ex.InnerException is FormatException))
				{
					throw;
				}
				style.CellValue = style.CurrencyEdit.NullValue;
			}
		}
		return true;
	}

	public string GetDisplayTextAndColor(GridStyleInfo style, object value, out Color textColor)
	{
		return GridCurrencyTextBoxStaticCellAdapter.GetFormattedText(style, out textColor);
	}

	public static void InitCurrencyEditProperties(CurrencyTextBox mb, GridStyleInfo style)
	{
		GridCurrencyEditInfo currencyEdit = style.CurrencyEdit;
		mb.BeginInit();
		mb.ReadOnly = false;
		mb.Culture = style.GetCulture(useCurrentCultureIfNull: true);
		mb.CurrencyNumberDigits = currencyEdit.CurrencyNumberDigits;
		mb.NumberFormatInfoObject = currencyEdit.NumberFormatInfoObject;
		mb.PositiveColor = currencyEdit.PositiveColor;
		mb.NegativeColor = currencyEdit.NegativeColor;
		mb.ClipMode = CurrencyClipModes.IncludeFormatting;
		mb.NullString = currencyEdit.NullString;
		mb.MaxLength = style.MaxLength;
		mb.EndInit();
		mb.Text = style.Text;
		mb.SetControlColor();
		mb.ReadOnly = style.ReadOnly;
	}

	public override string GetText(GridStyleInfo style, object value)
	{
		GridCellTextEventArgs e = new GridCellTextEventArgs(string.Empty, style, value, -1);
		base.Grid.RaiseQueryCellText(e);
		if (e.Handled)
		{
			return e.Text;
		}
		CultureInfo cultureInfo = ((style != null) ? style.GetCulture(useCurrentCultureIfNull: true) : CultureInfo.CurrentCulture);
		if (value == null)
		{
			return string.Empty;
		}
		return Convert.ToString(value, cultureInfo.NumberFormat);
	}
}
