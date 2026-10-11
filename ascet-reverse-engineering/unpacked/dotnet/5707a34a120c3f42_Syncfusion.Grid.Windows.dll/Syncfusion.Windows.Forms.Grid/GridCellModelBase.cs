using System;
using System.ComponentModel;
using System.Drawing;
using System.Globalization;
using System.Runtime.Serialization;
using System.Security.Permissions;
using System.Windows.Forms;
using System.Xml.Serialization;
using Syncfusion.ComponentModel;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridCellModelBase : Disposable, ISerializable, IDisposable
{
	[NonSerialized]
	private GridModel grid;

	private Size buttonBarSize = Size.Empty;

	[NonSerialized]
	internal GridCellContextValue activeTextValue = new GridCellContextValue(null);

	[NonSerialized]
	private GridCellContextValue activeTextChanged = new GridCellContextValue(false);

	private bool inDispose;

	private bool isDisposed;

	internal bool coveredCellFullRect = true;

	private BindingContext bindingContext;

	internal int serializeSchemeVersion;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[XmlIgnore]
	public bool IsDisposing => inDispose;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[XmlIgnore]
	public bool IsDisposed => isDisposed;

	[DefaultValue(true)]
	public bool ForceCoveredCellFullBounds
	{
		get
		{
			return coveredCellFullRect;
		}
		set
		{
			coveredCellFullRect = value;
		}
	}

	internal string Name => GetType().Name;

	internal string DisplayName => GetLocalizedString(Name);

	public BindingContext BindingContext
	{
		get
		{
			return bindingContext;
		}
		set
		{
			if (bindingContext != value)
			{
				bindingContext = value;
				OnBindingContextChanged(EventArgs.Empty);
			}
		}
	}

	public virtual string Description => GetLocalizedString(Name + "Desc");

	public int SerializeSchemeVersion => serializeSchemeVersion;

	public GridModel Grid => grid;

	public Size ButtonBarSize
	{
		get
		{
			return buttonBarSize;
		}
		set
		{
			buttonBarSize = value;
		}
	}

	public static string MeasureEmptyCellString
	{
		get
		{
			return WinFormsUtils.MeasureEmptyCellString;
		}
		set
		{
			WinFormsUtils.MeasureEmptyCellString = value;
		}
	}

	public event GridCellEventHandler ActiveTextChanged;

	public new void Dispose()
	{
		inDispose = true;
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
		inDispose = false;
		isDisposed = true;
	}

	protected virtual void OnBindingContextChanged(EventArgs e)
	{
	}

	protected virtual string GetLocalizedString(string value)
	{
		return SR.GetString(value);
	}

	public GridCellModelBase(GridModel grid)
	{
		this.grid = grid;
	}

	protected virtual void OnModelDeserialization(object sender, GridModel model)
	{
		grid = model;
	}

	internal void RaiseModelDeserialization(object sender, GridModel model)
	{
		OnModelDeserialization(sender, model);
	}

	protected GridCellModelBase(SerializationInfo info, StreamingContext context)
	{
		activeTextValue = new GridCellContextValue(null);
		activeTextChanged = new GridCellContextValue(false);
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			SerializationEntry current = enumerator.Current;
			if (current.Name == "Version")
			{
				serializeSchemeVersion = Convert.ToInt32(current.Value);
				break;
			}
		}
		buttonBarSize = (Size)info.GetValue("ButtonBarSize", typeof(Size));
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("ButtonBarSize", buttonBarSize);
		info.AddValue("Version", 1);
	}

	public virtual GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		throw new NotImplementedException("GridCellRenderer is not implemented in derived class");
	}

	public virtual GridCellModelBase CreateCopy(GridModel gridModel)
	{
		return (GridCellModelBase)Activator.CreateInstance(GetType(), gridModel);
	}

	internal Size AddBorders(Size size, GridStyleInfo style)
	{
		return Grid.AddBorders(size, style);
	}

	public Rectangle SubtractBorders(Rectangle cellBounds, GridStyleInfo style, bool isRightToLeft)
	{
		return Grid.SubtractBorders(cellBounds, style, isRightToLeft);
	}

	[Obsolete("It is recommended to specify isRightToLeft parameter, default for isRightToLeft is false.")]
	public Rectangle SubtractBorders(Rectangle cellBounds, GridStyleInfo style)
	{
		return Grid.SubtractBorders(cellBounds, style, isRightToLeft: false);
	}

	public virtual Size CalculatePreferredCellSize(Graphics g, int rowIndex, int colIndex, GridStyleInfo style, GridQueryBounds queryBounds)
	{
		Size size = OnQueryPrefferedClientSize(g, rowIndex, colIndex, style, queryBounds);
		Size result = GridMargins.AddMargins(size, Grid.StyleInfoBordersToMargins(style));
		result.Width += ButtonBarSize.Width;
		int height = ButtonBarSize.Height;
		if (height > 0 && height < int.MaxValue)
		{
			result.Height = Math.Max(result.Height, height);
		}
		return result;
	}

	protected virtual Size OnQueryPrefferedClientSize(Graphics g, int rowIndex, int colIndex, GridStyleInfo style, GridQueryBounds queryBounds)
	{
		return WinFormsUtils.MeasureSampleWString(g, style.GdipFont);
	}

	public static Size MeasureSampleWString(Graphics g, Font font)
	{
		return g.MeasureString(MeasureEmptyCellString, font).ToSize();
	}

	public Size GetCellSize(int rowIndex, int colIndex)
	{
		Grid.GetSpannedRangeInfo(rowIndex, colIndex, out var range);
		return new Size(Grid.ColWidths.GetTotal(range.Left, range.Right), Grid.RowHeights.GetTotal(range.Top, range.Bottom));
	}

	public Size GetCellClientSize(int rowIndex, int colIndex, GridStyleInfo style)
	{
		Size cellSize = GetCellSize(rowIndex, colIndex);
		cellSize = GridMargins.RemoveMargins(cellSize, Grid.StyleInfoBordersToMargins(style));
		cellSize.Width -= ButtonBarSize.Width;
		return cellSize;
	}

	public virtual bool OnQueryCanFloatCell(int rowIndex, int colIndex, GridStyleInfo style, GridQueryFloatCell query)
	{
		return false;
	}

	public virtual bool OnQueryCanMergeCell(int rowIndex, int colIndex, GridStyleInfo style, GridMergeCellDirection mergeCellDirection)
	{
		return false;
	}

	public string GetFormattedOrActiveTextAt(int rowIndex, int colIndex, GridStyleInfo style)
	{
		string activeText = GetActiveText(rowIndex, colIndex);
		if (activeText != null)
		{
			return activeText;
		}
		return GetFormattedText(style, style.CellValue, 0);
	}

	public virtual string GetFormattedText(GridStyleInfo style, object value, int textInfo)
	{
		GridCellTextEventArgs e = new GridCellTextEventArgs(string.Empty, style, value, textInfo);
		Grid.RaiseQueryCellFormattedText(e);
		if (e.Handled)
		{
			return e.Text;
		}
		CultureInfo cultureInfo = style.CultureInfo;
		NumberFormatInfo nfi = cultureInfo?.NumberFormat;
		return ValueConvert.FormatValue(value, style.CellValueType, style.Format, cultureInfo, nfi);
	}

	public virtual bool ApplyFormattedText(GridStyleInfo style, string text, int textInfo)
	{
		GridCellTextEventArgs e = new GridCellTextEventArgs(text, style, null, textInfo);
		Grid.RaiseSaveCellFormattedText(e);
		if (!e.Handled)
		{
			Grid.RaiseParseCommonFormats(e);
		}
		if (!e.Handled)
		{
			CultureInfo culture = style.GetCulture(useCurrentCultureIfNull: true);
			object obj;
			if (!(style.CellValueType == typeof(DateTime)))
			{
				IFormatProvider numberFormat = culture.NumberFormat;
				obj = numberFormat;
			}
			else
			{
				obj = culture.DateTimeFormat;
			}
			IFormatProvider provider = (IFormatProvider)obj;
			try
			{
				style.BeginUpdate();
				style.CellValue = ((style.ParseFormats == null) ? ValueConvert.Parse(text, style.CellValueType, provider, style.Format) : ValueConvert.Parse(text, style.CellValueType, provider, style.ParseFormats, returnDbNUllIfNotValid: false));
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

	public virtual string GetText(GridStyleInfo style, object value)
	{
		GridCellTextEventArgs e = new GridCellTextEventArgs(string.Empty, style, value, -1);
		Grid.RaiseQueryCellText(e);
		if (e.Handled)
		{
			return e.Text;
		}
		if (value == null)
		{
			return string.Empty;
		}
		return (string)ValueConvert.ChangeType(value, typeof(string), CultureInfo.CurrentCulture);
	}

	public virtual bool ApplyText(GridStyleInfo style, string text)
	{
		GridCellTextEventArgs e = new GridCellTextEventArgs(text, style, null, -1);
		Grid.RaiseSaveCellText(e);
		if (!e.Handled)
		{
			CultureInfo culture = style.GetCulture(useCurrentCultureIfNull: true);
			object obj;
			if (!(style.CellValueType == typeof(DateTime)))
			{
				IFormatProvider numberFormat = culture.NumberFormat;
				obj = numberFormat;
			}
			else
			{
				obj = culture.DateTimeFormat;
			}
			IFormatProvider provider = (IFormatProvider)obj;
			try
			{
				style.BeginUpdate();
				style.CellValue = ValueConvert.Parse(text, style.CellValueType, provider, string.Empty);
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

	public void SetActiveText(int rowIndex, int colIndex, string text)
	{
		if (activeTextValue.SetValue(rowIndex, colIndex, text))
		{
			activeTextChanged.SetValue(rowIndex, colIndex, true);
			OnActiveTextChanged(new GridCellEventArgs(rowIndex, colIndex));
		}
	}

	public string GetActiveText(int rowIndex, int colIndex)
	{
		GridCurrentCellInfo currentCellInfo = Grid.CurrentCellInfo;
		if (currentCellInfo == null || currentCellInfo.RowIndex != rowIndex || currentCellInfo.ColIndex != colIndex || Grid.ActiveGridView == null || !Grid.ActiveGridView.CurrentCell.HasCurrentCell || Grid.ActiveGridView.CurrentCell.StaticDrawing)
		{
			return null;
		}
		return (string)activeTextValue.GetValue(rowIndex, colIndex);
	}

	protected virtual void OnActiveTextChanged(GridCellEventArgs e)
	{
		GridRangeInfo range = GridRangeInfo.Cells(e.RowIndex, e.ColIndex, e.RowIndex, e.ColIndex + 1);
		Grid.FloatingCells.DelayFloatCells(range);
		Grid.FloatingCells.EvaluateFloatingCells(range);
		if (this.ActiveTextChanged != null)
		{
			this.ActiveTextChanged(this, e);
		}
	}

	public void ResetActiveText(int rowIndex, int colIndex)
	{
		if ((bool)activeTextChanged.GetValue(rowIndex, colIndex))
		{
			activeTextValue.ResetValue();
			OnActiveTextChanged(new GridCellEventArgs(rowIndex, colIndex));
		}
	}

	public virtual PropertyDescriptor GetPropertyDescriptor(GridStyleInfo style)
	{
		return style.PropertyDescriptor;
	}

	public virtual TypeConverter GetTypeConverter(GridStyleInfo style)
	{
		PropertyDescriptor propertyDescriptor = GetPropertyDescriptor(style);
		if (propertyDescriptor != null)
		{
			return propertyDescriptor.Converter;
		}
		Type cellValueType = style.CellValueType;
		if (cellValueType != null)
		{
			return TypeDescriptor.GetConverter(cellValueType);
		}
		return null;
	}
}
