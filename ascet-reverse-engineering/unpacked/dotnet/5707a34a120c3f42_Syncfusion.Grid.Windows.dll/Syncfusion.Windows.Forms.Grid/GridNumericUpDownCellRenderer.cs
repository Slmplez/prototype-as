using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

public class GridNumericUpDownCellRenderer : GridTextBoxCellRenderer
{
	private GridCellUpDownButton upArrowButton;

	private GridCellUpDownButton downArrowButton;

	private bool wrap;

	private int minimum;

	private int maximum;

	private bool hasMinimum;

	private bool hasMaximum;

	private bool hasInitialValue = true;

	private int initialValue;

	private int step = 1;

	public GridNumericUpDownCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		AddButton(upArrowButton = new GridCellUpDownButton(this, ScrollButton.Up));
		AddButton(downArrowButton = new GridCellUpDownButton(this, ScrollButton.Down));
	}

	protected override void OnInitialize(int rowIndex, int colIndex)
	{
		base.OnInitialize(rowIndex, colIndex);
		base.Grid.InternalInvalidate(upArrowButton.Bounds);
		base.Grid.InternalInvalidate(downArrowButton.Bounds);
		GridNumericUpDownCellInfo readOnlyNumericUpDown = base.Grid.Model[rowIndex, colIndex].ReadOnlyNumericUpDown;
		wrap = readOnlyNumericUpDown.WrapValue;
		minimum = readOnlyNumericUpDown.Minimum;
		hasMinimum = true;
		maximum = readOnlyNumericUpDown.Maximum;
		hasMaximum = true;
		initialValue = readOnlyNumericUpDown.StartValue;
		step = readOnlyNumericUpDown.Step;
	}

	protected override Rectangle OnLayout(int rowIndex, int colIndex, GridStyleInfo style, Rectangle innerBounds, Rectangle[] buttonsBounds)
	{
		if (OnQueryShowButtons(rowIndex, colIndex, style))
		{
			int width = base.Model.ButtonBarSize.Width;
			Rectangle rectangle;
			if (style.TextAlign == GridTextAlign.Right != base.Grid.IsRightToLeft())
			{
				rectangle = new Rectangle(innerBounds.Left, innerBounds.Top, width, innerBounds.Height);
				GridUtil.OffsetLeft(ref innerBounds, width);
			}
			else
			{
				rectangle = new Rectangle(innerBounds.Right - width, innerBounds.Top, width, innerBounds.Height);
			}
			rectangle.Inflate(0, -1);
			rectangle.Height /= 2;
			buttonsBounds[0] = rectangle;
			rectangle.Offset(0, rectangle.Height);
			buttonsBounds[1] = rectangle;
			innerBounds.Width -= width;
		}
		return innerBounds;
	}

	protected override void OnButtonClicked(int rowIndex, int colIndex, int button)
	{
		base.CurrentCell.BeginEdit();
		string textBoxText = TextBoxText;
		if (!IsReadOnly())
		{
			int num = minimum;
			if (GridUtil.IsEmpty(textBoxText))
			{
				num = ((!hasInitialValue) ? minimum : initialValue);
			}
			else
			{
				try
				{
					num = int.Parse(textBoxText);
					if (button == 0)
					{
						if (!hasMaximum || num <= maximum - step)
						{
							num += step;
						}
						else if (wrap && hasMinimum)
						{
							num = minimum;
						}
					}
					else if (!hasMinimum || num >= minimum + step)
					{
						num -= step;
					}
					else if (wrap && hasMaximum)
					{
						num = maximum;
					}
				}
				catch (Exception ex)
				{
					TraceUtil.TraceExceptionCatched(ex);
					if (!ExceptionManager.RaiseExceptionCatched(this, ex))
					{
						throw;
					}
					num = ((!hasInitialValue) ? minimum : initialValue);
				}
			}
			if (hasMinimum)
			{
				num = Math.Max(minimum, num);
			}
			if (hasMaximum)
			{
				num = Math.Min(maximum, num);
			}
			TextBoxText = num.ToString();
		}
		base.OnButtonClicked(rowIndex, colIndex, button);
	}

	public override bool ValidateString(string text)
	{
		if (base.Model is GridNumericUpDownCellModel { AcceptAlphaKeys: false })
		{
			foreach (char c in text)
			{
				if (!char.IsDigit(c))
				{
					return false;
				}
			}
		}
		return base.ValidateString(text);
	}
}
