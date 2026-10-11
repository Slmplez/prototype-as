using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDropDownStandardValuesCellRenderer : GridDropDownGridListControlCellRenderer
{
	private GridStyleInfo currentStyle;

	private TypeConverter currentTypeConverter;

	private Size defaultMaxSize = new Size(400, 200);

	public GridDropDownStandardValuesCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
	}

	protected virtual Size GetDefaultMaxSize()
	{
		Size defaultMaxStandardValuesSize = base.Grid.GetDefaultMaxStandardValuesSize();
		if (defaultMaxStandardValuesSize.IsEmpty)
		{
			return defaultMaxSize;
		}
		return defaultMaxStandardValuesSize;
	}

	protected override void OnEnsureListControlPart()
	{
		GridStyleInfo styleInfo = base.StyleInfo;
		base.DisableTextBox = currentTypeConverter == null || !currentTypeConverter.CanConvertFrom(typeof(string)) || GetPropertyType(styleInfo) == typeof(byte[]);
	}

	protected override GridListControl CreateListControlPart()
	{
		GridDropDownGridListControlPart gridDropDownGridListControlPart = new GridDropDownGridListControlPart();
		gridDropDownGridListControlPart.AutoSizeColumns = false;
		gridDropDownGridListControlPart.Dock = DockStyle.Fill;
		gridDropDownGridListControlPart.FillLastColumn = true;
		gridDropDownGridListControlPart.Grid.VScrollPixel = true;
		gridDropDownGridListControlPart.Grid.HScrollPixel = true;
		gridDropDownGridListControlPart.ShowColumnHeader = false;
		gridDropDownGridListControlPart.MultiColumn = false;
		gridDropDownGridListControlPart.BorderStyle = BorderStyle.FixedSingle;
		gridDropDownGridListControlPart.ForceNonThemedBorder = true;
		gridDropDownGridListControlPart.Grid.Properties.DisplayVertLines = false;
		gridDropDownGridListControlPart.Grid.Properties.DisplayHorzLines = false;
		return gridDropDownGridListControlPart;
	}

	private Type GetPropertyType(GridStyleInfo style)
	{
		Type type = style.CellValueType;
		if (type == null)
		{
			PropertyDescriptor propertyDescriptor = style.PropertyDescriptor;
			if (propertyDescriptor != null)
			{
				type = propertyDescriptor.PropertyType;
			}
		}
		return type;
	}

	protected override void OnInitialize(int rowIndex, int colIndex)
	{
		currentStyle = base.StyleInfo;
		currentTypeConverter = base.Model.GetTypeConverter(currentStyle);
		base.OnInitialize(rowIndex, colIndex);
		Type propertyType = GetPropertyType(currentStyle);
		base.ListControlPart.DataSource = base.Grid.Model.GetCachedStandardValues(currentTypeConverter, propertyType);
	}

	public override bool ValidateString(string text)
	{
		if (base.ListControlPart.Items == null)
		{
			allowNewEntries = true;
		}
		return base.ValidateString(text);
	}

	public override void DropDownContainerShowingDropDown(object sender, CancelEventArgs e)
	{
		base.TextBox.SelectAll();
		base.ListControlPart.BackColor = base.Grid.BackColor;
		base.ListControlPart.ForeColor = base.Grid.ForeColor;
		base.DropDownContainerShowingDropDown(sender, e);
		AutoSizeHeightOfGrid();
	}

	public override void OnPrepareViewStyleInfo(GridPrepareViewStyleInfoEventArgs e)
	{
		e.Style.DisplayMember = "Value";
		e.Style.ValueMember = string.Empty;
		base.OnPrepareViewStyleInfo(e);
	}

	protected virtual int GetDropDownPaintValueWidth()
	{
		return 0;
	}

	private void AutoSizeHeightOfGrid()
	{
		GridControlBase gridControlBase = base.ListControlPart.Grid;
		int num = GetCellLayout(base.RowIndex, base.ColIndex, currentStyle).TextRectangle.Width + 8;
		Font gdipFont = currentStyle.GdipFont;
		Size size = GetDefaultMaxSize();
		Graphics graphics = gridControlBase.CreateGridGraphics();
		int num2 = (int)graphics.MeasureString("Abc", gdipFont).Height;
		if (base.ListControlPart.DataSource is GridPropertyStandardValuesList)
		{
			GridPropertyStandardValuesList gridPropertyStandardValuesList = (GridPropertyStandardValuesList)base.ListControlPart.DataSource;
			int num3 = (int)graphics.MeasureString("Abc", gdipFont).Width / 3;
			int maxLength = gridPropertyStandardValuesList.GetMaxLength(currentStyle.Format, currentStyle.GetCulture(useCurrentCultureIfNull: true));
			if (maxLength > 0)
			{
				num = maxLength * num3 + 8;
			}
			num += GetDropDownPaintValueWidth();
		}
		graphics.Dispose();
		base.ListControlPart.Font = gdipFont;
		gridControlBase.Model.Rows.DefaultSize = num2 + 4;
		size.Height = (size.Height - 4) / num2 * num2 + 4;
		int num4 = gridControlBase.Model.RowHeights.GetTotal(0, base.ListControlPart.Grid.RowCount) + 4;
		bool flag = false;
		bool flag2 = false;
		if (num4 > size.Height)
		{
			num += SystemInformation.VerticalScrollBarWidth;
			num4 = size.Height;
			flag = true;
		}
		if (num > size.Width)
		{
			num = size.Width;
			num4 += SystemInformation.VerticalScrollBarWidth;
			flag2 = true;
		}
		base.DropDownContainer.Size = new Size(num, num4);
		base.DropDownContainer.PopupHost.Size = base.DropDownContainer.Size;
		if (flag)
		{
			gridControlBase.VScrollBehavior = GridScrollbarMode.Enabled | GridScrollbarMode.AutoScroll;
			gridControlBase.VScroll = true;
		}
		else
		{
			gridControlBase.VScrollBehavior = GridScrollbarMode.Disabled;
			gridControlBase.VScroll = false;
			gridControlBase.SetCurrentVScrollPixelPos(gridControlBase.GetVScrollPixelMinimum());
		}
		if (flag2)
		{
			num4 += SystemInformation.VerticalScrollBarWidth;
			gridControlBase.HScrollBehavior = GridScrollbarMode.Enabled | GridScrollbarMode.AutoScroll;
			gridControlBase.HScroll = true;
		}
		else
		{
			gridControlBase.HScrollBehavior = GridScrollbarMode.Disabled;
			gridControlBase.HScroll = false;
			gridControlBase.SetCurrentHScrollPixelPos(gridControlBase.GetHScrollPixelMinimum());
		}
	}
}
