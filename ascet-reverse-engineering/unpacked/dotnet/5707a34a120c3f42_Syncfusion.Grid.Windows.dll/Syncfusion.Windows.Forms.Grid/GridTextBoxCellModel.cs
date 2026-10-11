using System;
using System.Globalization;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridTextBoxCellModel : GridStaticCellModel
{
	public GridTextBoxCellModel(GridModel grid)
		: base(grid)
	{
		base.AllowFloating = true;
		base.AllowMerging = true;
	}

	protected GridTextBoxCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridTextBoxCellRenderer(control, this);
	}

	public override string GetFormattedText(GridStyleInfo style, object value, int textInfo)
	{
		GridCellTextEventArgs e = new GridCellTextEventArgs(string.Empty, style, value, textInfo);
		base.Grid.RaiseQueryCellFormattedText(e);
		if (e.Handled)
		{
			return e.Text;
		}
		if (value != null && value is string && ((string)value).Length > 0)
		{
			if (textInfo != 3)
			{
				char passwordChar = style.PasswordChar;
				if (passwordChar != ' ')
				{
					return new string(passwordChar, value.ToString().Length);
				}
			}
			switch (style.CharacterCasing)
			{
			case CharacterCasing.Lower:
				return value.ToString().ToLower(style.GetCulture(useCurrentCultureIfNull: true));
			case CharacterCasing.Upper:
				return value.ToString().ToUpper(style.GetCulture(useCurrentCultureIfNull: true));
			}
		}
		CultureInfo cultureInfo = style.CultureInfo;
		NumberFormatInfo nfi = cultureInfo?.NumberFormat;
		return ValueConvert.FormatValue(value, style.CellValueType, style.Format, cultureInfo, nfi);
	}
}
