using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridPropertyGridCellRenderer : GridDropDownCellRenderer
{
	private GridStyleInfo currentStyle;

	private PropertyDescriptor currentPropertyDescriptor;

	private PropertyGrid propertyGrid;

	private Size savedSize = new Size(300, 300);

	private object oldControlValue;

	private object currentValue;

	public GridPropertyGridCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		base.DropDownImp.InitFocusEditPart = false;
		base.DropDownButton = new GridCellComboBoxButton(this);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (propertyGrid != null)
			{
				propertyGrid.SelectedGridItemChanged -= propertyGrid_SelectedGridItemChanged;
				propertyGrid.Dispose();
				propertyGrid = null;
			}
			oldControlValue = null;
			currentPropertyDescriptor = null;
			currentStyle = null;
			currentValue = null;
		}
		base.Dispose(disposing);
	}

	protected override void OnInitialize(int rowIndex, int colIndex)
	{
		currentStyle = base.CurrentStyle;
		TypeConverter typeConverter = base.Model.GetTypeConverter(currentStyle);
		currentPropertyDescriptor = base.Model.GetPropertyDescriptor(currentStyle);
		base.DisableTextBox = typeConverter == null || !typeConverter.CanConvertFrom(typeof(string));
		if (propertyGrid == null)
		{
			GridDropDownContainer dropDownContainer = base.DropDownContainer;
			dropDownContainer.CausesValidation = false;
			dropDownContainer.Bounds = new Rectangle(-10000, -1000, 5, 5);
			dropDownContainer.BorderStyle = BorderStyle.None;
			dropDownContainer.Controls.Clear();
			propertyGrid = new PropertyGrid();
			propertyGrid.Dock = DockStyle.Fill;
			dropDownContainer.Controls.Add(propertyGrid);
			dropDownContainer.Dock = DockStyle.Fill;
			propertyGrid.SelectedGridItemChanged += propertyGrid_SelectedGridItemChanged;
		}
		base.OnInitialize(rowIndex, colIndex);
	}

	public override void DropDownContainerShowingDropDown(object sender, CancelEventArgs e)
	{
		base.DropDownContainer.PopupHost.FormBorderStyle = FormBorderStyle.SizableToolWindow;
		base.DropDownContainer.PopupHost.ClientSize = savedSize;
		propertyGrid.SelectedObject = currentValue;
	}

	public override void DropDownContainerShowedDropDown(object sender, EventArgs e)
	{
		base.DropDownContainerShowedDropDown(sender, e);
		propertyGrid.Focus();
	}

	public override void DropDownContainerCloseDropDown(object sender, PopupClosedEventArgs e)
	{
		if (IsChanged() && NotifyCurrentCellChanging())
		{
			ControlValue = currentValue;
			NotifyCurrentCellChanged();
		}
		propertyGrid.SelectedObject = null;
		base.DropDownContainerCloseDropDown(sender, e);
	}

	protected override bool OnSaveChanges()
	{
		if (base.CurrentCell.IsModified)
		{
			GridStyleInfo gridStyleInfo = base.Grid.Model[base.RowIndex, base.ColIndex];
			if (!base.DisableTextBox && !base.HasControlValue && base.HasControlText)
			{
				gridStyleInfo.ApplyFormattedText(ControlText);
			}
			else
			{
				gridStyleInfo.CellValue = ControlValue;
			}
			return true;
		}
		return false;
	}

	protected override bool OnStartEditing()
	{
		currentValue = currentStyle.CellValue;
		if (currentValue is ICloneable && (currentPropertyDescriptor == null || !currentPropertyDescriptor.IsReadOnly))
		{
			oldControlValue = currentValue;
			currentValue = ((ICloneable)currentValue).Clone();
		}
		if (currentValue == null)
		{
			currentValue = Activator.CreateInstance(currentStyle.CellValueType);
			oldControlValue = Activator.CreateInstance(currentStyle.CellValueType);
		}
		return base.OnStartEditing();
	}

	protected override void OnEditingComplete()
	{
		currentValue = null;
		base.OnEditingComplete();
	}

	protected override void OnEndEdit()
	{
		if (currentValue != null)
		{
			base.CurrentCell.CloseDropDown(PopupCloseType.Deactivated);
		}
		base.OnEndEdit();
	}

	protected override bool OnDeactivating()
	{
		if (currentValue != null)
		{
			base.CurrentCell.CloseDropDown(PopupCloseType.Deactivated);
		}
		return base.OnDeactivating();
	}

	protected override void OnDeactived(int rowIndex, int colIndex)
	{
		propertyGrid.SelectedGridItemChanged -= propertyGrid_SelectedGridItemChanged;
		oldControlValue = null;
		currentValue = null;
		TextBoxText = string.Empty;
		base.OnDeactived(rowIndex, colIndex);
	}

	public override bool ValidateString(string text)
	{
		return true;
	}

	protected override bool OnValidate()
	{
		return true;
	}

	protected override void OnMouseDown(int rowIndex, int colIndex, MouseEventArgs e)
	{
		if (currentValue != null)
		{
			base.CurrentCell.CloseDropDown(PopupCloseType.Deactivated);
		}
		base.OnMouseDown(rowIndex, colIndex, e);
	}

	public override bool IsRelatedControl(Control control, bool askPopupParent)
	{
		savedSize = base.DropDownContainer.PopupHost.Size;
		return true;
	}

	private bool IsChanged()
	{
		if (base.CurrentCell.IsModified)
		{
			return true;
		}
		bool result = true;
		if (currentValue is ICloneable && (currentPropertyDescriptor == null || !currentPropertyDescriptor.IsReadOnly))
		{
			result = !currentValue.Equals(oldControlValue);
		}
		return result;
	}

	private void propertyGrid_SelectedGridItemChanged(object sender, SelectedGridItemChangedEventArgs e)
	{
		if (IsChanged())
		{
			NotifyCurrentCellChanged();
		}
	}
}
