using System;
using System.Globalization;
using System.Runtime.Serialization;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridDropDownMonthCalendarCellModel : GridDropDownCellModel
{
	public GridDropDownMonthCalendarCellModel(GridModel grid)
		: base(grid)
	{
	}

	protected GridDropDownMonthCalendarCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override bool ApplyText(GridStyleInfo style, string text)
	{
		if (style.CellValueType != null)
		{
			return base.ApplyText(style, text);
		}
		GridCellTextEventArgs e = new GridCellTextEventArgs(text, style, null, -1);
		base.Grid.RaiseSaveCellText(e);
		if (!e.Handled)
		{
			try
			{
				style.BeginUpdate();
				if (text != string.Empty)
				{
					style.CellValue = GetValueFromStyle(style, text);
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
		if (style.CellValueType != null)
		{
			if (base.Grid.CurrentCellRenderer != null)
			{
				return base.ApplyFormattedText(style, base.Grid.CurrentCellRenderer.ControlValue.ToString(), textInfo);
			}
			return base.ApplyFormattedText(style, text, textInfo);
		}
		GridCellTextEventArgs e = new GridCellTextEventArgs(text, style, null, textInfo);
		base.Grid.RaiseSaveCellFormattedText(e);
		if (!e.Handled)
		{
			base.Grid.RaiseParseCommonFormats(e);
		}
		if (!e.Handled)
		{
			try
			{
				style.BeginUpdate();
				if (base.Grid.CurrentCellRenderer != null)
				{
					style.CellValue = GetValueFromStyle(style, base.Grid.CurrentCellRenderer.ControlValue);
				}
				else
				{
					style.CellValue = GetValueFromStyle(style, text);
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

	public static object GetValueFromStyle(GridStyleInfo style)
	{
		return GetValueFromStyle(style, style.CellValue);
	}

	private static object GetValueFromStyle(GridStyleInfo style, object value)
	{
		if (value is string)
		{
			string text = (string)value;
			if (text.Length > 0)
			{
				CultureInfo culture = style.GetCulture(useCurrentCultureIfNull: true);
				IFormatProvider dateTimeFormat = culture.DateTimeFormat;
				value = ((style.ParseFormats == null) ? ValueConvert.Parse(text, typeof(DateTime), dateTimeFormat, style.Format) : ValueConvert.Parse(text, typeof(DateTime), dateTimeFormat, style.ParseFormats, returnDbNUllIfNotValid: false));
			}
		}
		return value;
	}

	public override string GetFormattedText(GridStyleInfo style, object value, int textInfo)
	{
		CultureInfo cultureInfo = ((style.CultureInfo != null) ? style.CultureInfo : CultureInfo.CurrentCulture);
		if (GetValueFromStyle(style, value) is DateTime dateTime)
		{
			return dateTime.ToString(style.Format, cultureInfo.DateTimeFormat);
		}
		return base.GetFormattedText(style, value, textInfo);
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridDropDownMonthCalendarCellRenderer(control, this);
	}
}
