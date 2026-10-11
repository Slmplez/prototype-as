using System;
using System.Drawing;
using System.Globalization;
using System.Runtime.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridCheckBoxCellModel : GridCellModelBase
{
	[DocumentationExclude]
	internal Size checkBoxSize = new Size(13, 13);

	[DocumentationExclude]
	public Size CheckBoxSize
	{
		get
		{
			return checkBoxSize;
		}
		set
		{
			checkBoxSize = value;
		}
	}

	protected GridCheckBoxCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public GridCheckBoxCellModel(GridModel grid)
		: base(grid)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridCheckBoxCellRenderer(control, this);
	}

	public override bool ApplyFormattedText(GridStyleInfo style, string str, int textInfo)
	{
		string text = string.Empty;
		string text2 = string.Empty;
		GridCheckBoxCellInfo readOnlyCheckBoxOptions = style.ReadOnlyCheckBoxOptions;
		if (readOnlyCheckBoxOptions != null && readOnlyCheckBoxOptions.CheckedValue != null)
		{
			text = readOnlyCheckBoxOptions.CheckedValue;
		}
		if (GridUtil.IsEmpty(text))
		{
			text = "1";
		}
		if (readOnlyCheckBoxOptions != null && readOnlyCheckBoxOptions.UncheckedValue != null)
		{
			text2 = readOnlyCheckBoxOptions.UncheckedValue;
		}
		if (GridUtil.IsEmpty(text2))
		{
			text2 = "0";
		}
		if (readOnlyCheckBoxOptions != null && readOnlyCheckBoxOptions.IndetermValue != null)
		{
			_ = readOnlyCheckBoxOptions.IndetermValue;
		}
		else
		{
			_ = string.Empty;
		}
		bool triState = style.TriState;
		CultureInfo culture = style.GetCulture(useCurrentCultureIfNull: true);
		if (!str.ToUpper(culture).Equals(text.ToUpper(culture)))
		{
			str = ((triState && !str.ToUpper(culture).Equals(text2.ToUpper(culture))) ? string.Empty : text2);
		}
		style.Text = str;
		return true;
	}

	public override bool OnQueryCanFloatCell(int rowIndex, int colIndex, GridStyleInfo style, GridQueryFloatCell query)
	{
		return query == GridQueryFloatCell.FloatCell;
	}

	protected override Size OnQueryPrefferedClientSize(Graphics g, int rowIndex, int colIndex, GridStyleInfo style, GridQueryBounds queryBounds)
	{
		Size result = checkBoxSize;
		Font gdipFont = style.GdipFont;
		Size size = WinFormsUtils.MeasureSampleWString(g, gdipFont);
		string description = style.Description;
		if (description.Length > 0)
		{
			Size size3;
			if (queryBounds == GridQueryBounds.Height)
			{
				Size cellClientSize = GetCellClientSize(rowIndex, colIndex, style);
				Size size2 = GridMargins.RemoveMargins(cellClientSize, style.ReadOnlyTextMargins.ToMargins());
				size3 = g.MeasureString(description, gdipFont, Math.Max(result.Width, size2.Width - result.Width)).ToSize();
			}
			else
			{
				size3 = g.MeasureString(description, gdipFont).ToSize();
			}
			result = GridUtil.Max(size3, size);
		}
		result.Width += checkBoxSize.Width * 3 / 2 + style.ReadOnlyTextMargins.Left;
		result.Height = Math.Max(result.Height, checkBoxSize.Height);
		return result;
	}
}
