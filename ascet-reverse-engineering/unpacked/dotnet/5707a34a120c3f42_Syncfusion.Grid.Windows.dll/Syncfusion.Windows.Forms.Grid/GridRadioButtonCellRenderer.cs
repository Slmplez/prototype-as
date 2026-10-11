using System;
using System.Collections.Specialized;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridRadioButtonCellRenderer : GridStaticCellRenderer
{
	private int MAXBUTTONS = 10;

	internal int selectedButtonIndex;

	public GridRadioButtonCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		base.SupportsFocusControl = true;
		MAXBUTTONS = 10;
		for (int i = 0; i < MAXBUTTONS; i++)
		{
			AddButton(new GridRadioButton(this, i));
		}
		base.Grid.CellButtonClicked += ButtonClicked;
	}

	private void ButtonClicked(object sender, GridCellButtonClickedEventArgs e)
	{
		if (e.Button is GridRadioButton { Enabled: not false })
		{
			if (base.Grid.CurrentCell.RowIndex != e.RowIndex || base.Grid.CurrentCell.ColIndex != e.ColIndex)
			{
				base.Grid.CurrentCell.MoveTo(e.RowIndex, e.ColIndex, GridSetCurrentCellOptions.NoSetFocus);
			}
			GridStyleInfo gridStyleInfo = base.Grid.Model[base.RowIndex, base.ColIndex];
			if (!gridStyleInfo.ReadOnly && NotifyCurrentCellChanging())
			{
				selectedButtonIndex = e.ButtonIndex;
				base.Grid.Model[e.RowIndex, e.ColIndex].CellValue = selectedButtonIndex;
				ResetControlValue();
				ResetControlText();
				NotifyCurrentCellChanged();
			}
		}
	}

	protected override void OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		try
		{
			if (style.CellValue == null || GridUtil.IsEmpty(style.CellValue.ToString()))
			{
				selectedButtonIndex = -1;
			}
			else
			{
				selectedButtonIndex = Convert.ToInt32(style.CellValue);
			}
		}
		catch
		{
			selectedButtonIndex = -1;
		}
	}

	private GridRadioButtonInfo GetButtonInfo(int buttonNumber, GridStyleInfo style)
	{
		StringCollection choiceList = style.ChoiceList;
		if (choiceList != null)
		{
			string text = choiceList[buttonNumber];
			bool flag = text.ToLower().EndsWith("/disabled");
			if (flag)
			{
				text = text.Substring(0, text.Length - 9);
			}
			return new GridRadioButtonInfo(text, !flag);
		}
		return null;
	}

	private int GetNumberOfButtons(GridStyleInfo style)
	{
		return style.ChoiceList?.Count ?? (-1);
	}

	protected override bool OnQueryShowButtons(int rowIndex, int colIndex, GridStyleInfo style)
	{
		if (style.ShowButtons != GridShowButtons.Show && (style.ShowButtons != GridShowButtons.ShowCurrentRow || !base.Grid.IsShowCurrentRow(rowIndex)) && (style.ShowButtons != GridShowButtons.ShowCurrentCell || !base.Grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex)))
		{
			if (style.ShowButtons == GridShowButtons.ShowCurrentCellEditing && base.Grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex))
			{
				return base.Grid.CurrentCell.IsEditing;
			}
			return false;
		}
		return true;
	}

	public override void Draw(Graphics g, Rectangle cellRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		base.Draw(g, cellRectangle, rowIndex, colIndex, style);
		int rADIOBUTTONWIDTH = GridRadioButton.RADIOBUTTONWIDTH;
		int numberOfButtons = GetNumberOfButtons(style);
		StringCollection choiceList = style.ChoiceList;
		Font gdipFont = style.Font.GdipFont;
		for (int i = 0; i < numberOfButtons; i++)
		{
			GridCellButton button = GetButton(i);
			string text = string.Empty;
			bool isRightToLeft = false;
			Color textColor = style.TextColor;
			if (choiceList != null)
			{
				GridRadioButtonInfo buttonInfo = GetButtonInfo(i, style);
				text = buttonInfo.Description;
				if (!buttonInfo.Enabled)
				{
					textColor = Color.DimGray;
				}
			}
			Rectangle bounds = button.Bounds;
			Size size = g.MeasureString(text, gdipFont, PointF.Empty, StringFormat.GenericDefault).ToSize();
			bounds.Width = bounds.Width - rADIOBUTTONWIDTH - 1;
			if (bounds.Width < 0)
			{
				break;
			}
			if (style.TextAlign == GridTextAlign.Left)
			{
				if (size.Width < bounds.Width)
				{
					bounds.X = bounds.X + bounds.Width - size.Width - 1;
					bounds.Width = size.Width + 1;
				}
			}
			else
			{
				bounds.X = bounds.X + rADIOBUTTONWIDTH + 1;
			}
			if (size.Height < bounds.Height)
			{
				bounds.Y += (bounds.Height - size.Height) / 2;
			}
			GridStaticCellRenderer.DrawText(g, text, gdipFont, bounds, style, textColor, isRightToLeft);
		}
	}

	protected override bool OnSaveChanges()
	{
		return true;
	}

	protected override Rectangle OnLayout(int rowIndex, int colIndex, GridStyleInfo style, Rectangle innerBounds, Rectangle[] buttonsBounds)
	{
		Rectangle result = GridMargins.RemoveMargins(innerBounds, style.TextMargins.ToMargins());
		StringCollection choiceList = style.ChoiceList;
		int numberOfButtons = GetNumberOfButtons(style);
		if (choiceList != null && numberOfButtons > 0)
		{
			int num = result.Width / numberOfButtons;
			int height = result.Height;
			if (height == 0)
			{
				height = result.Height;
			}
			GridVerticalAlignment verticalAlignment = style.VerticalAlignment;
			int num2 = result.Top;
			switch (verticalAlignment)
			{
			case GridVerticalAlignment.Middle:
				num2 += (result.Height - height) / 2;
				break;
			case GridVerticalAlignment.Bottom:
				num2 += result.Height - height;
				break;
			}
			int num3 = result.Left;
			for (int i = 0; i < numberOfButtons; i++)
			{
				Rectangle rectangle = new Rectangle(num3, num2, num, height);
				buttonsBounds[i] = rectangle;
				if (choiceList != null)
				{
					((GridRadioButton)GetButton(i)).Enabled = GetButtonInfo(i, style).Enabled;
				}
				num3 += num;
			}
		}
		result.Width = 0;
		return result;
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		GridRadioButton gridRadioButton = null;
		if (e.KeyCode == Keys.Right)
		{
			GridStyleInfo style = base.Grid.Model[base.RowIndex, base.ColIndex];
			selectedButtonIndex++;
			if (selectedButtonIndex >= GetNumberOfButtons(style))
			{
				selectedButtonIndex = 0;
			}
			gridRadioButton = (GridRadioButton)GetButton(selectedButtonIndex);
		}
		else if (e.KeyCode == Keys.Left)
		{
			selectedButtonIndex--;
			if (selectedButtonIndex >= 0)
			{
				gridRadioButton = (GridRadioButton)GetButton(selectedButtonIndex);
			}
			if (selectedButtonIndex < 0 || gridRadioButton == null)
			{
				GridStyleInfo style2 = base.Grid.Model[base.RowIndex, base.ColIndex];
				selectedButtonIndex = GetNumberOfButtons(style2) - 1;
				gridRadioButton = (GridRadioButton)GetButton(selectedButtonIndex);
			}
		}
		if (gridRadioButton != null)
		{
			if (!gridRadioButton.Enabled)
			{
				OnKeyDown(e);
				return;
			}
			GridStyleInfo gridStyleInfo = base.Grid.Model[base.RowIndex, base.ColIndex];
			if (!gridStyleInfo.ReadOnly && NotifyCurrentCellChanging())
			{
				base.Grid.Model[base.RowIndex, base.ColIndex].CellValue = selectedButtonIndex;
				NotifyCurrentCellChanged();
				e.Handled = true;
			}
		}
		else
		{
			base.OnKeyDown(e);
		}
	}

	protected override void OnInitialize(int rowIndex, int colIndex)
	{
		base.OnInitialize(rowIndex, colIndex);
		base.Grid.CurrentCell.BeginEdit();
	}
}
