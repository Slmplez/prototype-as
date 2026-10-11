using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

public class GridUITypeEditorCellRenderer : GridDropDownStandardValuesCellRenderer, IWindowsFormsEditorService, IServiceProvider
{
	private Control currentControl;

	private GridStyleInfo currentStyle;

	private UITypeEditor currentEditor;

	private PropertyDescriptor currentPropertyDescriptor;

	private bool closeDropDownCalled;

	private bool unexpectedDropDown;

	private object currentInstance;

	private bool deactivated;

	private bool inEditValue;

	public new GridUITypeEditorCellModel Model => (GridUITypeEditorCellModel)base.Model;

	[DocumentationExclude]
	public object CurrentInstance
	{
		get
		{
			return currentInstance;
		}
		set
		{
			currentInstance = value;
		}
	}

	public GridUITypeEditorCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		base.DropDownImp.InitFocusEditPart = false;
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
	}

	protected override void OnInitialize(int rowIndex, int colIndex)
	{
		currentStyle = base.StyleInfo;
		currentPropertyDescriptor = Model.GetPropertyDescriptor(currentStyle);
		UITypeEditor uITypeEditor = Model.GetUITypeEditor(currentStyle);
		base.OnInitialize(rowIndex, colIndex);
		if (currentEditor == null || uITypeEditor == null || !(currentEditor.GetType() == uITypeEditor.GetType()))
		{
			GridDropDownContainer dropDownContainer = base.DropDownContainer;
			if (uITypeEditor != null && uITypeEditor.GetEditStyle() == UITypeEditorEditStyle.DropDown)
			{
				dropDownContainer.CausesValidation = false;
				dropDownContainer.Controls.Clear();
				dropDownContainer.Bounds = new Rectangle(-10000, -1000, 5, 5);
				dropDownContainer.BorderStyle = BorderStyle.None;
			}
			else
			{
				dropDownContainer.Controls.Clear();
				dropDownContainer.Controls.Add(base.ListControlPart);
				dropDownContainer.BorderStyle = BorderStyle.None;
			}
			currentEditor = uITypeEditor;
		}
	}

	protected override void OnShowDropDown()
	{
		if (currentEditor == null || currentEditor.GetEditStyle() == UITypeEditorEditStyle.None)
		{
			base.OnShowDropDown();
			return;
		}
		Timer timer = new Timer();
		timer.Interval = 20;
		if (inEditValue)
		{
			timer.Interval = 50;
		}
		timer.Tick += t_Tick;
		timer.Start();
	}

	protected override void OnDeactived(int rowIndex, int colIndex)
	{
		deactivated = true;
	}

	private void t_Tick(object sender, EventArgs e)
	{
		Timer timer = (Timer)sender;
		timer.Tick -= t_Tick;
		timer.Dispose();
		if (base.Grid != null && !base.Grid.IsDisposed)
		{
			base.TextBox.SelectAll();
			unexpectedDropDown = false;
			TypeDescriptorContext typeDescriptorContext = new TypeDescriptorContext(currentInstance, currentPropertyDescriptor);
			typeDescriptorContext.ServiceProvider = this;
			deactivated = false;
			inEditValue = true;
			object value = currentEditor.EditValue(typeDescriptorContext, this, ControlValue);
			inEditValue = false;
			if (!deactivated && !base.Grid.IsDisposed && currentStyle.Store != null && NotifyCurrentCellChanging())
			{
				SetControlValue(value, initControlText: true);
				NotifyCurrentCellChanged();
			}
			if (!unexpectedDropDown)
			{
				base.DropDownImp.OnCloseDropDown(PopupCloseType.Deactivated);
			}
		}
	}

	void IWindowsFormsEditorService.DropDownControl(Control control)
	{
		if (!base.DropDownContainer.Controls.Contains(control))
		{
			base.DropDownContainer.Controls.Add(control);
		}
		control.Visible = true;
		Size size = control.Size;
		if (size.Width == 0 || size.Height == 0)
		{
			if (size.Width == 0)
			{
				size.Width = GetCellLayout(base.RowIndex, base.ColIndex, currentStyle).CellRectangle.Width;
			}
			if (size.Height == 0)
			{
				size.Height = 100;
			}
			control.Size = size;
		}
		base.DropDownContainer.Size = size;
		base.DropDownContainer.BorderStyle = BorderStyle.FixedSingle;
		currentControl = control;
		base.DropDownImp.OnShowDropDown();
		closeDropDownCalled = false;
		while (!closeDropDownCalled && currentControl.Visible && base.Grid.Visible)
		{
			Application.DoEvents();
		}
	}

	void IWindowsFormsEditorService.CloseDropDown()
	{
		closeDropDownCalled = true;
	}

	DialogResult IWindowsFormsEditorService.ShowDialog(Form dialog)
	{
		DialogResult result = dialog.ShowDialog(base.DisableTextBox ? ((Control)base.Grid) : ((Control)base.TextBox));
		closeDropDownCalled = true;
		return result;
	}

	public override void DropDownContainerShowingDropDown(object sender, CancelEventArgs e)
	{
		if (currentEditor == null || currentEditor.GetEditStyle() == UITypeEditorEditStyle.None)
		{
			base.DropDownContainerShowingDropDown(sender, e);
			return;
		}
		Size size = currentControl.Size;
		size.Width += 2;
		size.Height += 2;
		base.DropDownContainer.Size = size;
		base.DropDownContainer.PopupHost.Size = size;
	}

	public override void DropDownContainerCloseDropDown(object sender, PopupClosedEventArgs e)
	{
		if (currentEditor == null || currentEditor.GetEditStyle() == UITypeEditorEditStyle.None)
		{
			base.DropDownContainerCloseDropDown(sender, e);
		}
		else if (!closeDropDownCalled)
		{
			unexpectedDropDown = true;
			closeDropDownCalled = true;
		}
	}

	public override void DropDownContainerShowedDropDown(object sender, EventArgs e)
	{
		if (currentEditor == null || currentEditor.GetEditStyle() == UITypeEditorEditStyle.None)
		{
			base.DropDownContainerShowedDropDown(sender, e);
		}
		else
		{
			currentControl.Focus();
		}
	}

	protected override void NotifyCurrentCellChanged()
	{
		base.NotifyCurrentCellChanged();
		if (GetPaintValueSupported(currentStyle, currentEditor))
		{
			GridStyleInfo gridStyleInfo = base.CurrentStyle;
			Rectangle clientRectangle = GetCellLayout(base.RowIndex, base.ColIndex, gridStyleInfo).ClientRectangle;
			clientRectangle.Width = GetPaintValueWidth() + gridStyleInfo.TextMargins.ToMargins().Width;
			base.Grid.Invalidate(clientRectangle);
		}
	}

	public override void OnPrepareViewStyleInfo(GridPrepareViewStyleInfoEventArgs e)
	{
		UITypeEditor uITypeEditor = Model.GetUITypeEditor(e.Style);
		if (uITypeEditor != null && GetPaintValueSupported(e.Style, uITypeEditor))
		{
			e.Style.TextMargins.Left += GetPaintValueWidth() + e.Style.TextMargins.ToMargins().Width;
		}
		base.OnPrepareViewStyleInfo(e);
	}

	protected virtual bool GetPaintValueSupported(GridStyleInfo style, UITypeEditor editor)
	{
		return editor?.GetPaintValueSupported() ?? false;
	}

	protected virtual void PaintValue(Graphics g, Rectangle bounds, int rowIndex, int colIndex, GridStyleInfo style, UITypeEditor editor, object value)
	{
		editor.PaintValue(new PaintValueEventArgs(null, value, g, bounds));
	}

	protected virtual int GetPaintValueWidth()
	{
		return 20;
	}

	protected override int GetDropDownPaintValueWidth()
	{
		if (currentEditor != null && GetPaintValueSupported(currentStyle, currentEditor))
		{
			return GetPaintValueWidth() + currentStyle.TextMargins.ToMargins().Width;
		}
		return 0;
	}

	public override void Draw(Graphics g, Rectangle cellRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		GridCellComboBoxButton gridCellComboBoxButton = base.DropDownImp.DropDownButton as GridCellComboBoxButton;
		UITypeEditor uITypeEditor = Model.GetUITypeEditor(style);
		if (gridCellComboBoxButton != null && uITypeEditor != null && uITypeEditor.GetEditStyle() == UITypeEditorEditStyle.Modal)
		{
			gridCellComboBoxButton.DrawEllipsis = true;
		}
		base.Draw(g, cellRectangle, rowIndex, colIndex, style);
		if (gridCellComboBoxButton != null)
		{
			gridCellComboBoxButton.DrawEllipsis = false;
		}
	}

	protected override void OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		base.OnDraw(g, clientRectangle, rowIndex, colIndex, style);
		UITypeEditor uITypeEditor = Model.GetUITypeEditor(style);
		if (uITypeEditor != null && GetPaintValueSupported(style, uITypeEditor))
		{
			Rectangle textRectangle = GetCellLayout(rowIndex, colIndex, style).TextRectangle;
			int paintValueWidth = GetPaintValueWidth();
			textRectangle.X -= paintValueWidth;
			textRectangle.Width = paintValueWidth;
			textRectangle.Intersect(clientRectangle);
			object cellValue = style.CellValue;
			if (ShouldDrawEditing(rowIndex, colIndex))
			{
				cellValue = ControlValue;
			}
			if (cellValue != null && cellValue.GetType() == style.CellValueType)
			{
				GridBorderPaint.DrawRectangle(g, new GridBorder(GridBorderStyle.Solid), textRectangle, SystemColors.ControlLight, GridBorderSide.All);
				textRectangle.Inflate(-1, -1);
				PaintValue(g, textRectangle, rowIndex, colIndex, style, uITypeEditor, cellValue);
			}
		}
	}

	protected override void ListControlGridPrepareViewStyleInfo(object sender, GridPrepareViewStyleInfoEventArgs e)
	{
		if (currentEditor != null && GetPaintValueSupported(currentStyle, currentEditor))
		{
			e.Style.TextMargins.Left += GetPaintValueWidth() + e.Style.TextMargins.ToMargins().Width;
		}
	}

	protected override void ListControlGridCellDrawn(object sender, GridDrawCellEventArgs e)
	{
		if (currentEditor != null && GetPaintValueSupported(currentStyle, currentEditor))
		{
			GridControlBase gridControlBase = (GridControlBase)sender;
			GridCellRendererBase cellRenderer = gridControlBase.GetCellRenderer(e.RowIndex, e.ColIndex);
			GridCellLayout cellLayout = cellRenderer.GetCellLayout(e.RowIndex, e.ColIndex, e.Style);
			Rectangle textRectangle = cellLayout.TextRectangle;
			int paintValueWidth = GetPaintValueWidth();
			textRectangle.X -= paintValueWidth;
			textRectangle.Width = paintValueWidth;
			textRectangle.Intersect(cellLayout.ClientRectangle);
			object obj = base.ListControlPart.Items[e.RowIndex - 1];
			if (obj != null && obj.GetType() == e.Style.CellValueType)
			{
				GridBorderPaint.DrawRectangle(e.Graphics, new GridBorder(GridBorderStyle.Solid), textRectangle, SystemColors.ControlLight, GridBorderSide.All);
				textRectangle.Inflate(-1, -1);
				PaintValue(e.Graphics, textRectangle, e.RowIndex, e.ColIndex, e.Style, currentEditor, obj);
			}
		}
	}

	object IServiceProvider.GetService(Type classService)
	{
		if (classService == typeof(IWindowsFormsEditorService))
		{
			return this;
		}
		return null;
	}
}
