using System;
using System.Diagnostics;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid.Design;

[Serializable]
[DebuggerStepThrough]
[StaticDataField("sd")]
internal class GridSyncPropertiesStore : StyleInfoStore
{
	private static StaticData sd;

	public static readonly StyleInfoProperty StoredImagesProperty;

	public static readonly StyleInfoProperty StoredFontsProperty;

	public static readonly StyleInfoProperty BackColorProperty;

	public static readonly StyleInfoProperty BackgroundImageIDProperty;

	public static readonly StyleInfoProperty BackgroundImageProperty;

	public static readonly StyleInfoProperty BorderStyleProperty;

	public static readonly StyleInfoProperty FontProperty;

	public static readonly StyleInfoProperty ForeColorProperty;

	public static readonly StyleInfoProperty HighlightFrozenLineProperty;

	public static readonly StyleInfoProperty RightToLeftProperty;

	public static readonly StyleInfoProperty ThemesEnabledProperty;

	public static readonly StyleInfoProperty ActivateCurrentCellBehaviorProperty;

	public static readonly StyleInfoProperty AllowDragSelectedColsProperty;

	public static readonly StyleInfoProperty AllowDragSelectedRowsProperty;

	public static readonly StyleInfoProperty AllowSelectionProperty;

	public static readonly StyleInfoProperty AlphaBlendSelectionColorProperty;

	public static readonly StyleInfoProperty ClickedOnDisabledCellBehaviorProperty;

	public static readonly StyleInfoProperty ControllerOptionsProperty;

	public static readonly StyleInfoProperty DataObjectConsumerOptionsProperty;

	public static readonly StyleInfoProperty DefaultGridBorderStyleProperty;

	public static readonly StyleInfoProperty DragSelectedCellsMouseButtonsMaskProperty;

	public static readonly StyleInfoProperty DrawOrderProperty;

	public static readonly StyleInfoProperty EnterKeyBehaviorProperty;

	public static readonly StyleInfoProperty ExcelLikeCurrentCellProperty;

	public static readonly StyleInfoProperty ExcelLikeSelectionFrameProperty;

	public static readonly StyleInfoProperty FloatCellsModeProperty;

	public static readonly StyleInfoProperty Office2007ScrollBarsProperty;

	public static readonly StyleInfoProperty Office2007ScrollBarsColorSchemeProperty;

	public static readonly StyleInfoProperty GridVisualStylesProperty;

	public static readonly StyleInfoProperty UseRightToLeftCompatibleTextBoxProperty;

	public static readonly StyleInfoProperty FrozenRowCountProperty;

	public static readonly StyleInfoProperty FrozenColCountProperty;

	public static readonly StyleInfoProperty ListBoxSelectionModeProperty;

	public static readonly StyleInfoProperty MinResizeColSizeProperty;

	public static readonly StyleInfoProperty MinResizeRowSizeProperty;

	public static readonly StyleInfoProperty NumberedColHeadersProperty;

	public static readonly StyleInfoProperty NumberedRowHeadersProperty;

	public static readonly StyleInfoProperty OptimizeDrawBackgroundProperty;

	public static readonly StyleInfoProperty OptimizeInsertRemoveCellsProperty;

	public static readonly StyleInfoProperty RefreshCurrentCellBehaviorProperty;

	public static readonly StyleInfoProperty ResizeColsBehaviorProperty;

	public static readonly StyleInfoProperty ResizeRowsBehaviorProperty;

	public static readonly StyleInfoProperty SelectCellsMouseButtonsMaskProperty;

	public static readonly StyleInfoProperty ShowCurrentCellBorderBehaviorProperty;

	public static readonly StyleInfoProperty SmoothControlResizeProperty;

	public static readonly StyleInfoProperty ColCountProperty;

	public static readonly StyleInfoProperty DefaultColWidthProperty;

	public static readonly StyleInfoProperty DefaultRowHeightProperty;

	public static readonly StyleInfoProperty PropertiesProperty;

	public static readonly StyleInfoProperty RowCountProperty;

	public static readonly StyleInfoProperty SerializeCellsBehaviorProperty;

	public static readonly StyleInfoProperty DataProperty;

	internal static StaticData StaticData => sd;

	protected override StaticData StaticDataStore => sd;

	static GridSyncPropertiesStore()
	{
		sd = new StaticData(typeof(GridSyncPropertiesStore), typeof(GridSyncProperties), sortProperties: false);
		StoredImagesProperty = sd.CreateStyleInfoProperty(typeof(GridNamespaceGroupItemCollection), "StoredImages");
		StoredFontsProperty = sd.CreateStyleInfoProperty(typeof(GridNamespaceGroupItemCollection), "StoredFonts");
		BackColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "BackColor");
		BackgroundImageIDProperty = sd.CreateStyleInfoProperty(typeof(string), "BackgroundImageID");
		BackgroundImageProperty = sd.CreateStyleInfoProperty(typeof(Image), "BackgroundImage");
		BorderStyleProperty = sd.CreateStyleInfoProperty(typeof(BorderStyle), "BorderStyle");
		FontProperty = sd.CreateStyleInfoProperty(typeof(Font), "Font");
		ForeColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "ForeColor");
		HighlightFrozenLineProperty = sd.CreateStyleInfoProperty(typeof(bool), "HighlightFrozenLine");
		RightToLeftProperty = sd.CreateStyleInfoProperty(typeof(RightToLeft), "RightToLeft");
		ThemesEnabledProperty = sd.CreateStyleInfoProperty(typeof(bool), "ThemesEnabled");
		ActivateCurrentCellBehaviorProperty = sd.CreateStyleInfoProperty(typeof(GridCellActivateAction), "ActivateCurrentCellBehavior");
		AllowDragSelectedColsProperty = sd.CreateStyleInfoProperty(typeof(bool), "AllowDragSelectedCols");
		AllowDragSelectedRowsProperty = sd.CreateStyleInfoProperty(typeof(bool), "AllogDragSelectedRows");
		AllowSelectionProperty = sd.CreateStyleInfoProperty(typeof(GridSelectionFlags), "AllowSelection");
		AlphaBlendSelectionColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "AlphaBlendSelectionColor");
		ClickedOnDisabledCellBehaviorProperty = sd.CreateStyleInfoProperty(typeof(GridClickedOnDisabledCellBehavior), "ClickedOnDisabledCellBehavior");
		ControllerOptionsProperty = sd.CreateStyleInfoProperty(typeof(GridControllerOptions), "ControllerOptions");
		DataObjectConsumerOptionsProperty = sd.CreateStyleInfoProperty(typeof(GridDataObjectConsumerOptions), "DataObjectConsumerOptions");
		DefaultGridBorderStyleProperty = sd.CreateStyleInfoProperty(typeof(GridBorderStyle), "DefaultGridBorderStyle");
		DragSelectedCellsMouseButtonsMaskProperty = sd.CreateStyleInfoProperty(typeof(MouseButtons), "DragSelectedCellsMouseButtonsMask");
		DrawOrderProperty = sd.CreateStyleInfoProperty(typeof(GridDrawOrder), "DrawOrder");
		EnterKeyBehaviorProperty = sd.CreateStyleInfoProperty(typeof(GridDirectionType), "EnterKeyBehavior");
		ExcelLikeCurrentCellProperty = sd.CreateStyleInfoProperty(typeof(bool), "ExcelLikeCurrentCell");
		ExcelLikeSelectionFrameProperty = sd.CreateStyleInfoProperty(typeof(bool), "ExcelLikeSelectionFrame");
		FloatCellsModeProperty = sd.CreateStyleInfoProperty(typeof(GridFloatCellsMode), "FloatCellsMode");
		Office2007ScrollBarsProperty = sd.CreateStyleInfoProperty(typeof(bool), "Office2007ScrollBars");
		Office2007ScrollBarsColorSchemeProperty = sd.CreateStyleInfoProperty(typeof(Office2007ColorScheme), "Office2007ScrollBarsColorScheme");
		GridVisualStylesProperty = sd.CreateStyleInfoProperty(typeof(GridVisualStyles), "GridVisualStyles");
		UseRightToLeftCompatibleTextBoxProperty = sd.CreateStyleInfoProperty(typeof(bool), "UseRightToLeftCompatibleTextBox");
		FrozenRowCountProperty = sd.CreateStyleInfoProperty(typeof(int), "FrozenRowCount");
		FrozenColCountProperty = sd.CreateStyleInfoProperty(typeof(int), "FrozenColCount");
		ListBoxSelectionModeProperty = sd.CreateStyleInfoProperty(typeof(SelectionMode), "ListBoxSelectionMode");
		MinResizeColSizeProperty = sd.CreateStyleInfoProperty(typeof(int), "MinResizeColSize");
		MinResizeRowSizeProperty = sd.CreateStyleInfoProperty(typeof(int), "MinResizeRowSize");
		NumberedColHeadersProperty = sd.CreateStyleInfoProperty(typeof(bool), "NumberedColHeaders");
		NumberedRowHeadersProperty = sd.CreateStyleInfoProperty(typeof(bool), "NumberedRowHeaders");
		OptimizeDrawBackgroundProperty = sd.CreateStyleInfoProperty(typeof(bool), "OptimizeDrawBackground");
		OptimizeInsertRemoveCellsProperty = sd.CreateStyleInfoProperty(typeof(bool), "OptimizeInsertRemoveCells");
		RefreshCurrentCellBehaviorProperty = sd.CreateStyleInfoProperty(typeof(GridRefreshCurrentCellBehavior), "RefreshCurrentCellBehavior");
		ResizeColsBehaviorProperty = sd.CreateStyleInfoProperty(typeof(GridResizeCellsBehavior), "ResizeColsBehavior");
		ResizeRowsBehaviorProperty = sd.CreateStyleInfoProperty(typeof(GridResizeCellsBehavior), "ResizeRowsBehavior");
		SelectCellsMouseButtonsMaskProperty = sd.CreateStyleInfoProperty(typeof(MouseButtons), "SelectCellsMouseButtonsMask");
		ShowCurrentCellBorderBehaviorProperty = sd.CreateStyleInfoProperty(typeof(GridShowCurrentCellBorder), "ShowCurrentCellBorderBehavior");
		SmoothControlResizeProperty = sd.CreateStyleInfoProperty(typeof(bool), "SmoothControlResize");
		ColCountProperty = sd.CreateStyleInfoProperty(typeof(int), "ColCount");
		DefaultColWidthProperty = sd.CreateStyleInfoProperty(typeof(int), "DefaultColWidth");
		DefaultRowHeightProperty = sd.CreateStyleInfoProperty(typeof(int), "DefaultRowHeight");
		PropertiesProperty = sd.CreateStyleInfoProperty(typeof(GridProperties), "Properties");
		RowCountProperty = sd.CreateStyleInfoProperty(typeof(int), "RowCount");
		SerializeCellsBehaviorProperty = sd.CreateStyleInfoProperty(typeof(GridSerializeCellsBehavior), "SerializeCellsBehavior");
		DataProperty = sd.CreateStyleInfoProperty(typeof(GridCellsMemento), "Cells");
		FontProperty.SerializeXmlBehavior = SerializeXmlBehavior.Skip;
		DataProperty.SerializeXmlBehavior = SerializeXmlBehavior.SerializeWithXmlSerializer;
	}
}
