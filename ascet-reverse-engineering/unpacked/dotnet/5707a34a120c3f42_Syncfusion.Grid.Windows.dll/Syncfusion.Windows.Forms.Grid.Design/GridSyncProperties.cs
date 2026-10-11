#define TRACE
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Imaging;
using System.IO;
using System.Runtime.Serialization;
using System.Security.Permissions;
using System.Windows.Forms;
using System.Xml.Serialization;
using Syncfusion.Styles;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Grid.Design;

[Serializable]
[TypeConverter(typeof(GridStyleInfoConverter))]
public class GridSyncProperties : StyleInfoBase, ISerializable
{
	public delegate void PropertyChangedEventHandler(object sender, PropertyChangedEventArgs e);

	internal bool bIsModified;

	private static GridSyncProperties defaultStyle;

	internal bool Locked;

	internal bool shouldRaiseChanged;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[XmlIgnore]
	internal new GridSyncPropertiesStore Store => (GridSyncPropertiesStore)base.Store;

	public static GridSyncProperties Default
	{
		get
		{
			if (defaultStyle == null)
			{
				defaultStyle = new GridSyncProperties(isDefault: true);
				defaultStyle.BackColor = SystemColors.Control;
				defaultStyle.BackgroundImage = null;
				defaultStyle.Font = GridFontInfo.Default.GdipFont;
				defaultStyle.ForeColor = Color.FromKnownColor(KnownColor.WindowText);
				defaultStyle.HighlightFrozenLine = true;
				defaultStyle.RightToLeft = RightToLeft.Inherit;
				defaultStyle.ThemesEnabled = false;
				defaultStyle.ActivateCurrentCellBehavior = GridCellActivateAction.ClickOnCell;
				defaultStyle.AllowDragSelectedCols = false;
				defaultStyle.AllowDragSelectedRows = false;
				defaultStyle.AllowSelection = GridSelectionFlags.Any;
				defaultStyle.AlphaBlendSelectionColor = Color.Empty;
				defaultStyle.ClickedOnDisabledCellBehavior = GridClickedOnDisabledCellBehavior.Default;
				defaultStyle.ControllerOptions = GridControllerOptions.All;
				defaultStyle.DataObjectConsumerOptions = GridDataObjectConsumerOptions.All;
				defaultStyle.DefaultGridBorderStyle = GridBorderStyle.Dotted;
				defaultStyle.DragSelectedCellsMouseButtonsMask = MouseButtons.Left;
				defaultStyle.DrawOrder = GridDrawOrder.Rows;
				defaultStyle.EnterKeyBehavior = GridDirectionType.Right;
				defaultStyle.ExcelLikeCurrentCell = false;
				defaultStyle.ExcelLikeSelectionFrame = false;
				defaultStyle.FloatCellsMode = GridFloatCellsMode.None;
				defaultStyle.Office2007ScrollBars = false;
				defaultStyle.Office2007ScrollBarsColorScheme = Office2007ColorScheme.Blue;
				defaultStyle.GridVisualStyles = GridVisualStyles.SystemTheme;
				defaultStyle.UseRightToLeftCompatibleTextBox = false;
				defaultStyle.FrozenRowCount = 0;
				defaultStyle.FrozenColCount = 0;
				defaultStyle.ListBoxSelectionMode = SelectionMode.None;
				defaultStyle.MinResizeColSize = 0;
				defaultStyle.MinResizeRowSize = 0;
				defaultStyle.NumberedColHeaders = true;
				defaultStyle.NumberedRowHeaders = true;
				defaultStyle.OptimizeDrawBackground = true;
				defaultStyle.OptimizeInsertRemoveCells = false;
				defaultStyle.RefreshCurrentCellBehavior = GridRefreshCurrentCellBehavior.RefreshCell;
				defaultStyle.ResizeColsBehavior = GridResizeCellsBehavior.ResizeSingle | GridResizeCellsBehavior.OutlineHeaders;
				defaultStyle.ResizeRowsBehavior = GridResizeCellsBehavior.ResizeSingle | GridResizeCellsBehavior.OutlineHeaders;
				defaultStyle.SelectCellsMouseButtonsMask = MouseButtons.Left | MouseButtons.Right | MouseButtons.Middle;
				defaultStyle.ShowCurrentCellBorderBehavior = GridShowCurrentCellBorder.WhenGridActive;
				defaultStyle.SmoothControlResize = true;
				defaultStyle.ColCount = 10;
				defaultStyle.DefaultColWidth = 65;
				defaultStyle.DefaultRowHeight = 17;
				defaultStyle.Properties = null;
				defaultStyle.RowCount = 10;
			}
			return defaultStyle;
		}
	}

	[Browsable(false)]
	[XmlIgnore]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Modified => bIsModified;

	[Browsable(false)]
	public GridNamespaceGroupItemCollection StoredImages
	{
		get
		{
			object obj = GetValue(GridSyncPropertiesStore.StoredImagesProperty);
			if (obj == null)
			{
				obj = new GridNamespaceGroupItemCollection();
				SetValue(GridSyncPropertiesStore.StoredImagesProperty, obj);
			}
			return (GridNamespaceGroupItemCollection)obj;
		}
		set
		{
			SetValue(GridSyncPropertiesStore.StoredImagesProperty, value);
		}
	}

	[Browsable(false)]
	public GridNamespaceGroupItemCollection StoredFonts
	{
		get
		{
			object obj = GetValue(GridSyncPropertiesStore.StoredFontsProperty);
			if (obj == null)
			{
				obj = new GridNamespaceGroupItemCollection();
				SetValue(GridSyncPropertiesStore.StoredFontsProperty, obj);
			}
			return (GridNamespaceGroupItemCollection)obj;
		}
		set
		{
			SetValue(GridSyncPropertiesStore.StoredFontsProperty, value);
		}
	}

	[Description("Background Color for the GridControl")]
	[Category("Appearance")]
	public Color BackColor
	{
		get
		{
			return (Color)GetValue(GridSyncPropertiesStore.BackColorProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.BackColorProperty, value);
			OnChanged("BackColor");
		}
	}

	[DefaultValue("")]
	[Browsable(false)]
	public string BackgroundImageID
	{
		get
		{
			return (string)GetValue(GridSyncPropertiesStore.BackgroundImageIDProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.BackgroundImageIDProperty, value);
		}
	}

	[Browsable(false)]
	[DefaultValue(null)]
	[Localizable(true)]
	[Description("The background image used for the grid.")]
	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public Image BackgroundImage
	{
		get
		{
			return (Image)GetValue(GridSyncPropertiesStore.BackgroundImageProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.BackgroundImageProperty, value);
			OnChanged("BackgroundImage");
		}
	}

	[Browsable(false)]
	public GridCellsMemento Cells
	{
		get
		{
			GridCellsMemento gridCellsMemento = (GridCellsMemento)GetValue(GridSyncPropertiesStore.DataProperty);
			if (gridCellsMemento == null)
			{
				gridCellsMemento = new GridCellsMemento();
				SetValue(GridSyncPropertiesStore.DataProperty, gridCellsMemento);
			}
			return gridCellsMemento;
		}
		set
		{
			SetValue(GridSyncPropertiesStore.DataProperty, value);
			OnChanged("Data");
		}
	}

	[Category("Appearance")]
	[Description("Border Style of the grid control")]
	[DefaultValue(BorderStyle.None)]
	public BorderStyle BorderStyle
	{
		get
		{
			return (BorderStyle)GetValue(GridSyncPropertiesStore.BorderStyleProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.BorderStyleProperty, value);
			OnChanged("BorderStyle");
		}
	}

	[Category("Appearance")]
	[Description("Font to display in the grid")]
	[XmlIgnore]
	public Font Font
	{
		get
		{
			return (Font)GetValue(GridSyncPropertiesStore.FontProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.FontProperty, value);
			OnChanged("Font");
		}
	}

	[Description("Color of the text")]
	[Category("Appearance")]
	public Color ForeColor
	{
		get
		{
			return (Color)GetValue(GridSyncPropertiesStore.ForeColorProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.ForeColorProperty, value);
			OnChanged("ForeColor");
		}
	}

	[Description("")]
	[Category("Appearance")]
	[DefaultValue(true)]
	public bool HighlightFrozenLine
	{
		get
		{
			return (bool)GetValue(GridSyncPropertiesStore.HighlightFrozenLineProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.HighlightFrozenLineProperty, value);
			OnChanged("HighlightFrozenLine");
		}
	}

	[Category("Appearance")]
	[Description("")]
	[DefaultValue(RightToLeft.No)]
	public RightToLeft RightToLeft
	{
		get
		{
			return (RightToLeft)GetValue(GridSyncPropertiesStore.RightToLeftProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.RightToLeftProperty, value);
			OnChanged("RightToLeft");
		}
	}

	[Description("")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public bool ThemesEnabled
	{
		get
		{
			return (bool)GetValue(GridSyncPropertiesStore.ThemesEnabledProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.ThemesEnabledProperty, value);
			OnChanged("ThemesEnabled");
		}
	}

	[DefaultValue(GridCellActivateAction.ClickOnCell)]
	[Category("Grid")]
	[Description("")]
	public GridCellActivateAction ActivateCurrentCellBehavior
	{
		get
		{
			return (GridCellActivateAction)GetValue(GridSyncPropertiesStore.ActivateCurrentCellBehaviorProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.ActivateCurrentCellBehaviorProperty, value);
			OnChanged("ActivateCurrentCellBehavior");
		}
	}

	[Category("Grid")]
	[Description("")]
	[DefaultValue(false)]
	public bool AllowDragSelectedCols
	{
		get
		{
			return (bool)GetValue(GridSyncPropertiesStore.AllowDragSelectedColsProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.AllowDragSelectedColsProperty, value);
			OnChanged("AllowDragSelectedCols");
		}
	}

	[Description("")]
	[Category("Grid")]
	[DefaultValue(false)]
	public bool AllowDragSelectedRows
	{
		get
		{
			return (bool)GetValue(GridSyncPropertiesStore.AllowDragSelectedRowsProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.AllowDragSelectedRowsProperty, value);
			OnChanged("AllowDragSelectedRows");
		}
	}

	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[Category("Grid")]
	[Description("")]
	[DefaultValue(GridSelectionFlags.Any)]
	public GridSelectionFlags AllowSelection
	{
		get
		{
			return (GridSelectionFlags)GetValue(GridSyncPropertiesStore.AllowSelectionProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.AllowSelectionProperty, value);
			OnChanged("AllowSelection");
		}
	}

	[Description("")]
	[Category("Grid")]
	public Color AlphaBlendSelectionColor
	{
		get
		{
			return (Color)GetValue(GridSyncPropertiesStore.AlphaBlendSelectionColorProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.AlphaBlendSelectionColorProperty, value);
			OnChanged("AlphaBlendSelectionColor");
		}
	}

	[Description("")]
	[Category("Grid")]
	[DefaultValue(GridClickedOnDisabledCellBehavior.Default)]
	public GridClickedOnDisabledCellBehavior ClickedOnDisabledCellBehavior
	{
		get
		{
			return (GridClickedOnDisabledCellBehavior)GetValue(GridSyncPropertiesStore.ClickedOnDisabledCellBehaviorProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.ClickedOnDisabledCellBehaviorProperty, value);
			OnChanged("ClickedOnDisabledCellBehavior");
		}
	}

	[Description("")]
	[Category("Grid")]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[DefaultValue(GridControllerOptions.All)]
	public GridControllerOptions ControllerOptions
	{
		get
		{
			return (GridControllerOptions)GetValue(GridSyncPropertiesStore.ControllerOptionsProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.ControllerOptionsProperty, value);
			OnChanged("ControllerOptions");
		}
	}

	[Category("Grid")]
	[Description("")]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[DefaultValue(GridDataObjectConsumerOptions.All)]
	public GridDataObjectConsumerOptions DataObjectConsumerOptions
	{
		get
		{
			return (GridDataObjectConsumerOptions)GetValue(GridSyncPropertiesStore.DataObjectConsumerOptionsProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.DataObjectConsumerOptionsProperty, value);
			OnChanged("DataObjectConsumerOptions");
		}
	}

	[Description("")]
	[Category("Grid")]
	[DefaultValue(GridBorderStyle.Dotted)]
	public GridBorderStyle DefaultGridBorderStyle
	{
		get
		{
			return (GridBorderStyle)GetValue(GridSyncPropertiesStore.DefaultGridBorderStyleProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.DefaultGridBorderStyleProperty, value);
			OnChanged("DefaultGridBorderStyle");
		}
	}

	[DefaultValue(MouseButtons.Left)]
	[Category("Grid")]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[Description("")]
	public MouseButtons DragSelectedCellsMouseButtonsMask
	{
		get
		{
			return (MouseButtons)GetValue(GridSyncPropertiesStore.DragSelectedCellsMouseButtonsMaskProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.DragSelectedCellsMouseButtonsMaskProperty, value);
			OnChanged("DragSelectedCellsMouseButtonsMask");
		}
	}

	[DefaultValue(GridDrawOrder.Rows)]
	[Category("Grid")]
	[Description("")]
	public GridDrawOrder DrawOrder
	{
		get
		{
			return (GridDrawOrder)GetValue(GridSyncPropertiesStore.DrawOrderProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.DrawOrderProperty, value);
			OnChanged("DrawOrder");
		}
	}

	[Category("Grid")]
	[Description("")]
	[DefaultValue(GridDirectionType.Right)]
	public GridDirectionType EnterKeyBehavior
	{
		get
		{
			return (GridDirectionType)GetValue(GridSyncPropertiesStore.EnterKeyBehaviorProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.EnterKeyBehaviorProperty, value);
			OnChanged("EnterKeyBehavior");
		}
	}

	[Description("")]
	[Category("Grid")]
	[DefaultValue(false)]
	public bool ExcelLikeCurrentCell
	{
		get
		{
			return (bool)GetValue(GridSyncPropertiesStore.ExcelLikeCurrentCellProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.ExcelLikeCurrentCellProperty, value);
			OnChanged("ExcelLikeCurrentCell");
		}
	}

	[Category("Grid")]
	[Description("")]
	[DefaultValue(false)]
	public bool ExcelLikeSelectionFrame
	{
		get
		{
			return (bool)GetValue(GridSyncPropertiesStore.ExcelLikeSelectionFrameProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.ExcelLikeSelectionFrameProperty, value);
			OnChanged("ExcelLikeSelectionFrame");
		}
	}

	[Category("Grid")]
	[Description("")]
	[DefaultValue(GridFloatCellsMode.None)]
	public GridFloatCellsMode FloatCellsMode
	{
		get
		{
			return (GridFloatCellsMode)GetValue(GridSyncPropertiesStore.FloatCellsModeProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.FloatCellsModeProperty, value);
			OnChanged("FloatCellsMode");
		}
	}

	[Description("")]
	[Category("Grid")]
	[DefaultValue(GridVisualStyles.SystemTheme)]
	public GridVisualStyles GridVisualStyles
	{
		get
		{
			return (GridVisualStyles)GetValue(GridSyncPropertiesStore.GridVisualStylesProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.GridVisualStylesProperty, value);
			OnChanged("GridVisualStyles");
		}
	}

	[DefaultValue(false)]
	[Description("")]
	[Category("Appearance")]
	public bool Office2007ScrollBars
	{
		get
		{
			return (bool)GetValue(GridSyncPropertiesStore.Office2007ScrollBarsProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.Office2007ScrollBarsProperty, value);
			OnChanged("Office2007ScrollBars");
		}
	}

	[Description("")]
	[Category("Appearance")]
	[DefaultValue(Office2007ColorScheme.Blue)]
	public Office2007ColorScheme Office2007ScrollBarsColorScheme
	{
		get
		{
			return (Office2007ColorScheme)GetValue(GridSyncPropertiesStore.Office2007ScrollBarsColorSchemeProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.Office2007ScrollBarsColorSchemeProperty, value);
			OnChanged("Office2007ScrollBarsColorScheme");
		}
	}

	[Description("")]
	[DefaultValue(false)]
	[Category("Grid")]
	public bool UseRightToLeftCompatibleTextBox
	{
		get
		{
			return (bool)GetValue(GridSyncPropertiesStore.UseRightToLeftCompatibleTextBoxProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.UseRightToLeftCompatibleTextBoxProperty, value);
			OnChanged("UseRightToLeftCompatibleTextBox");
		}
	}

	[Description("")]
	[DefaultValue(0)]
	[Category("Grid")]
	public int FrozenRowCount
	{
		get
		{
			return (int)GetValue(GridSyncPropertiesStore.FrozenRowCountProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.FrozenRowCountProperty, value);
			OnChanged("FrozenRowCount");
		}
	}

	[DefaultValue(0)]
	[Description("")]
	[Category("Grid")]
	public int FrozenColCount
	{
		get
		{
			return (int)GetValue(GridSyncPropertiesStore.FrozenColCountProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.FrozenColCountProperty, value);
			OnChanged("FrozenColCount");
		}
	}

	[Category("Grid")]
	[Description("")]
	[DefaultValue(SelectionMode.None)]
	public SelectionMode ListBoxSelectionMode
	{
		get
		{
			return (SelectionMode)GetValue(GridSyncPropertiesStore.ListBoxSelectionModeProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.ListBoxSelectionModeProperty, value);
			OnChanged("ListBoxSelectionMode");
		}
	}

	[Category("Grid")]
	[Description("")]
	[DefaultValue(0)]
	public int MinResizeColSize
	{
		get
		{
			return (int)GetValue(GridSyncPropertiesStore.MinResizeColSizeProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.MinResizeColSizeProperty, value);
			OnChanged("MinResizeColSize");
		}
	}

	[Description("")]
	[Category("Grid")]
	[DefaultValue(0)]
	public int MinResizeRowSize
	{
		get
		{
			return (int)GetValue(GridSyncPropertiesStore.MinResizeRowSizeProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.MinResizeRowSizeProperty, value);
			OnChanged("MinResizeRowSize");
		}
	}

	[Category("Grid")]
	[Description("")]
	[DefaultValue(true)]
	public bool NumberedColHeaders
	{
		get
		{
			return (bool)GetValue(GridSyncPropertiesStore.NumberedColHeadersProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.NumberedColHeadersProperty, value);
			OnChanged("NumberedColHeaders");
		}
	}

	[Description("")]
	[Category("Grid")]
	[DefaultValue(true)]
	public bool NumberedRowHeaders
	{
		get
		{
			return (bool)GetValue(GridSyncPropertiesStore.NumberedRowHeadersProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.NumberedRowHeadersProperty, value);
			OnChanged("NumberedRowHeaders");
		}
	}

	[Description("")]
	[Category("Grid")]
	[DefaultValue(true)]
	public bool OptimizeDrawBackground
	{
		get
		{
			return (bool)GetValue(GridSyncPropertiesStore.OptimizeDrawBackgroundProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.OptimizeDrawBackgroundProperty, value);
			OnChanged("OptimizeDrawBackground");
		}
	}

	[Description("")]
	[Category("Grid")]
	[DefaultValue(true)]
	public bool OptimizeInsertRemoveCells
	{
		get
		{
			return (bool)GetValue(GridSyncPropertiesStore.OptimizeInsertRemoveCellsProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.OptimizeInsertRemoveCellsProperty, value);
			OnChanged("OptimizeInsertRemoveCells");
		}
	}

	[Description("")]
	[Category("Grid")]
	[DefaultValue(GridRefreshCurrentCellBehavior.RefreshCell)]
	public GridRefreshCurrentCellBehavior RefreshCurrentCellBehavior
	{
		get
		{
			return (GridRefreshCurrentCellBehavior)GetValue(GridSyncPropertiesStore.RefreshCurrentCellBehaviorProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.RefreshCurrentCellBehaviorProperty, value);
			OnChanged("RefreshCurrentCellBehavior");
		}
	}

	[Description("")]
	[Category("Grid")]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[DefaultValue(GridResizeCellsBehavior.ResizeSingle | GridResizeCellsBehavior.OutlineHeaders | GridResizeCellsBehavior.OutlineBounds)]
	public GridResizeCellsBehavior ResizeColsBehavior
	{
		get
		{
			return (GridResizeCellsBehavior)GetValue(GridSyncPropertiesStore.ResizeColsBehaviorProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.ResizeColsBehaviorProperty, value);
			OnChanged("ResizeColsBehavior");
		}
	}

	[DefaultValue(GridResizeCellsBehavior.ResizeSingle | GridResizeCellsBehavior.OutlineHeaders | GridResizeCellsBehavior.OutlineBounds)]
	[Category("Grid")]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[Description("")]
	public GridResizeCellsBehavior ResizeRowsBehavior
	{
		get
		{
			return (GridResizeCellsBehavior)GetValue(GridSyncPropertiesStore.ResizeRowsBehaviorProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.ResizeRowsBehaviorProperty, value);
			OnChanged("ResizeRowsBehavior");
		}
	}

	[DefaultValue(MouseButtons.Left | MouseButtons.Right | MouseButtons.Middle)]
	[Category("Grid")]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[Description("")]
	public MouseButtons SelectCellsMouseButtonsMask
	{
		get
		{
			return (MouseButtons)GetValue(GridSyncPropertiesStore.SelectCellsMouseButtonsMaskProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.SelectCellsMouseButtonsMaskProperty, value);
			OnChanged("SelectCellsMouseButtonsMask");
		}
	}

	[Category("Grid")]
	[Description("")]
	[DefaultValue(GridShowCurrentCellBorder.WhenGridActive)]
	public GridShowCurrentCellBorder ShowCurrentCellBorderBehavior
	{
		get
		{
			return (GridShowCurrentCellBorder)GetValue(GridSyncPropertiesStore.ShowCurrentCellBorderBehaviorProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.ShowCurrentCellBorderBehaviorProperty, value);
			OnChanged("ShowCurrentCellBorderBehavior");
		}
	}

	[Description("")]
	[Category("Grid")]
	[DefaultValue(true)]
	public bool SmoothControlResize
	{
		get
		{
			return (bool)GetValue(GridSyncPropertiesStore.SmoothControlResizeProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.SmoothControlResizeProperty, value);
			OnChanged("SmoothControlResize");
		}
	}

	[Description("")]
	[DefaultValue(10)]
	[Category("Grid Content")]
	public int ColCount
	{
		get
		{
			return (int)GetValue(GridSyncPropertiesStore.ColCountProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.ColCountProperty, value);
			OnChanged("ColCount");
		}
	}

	[Category("Grid Content")]
	[Description("")]
	[DefaultValue(65)]
	public int DefaultColWidth
	{
		get
		{
			return (int)GetValue(GridSyncPropertiesStore.DefaultColWidthProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.DefaultColWidthProperty, value);
			OnChanged("DefaultColWidth");
		}
	}

	[Description("")]
	[Category("Grid Content")]
	[DefaultValue(17)]
	public int DefaultRowHeight
	{
		get
		{
			return (int)GetValue(GridSyncPropertiesStore.DefaultRowHeightProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.DefaultRowHeightProperty, value);
			OnChanged("DefaultRowHeight");
		}
	}

	[Category("Grid Content")]
	[Description("")]
	public GridProperties Properties
	{
		get
		{
			return (GridProperties)GetValue(GridSyncPropertiesStore.PropertiesProperty);
		}
		set
		{
			if (!object.ReferenceEquals(Properties, value))
			{
				if (Properties != null)
				{
					Properties.Changed -= Properties_Changed;
				}
				SetValue(GridSyncPropertiesStore.PropertiesProperty, value);
				Properties.Changed += Properties_Changed;
				OnChanged("Properties");
			}
		}
	}

	[Description("")]
	[DefaultValue(10)]
	[Category("Grid Content")]
	public int RowCount
	{
		get
		{
			return (int)GetValue(GridSyncPropertiesStore.RowCountProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.RowCountProperty, value);
			OnChanged("RowCount");
		}
	}

	[Description("Choose to serialize cell contents as code or into a ResX file.")]
	[Category("Grid Content")]
	[DefaultValue(GridSerializeCellsBehavior.SerializeIntoCode)]
	public GridSerializeCellsBehavior SerializeCellsBehavior
	{
		get
		{
			return (GridSerializeCellsBehavior)GetValue(GridSyncPropertiesStore.SerializeCellsBehaviorProperty);
		}
		set
		{
			SetValue(GridSyncPropertiesStore.SerializeCellsBehaviorProperty, value);
			OnChanged("SerializeCellsBehavior");
		}
	}

	public event PropertyChangedEventHandler PropertyChanged;

	static GridSyncProperties()
	{
	}

	public GridSyncProperties()
		: base(new GridSyncPropertiesStore())
	{
		InitProperties();
	}

	private void InitProperties()
	{
		GridProperties value = new GridProperties();
		SetValue(GridSyncPropertiesStore.PropertiesProperty, value);
		Properties.Changed += Properties_Changed;
	}

	private GridSyncProperties(bool isDefault)
		: base(new GridSyncPropertiesStore())
	{
	}

	public GridSyncProperties(GridSyncProperties style)
		: base(style.Store)
	{
		InitProperties();
	}

	protected GridSyncProperties(SerializationInfo info, StreamingContext context)
		: base(new GridSyncPropertiesStore())
	{
		BackColor = (Color)info.GetValue("BackColor", typeof(Color));
		BackgroundImage = (Image)info.GetValue("BackgroundImage", typeof(Image));
		ForeColor = (Color)info.GetValue("ForeColor", typeof(Color));
		BorderStyle = (BorderStyle)info.GetValue("BorderStyle", typeof(BorderStyle));
		HighlightFrozenLine = (bool)info.GetValue("HighlightFrozenLine", typeof(bool));
		RightToLeft = (RightToLeft)info.GetValue("RightToLeft", typeof(RightToLeft));
		ThemesEnabled = (bool)info.GetValue("ThemesEnabled", typeof(bool));
		SerializeCellsBehavior = (GridSerializeCellsBehavior)info.GetValue("SerializeCellsBehavior", typeof(GridSerializeCellsBehavior));
		ActivateCurrentCellBehavior = (GridCellActivateAction)info.GetValue("ActivateCurrentCellBehavior", typeof(GridCellActivateAction));
		AllowDragSelectedCols = (bool)info.GetValue("AllowDragSelectedCols", typeof(bool));
		AllowDragSelectedRows = (bool)info.GetValue("AllowDragSelectedRows", typeof(bool));
		AllowSelection = (GridSelectionFlags)info.GetValue("AllowSelection", typeof(GridSelectionFlags));
		AlphaBlendSelectionColor = (Color)info.GetValue("AlphaBlendSelectionColor", typeof(Color));
		ClickedOnDisabledCellBehavior = (GridClickedOnDisabledCellBehavior)info.GetValue("ClickedOnDisabledCellBehavior", typeof(GridClickedOnDisabledCellBehavior));
		ControllerOptions = (GridControllerOptions)info.GetValue("ControllerOptions", typeof(GridControllerOptions));
		DataObjectConsumerOptions = (GridDataObjectConsumerOptions)info.GetValue("DataObjectConsumerOptions", typeof(GridDataObjectConsumerOptions));
		DefaultGridBorderStyle = (GridBorderStyle)info.GetValue("DefaultGridBorderStyle", typeof(GridBorderStyle));
		DragSelectedCellsMouseButtonsMask = (MouseButtons)info.GetValue("DragSelectedCellsMouseButtonsMask", typeof(MouseButtons));
		DrawOrder = (GridDrawOrder)info.GetValue("DrawOrder", typeof(GridDrawOrder));
		EnterKeyBehavior = (GridDirectionType)info.GetValue("EnterKeyBehavior", typeof(GridDirectionType));
		ExcelLikeCurrentCell = (bool)info.GetValue("ExcelLikeCurrentCell", typeof(bool));
		ExcelLikeSelectionFrame = (bool)info.GetValue("ExcelLikeSelectionFrame", typeof(bool));
		FloatCellsMode = (GridFloatCellsMode)info.GetValue("FloatCellsMode", typeof(GridFloatCellsMode));
		ListBoxSelectionMode = (SelectionMode)info.GetValue("ListBoxSelectionMode", typeof(SelectionMode));
		MinResizeColSize = (int)info.GetValue("MinResizeColSize", typeof(int));
		MinResizeRowSize = (int)info.GetValue("MinResizeRowSize", typeof(int));
		NumberedColHeaders = (bool)info.GetValue("NumberedColHeaders", typeof(bool));
		NumberedRowHeaders = (bool)info.GetValue("NumberedRowHeaders", typeof(bool));
		OptimizeDrawBackground = (bool)info.GetValue("OptimizeDrawBackground", typeof(bool));
		OptimizeInsertRemoveCells = (bool)info.GetValue("OptimizeInsertRemoveCells", typeof(bool));
		RefreshCurrentCellBehavior = (GridRefreshCurrentCellBehavior)info.GetValue("RefreshCurrentCellBehavior", typeof(GridRefreshCurrentCellBehavior));
		ResizeColsBehavior = (GridResizeCellsBehavior)info.GetValue("ResizeColsBehavior", typeof(GridResizeCellsBehavior));
		ResizeRowsBehavior = (GridResizeCellsBehavior)info.GetValue("ResizeRowsBehavior", typeof(GridResizeCellsBehavior));
		SelectCellsMouseButtonsMask = (MouseButtons)info.GetValue("SelectCellsMouseButtonsMask", typeof(MouseButtons));
		ShowCurrentCellBorderBehavior = (GridShowCurrentCellBorder)info.GetValue("ShowCurrentCellBorderBehavior", typeof(GridShowCurrentCellBorder));
		SmoothControlResize = (bool)info.GetValue("SmoothControlResize", typeof(bool));
		ColCount = (int)info.GetValue("ColCount", typeof(int));
		DefaultColWidth = (int)info.GetValue("DefaultColWidth", typeof(int));
		DefaultRowHeight = (int)info.GetValue("DefaultRowHeight", typeof(int));
		Properties = (GridProperties)info.GetValue("Properties", typeof(GridProperties));
		RowCount = (int)info.GetValue("RowCount", typeof(int));
		Cells = (GridCellsMemento)info.GetValue("Cells", typeof(GridCellsMemento));
		try
		{
			Office2007ScrollBars = (bool)info.GetValue("Office2007ScrollBars", typeof(bool));
			Office2007ScrollBarsColorScheme = (Office2007ColorScheme)info.GetValue("Office2007ScrollBarsColorScheme", typeof(Office2007ColorScheme));
			GridVisualStyles = (GridVisualStyles)info.GetValue("GridVisualStyles", typeof(GridVisualStyles));
			UseRightToLeftCompatibleTextBox = (bool)info.GetValue("UseRightToLeftCompatibleTextBox", typeof(bool));
			FrozenRowCount = (int)info.GetValue("FrozenRowCount", typeof(int));
			FrozenColCount = (int)info.GetValue("FrozenColCount", typeof(int));
		}
		catch
		{
			GridVisualStyles = GridVisualStyles.SystemTheme;
			UseRightToLeftCompatibleTextBox = false;
			FrozenRowCount = 0;
			FrozenColCount = 0;
		}
		Properties.Changed += Properties_Changed;
	}

	public override void Dispose()
	{
		if (Properties != null)
		{
			Properties.Changed -= Properties_Changed;
		}
		base.Dispose();
	}

	private void Properties_Changed(object sender, EventArgs e)
	{
		OnChanged("Properties");
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		GetObjectData(info, context);
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	protected virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("BackColor", BackColor);
		info.AddValue("BackgroundImage", BackgroundImage);
		info.AddValue("ForeColor", ForeColor);
		info.AddValue("BorderStyle", BorderStyle);
		info.AddValue("HighlightFrozenLine", HighlightFrozenLine);
		info.AddValue("RightToLeft", RightToLeft);
		info.AddValue("ThemesEnabled", ThemesEnabled);
		info.AddValue("SerializeCellsBehavior", SerializeCellsBehavior);
		info.AddValue("ActivateCurrentCellBehavior", ActivateCurrentCellBehavior);
		info.AddValue("AllowDragSelectedCols", AllowDragSelectedCols);
		info.AddValue("AllowDragSelectedRows", AllowDragSelectedRows);
		info.AddValue("AllowSelection", AllowSelection);
		info.AddValue("AlphaBlendSelectionColor", AlphaBlendSelectionColor);
		info.AddValue("ClickedOnDisabledCellBehavior", ClickedOnDisabledCellBehavior);
		info.AddValue("ControllerOptions", ControllerOptions);
		info.AddValue("DataObjectConsumerOptions", DataObjectConsumerOptions);
		info.AddValue("DefaultGridBorderStyle", DefaultGridBorderStyle);
		info.AddValue("DragSelectedCellsMouseButtonsMask", DragSelectedCellsMouseButtonsMask);
		info.AddValue("DrawOrder", DrawOrder);
		info.AddValue("EnterKeyBehavior", EnterKeyBehavior);
		info.AddValue("ExcelLikeCurrentCell", ExcelLikeCurrentCell);
		info.AddValue("ExcelLikeSelectionFrame", ExcelLikeSelectionFrame);
		info.AddValue("FloatCellsMode", FloatCellsMode);
		info.AddValue("ListBoxSelectionMode", ListBoxSelectionMode);
		info.AddValue("MinResizeColSize", MinResizeColSize);
		info.AddValue("MinResizeRowSize", MinResizeRowSize);
		info.AddValue("NumberedColHeaders", NumberedColHeaders);
		info.AddValue("NumberedRowHeaders", NumberedRowHeaders);
		info.AddValue("OptimizeDrawBackground", OptimizeDrawBackground);
		info.AddValue("OptimizeInsertRemoveCells", OptimizeInsertRemoveCells);
		info.AddValue("RefreshCurrentCellBehavior", RefreshCurrentCellBehavior);
		info.AddValue("ResizeColsBehavior", ResizeColsBehavior);
		info.AddValue("ResizeRowsBehavior", ResizeRowsBehavior);
		info.AddValue("SelectCellsMouseButtonsMask", SelectCellsMouseButtonsMask);
		info.AddValue("ShowCurrentCellBorderBehavior", ShowCurrentCellBorderBehavior);
		info.AddValue("SmoothControlResize", SmoothControlResize);
		info.AddValue("ColCount", ColCount);
		info.AddValue("DefaultColWidth", DefaultColWidth);
		info.AddValue("DefaultRowHeight", DefaultRowHeight);
		info.AddValue("Properties", Properties);
		info.AddValue("RowCount", RowCount);
		info.AddValue("Cells", Cells);
		info.AddValue("Office2007ScrollBars", Office2007ScrollBars);
		info.AddValue("Office2007ScrollBarsColorScheme", Office2007ScrollBarsColorScheme);
		info.AddValue("GridVisualStyles", GridVisualStyles);
		info.AddValue("UseRightToLeftCompatibleTextBox", UseRightToLeftCompatibleTextBox);
		info.AddValue("FrozenRowCount", FrozenRowCount);
		info.AddValue("FrozenColCount", FrozenColCount);
	}

	protected override StyleInfoBase GetDefaultStyle()
	{
		return Default;
	}

	public void ResetModified()
	{
		bIsModified = false;
	}

	private void OnChanged(string propName)
	{
		if (shouldRaiseChanged && this.PropertyChanged != null)
		{
			bIsModified = true;
			this.PropertyChanged(this, new PropertyChangedEventArgs(propName));
		}
	}

	public void ResetStyleGroups()
	{
		StoredFonts.Clear();
		StoredImages.Clear();
	}

	public static Bitmap GetImageFromBytes(byte[] bytes)
	{
		Bitmap bitmap = null;
		try
		{
			return new Bitmap(new MemoryStream(bytes));
		}
		catch (Exception ex)
		{
			Trace.WriteLine(ex.ToString());
			return null;
		}
	}

	public static byte[] GetImageBytes(Bitmap bmp)
	{
		MemoryStream memoryStream = new MemoryStream();
		bmp.Save(memoryStream, ImageFormat.Bmp);
		int num = Convert.ToInt32(memoryStream.Length);
		byte[] array = new byte[num];
		memoryStream.Position = 0L;
		memoryStream.Read(array, 0, num);
		memoryStream.Close();
		return array;
	}
}
