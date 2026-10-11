using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Drawing.Design;
using System.Reflection;
using System.Security;
using System.Xml;
using System.Xml.Serialization;
using Syncfusion;
using Syncfusion.ComponentModel;
using Syncfusion.Styles;
using Syncfusion.Windows.Forms;
using Syncfusion.Windows.Forms.Grid;
using Syncfusion.Windows.Forms.Grid.Design;

namespace Microsoft.Xml.Serialization.GeneratedAssembly;

public class XmlSerializationReader1 : XmlSerializationReader
{
	private Hashtable _GridFormulaCopyFlagsValues;

	private Hashtable _GridFindReplaceDialogOptionsValues;

	private Hashtable _GridRangeInfoTypeValues;

	private Hashtable _GridBorderSideValues;

	private Hashtable _GridDataObjectConsumerOptionsValues;

	private Hashtable _GridControllerOptionsValues;

	private Hashtable _GridScrollbarModeValues;

	private Hashtable _GridSetCurrentCellOptionsValues;

	private Hashtable _GridMergeCellsModeValues;

	private Hashtable _GridMergeCellDirectionValues;

	private Hashtable _GridSelectionFlagsValues;

	private Hashtable _GridResizeCellsBehaviorValues;

	private Hashtable _GridRangeOptionsValues;

	private Hashtable _GridResizeToFitOptionsValues;

	private Hashtable _GridWrapCellBehaviorValues;

	private string id204_Formula;

	private string id50_GridModelBound;

	private string id203_Right;

	private string id31_GridMergeCellDirection;

	private string id227_GridLineColorString;

	private string id237_SyncfusionHandledEventArgs;

	private string id18_GridResizeToFitOptions;

	private string id269_m_bPrintPaintMsg;

	private string id45_GridUtil;

	private string id124_GridFontInfoEditor;

	private string id167_GridDragColumnHeaderHelper;

	private string id128_GridMarginsInfo;

	private string id214_MarkColHeader;

	private string id126_GridHorizontalAlignment;

	private string id65_Item;

	private string id56_ArrayOfGridColWidth;

	private string id180_Handled;

	private string id262_m_nPrintTopRow;

	private string id223_PrintVertLines;

	private string id39_GridDragDropFlags;

	private string id11_GridCellPos;

	private string id19_GridQueryBounds;

	private string id75_GridNamespaceGroupItem;

	private string id81_ArrayOfGridRowHeight;

	private string id243_TypeConverter;

	private string id135_GridProgressBarInfo;

	private string id220_ColHeaders;

	private string id158_LenComparer;

	private string id260_ClientRectangle;

	private string id235_EventArgs;

	private string id244_StyleInfoBaseConverter;

	private string id38_GridCountRecordsBehavior;

	private string id240_NonFinalizeDisposable;

	private string id270_m_bPrintCurSelOnly;

	private string id184_Length;

	private string id111_GridBorderSide;

	private string id61_GridData;

	private string id125_GridFormulaTag;

	private string id252_Width;

	private string id248_Size;

	private string id15_GridQueryFloatCell;

	private string id211_DisplayVertLines;

	private string id255_X;

	private string id256_Y;

	private string id198_Name;

	private string id271_ColumnNumber;

	private string id166_Item;

	private string id85_GridRowHidden;

	private string id174_Text;

	private string id113_GridBordersInfo;

	private string id106_GridBorderWeight;

	private string id54_GridColHidden;

	private string id266_m_nCurrentPageColIndex;

	private string id22_GridDragSelectionReason;

	private string id209_Range;

	private string id41_GridCommandMode;

	private string id234_CodeDomSerializer;

	private string id185_HiddenRows;

	private string id157_GridFindReplaceDialogOptions;

	private string id238_SyncfusionCommand;

	private string id96_GridCursors;

	private string id177_RowFilter;

	private string id53_ArrayOfGridColHidden;

	private string id216_PrintColHeader;

	private string id188_ColumnWidths;

	private string id55_GridColHiddenTypeConverter;

	private string id40_GridFindTextOptions;

	private string id229_ResizingCellsLinesColorString;

	private string id136_GridShowButtons;

	private string id149_GridRadioButtonInfo;

	private string id178_StyleInfo;

	private string id59_GridModelCommand;

	private string id80_GridRangeStyleTypeConverter;

	private string id141_GridDesignerMain;

	private string id213_MarkRowHeader;

	private string id121_GridCurrencyEditInfoStore;

	private string id64_GridStyleInfoStore;

	private string id43_GridDataObjectConsumerOptions;

	private string id62_GridDataTypeConverter;

	private string id263_m_nPrintLeftCol;

	private string id146_ArrayOfGridRowColEntry;

	private string id132_GridNumericUpDownCellInfoStore;

	private string id88_GridRangeInfo;

	private string id139_GridTextAlign;

	private string id27_GridResizeCellsBehavior;

	private string id109_GridBorderConverter;

	private string id197_CellContents;

	private string id170_GridGdiPaint;

	private string id110_GridBorderPaint;

	private string id268_m_nPrintHandleRecordCount;

	private string id70_Item;

	private string id95_Item;

	private string id251_ArrayOfString;

	private string id222_RowHeaders;

	private string id239_ValueConvert;

	private string id25_GridBackgroundImageMode;

	private string id258_InnerRectangle;

	private string id107_GridBorder;

	private string id182_Enabled;

	private string id159_GridSheetFamilyItem;

	private string id34_GridDrawOrder;

	private string id63_ArrayOfGridStyleInfoStore;

	private string id114_GridCellAppearance;

	private string id155_GridFilterBar;

	private string id172_Value;

	private string id137_GridStyleInfoCustomProperties;

	private string id186_RowHeights;

	private string id12_GridConstants;

	private string id32_GridMergeCellsMode;

	private string id49_GridCellInfoTypeConverter;

	private string id165_GridDragColumnHeaderBitmaps;

	private string id140_GridVerticalAlignment;

	private string id232_UITypeEditor;

	private string id215_PrintRowHeader;

	private string id115_GridCellTypeNameConverter;

	private string id119_GridCheckBoxCellInfo;

	private string id161_GridFormulaParsingEventArgs;

	private string id118_GridCheckBoxCellInfoStore;

	private string id46_GridBanneredCellPool;

	private string id98_GridSortInfo;

	private string id254_Location;

	private string id264_m_awPageFirstCol;

	private string id230_BackgroundColorString;

	private string id76_ArrayOfGridNamespaceGroupItem;

	private string id265_m_awPageFirstRow;

	private string id7_GridPrintInfo;

	private string id175_GridFilterBarStrings;

	private string id275_ExtendedInfo;

	private string id71_GridModelHideRowColsIndexer;

	private string id5_GridImageUtil;

	private string id51_GridCellValueConvert;

	private string id201_Left;

	private string id245_ExpandableObjectConverter;

	private string id226_PrintFrame;

	private string id241_GridSubComponent;

	private string id163_ArrayOfNamedRange;

	private string id224_PageOrder;

	private string id154_Item;

	private string id142_GridCellsMemento;

	private string id156_Item;

	private string id48_ArrayOfGridCellInfo;

	private string id29_GridSelectionFlags;

	private string id13_GridScrollCurrentCellReason;

	private string id249_Point;

	private string id205_ParsedRow;

	private string id79_GridRangeStyle;

	private string id219_CenterVertical;

	private string id246_ImageUtil;

	private string id68_GridRowColCountEventArgs;

	private string id231_Count;

	private string id131_GridMaskEditInfoStore;

	private string id104_GridStyleInfo;

	private string id152_GridValidateFailedEventArgs;

	private string id250_ArrayOfRectangle;

	private string id212_DisplayHorzLines;

	private string id129_GridMargins;

	private string id37_GridScrollbarMode;

	private string id257_CellRectangle;

	private string id276_Rows;

	private string id259_Buttons;

	private string id143_ColumnStyles;

	private string id196_Col;

	private string id144_RowStyles;

	private string id33_GridCellActivateAction;

	private string id73_GridModelRowColOperations;

	private string id133_GridNumericUpDownCellInfo;

	private string id208_Height;

	private string id127_GridMarginsInfoStore;

	private string id108_GridBorderCodeDomSerializer;

	private string id36_GridSetCurrentCellOptions;

	private string id150_GridSerializeCellsBehavior;

	private string id84_ArrayOfGridRowHidden;

	private string id2_Item;

	private string id123_GridFontInfo;

	private string id272_RowNumber;

	private string id94_GridNonImmutableRangeInfo;

	private string id200_Top;

	private string id138_GridStyleInfoConverter;

	private string id90_GridRangeInfoCodeDomSerializer;

	private string id267_m_nCurrentPageRowIndex;

	private string id187_HiddenColumns;

	private string id17_GridRefreshCurrentCellBehavior;

	private string id148_GridCellModelFactory;

	private string id74_Item;

	private string id82_GridRowHeight;

	private string id28_GridHitTestContext;

	private string id9_GridFactoryProvider;

	private string id16_GridWrapCellBehavior;

	private string id58_GridColWidthTypeConverter;

	private string id202_Bottom;

	private string id47_GridCellInfo;

	private string id171_Key;

	private string id86_GridRowHiddenTypeConverter;

	private string id274_ColCount;

	private string id160_GridFormulaCopyFlags;

	private string id44_GridCellTypeName;

	private string id217_Printing;

	private string id91_ArrayOfGridRangeInfo;

	private string id8_GridCellSizeKind;

	private string id20_GridCellBaseTextInfo;

	private string id1_GridWindowsAssembly;

	private string id93_GridRangeInfoType;

	private string id92_GridRangeInfoListConverter;

	private string id253_ColIndex;

	private string id57_GridColWidth;

	private string id168_Item;

	private string id151_GridSortBehavior;

	private string id193_BaseStylesMap;

	private string id176_string;

	private string id228_FixedLinesColorString;

	private string id3_GridBaseCellModelFactory;

	private string id89_GridRangeInfoConverter;

	private string id233_CodeDomSerializerBase;

	private string id273_RowCount;

	private string id101_GridBaseStyleNameConverter;

	private string id179_ParenthesesAroundColumnFilters;

	private string id99_GridTriangleDirection;

	private string id105_GridBorderStyle;

	private string id83_GridRowHeightTypeConverter;

	private string id24_GridRangeOptions;

	private string id164_NamedRange;

	private string id4_GridCellLayout;

	private string id191_CoveredRanges;

	private string id77_GridProperties;

	private string id72_Item;

	private string id247_Rectangle;

	private string id21_GridSelectionReason;

	private string id169_GridQueryAcceptDataOptions;

	private string id87_GridMouseController;

	private string id134_GridProgressBarInfoStore;

	private string id6_GridImageSizeMode;

	private string id181_Description;

	private string id183_Index;

	private string id14_GridDropDownStyle;

	private string id23_GridResizeCellsReason;

	private string id130_GridMaskEditInfo;

	private string id66_ArrayOfAnyType;

	private string id190_RowStyleCollection;

	private string id153_GridDataBoundIconPaint;

	private string id102_GridBaseStyle;

	private string id116_GridCellValidateValueInfoStore;

	private string id100_GridBaseStyleConverter;

	private string id207_RowIndex;

	private string id261_TextRectangle;

	private string id221_PrintHorzLines;

	private string id97_GridPaintTriangle;

	private string id67_anyType;

	private string id189_ColumnStyleCollection;

	private string id192_BanneredRanges;

	private string id42_GridControllerOptions;

	private string id218_CenterHorizontal;

	private string id103_ArrayOfGridBaseStyle;

	private string id225_BlackWhite;

	private string id35_GridShowCurrentCellBorder;

	private string id145_GridRowColEntry;

	private string id199_RangeType;

	private string id30_GridFloatCellsMode;

	private string id147_GridSyncProperties;

	private string id60_GridCoveredCellPool;

	private string id162_Item;

	private string id120_GridCurrencyEditInfo;

	private string id242_Disposable;

	private string id210_Buttons3D;

	private string id10_GridFontState;

	private string id236_SyncfusionEventArgs;

	private string id52_GridCellValueTypeConverter;

	private string id173_List;

	private string id26_GridDirectionType;

	private string id206_ParsedCol;

	private string id194_CellData;

	private string id112_GridBordersInfoStore;

	private string id195_Row;

	private string id69_GridEndUpdateRequestEventArgs;

	private string id117_GridCellValidateValueInfo;

	private string id78_ArrayOfGridRangeStyle;

	private string id122_GridFontInfoStore;

	internal Hashtable GridFormulaCopyFlagsValues
	{
		get
		{
			if (_GridFormulaCopyFlagsValues == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable.Add("None", 0L);
				hashtable.Add("ClipBoardText", 1L);
				hashtable.Add("ClipBoardFormula", 2L);
				hashtable.Add("ClipBoardReferencesAdjusted", 4L);
				hashtable.Add("InsDelRangeReferencesUpdated", 128L);
				hashtable.Add("NamedRangeReferencesUpdated", 256L);
				hashtable.Add("UpdateReferencesDuringDnD", 512L);
				_GridFormulaCopyFlagsValues = hashtable;
			}
			return _GridFormulaCopyFlagsValues;
		}
	}

	internal Hashtable GridFindReplaceDialogOptionsValues
	{
		get
		{
			if (_GridFindReplaceDialogOptionsValues == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable.Add("None", 0L);
				hashtable.Add("ShowMatchCase", 1L);
				hashtable.Add("ShowMatchWholeCell", 2L);
				hashtable.Add("ShowSearchUp", 4L);
				hashtable.Add("ShowSearchSelection", 8L);
				hashtable.Add("All", 15L);
				_GridFindReplaceDialogOptionsValues = hashtable;
			}
			return _GridFindReplaceDialogOptionsValues;
		}
	}

	internal Hashtable GridRangeInfoTypeValues
	{
		get
		{
			if (_GridRangeInfoTypeValues == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable.Add("Empty", 0L);
				hashtable.Add("Cells", 1L);
				hashtable.Add("Rows", 2L);
				hashtable.Add("Cols", 4L);
				hashtable.Add("Table", 6L);
				_GridRangeInfoTypeValues = hashtable;
			}
			return _GridRangeInfoTypeValues;
		}
	}

	internal Hashtable GridBorderSideValues
	{
		get
		{
			if (_GridBorderSideValues == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable.Add("Left", 1L);
				hashtable.Add("Top", 2L);
				hashtable.Add("Right", 4L);
				hashtable.Add("Bottom", 8L);
				hashtable.Add("All", 15L);
				_GridBorderSideValues = hashtable;
			}
			return _GridBorderSideValues;
		}
	}

	internal Hashtable GridDataObjectConsumerOptionsValues
	{
		get
		{
			if (_GridDataObjectConsumerOptionsValues == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable.Add("None", 0L);
				hashtable.Add("Styles", 1L);
				hashtable.Add("Text", 2L);
				hashtable.Add("All", 3L);
				_GridDataObjectConsumerOptionsValues = hashtable;
			}
			return _GridDataObjectConsumerOptionsValues;
		}
	}

	internal Hashtable GridControllerOptionsValues
	{
		get
		{
			if (_GridControllerOptionsValues == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable.Add("None", 0L);
				hashtable.Add("ClickCells", 1L);
				hashtable.Add("DragSelectRowOrColumn", 2L);
				hashtable.Add("OleDataSource", 4L);
				hashtable.Add("OleDropTarget", 8L);
				hashtable.Add("SelectCells", 16L);
				hashtable.Add("ExcelLikeSelection", 32L);
				hashtable.Add("ResizeCells", 64L);
				hashtable.Add("DragColumnHeader", 128L);
				hashtable.Add("All", 127L);
				_GridControllerOptionsValues = hashtable;
			}
			return _GridControllerOptionsValues;
		}
	}

	internal Hashtable GridScrollbarModeValues
	{
		get
		{
			if (_GridScrollbarModeValues == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable.Add("DetectIfShared", -1L);
				hashtable.Add("Disabled", 0L);
				hashtable.Add("Enabled", 1L);
				hashtable.Add("Automatic", 2L);
				hashtable.Add("Shared", 4L);
				hashtable.Add("AutoScroll", 8L);
				hashtable.Add("DisableAutoScroll", 16L);
				_GridScrollbarModeValues = hashtable;
			}
			return _GridScrollbarModeValues;
		}
	}

	internal Hashtable GridSetCurrentCellOptionsValues
	{
		get
		{
			if (_GridSetCurrentCellOptionsValues == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable.Add("None", 0L);
				hashtable.Add("NoSelectRange", 1L);
				hashtable.Add("ScrollInView", 2L);
				hashtable.Add("NoSetFocus", 4L);
				hashtable.Add("SetFocus", 8L);
				hashtable.Add("NoSyncCurrentCell", 16L);
				hashtable.Add("ForceRefresh", 32L);
				hashtable.Add("BeginEndUpdate", 64L);
				hashtable.Add("NoActivate", 128L);
				_GridSetCurrentCellOptionsValues = hashtable;
			}
			return _GridSetCurrentCellOptionsValues;
		}
	}

	internal Hashtable GridMergeCellsModeValues
	{
		get
		{
			if (_GridMergeCellsModeValues == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable.Add("None", 0L);
				hashtable.Add("OnDemandCalculation", 1L);
				hashtable.Add("BeforeDisplayCalculation", 2L);
				hashtable.Add("MergeRowsInColumn", 4L);
				hashtable.Add("MergeColumnsInRow", 8L);
				hashtable.Add("SkipHiddencells", 16L);
				_GridMergeCellsModeValues = hashtable;
			}
			return _GridMergeCellsModeValues;
		}
	}

	internal Hashtable GridMergeCellDirectionValues
	{
		get
		{
			if (_GridMergeCellDirectionValues == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable.Add("None", 0L);
				hashtable.Add("ColumnsInRow", 1L);
				hashtable.Add("RowsInColumn", 2L);
				hashtable.Add("Both", 3L);
				_GridMergeCellDirectionValues = hashtable;
			}
			return _GridMergeCellDirectionValues;
		}
	}

	internal Hashtable GridSelectionFlagsValues
	{
		get
		{
			if (_GridSelectionFlagsValues == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable.Add("None", 0L);
				hashtable.Add("Row", 1L);
				hashtable.Add("Column", 2L);
				hashtable.Add("Table", 4L);
				hashtable.Add("Cell", 8L);
				hashtable.Add("Multiple", 16L);
				hashtable.Add("Shift", 32L);
				hashtable.Add("Keyboard", 64L);
				hashtable.Add("AlphaBlend", 128L);
				hashtable.Add("MixRangeType", 256L);
				hashtable.Add("Any", 255L);
				_GridSelectionFlagsValues = hashtable;
			}
			return _GridSelectionFlagsValues;
		}
	}

	internal Hashtable GridResizeCellsBehaviorValues
	{
		get
		{
			if (_GridResizeCellsBehaviorValues == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable.Add("None", 0L);
				hashtable.Add("ResizeAll", 1L);
				hashtable.Add("ResizeSingle", 2L);
				hashtable.Add("InsideGrid", 4L);
				hashtable.Add("IgnoreHeaders", 8L);
				hashtable.Add("OutlineHeaders", 16L);
				hashtable.Add("OutlineBounds", 32L);
				hashtable.Add("AllowDragOutside", 64L);
				_GridResizeCellsBehaviorValues = hashtable;
			}
			return _GridResizeCellsBehaviorValues;
		}
	}

	internal Hashtable GridRangeOptionsValues
	{
		get
		{
			if (_GridRangeOptionsValues == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable.Add("None", 0L);
				hashtable.Add("MergeCoveredCells", 1L);
				hashtable.Add("MergeMergedCells", 2L);
				hashtable.Add("MergeFloatedCells", 4L);
				hashtable.Add("MergeBanneredCells", 8L);
				hashtable.Add("MergeAllSpannedCells", 15L);
				hashtable.Add("CalculateNonClientArea", 16L);
				_GridRangeOptionsValues = hashtable;
			}
			return _GridRangeOptionsValues;
		}
	}

	internal Hashtable GridResizeToFitOptionsValues
	{
		get
		{
			if (_GridResizeToFitOptionsValues == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable.Add("None", 0L);
				hashtable.Add("ResizeCoveredCells", 1L);
				hashtable.Add("NoShrinkSize", 2L);
				hashtable.Add("IncludeHeaders", 4L);
				hashtable.Add("IncludeCellsWithinCoveredRange", 8L);
				_GridResizeToFitOptionsValues = hashtable;
			}
			return _GridResizeToFitOptionsValues;
		}
	}

	internal Hashtable GridWrapCellBehaviorValues
	{
		get
		{
			if (_GridWrapCellBehaviorValues == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable.Add("None", 0L);
				hashtable.Add("WrapRow", 1L);
				hashtable.Add("WrapGrid", 2L);
				hashtable.Add("NextControlInForm", 4L);
				_GridWrapCellBehaviorValues = hashtable;
			}
			return _GridWrapCellBehaviorValues;
		}
	}

	public object Read151_GridWindowsAssembly()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id1_GridWindowsAssembly || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read2_GridWindowsAssembly(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridWindowsAssembly");
		}
		return result;
	}

	public object Read152_GridBaseCellModelFactory()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id3_GridBaseCellModelFactory || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read3_GridBaseCellModelFactory(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridBaseCellModelFactory");
		}
		return result;
	}

	public object Read153_GridCellLayout()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id4_GridCellLayout || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read7_GridCellLayout(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridCellLayout");
		}
		return result;
	}

	public object Read154_GridImageUtil()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id5_GridImageUtil || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read9_GridImageUtil(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridImageUtil");
		}
		return result;
	}

	public object Read155_GridImageSizeMode()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id6_GridImageSizeMode || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read10_GridImageSizeMode(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridImageSizeMode");
		}
		return result;
	}

	public object Read156_GridPrintInfo()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id7_GridPrintInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read12_GridPrintInfo(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridPrintInfo");
		}
		return result;
	}

	public object Read157_GridCellSizeKind()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id8_GridCellSizeKind || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read13_GridCellSizeKind(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridCellSizeKind");
		}
		return result;
	}

	public object Read158_GridFactoryProvider()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id9_GridFactoryProvider || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read14_GridFactoryProvider(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridFactoryProvider");
		}
		return result;
	}

	public object Read159_GridFontState()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id10_GridFontState || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read15_GridFontState(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridFontState");
		}
		return result;
	}

	public object Read160_GridCellPos()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id11_GridCellPos || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read16_GridCellPos(checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridCellPos");
		}
		return result;
	}

	public object Read161_GridConstants()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id12_GridConstants || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read17_GridConstants(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridConstants");
		}
		return result;
	}

	public object Read162_GridScrollCurrentCellReason()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id13_GridScrollCurrentCellReason || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read18_GridScrollCurrentCellReason(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridScrollCurrentCellReason");
		}
		return result;
	}

	public object Read163_GridDropDownStyle()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id14_GridDropDownStyle || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read19_GridDropDownStyle(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridDropDownStyle");
		}
		return result;
	}

	public object Read164_GridQueryFloatCell()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id15_GridQueryFloatCell || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read20_GridQueryFloatCell(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridQueryFloatCell");
		}
		return result;
	}

	public object Read165_GridWrapCellBehavior()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id16_GridWrapCellBehavior || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read21_GridWrapCellBehavior(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridWrapCellBehavior");
		}
		return result;
	}

	public object Read166_GridRefreshCurrentCellBehavior()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id17_GridRefreshCurrentCellBehavior || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read22_GridRefreshCurrentCellBehavior(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridRefreshCurrentCellBehavior");
		}
		return result;
	}

	public object Read167_GridResizeToFitOptions()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id18_GridResizeToFitOptions || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read23_GridResizeToFitOptions(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridResizeToFitOptions");
		}
		return result;
	}

	public object Read168_GridQueryBounds()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id19_GridQueryBounds || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read24_GridQueryBounds(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridQueryBounds");
		}
		return result;
	}

	public object Read169_GridCellBaseTextInfo()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id20_GridCellBaseTextInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read25_GridCellBaseTextInfo(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridCellBaseTextInfo");
		}
		return result;
	}

	public object Read170_GridSelectionReason()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id21_GridSelectionReason || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read26_GridSelectionReason(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridSelectionReason");
		}
		return result;
	}

	public object Read171_GridDragSelectionReason()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id22_GridDragSelectionReason || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read27_GridDragSelectionReason(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridDragSelectionReason");
		}
		return result;
	}

	public object Read172_GridResizeCellsReason()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id23_GridResizeCellsReason || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read28_GridResizeCellsReason(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridResizeCellsReason");
		}
		return result;
	}

	public object Read173_GridRangeOptions()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id24_GridRangeOptions || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read29_GridRangeOptions(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridRangeOptions");
		}
		return result;
	}

	public object Read174_GridBackgroundImageMode()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id25_GridBackgroundImageMode || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read30_GridBackgroundImageMode(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridBackgroundImageMode");
		}
		return result;
	}

	public object Read175_GridDirectionType()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id26_GridDirectionType || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read31_GridDirectionType(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridDirectionType");
		}
		return result;
	}

	public object Read176_GridResizeCellsBehavior()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id27_GridResizeCellsBehavior || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read32_GridResizeCellsBehavior(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridResizeCellsBehavior");
		}
		return result;
	}

	public object Read177_GridHitTestContext()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id28_GridHitTestContext || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read33_GridHitTestContext(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridHitTestContext");
		}
		return result;
	}

	public object Read178_GridSelectionFlags()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id29_GridSelectionFlags || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read34_GridSelectionFlags(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridSelectionFlags");
		}
		return result;
	}

	public object Read179_GridFloatCellsMode()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id30_GridFloatCellsMode || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read35_GridFloatCellsMode(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridFloatCellsMode");
		}
		return result;
	}

	public object Read180_GridMergeCellDirection()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id31_GridMergeCellDirection || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read36_GridMergeCellDirection(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridMergeCellDirection");
		}
		return result;
	}

	public object Read181_GridMergeCellsMode()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id32_GridMergeCellsMode || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read37_GridMergeCellsMode(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridMergeCellsMode");
		}
		return result;
	}

	public object Read182_GridCellActivateAction()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id33_GridCellActivateAction || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read38_GridCellActivateAction(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridCellActivateAction");
		}
		return result;
	}

	public object Read183_GridDrawOrder()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id34_GridDrawOrder || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read39_GridDrawOrder(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridDrawOrder");
		}
		return result;
	}

	public object Read184_GridShowCurrentCellBorder()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id35_GridShowCurrentCellBorder || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read40_GridShowCurrentCellBorder(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridShowCurrentCellBorder");
		}
		return result;
	}

	public object Read185_GridSetCurrentCellOptions()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id36_GridSetCurrentCellOptions || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read41_GridSetCurrentCellOptions(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridSetCurrentCellOptions");
		}
		return result;
	}

	public object Read186_GridScrollbarMode()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id37_GridScrollbarMode || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read42_GridScrollbarMode(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridScrollbarMode");
		}
		return result;
	}

	public object Read187_GridCountRecordsBehavior()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id38_GridCountRecordsBehavior || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read11_GridCountRecordsBehavior(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridCountRecordsBehavior");
		}
		return result;
	}

	public object Read188_GridDragDropFlags()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id39_GridDragDropFlags || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read43_GridDragDropFlags(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridDragDropFlags");
		}
		return result;
	}

	public object Read189_GridFindTextOptions()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id40_GridFindTextOptions || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read44_GridFindTextOptions(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridFindTextOptions");
		}
		return result;
	}

	public object Read190_GridCommandMode()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id41_GridCommandMode || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read45_GridCommandMode(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridCommandMode");
		}
		return result;
	}

	public object Read191_GridControllerOptions()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id42_GridControllerOptions || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read46_GridControllerOptions(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridControllerOptions");
		}
		return result;
	}

	public object Read192_GridDataObjectConsumerOptions()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id43_GridDataObjectConsumerOptions || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read47_GridDataObjectConsumerOptions(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridDataObjectConsumerOptions");
		}
		return result;
	}

	public object Read193_GridCellTypeName()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id44_GridCellTypeName || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read48_GridCellTypeName(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridCellTypeName");
		}
		return result;
	}

	public object Read194_GridUtil()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id45_GridUtil || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read49_GridUtil(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridUtil");
		}
		return result;
	}

	public object Read195_GridBanneredCellPool()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id46_GridBanneredCellPool || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read50_GridBanneredCellPool(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridBanneredCellPool");
		}
		return result;
	}

	public object Read196_GridCellInfo()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id47_GridCellInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read51_GridCellInfo(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridCellInfo");
		}
		return result;
	}

	public object Read197_ArrayOfGridCellInfo()
	{
		object obj = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id48_ArrayOfGridCellInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			if (!ReadNull())
			{
				if (obj == null)
				{
					obj = new GridCellInfoCollection();
				}
				GridCellInfoCollection gridCellInfoCollection = (GridCellInfoCollection)obj;
				if (base.Reader.IsEmptyElement)
				{
					base.Reader.Skip();
				}
				else
				{
					base.Reader.ReadStartElement();
					base.Reader.MoveToContent();
					int whileIterations = 0;
					int readerCount = base.ReaderCount;
					while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
					{
						if (base.Reader.NodeType == XmlNodeType.Element)
						{
							if ((object)base.Reader.LocalName == id47_GridCellInfo && (object)base.Reader.NamespaceURI == id2_Item)
							{
								if (gridCellInfoCollection == null)
								{
									base.Reader.Skip();
								}
								else
								{
									gridCellInfoCollection.Add(Read51_GridCellInfo(isNullable: true, checkType: true));
								}
							}
							else
							{
								UnknownNode(null, ":GridCellInfo");
							}
						}
						else
						{
							UnknownNode(null, ":GridCellInfo");
						}
						base.Reader.MoveToContent();
						CheckReaderCount(ref whileIterations, ref readerCount);
					}
					ReadEndElement();
				}
			}
			else
			{
				if (obj == null)
				{
					obj = new GridCellInfoCollection();
				}
				_ = (GridCellInfoCollection)obj;
			}
		}
		else
		{
			UnknownNode(null, ":ArrayOfGridCellInfo");
		}
		return obj;
	}

	public object Read198_GridCellInfoTypeConverter()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id49_GridCellInfoTypeConverter || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read54_GridCellInfoTypeConverter(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridCellInfoTypeConverter");
		}
		return result;
	}

	public object Read199_GridModelBound()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id50_GridModelBound || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read56_GridModelBound(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridModelBound");
		}
		return result;
	}

	public object Read200_GridCellValueConvert()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id51_GridCellValueConvert || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read58_GridCellValueConvert(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridCellValueConvert");
		}
		return result;
	}

	public object Read201_GridCellValueTypeConverter()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id52_GridCellValueTypeConverter || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read59_GridCellValueTypeConverter(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridCellValueTypeConverter");
		}
		return result;
	}

	public object Read202_ArrayOfGridColHidden()
	{
		object obj = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id53_ArrayOfGridColHidden || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			if (!ReadNull())
			{
				if (obj == null)
				{
					obj = (GridColHiddenCollection)Activator.CreateInstance(typeof(GridColHiddenCollection), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
				}
				GridColHiddenCollection gridColHiddenCollection = (GridColHiddenCollection)obj;
				if (base.Reader.IsEmptyElement)
				{
					base.Reader.Skip();
				}
				else
				{
					base.Reader.ReadStartElement();
					base.Reader.MoveToContent();
					int whileIterations = 0;
					int readerCount = base.ReaderCount;
					while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
					{
						if (base.Reader.NodeType == XmlNodeType.Element)
						{
							if ((object)base.Reader.LocalName == id54_GridColHidden && (object)base.Reader.NamespaceURI == id2_Item)
							{
								if (gridColHiddenCollection == null)
								{
									base.Reader.Skip();
								}
								else
								{
									gridColHiddenCollection.Add(Read60_GridColHidden(isNullable: true, checkType: true));
								}
							}
							else
							{
								UnknownNode(null, ":GridColHidden");
							}
						}
						else
						{
							UnknownNode(null, ":GridColHidden");
						}
						base.Reader.MoveToContent();
						CheckReaderCount(ref whileIterations, ref readerCount);
					}
					ReadEndElement();
				}
			}
			else
			{
				if (obj == null)
				{
					obj = (GridColHiddenCollection)Activator.CreateInstance(typeof(GridColHiddenCollection), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
				}
				_ = (GridColHiddenCollection)obj;
			}
		}
		else
		{
			UnknownNode(null, ":ArrayOfGridColHidden");
		}
		return obj;
	}

	public object Read203_GridColHidden()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id54_GridColHidden || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read60_GridColHidden(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridColHidden");
		}
		return result;
	}

	public object Read204_GridColHiddenTypeConverter()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id55_GridColHiddenTypeConverter || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read61_GridColHiddenTypeConverter(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridColHiddenTypeConverter");
		}
		return result;
	}

	public object Read205_ArrayOfGridColWidth()
	{
		object obj = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id56_ArrayOfGridColWidth || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			if (!ReadNull())
			{
				if (obj == null)
				{
					obj = (GridColWidthCollection)Activator.CreateInstance(typeof(GridColWidthCollection), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
				}
				GridColWidthCollection gridColWidthCollection = (GridColWidthCollection)obj;
				if (base.Reader.IsEmptyElement)
				{
					base.Reader.Skip();
				}
				else
				{
					base.Reader.ReadStartElement();
					base.Reader.MoveToContent();
					int whileIterations = 0;
					int readerCount = base.ReaderCount;
					while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
					{
						if (base.Reader.NodeType == XmlNodeType.Element)
						{
							if ((object)base.Reader.LocalName == id57_GridColWidth && (object)base.Reader.NamespaceURI == id2_Item)
							{
								if (gridColWidthCollection == null)
								{
									base.Reader.Skip();
								}
								else
								{
									gridColWidthCollection.Add(Read62_GridColWidth(isNullable: true, checkType: true));
								}
							}
							else
							{
								UnknownNode(null, ":GridColWidth");
							}
						}
						else
						{
							UnknownNode(null, ":GridColWidth");
						}
						base.Reader.MoveToContent();
						CheckReaderCount(ref whileIterations, ref readerCount);
					}
					ReadEndElement();
				}
			}
			else
			{
				if (obj == null)
				{
					obj = (GridColWidthCollection)Activator.CreateInstance(typeof(GridColWidthCollection), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
				}
				_ = (GridColWidthCollection)obj;
			}
		}
		else
		{
			UnknownNode(null, ":ArrayOfGridColWidth");
		}
		return obj;
	}

	public object Read206_GridColWidth()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id57_GridColWidth || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read62_GridColWidth(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridColWidth");
		}
		return result;
	}

	public object Read207_GridColWidthTypeConverter()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id58_GridColWidthTypeConverter || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read63_GridColWidthTypeConverter(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridColWidthTypeConverter");
		}
		return result;
	}

	public object Read208_GridModelCommand()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id59_GridModelCommand || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read65_GridModelCommand(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridModelCommand");
		}
		return result;
	}

	public object Read209_GridCoveredCellPool()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id60_GridCoveredCellPool || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read66_GridCoveredCellPool(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridCoveredCellPool");
		}
		return result;
	}

	public object Read210_GridData()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id61_GridData || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read67_GridData(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridData");
		}
		return result;
	}

	public object Read211_GridDataTypeConverter()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id62_GridDataTypeConverter || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read68_GridDataTypeConverter(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridDataTypeConverter");
		}
		return result;
	}

	public object Read212_ArrayOfGridStyleInfoStore()
	{
		object obj = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id63_ArrayOfGridStyleInfoStore || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			if (!ReadNull())
			{
				if (obj == null)
				{
					obj = new GridCellCollection();
				}
				GridCellCollection gridCellCollection = (GridCellCollection)obj;
				if (base.Reader.IsEmptyElement)
				{
					base.Reader.Skip();
				}
				else
				{
					base.Reader.ReadStartElement();
					base.Reader.MoveToContent();
					int whileIterations = 0;
					int readerCount = base.ReaderCount;
					while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
					{
						if (base.Reader.NodeType == XmlNodeType.Element)
						{
							if ((object)base.Reader.LocalName == id64_GridStyleInfoStore && (object)base.Reader.NamespaceURI == id2_Item)
							{
								gridCellCollection.Add((GridStyleInfoStore)ReadSerializable(new GridStyleInfoStore()));
							}
							else
							{
								UnknownNode(null, ":GridStyleInfoStore");
							}
						}
						else
						{
							UnknownNode(null, ":GridStyleInfoStore");
						}
						base.Reader.MoveToContent();
						CheckReaderCount(ref whileIterations, ref readerCount);
					}
					ReadEndElement();
				}
			}
			else
			{
				if (obj == null)
				{
					obj = new GridCellCollection();
				}
				_ = (GridCellCollection)obj;
			}
		}
		else
		{
			UnknownNode(null, ":ArrayOfGridStyleInfoStore");
		}
		return obj;
	}

	public object Read213_Item()
	{
		object obj = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id65_Item || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			if (!ReadNull())
			{
				if (obj == null)
				{
					obj = new GridRowCollection();
				}
				GridRowCollection gridRowCollection = (GridRowCollection)obj;
				if (base.Reader.IsEmptyElement)
				{
					base.Reader.Skip();
				}
				else
				{
					base.Reader.ReadStartElement();
					base.Reader.MoveToContent();
					int whileIterations = 0;
					int readerCount = base.ReaderCount;
					while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
					{
						if (base.Reader.NodeType == XmlNodeType.Element)
						{
							if ((object)base.Reader.LocalName == id63_ArrayOfGridStyleInfoStore && (object)base.Reader.NamespaceURI == id2_Item)
							{
								if (!ReadNull())
								{
									GridCellCollection gridCellCollection = new GridCellCollection();
									gridRowCollection.Add(gridCellCollection);
									if (base.Reader.IsEmptyElement)
									{
										base.Reader.Skip();
									}
									else
									{
										base.Reader.ReadStartElement();
										base.Reader.MoveToContent();
										int whileIterations2 = 0;
										int readerCount2 = base.ReaderCount;
										while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
										{
											if (base.Reader.NodeType == XmlNodeType.Element)
											{
												if ((object)base.Reader.LocalName == id64_GridStyleInfoStore && (object)base.Reader.NamespaceURI == id2_Item)
												{
													gridCellCollection.Add((GridStyleInfoStore)ReadSerializable(new GridStyleInfoStore()));
												}
												else
												{
													UnknownNode(null, ":GridStyleInfoStore");
												}
											}
											else
											{
												UnknownNode(null, ":GridStyleInfoStore");
											}
											base.Reader.MoveToContent();
											CheckReaderCount(ref whileIterations2, ref readerCount2);
										}
										ReadEndElement();
									}
								}
								else
								{
									GridCellCollection value = new GridCellCollection();
									gridRowCollection.Add(value);
								}
							}
							else
							{
								UnknownNode(null, ":ArrayOfGridStyleInfoStore");
							}
						}
						else
						{
							UnknownNode(null, ":ArrayOfGridStyleInfoStore");
						}
						base.Reader.MoveToContent();
						CheckReaderCount(ref whileIterations, ref readerCount);
					}
					ReadEndElement();
				}
			}
			else
			{
				if (obj == null)
				{
					obj = new GridRowCollection();
				}
				_ = (GridRowCollection)obj;
			}
		}
		else
		{
			UnknownNode(null, ":ArrayOfArrayOfGridStyleInfoStore");
		}
		return obj;
	}

	public object Read214_ArrayOfAnyType()
	{
		object obj = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id66_ArrayOfAnyType || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			if (!ReadNull())
			{
				if (obj == null)
				{
					throw CreateReadOnlyCollectionException("global::Syncfusion.Windows.Forms.Grid.GridPropertyStandardValuesList");
				}
				GridPropertyStandardValuesList gridPropertyStandardValuesList = (GridPropertyStandardValuesList)obj;
				if (base.Reader.IsEmptyElement)
				{
					base.Reader.Skip();
				}
				else
				{
					base.Reader.ReadStartElement();
					base.Reader.MoveToContent();
					int whileIterations = 0;
					int readerCount = base.ReaderCount;
					while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
					{
						if (base.Reader.NodeType == XmlNodeType.Element)
						{
							if ((object)base.Reader.LocalName == id67_anyType && (object)base.Reader.NamespaceURI == id2_Item)
							{
								if (gridPropertyStandardValuesList == null)
								{
									base.Reader.Skip();
								}
								else
								{
									gridPropertyStandardValuesList.Add(Read1_Object(isNullable: true, checkType: true));
								}
							}
							else
							{
								UnknownNode(null, ":anyType");
							}
						}
						else
						{
							UnknownNode(null, ":anyType");
						}
						base.Reader.MoveToContent();
						CheckReaderCount(ref whileIterations, ref readerCount);
					}
					ReadEndElement();
				}
			}
			else
			{
				if (obj == null)
				{
					throw CreateReadOnlyCollectionException("global::Syncfusion.Windows.Forms.Grid.GridPropertyStandardValuesList");
				}
				_ = (GridPropertyStandardValuesList)obj;
			}
		}
		else
		{
			UnknownNode(null, ":ArrayOfAnyType");
		}
		return obj;
	}

	public object Read215_GridRowColCountEventArgs()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id68_GridRowColCountEventArgs || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read72_GridRowColCountEventArgs(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridRowColCountEventArgs");
		}
		return result;
	}

	public object Read216_GridEndUpdateRequestEventArgs()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id69_GridEndUpdateRequestEventArgs || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read73_GridEndUpdateRequestEventArgs(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridEndUpdateRequestEventArgs");
		}
		return result;
	}

	public object Read217_Item()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id70_Item || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read74_Item(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridRowColHideDictionaryTypeConverter");
		}
		return result;
	}

	public object Read218_GridModelHideRowColsIndexer()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id71_GridModelHideRowColsIndexer || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read75_GridModelHideRowColsIndexer(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridModelHideRowColsIndexer");
		}
		return result;
	}

	public object Read219_Item()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id72_Item || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read76_Item(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridClickedOnDisabledCellBehavior");
		}
		return result;
	}

	public object Read220_GridModelRowColOperations()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id73_GridModelRowColOperations || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read77_GridModelRowColOperations(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridModelRowColOperations");
		}
		return result;
	}

	public object Read221_Item()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id74_Item || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read78_Item(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridRowColSizeDictionaryTypeConverter");
		}
		return result;
	}

	public object Read222_GridNamespaceGroupItem()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id75_GridNamespaceGroupItem || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read79_GridNamespaceGroupItem(checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridNamespaceGroupItem");
		}
		return result;
	}

	public object Read223_ArrayOfGridNamespaceGroupItem()
	{
		object obj = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id76_ArrayOfGridNamespaceGroupItem || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			if (!ReadNull())
			{
				if (obj == null)
				{
					obj = new GridNamespaceGroupItemCollection();
				}
				GridNamespaceGroupItemCollection gridNamespaceGroupItemCollection = (GridNamespaceGroupItemCollection)obj;
				if (base.Reader.IsEmptyElement)
				{
					base.Reader.Skip();
				}
				else
				{
					base.Reader.ReadStartElement();
					base.Reader.MoveToContent();
					int whileIterations = 0;
					int readerCount = base.ReaderCount;
					while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
					{
						if (base.Reader.NodeType == XmlNodeType.Element)
						{
							if ((object)base.Reader.LocalName == id75_GridNamespaceGroupItem && (object)base.Reader.NamespaceURI == id2_Item)
							{
								if (gridNamespaceGroupItemCollection == null)
								{
									base.Reader.Skip();
								}
								else
								{
									gridNamespaceGroupItemCollection.Add(Read79_GridNamespaceGroupItem(checkType: true));
								}
							}
							else
							{
								UnknownNode(null, ":GridNamespaceGroupItem");
							}
						}
						else
						{
							UnknownNode(null, ":GridNamespaceGroupItem");
						}
						base.Reader.MoveToContent();
						CheckReaderCount(ref whileIterations, ref readerCount);
					}
					ReadEndElement();
				}
			}
			else
			{
				if (obj == null)
				{
					obj = new GridNamespaceGroupItemCollection();
				}
				_ = (GridNamespaceGroupItemCollection)obj;
			}
		}
		else
		{
			UnknownNode(null, ":ArrayOfGridNamespaceGroupItem");
		}
		return obj;
	}

	public object Read224_GridProperties()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id77_GridProperties || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read81_GridProperties(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridProperties");
		}
		return result;
	}

	public object Read225_ArrayOfGridRangeStyle()
	{
		object obj = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id78_ArrayOfGridRangeStyle || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			if (!ReadNull())
			{
				if (obj == null)
				{
					obj = (GridRangeStyleCollection)Activator.CreateInstance(typeof(GridRangeStyleCollection), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
				}
				GridRangeStyleCollection gridRangeStyleCollection = (GridRangeStyleCollection)obj;
				if (base.Reader.IsEmptyElement)
				{
					base.Reader.Skip();
				}
				else
				{
					base.Reader.ReadStartElement();
					base.Reader.MoveToContent();
					int whileIterations = 0;
					int readerCount = base.ReaderCount;
					while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
					{
						if (base.Reader.NodeType == XmlNodeType.Element)
						{
							if ((object)base.Reader.LocalName == id79_GridRangeStyle && (object)base.Reader.NamespaceURI == id2_Item)
							{
								if (gridRangeStyleCollection == null)
								{
									base.Reader.Skip();
								}
								else
								{
									gridRangeStyleCollection.Add(Read82_GridRangeStyle(isNullable: true, checkType: true));
								}
							}
							else
							{
								UnknownNode(null, ":GridRangeStyle");
							}
						}
						else
						{
							UnknownNode(null, ":GridRangeStyle");
						}
						base.Reader.MoveToContent();
						CheckReaderCount(ref whileIterations, ref readerCount);
					}
					ReadEndElement();
				}
			}
			else
			{
				if (obj == null)
				{
					obj = (GridRangeStyleCollection)Activator.CreateInstance(typeof(GridRangeStyleCollection), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
				}
				_ = (GridRangeStyleCollection)obj;
			}
		}
		else
		{
			UnknownNode(null, ":ArrayOfGridRangeStyle");
		}
		return obj;
	}

	public object Read226_GridRangeStyle()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id79_GridRangeStyle || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read82_GridRangeStyle(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridRangeStyle");
		}
		return result;
	}

	public object Read227_GridRangeStyleTypeConverter()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id80_GridRangeStyleTypeConverter || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read83_GridRangeStyleTypeConverter(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridRangeStyleTypeConverter");
		}
		return result;
	}

	public object Read228_ArrayOfGridRowHeight()
	{
		object obj = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id81_ArrayOfGridRowHeight || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			if (!ReadNull())
			{
				if (obj == null)
				{
					obj = (GridRowHeightCollection)Activator.CreateInstance(typeof(GridRowHeightCollection), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
				}
				GridRowHeightCollection gridRowHeightCollection = (GridRowHeightCollection)obj;
				if (base.Reader.IsEmptyElement)
				{
					base.Reader.Skip();
				}
				else
				{
					base.Reader.ReadStartElement();
					base.Reader.MoveToContent();
					int whileIterations = 0;
					int readerCount = base.ReaderCount;
					while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
					{
						if (base.Reader.NodeType == XmlNodeType.Element)
						{
							if ((object)base.Reader.LocalName == id82_GridRowHeight && (object)base.Reader.NamespaceURI == id2_Item)
							{
								if (gridRowHeightCollection == null)
								{
									base.Reader.Skip();
								}
								else
								{
									gridRowHeightCollection.Add(Read84_GridRowHeight(isNullable: true, checkType: true));
								}
							}
							else
							{
								UnknownNode(null, ":GridRowHeight");
							}
						}
						else
						{
							UnknownNode(null, ":GridRowHeight");
						}
						base.Reader.MoveToContent();
						CheckReaderCount(ref whileIterations, ref readerCount);
					}
					ReadEndElement();
				}
			}
			else
			{
				if (obj == null)
				{
					obj = (GridRowHeightCollection)Activator.CreateInstance(typeof(GridRowHeightCollection), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
				}
				_ = (GridRowHeightCollection)obj;
			}
		}
		else
		{
			UnknownNode(null, ":ArrayOfGridRowHeight");
		}
		return obj;
	}

	public object Read229_GridRowHeight()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id82_GridRowHeight || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read84_GridRowHeight(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridRowHeight");
		}
		return result;
	}

	public object Read230_GridRowHeightTypeConverter()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id83_GridRowHeightTypeConverter || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read85_GridRowHeightTypeConverter(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridRowHeightTypeConverter");
		}
		return result;
	}

	public object Read231_ArrayOfGridRowHidden()
	{
		object obj = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id84_ArrayOfGridRowHidden || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			if (!ReadNull())
			{
				if (obj == null)
				{
					obj = (GridRowHiddenCollection)Activator.CreateInstance(typeof(GridRowHiddenCollection), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
				}
				GridRowHiddenCollection gridRowHiddenCollection = (GridRowHiddenCollection)obj;
				if (base.Reader.IsEmptyElement)
				{
					base.Reader.Skip();
				}
				else
				{
					base.Reader.ReadStartElement();
					base.Reader.MoveToContent();
					int whileIterations = 0;
					int readerCount = base.ReaderCount;
					while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
					{
						if (base.Reader.NodeType == XmlNodeType.Element)
						{
							if ((object)base.Reader.LocalName == id85_GridRowHidden && (object)base.Reader.NamespaceURI == id2_Item)
							{
								if (gridRowHiddenCollection == null)
								{
									base.Reader.Skip();
								}
								else
								{
									gridRowHiddenCollection.Add(Read86_GridRowHidden(isNullable: true, checkType: true));
								}
							}
							else
							{
								UnknownNode(null, ":GridRowHidden");
							}
						}
						else
						{
							UnknownNode(null, ":GridRowHidden");
						}
						base.Reader.MoveToContent();
						CheckReaderCount(ref whileIterations, ref readerCount);
					}
					ReadEndElement();
				}
			}
			else
			{
				if (obj == null)
				{
					obj = (GridRowHiddenCollection)Activator.CreateInstance(typeof(GridRowHiddenCollection), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
				}
				_ = (GridRowHiddenCollection)obj;
			}
		}
		else
		{
			UnknownNode(null, ":ArrayOfGridRowHidden");
		}
		return obj;
	}

	public object Read232_GridRowHidden()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id85_GridRowHidden || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read86_GridRowHidden(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridRowHidden");
		}
		return result;
	}

	public object Read233_GridRowHiddenTypeConverter()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id86_GridRowHiddenTypeConverter || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read87_GridRowHiddenTypeConverter(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridRowHiddenTypeConverter");
		}
		return result;
	}

	public object Read234_GridMouseController()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id87_GridMouseController || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read89_GridMouseController(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridMouseController");
		}
		return result;
	}

	public object Read235_GridRangeInfo()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id88_GridRangeInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read90_GridRangeInfo(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridRangeInfo");
		}
		return result;
	}

	public object Read236_GridRangeInfoConverter()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id89_GridRangeInfoConverter || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read91_GridRangeInfoConverter(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridRangeInfoConverter");
		}
		return result;
	}

	public object Read237_GridRangeInfoCodeDomSerializer()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id90_GridRangeInfoCodeDomSerializer || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read94_GridRangeInfoCodeDomSerializer(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridRangeInfoCodeDomSerializer");
		}
		return result;
	}

	public object Read238_ArrayOfGridRangeInfo()
	{
		object obj = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id91_ArrayOfGridRangeInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			if (!ReadNull())
			{
				if (obj == null)
				{
					obj = new GridRangeInfoList();
				}
				GridRangeInfoList gridRangeInfoList = (GridRangeInfoList)obj;
				if (base.Reader.IsEmptyElement)
				{
					base.Reader.Skip();
				}
				else
				{
					base.Reader.ReadStartElement();
					base.Reader.MoveToContent();
					int whileIterations = 0;
					int readerCount = base.ReaderCount;
					while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
					{
						if (base.Reader.NodeType == XmlNodeType.Element)
						{
							if ((object)base.Reader.LocalName == id88_GridRangeInfo && (object)base.Reader.NamespaceURI == id2_Item)
							{
								if (gridRangeInfoList == null)
								{
									base.Reader.Skip();
								}
								else
								{
									gridRangeInfoList.Add(Read90_GridRangeInfo(isNullable: true, checkType: true));
								}
							}
							else
							{
								UnknownNode(null, ":GridRangeInfo");
							}
						}
						else
						{
							UnknownNode(null, ":GridRangeInfo");
						}
						base.Reader.MoveToContent();
						CheckReaderCount(ref whileIterations, ref readerCount);
					}
					ReadEndElement();
				}
			}
			else
			{
				if (obj == null)
				{
					obj = new GridRangeInfoList();
				}
				_ = (GridRangeInfoList)obj;
			}
		}
		else
		{
			UnknownNode(null, ":ArrayOfGridRangeInfo");
		}
		return obj;
	}

	public object Read239_GridRangeInfoListConverter()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id92_GridRangeInfoListConverter || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read95_GridRangeInfoListConverter(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridRangeInfoListConverter");
		}
		return result;
	}

	public object Read240_GridRangeInfoType()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id93_GridRangeInfoType || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read96_GridRangeInfoType(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridRangeInfoType");
		}
		return result;
	}

	public object Read241_GridNonImmutableRangeInfo()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id94_GridNonImmutableRangeInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read97_GridNonImmutableRangeInfo(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridNonImmutableRangeInfo");
		}
		return result;
	}

	public object Read242_Item()
	{
		object obj = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id95_Item || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			if (!ReadNull())
			{
				if (obj == null)
				{
					obj = new GridNonImmutableRangeInfoCollection();
				}
				GridNonImmutableRangeInfoCollection gridNonImmutableRangeInfoCollection = (GridNonImmutableRangeInfoCollection)obj;
				if (base.Reader.IsEmptyElement)
				{
					base.Reader.Skip();
				}
				else
				{
					base.Reader.ReadStartElement();
					base.Reader.MoveToContent();
					int whileIterations = 0;
					int readerCount = base.ReaderCount;
					while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
					{
						if (base.Reader.NodeType == XmlNodeType.Element)
						{
							if ((object)base.Reader.LocalName == id94_GridNonImmutableRangeInfo && (object)base.Reader.NamespaceURI == id2_Item)
							{
								if (gridNonImmutableRangeInfoCollection == null)
								{
									base.Reader.Skip();
								}
								else
								{
									gridNonImmutableRangeInfoCollection.Add(Read97_GridNonImmutableRangeInfo(isNullable: true, checkType: true));
								}
							}
							else
							{
								UnknownNode(null, ":GridNonImmutableRangeInfo");
							}
						}
						else
						{
							UnknownNode(null, ":GridNonImmutableRangeInfo");
						}
						base.Reader.MoveToContent();
						CheckReaderCount(ref whileIterations, ref readerCount);
					}
					ReadEndElement();
				}
			}
			else
			{
				if (obj == null)
				{
					obj = new GridNonImmutableRangeInfoCollection();
				}
				_ = (GridNonImmutableRangeInfoCollection)obj;
			}
		}
		else
		{
			UnknownNode(null, ":ArrayOfGridNonImmutableRangeInfo");
		}
		return obj;
	}

	public object Read243_GridCursors()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id96_GridCursors || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read98_GridCursors(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridCursors");
		}
		return result;
	}

	public object Read244_GridPaintTriangle()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id97_GridPaintTriangle || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read99_GridPaintTriangle(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridPaintTriangle");
		}
		return result;
	}

	public object Read245_GridSortInfo()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id98_GridSortInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read100_GridSortInfo(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridSortInfo");
		}
		return result;
	}

	public object Read246_GridTriangleDirection()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id99_GridTriangleDirection || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read101_GridTriangleDirection(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridTriangleDirection");
		}
		return result;
	}

	public object Read247_GridBaseStyleConverter()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id100_GridBaseStyleConverter || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read102_GridBaseStyleConverter(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridBaseStyleConverter");
		}
		return result;
	}

	public object Read248_GridBaseStyleNameConverter()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id101_GridBaseStyleNameConverter || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read103_GridBaseStyleNameConverter(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridBaseStyleNameConverter");
		}
		return result;
	}

	public object Read249_GridBaseStyle()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id102_GridBaseStyle || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read104_GridBaseStyle(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridBaseStyle");
		}
		return result;
	}

	public object Read250_ArrayOfGridBaseStyle()
	{
		object obj = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id103_ArrayOfGridBaseStyle || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			if (!ReadNull())
			{
				if (obj == null)
				{
					obj = new GridBaseStylesMap();
				}
				GridBaseStylesMap gridBaseStylesMap = (GridBaseStylesMap)obj;
				if (base.Reader.IsEmptyElement)
				{
					base.Reader.Skip();
				}
				else
				{
					base.Reader.ReadStartElement();
					base.Reader.MoveToContent();
					int whileIterations = 0;
					int readerCount = base.ReaderCount;
					while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
					{
						if (base.Reader.NodeType == XmlNodeType.Element)
						{
							if ((object)base.Reader.LocalName == id102_GridBaseStyle && (object)base.Reader.NamespaceURI == id2_Item)
							{
								if (gridBaseStylesMap == null)
								{
									base.Reader.Skip();
								}
								else
								{
									gridBaseStylesMap.Add(Read104_GridBaseStyle(isNullable: true, checkType: true));
								}
							}
							else
							{
								UnknownNode(null, ":GridBaseStyle");
							}
						}
						else
						{
							UnknownNode(null, ":GridBaseStyle");
						}
						base.Reader.MoveToContent();
						CheckReaderCount(ref whileIterations, ref readerCount);
					}
					ReadEndElement();
				}
			}
			else
			{
				if (obj == null)
				{
					obj = new GridBaseStylesMap();
				}
				_ = (GridBaseStylesMap)obj;
			}
		}
		else
		{
			UnknownNode(null, ":ArrayOfGridBaseStyle");
		}
		return obj;
	}

	public object Read251_GridStyleInfo()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id104_GridStyleInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridStyleInfo)ReadSerializable(new GridStyleInfo());
		}
		else
		{
			UnknownNode(null, ":GridStyleInfo");
		}
		return result;
	}

	public object Read252_ArrayOfGridBaseStyle()
	{
		object obj = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id103_ArrayOfGridBaseStyle || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			if (!ReadNull())
			{
				if (obj == null)
				{
					obj = new GridBaseStylesMap();
				}
				GridBaseStylesMap gridBaseStylesMap = (GridBaseStylesMap)obj;
				if (base.Reader.IsEmptyElement)
				{
					base.Reader.Skip();
				}
				else
				{
					base.Reader.ReadStartElement();
					base.Reader.MoveToContent();
					int whileIterations = 0;
					int readerCount = base.ReaderCount;
					while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
					{
						if (base.Reader.NodeType == XmlNodeType.Element)
						{
							if ((object)base.Reader.LocalName == id102_GridBaseStyle && (object)base.Reader.NamespaceURI == id2_Item)
							{
								if (gridBaseStylesMap == null)
								{
									base.Reader.Skip();
								}
								else
								{
									gridBaseStylesMap.Add(Read104_GridBaseStyle(isNullable: true, checkType: true));
								}
							}
							else
							{
								UnknownNode(null, ":GridBaseStyle");
							}
						}
						else
						{
							UnknownNode(null, ":GridBaseStyle");
						}
						base.Reader.MoveToContent();
						CheckReaderCount(ref whileIterations, ref readerCount);
					}
					ReadEndElement();
				}
			}
			else
			{
				if (obj == null)
				{
					obj = new GridBaseStylesMap();
				}
				_ = (GridBaseStylesMap)obj;
			}
		}
		else
		{
			UnknownNode(null, ":ArrayOfGridBaseStyle");
		}
		return obj;
	}

	public object Read253_GridBorderStyle()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id105_GridBorderStyle || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read105_GridBorderStyle(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridBorderStyle");
		}
		return result;
	}

	public object Read254_GridBorderWeight()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id106_GridBorderWeight || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read106_GridBorderWeight(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridBorderWeight");
		}
		return result;
	}

	public object Read255_GridBorder()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id107_GridBorder || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridBorder)ReadSerializable(new GridBorder());
		}
		else
		{
			UnknownNode(null, ":GridBorder");
		}
		return result;
	}

	public object Read256_GridBorderCodeDomSerializer()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id108_GridBorderCodeDomSerializer || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read107_GridBorderCodeDomSerializer(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridBorderCodeDomSerializer");
		}
		return result;
	}

	public object Read257_GridBorderConverter()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id109_GridBorderConverter || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read108_GridBorderConverter(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridBorderConverter");
		}
		return result;
	}

	public object Read258_GridBorderPaint()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id110_GridBorderPaint || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read109_GridBorderPaint(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridBorderPaint");
		}
		return result;
	}

	public object Read259_GridBorderSide()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id111_GridBorderSide || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read110_GridBorderSide(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridBorderSide");
		}
		return result;
	}

	public object Read260_GridBordersInfoStore()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id112_GridBordersInfoStore || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridBordersInfoStore)ReadSerializable(new GridBordersInfoStore());
		}
		else
		{
			UnknownNode(null, ":GridBordersInfoStore");
		}
		return result;
	}

	public object Read261_GridBordersInfo()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id113_GridBordersInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridBordersInfo)ReadSerializable(new GridBordersInfo());
		}
		else
		{
			UnknownNode(null, ":GridBordersInfo");
		}
		return result;
	}

	public object Read262_GridCellAppearance()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id114_GridCellAppearance || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read111_GridCellAppearance(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridCellAppearance");
		}
		return result;
	}

	public object Read263_GridCellTypeNameConverter()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id115_GridCellTypeNameConverter || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read112_GridCellTypeNameConverter(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridCellTypeNameConverter");
		}
		return result;
	}

	public object Read264_GridCellValidateValueInfoStore()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id116_GridCellValidateValueInfoStore || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridCellValidateValueInfoStore)ReadSerializable(new GridCellValidateValueInfoStore());
		}
		else
		{
			UnknownNode(null, ":GridCellValidateValueInfoStore");
		}
		return result;
	}

	public object Read265_GridCellValidateValueInfo()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id117_GridCellValidateValueInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridCellValidateValueInfo)ReadSerializable(new GridCellValidateValueInfo());
		}
		else
		{
			UnknownNode(null, ":GridCellValidateValueInfo");
		}
		return result;
	}

	public object Read266_GridCheckBoxCellInfoStore()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id118_GridCheckBoxCellInfoStore || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridCheckBoxCellInfoStore)ReadSerializable(new GridCheckBoxCellInfoStore());
		}
		else
		{
			UnknownNode(null, ":GridCheckBoxCellInfoStore");
		}
		return result;
	}

	public object Read267_GridCheckBoxCellInfo()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id119_GridCheckBoxCellInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridCheckBoxCellInfo)ReadSerializable(new GridCheckBoxCellInfo());
		}
		else
		{
			UnknownNode(null, ":GridCheckBoxCellInfo");
		}
		return result;
	}

	public object Read268_GridCurrencyEditInfo()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id120_GridCurrencyEditInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridCurrencyEditInfo)ReadSerializable(new GridCurrencyEditInfo());
		}
		else
		{
			UnknownNode(null, ":GridCurrencyEditInfo");
		}
		return result;
	}

	public object Read269_GridCurrencyEditInfoStore()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id121_GridCurrencyEditInfoStore || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridCurrencyEditInfoStore)ReadSerializable(new GridCurrencyEditInfoStore());
		}
		else
		{
			UnknownNode(null, ":GridCurrencyEditInfoStore");
		}
		return result;
	}

	public object Read270_GridFontInfoStore()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id122_GridFontInfoStore || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridFontInfoStore)ReadSerializable(new GridFontInfoStore());
		}
		else
		{
			UnknownNode(null, ":GridFontInfoStore");
		}
		return result;
	}

	public object Read271_GridFontInfo()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id123_GridFontInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridFontInfo)ReadSerializable(new GridFontInfo());
		}
		else
		{
			UnknownNode(null, ":GridFontInfo");
		}
		return result;
	}

	public object Read272_GridFontInfoEditor()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id124_GridFontInfoEditor || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read114_GridFontInfoEditor(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridFontInfoEditor");
		}
		return result;
	}

	public object Read273_GridFormulaTag()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id125_GridFormulaTag || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read115_GridFormulaTag(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridFormulaTag");
		}
		return result;
	}

	public object Read274_GridHorizontalAlignment()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id126_GridHorizontalAlignment || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read116_GridHorizontalAlignment(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridHorizontalAlignment");
		}
		return result;
	}

	public object Read275_GridMarginsInfoStore()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id127_GridMarginsInfoStore || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridMarginsInfoStore)ReadSerializable(new GridMarginsInfoStore());
		}
		else
		{
			UnknownNode(null, ":GridMarginsInfoStore");
		}
		return result;
	}

	public object Read276_GridMarginsInfo()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id128_GridMarginsInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridMarginsInfo)ReadSerializable(new GridMarginsInfo());
		}
		else
		{
			UnknownNode(null, ":GridMarginsInfo");
		}
		return result;
	}

	public object Read277_GridMargins()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id129_GridMargins || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read117_GridMargins(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridMargins");
		}
		return result;
	}

	public object Read278_GridMaskEditInfo()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id130_GridMaskEditInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridMaskEditInfo)ReadSerializable(new GridMaskEditInfo());
		}
		else
		{
			UnknownNode(null, ":GridMaskEditInfo");
		}
		return result;
	}

	public object Read279_GridMaskEditInfoStore()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id131_GridMaskEditInfoStore || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridMaskEditInfoStore)ReadSerializable(new GridMaskEditInfoStore());
		}
		else
		{
			UnknownNode(null, ":GridMaskEditInfoStore");
		}
		return result;
	}

	public object Read280_GridNumericUpDownCellInfoStore()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id132_GridNumericUpDownCellInfoStore || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridNumericUpDownCellInfoStore)ReadSerializable(new GridNumericUpDownCellInfoStore());
		}
		else
		{
			UnknownNode(null, ":GridNumericUpDownCellInfoStore");
		}
		return result;
	}

	public object Read281_GridNumericUpDownCellInfo()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id133_GridNumericUpDownCellInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridNumericUpDownCellInfo)ReadSerializable(new GridNumericUpDownCellInfo());
		}
		else
		{
			UnknownNode(null, ":GridNumericUpDownCellInfo");
		}
		return result;
	}

	public object Read282_GridProgressBarInfoStore()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id134_GridProgressBarInfoStore || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridProgressBarInfoStore)ReadSerializable(new GridProgressBarInfoStore());
		}
		else
		{
			UnknownNode(null, ":GridProgressBarInfoStore");
		}
		return result;
	}

	public object Read283_GridProgressBarInfo()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id135_GridProgressBarInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridProgressBarInfo)ReadSerializable(new GridProgressBarInfo());
		}
		else
		{
			UnknownNode(null, ":GridProgressBarInfo");
		}
		return result;
	}

	public object Read284_GridShowButtons()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id136_GridShowButtons || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read118_GridShowButtons(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridShowButtons");
		}
		return result;
	}

	public object Read285_GridStyleInfoStore()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id64_GridStyleInfoStore || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridStyleInfoStore)ReadSerializable(new GridStyleInfoStore());
		}
		else
		{
			UnknownNode(null, ":GridStyleInfoStore");
		}
		return result;
	}

	public object Read286_GridStyleInfoCustomProperties()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id137_GridStyleInfoCustomProperties || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read119_GridStyleInfoCustomProperties(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridStyleInfoCustomProperties");
		}
		return result;
	}

	public object Read287_GridStyleInfoConverter()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id138_GridStyleInfoConverter || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read121_GridStyleInfoConverter(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridStyleInfoConverter");
		}
		return result;
	}

	public object Read288_GridTextAlign()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id139_GridTextAlign || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read122_GridTextAlign(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridTextAlign");
		}
		return result;
	}

	public object Read289_GridVerticalAlignment()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id140_GridVerticalAlignment || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read123_GridVerticalAlignment(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridVerticalAlignment");
		}
		return result;
	}

	public object Read290_GridDesignerMain()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id141_GridDesignerMain || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read124_GridDesignerMain(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridDesignerMain");
		}
		return result;
	}

	public object Read291_GridCellsMemento()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id142_GridCellsMemento || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read128_GridCellsMemento(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridCellsMemento");
		}
		return result;
	}

	public object Read292_ColumnStyles()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id143_ColumnStyles || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read126_ColumnStyles(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":ColumnStyles");
		}
		return result;
	}

	public object Read293_RowStyles()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id144_RowStyles || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read127_RowStyles(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":RowStyles");
		}
		return result;
	}

	public object Read294_GridRowColEntry()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id145_GridRowColEntry || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read125_GridRowColEntry(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridRowColEntry");
		}
		return result;
	}

	public object Read295_ArrayOfGridRowColEntry()
	{
		object obj = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id146_ArrayOfGridRowColEntry || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			if (!ReadNull())
			{
				if (obj == null)
				{
					obj = new GridRowColEntryCollection();
				}
				GridRowColEntryCollection gridRowColEntryCollection = (GridRowColEntryCollection)obj;
				if (base.Reader.IsEmptyElement)
				{
					base.Reader.Skip();
				}
				else
				{
					base.Reader.ReadStartElement();
					base.Reader.MoveToContent();
					int whileIterations = 0;
					int readerCount = base.ReaderCount;
					while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
					{
						if (base.Reader.NodeType == XmlNodeType.Element)
						{
							if ((object)base.Reader.LocalName == id145_GridRowColEntry && (object)base.Reader.NamespaceURI == id2_Item)
							{
								if (gridRowColEntryCollection == null)
								{
									base.Reader.Skip();
								}
								else
								{
									gridRowColEntryCollection.Add(Read125_GridRowColEntry(isNullable: true, checkType: true));
								}
							}
							else
							{
								UnknownNode(null, ":GridRowColEntry");
							}
						}
						else
						{
							UnknownNode(null, ":GridRowColEntry");
						}
						base.Reader.MoveToContent();
						CheckReaderCount(ref whileIterations, ref readerCount);
					}
					ReadEndElement();
				}
			}
			else
			{
				if (obj == null)
				{
					obj = new GridRowColEntryCollection();
				}
				_ = (GridRowColEntryCollection)obj;
			}
		}
		else
		{
			UnknownNode(null, ":ArrayOfGridRowColEntry");
		}
		return obj;
	}

	public object Read296_GridSyncProperties()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id147_GridSyncProperties || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = (GridSyncProperties)ReadSerializable(new GridSyncProperties());
		}
		else
		{
			UnknownNode(null, ":GridSyncProperties");
		}
		return result;
	}

	public object Read297_GridCellModelFactory()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id148_GridCellModelFactory || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read129_GridCellModelFactory(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridCellModelFactory");
		}
		return result;
	}

	public object Read298_GridRadioButtonInfo()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id149_GridRadioButtonInfo || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read130_GridRadioButtonInfo(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridRadioButtonInfo");
		}
		return result;
	}

	public object Read299_GridSerializeCellsBehavior()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id150_GridSerializeCellsBehavior || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read131_GridSerializeCellsBehavior(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridSerializeCellsBehavior");
		}
		return result;
	}

	public object Read300_GridSortBehavior()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id151_GridSortBehavior || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read132_GridSortBehavior(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridSortBehavior");
		}
		return result;
	}

	public object Read301_GridValidateFailedEventArgs()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id152_GridValidateFailedEventArgs || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read133_GridValidateFailedEventArgs(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridValidateFailedEventArgs");
		}
		return result;
	}

	public object Read302_GridDataBoundIconPaint()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id153_GridDataBoundIconPaint || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read134_GridDataBoundIconPaint(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridDataBoundIconPaint");
		}
		return result;
	}

	public object Read303_Item()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id154_Item || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read135_Item(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridFilterBarTextChangedEventArgs");
		}
		return result;
	}

	public object Read304_GridFilterBar()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id155_GridFilterBar || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read136_GridFilterBar(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridFilterBar");
		}
		return result;
	}

	public object Read305_Item()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id156_Item || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read137_Item(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridCurrentRecordItemChangedBehavior");
		}
		return result;
	}

	public object Read306_GridFindReplaceDialogOptions()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id157_GridFindReplaceDialogOptions || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read138_GridFindReplaceDialogOptions(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridFindReplaceDialogOptions");
		}
		return result;
	}

	public object Read307_LenComparer()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id158_LenComparer || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read139_LenComparer(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":LenComparer");
		}
		return result;
	}

	public object Read308_GridSheetFamilyItem()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id159_GridSheetFamilyItem || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read140_GridSheetFamilyItem(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridSheetFamilyItem");
		}
		return result;
	}

	public object Read309_GridFormulaCopyFlags()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id160_GridFormulaCopyFlags || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read141_GridFormulaCopyFlags(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridFormulaCopyFlags");
		}
		return result;
	}

	public object Read310_GridFormulaParsingEventArgs()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id161_GridFormulaParsingEventArgs || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read142_GridFormulaParsingEventArgs(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridFormulaParsingEventArgs");
		}
		return result;
	}

	public object Read311_Item()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id162_Item || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read144_Item(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridFormulaNamedRangesEditHelper");
		}
		return result;
	}

	public object Read312_ArrayOfNamedRange()
	{
		object obj = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id163_ArrayOfNamedRange || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			if (!ReadNull())
			{
				if (obj == null)
				{
					obj = new GridFormulaNamedRangesEditHelper.NamedRangeList();
				}
				GridFormulaNamedRangesEditHelper.NamedRangeList namedRangeList = (GridFormulaNamedRangesEditHelper.NamedRangeList)obj;
				if (base.Reader.IsEmptyElement)
				{
					base.Reader.Skip();
				}
				else
				{
					base.Reader.ReadStartElement();
					base.Reader.MoveToContent();
					int whileIterations = 0;
					int readerCount = base.ReaderCount;
					while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
					{
						if (base.Reader.NodeType == XmlNodeType.Element)
						{
							if ((object)base.Reader.LocalName == id164_NamedRange && (object)base.Reader.NamespaceURI == id2_Item)
							{
								if (namedRangeList == null)
								{
									base.Reader.Skip();
								}
								else
								{
									namedRangeList.Add(Read143_NamedRange(isNullable: true, checkType: true));
								}
							}
							else
							{
								UnknownNode(null, ":NamedRange");
							}
						}
						else
						{
							UnknownNode(null, ":NamedRange");
						}
						base.Reader.MoveToContent();
						CheckReaderCount(ref whileIterations, ref readerCount);
					}
					ReadEndElement();
				}
			}
			else
			{
				if (obj == null)
				{
					obj = new GridFormulaNamedRangesEditHelper.NamedRangeList();
				}
				_ = (GridFormulaNamedRangesEditHelper.NamedRangeList)obj;
			}
		}
		else
		{
			UnknownNode(null, ":ArrayOfNamedRange");
		}
		return obj;
	}

	public object Read313_NamedRange()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id164_NamedRange || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read143_NamedRange(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":NamedRange");
		}
		return result;
	}

	public object Read314_GridDragColumnHeaderBitmaps()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id165_GridDragColumnHeaderBitmaps || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read145_GridDragColumnHeaderBitmaps(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridDragColumnHeaderBitmaps");
		}
		return result;
	}

	public object Read315_Item()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id166_Item || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read146_Item(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridDragColumnHeaderMouseControllerBase");
		}
		return result;
	}

	public object Read316_GridDragColumnHeaderHelper()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id167_GridDragColumnHeaderHelper || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read147_GridDragColumnHeaderHelper(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridDragColumnHeaderHelper");
		}
		return result;
	}

	public object Read317_Item()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id168_Item || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read148_Item(base.Reader.ReadElementString());
		}
		else
		{
			UnknownNode(null, ":GridQueryDragColumnHeaderReason");
		}
		return result;
	}

	public object Read318_GridQueryAcceptDataOptions()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id169_GridQueryAcceptDataOptions || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read149_GridQueryAcceptDataOptions(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridQueryAcceptDataOptions");
		}
		return result;
	}

	public object Read319_GridGdiPaint()
	{
		object result = null;
		base.Reader.MoveToContent();
		if (base.Reader.NodeType == XmlNodeType.Element)
		{
			if ((object)base.Reader.LocalName != id170_GridGdiPaint || (object)base.Reader.NamespaceURI != id2_Item)
			{
				throw CreateUnknownNodeException();
			}
			result = Read150_GridGdiPaint(isNullable: true, checkType: true);
		}
		else
		{
			UnknownNode(null, ":GridGdiPaint");
		}
		return result;
	}

	private GridGdiPaint Read150_GridGdiPaint(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id170_GridGdiPaint || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridGdiPaint gridGdiPaint;
		try
		{
			gridGdiPaint = (GridGdiPaint)Activator.CreateInstance(typeof(GridGdiPaint), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
		}
		catch (MissingMethodException)
		{
			throw CreateInaccessibleConstructorException("global::Syncfusion.Windows.Forms.Grid.GridGdiPaint");
		}
		catch (SecurityException)
		{
			throw CreateCtorHasSecurityException("global::Syncfusion.Windows.Forms.Grid.GridGdiPaint");
		}
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridGdiPaint);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridGdiPaint;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridGdiPaint, "");
			}
			else
			{
				UnknownNode(gridGdiPaint, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridGdiPaint;
	}

	private GridQueryAcceptDataOptions Read149_GridQueryAcceptDataOptions(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id169_GridQueryAcceptDataOptions || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridQueryAcceptDataOptions gridQueryAcceptDataOptions = new GridQueryAcceptDataOptions();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridQueryAcceptDataOptions);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridQueryAcceptDataOptions;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridQueryAcceptDataOptions, "");
			}
			else
			{
				UnknownNode(gridQueryAcceptDataOptions, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridQueryAcceptDataOptions;
	}

	private GridQueryDragColumnHeaderReason Read148_Item(string s)
	{
		return s switch
		{
			"HitTest" => GridQueryDragColumnHeaderReason.HitTest, 
			"ShowRedArrowIndicator" => GridQueryDragColumnHeaderReason.ShowRedArrowIndicator, 
			"MouseUp" => GridQueryDragColumnHeaderReason.MouseUp, 
			_ => throw CreateUnknownConstantException(s, typeof(GridQueryDragColumnHeaderReason)), 
		};
	}

	private GridDragColumnHeaderHelper Read147_GridDragColumnHeaderHelper(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id167_GridDragColumnHeaderHelper || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridDragColumnHeaderHelper gridDragColumnHeaderHelper = new GridDragColumnHeaderHelper();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridDragColumnHeaderHelper);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridDragColumnHeaderHelper;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridDragColumnHeaderHelper, "");
			}
			else
			{
				UnknownNode(gridDragColumnHeaderHelper, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridDragColumnHeaderHelper;
	}

	private GridDragColumnHeaderMouseControllerBase Read146_Item(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id166_Item || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		throw CreateAbstractTypeException("GridDragColumnHeaderMouseControllerBase", "");
	}

	private GridDragColumnHeaderBitmaps Read145_GridDragColumnHeaderBitmaps(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id165_GridDragColumnHeaderBitmaps || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridDragColumnHeaderBitmaps gridDragColumnHeaderBitmaps = new GridDragColumnHeaderBitmaps();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridDragColumnHeaderBitmaps);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridDragColumnHeaderBitmaps;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridDragColumnHeaderBitmaps, "");
			}
			else
			{
				UnknownNode(gridDragColumnHeaderBitmaps, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridDragColumnHeaderBitmaps;
	}

	private GridFormulaNamedRangesEditHelper.NamedRange Read143_NamedRange(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id164_NamedRange || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridFormulaNamedRangesEditHelper.NamedRange namedRange = new GridFormulaNamedRangesEditHelper.NamedRange();
		bool[] array = new bool[2];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(namedRange);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return namedRange;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id171_Key && (object)base.Reader.NamespaceURI == id2_Item)
				{
					namedRange.Key = base.Reader.ReadElementString();
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id172_Value && (object)base.Reader.NamespaceURI == id2_Item)
				{
					namedRange.Value = base.Reader.ReadElementString();
					array[1] = true;
				}
				else
				{
					UnknownNode(namedRange, ":Key, :Value");
				}
			}
			else
			{
				UnknownNode(namedRange, ":Key, :Value");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return namedRange;
	}

	private GridFormulaNamedRangesEditHelper Read144_Item(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id162_Item || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridFormulaNamedRangesEditHelper gridFormulaNamedRangesEditHelper = new GridFormulaNamedRangesEditHelper();
		if (gridFormulaNamedRangesEditHelper.List == null)
		{
			gridFormulaNamedRangesEditHelper.List = new GridFormulaNamedRangesEditHelper.NamedRangeList();
		}
		_ = gridFormulaNamedRangesEditHelper.List;
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridFormulaNamedRangesEditHelper);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridFormulaNamedRangesEditHelper;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if ((object)base.Reader.LocalName == id173_List && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (!ReadNull())
					{
						if (gridFormulaNamedRangesEditHelper.List == null)
						{
							gridFormulaNamedRangesEditHelper.List = new GridFormulaNamedRangesEditHelper.NamedRangeList();
						}
						GridFormulaNamedRangesEditHelper.NamedRangeList list = gridFormulaNamedRangesEditHelper.List;
						if (base.Reader.IsEmptyElement)
						{
							base.Reader.Skip();
						}
						else
						{
							base.Reader.ReadStartElement();
							base.Reader.MoveToContent();
							int whileIterations2 = 0;
							int readerCount2 = base.ReaderCount;
							while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
							{
								if (base.Reader.NodeType == XmlNodeType.Element)
								{
									if ((object)base.Reader.LocalName == id164_NamedRange && (object)base.Reader.NamespaceURI == id2_Item)
									{
										if (list == null)
										{
											base.Reader.Skip();
										}
										else
										{
											list.Add(Read143_NamedRange(isNullable: true, checkType: true));
										}
									}
									else
									{
										UnknownNode(null, ":NamedRange");
									}
								}
								else
								{
									UnknownNode(null, ":NamedRange");
								}
								base.Reader.MoveToContent();
								CheckReaderCount(ref whileIterations2, ref readerCount2);
							}
							ReadEndElement();
						}
					}
				}
				else
				{
					UnknownNode(gridFormulaNamedRangesEditHelper, ":List");
				}
			}
			else
			{
				UnknownNode(gridFormulaNamedRangesEditHelper, ":List");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridFormulaNamedRangesEditHelper;
	}

	private GridFormulaParsingEventArgs Read142_GridFormulaParsingEventArgs(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id161_GridFormulaParsingEventArgs || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridFormulaParsingEventArgs e = new GridFormulaParsingEventArgs();
		bool[] array = new bool[1];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(e);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return e;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id174_Text && (object)base.Reader.NamespaceURI == id2_Item)
				{
					e.Text = base.Reader.ReadElementString();
					array[0] = true;
				}
				else
				{
					UnknownNode(e, ":Text");
				}
			}
			else
			{
				UnknownNode(e, ":Text");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return e;
	}

	private GridFormulaCopyFlags Read141_GridFormulaCopyFlags(string s)
	{
		return (GridFormulaCopyFlags)XmlSerializationReader.ToEnum(s, GridFormulaCopyFlagsValues, "global::Syncfusion.Windows.Forms.Grid.GridFormulaCopyFlags");
	}

	private GridSheetFamilyItem Read140_GridSheetFamilyItem(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id159_GridSheetFamilyItem || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridSheetFamilyItem gridSheetFamilyItem = new GridSheetFamilyItem();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridSheetFamilyItem);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridSheetFamilyItem;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridSheetFamilyItem, "");
			}
			else
			{
				UnknownNode(gridSheetFamilyItem, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridSheetFamilyItem;
	}

	private GridFormulaEngine.LenComparer Read139_LenComparer(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id158_LenComparer || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridFormulaEngine.LenComparer lenComparer = new GridFormulaEngine.LenComparer();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(lenComparer);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return lenComparer;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(lenComparer, "");
			}
			else
			{
				UnknownNode(lenComparer, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return lenComparer;
	}

	private GridFindReplaceDialogOptions Read138_GridFindReplaceDialogOptions(string s)
	{
		return (GridFindReplaceDialogOptions)XmlSerializationReader.ToEnum(s, GridFindReplaceDialogOptionsValues, "global::Syncfusion.Windows.Forms.Grid.GridFindReplaceDialogOptions");
	}

	private GridCurrentRecordItemChangedBehavior Read137_Item(string s)
	{
		return s switch
		{
			"None" => GridCurrentRecordItemChangedBehavior.None, 
			"ReloadCurrentRecord" => GridCurrentRecordItemChangedBehavior.ReloadCurrentRecord, 
			"KeepCurrentRecord" => GridCurrentRecordItemChangedBehavior.KeepCurrentRecord, 
			"KeepCurrentCellText" => GridCurrentRecordItemChangedBehavior.KeepCurrentCellText, 
			_ => throw CreateUnknownConstantException(s, typeof(GridCurrentRecordItemChangedBehavior)), 
		};
	}

	private GridFilterBar Read136_GridFilterBar(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id155_GridFilterBar || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridFilterBar gridFilterBar = new GridFilterBar();
		bool[] array = new bool[4];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridFilterBar);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridFilterBar;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if ((object)base.Reader.LocalName == id175_GridFilterBarStrings && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (!ReadNull())
					{
						string[] array2 = null;
						int num = 0;
						if (base.Reader.IsEmptyElement)
						{
							base.Reader.Skip();
						}
						else
						{
							base.Reader.ReadStartElement();
							base.Reader.MoveToContent();
							int whileIterations2 = 0;
							int readerCount2 = base.ReaderCount;
							while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
							{
								if (base.Reader.NodeType == XmlNodeType.Element)
								{
									if ((object)base.Reader.LocalName == id176_string && (object)base.Reader.NamespaceURI == id2_Item)
									{
										if (ReadNull())
										{
											array2 = (string[])EnsureArrayIndex(array2, num, typeof(string));
											array2[num++] = null;
										}
										else
										{
											array2 = (string[])EnsureArrayIndex(array2, num, typeof(string));
											array2[num++] = base.Reader.ReadElementString();
										}
									}
									else
									{
										UnknownNode(null, ":string");
									}
								}
								else
								{
									UnknownNode(null, ":string");
								}
								base.Reader.MoveToContent();
								CheckReaderCount(ref whileIterations2, ref readerCount2);
							}
							ReadEndElement();
						}
						gridFilterBar.GridFilterBarStrings = (string[])ShrinkArray(array2, num, typeof(string), isNullable: false);
					}
				}
				else if (!array[1] && (object)base.Reader.LocalName == id177_RowFilter && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridFilterBar.RowFilter = base.Reader.ReadElementString();
					array[1] = true;
				}
				else if (!array[2] && (object)base.Reader.LocalName == id178_StyleInfo && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridFilterBar.StyleInfo = (GridStyleInfo)ReadSerializable(new GridStyleInfo());
					array[2] = true;
				}
				else if (!array[3] && (object)base.Reader.LocalName == id179_ParenthesesAroundColumnFilters && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridFilterBar.ParenthesesAroundColumnFilters = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					array[3] = true;
				}
				else
				{
					UnknownNode(gridFilterBar, ":GridFilterBarStrings, :RowFilter, :StyleInfo, :ParenthesesAroundColumnFilters");
				}
			}
			else
			{
				UnknownNode(gridFilterBar, ":GridFilterBarStrings, :RowFilter, :StyleInfo, :ParenthesesAroundColumnFilters");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridFilterBar;
	}

	private GridFilterBarTextChangedEventArgs Read135_Item(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id154_Item || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridFilterBarTextChangedEventArgs e = new GridFilterBarTextChangedEventArgs();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(e);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return e;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(e, "");
			}
			else
			{
				UnknownNode(e, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return e;
	}

	private GridDataBoundIconPaint Read134_GridDataBoundIconPaint(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id153_GridDataBoundIconPaint || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridDataBoundIconPaint gridDataBoundIconPaint = new GridDataBoundIconPaint();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridDataBoundIconPaint);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridDataBoundIconPaint;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridDataBoundIconPaint, "");
			}
			else
			{
				UnknownNode(gridDataBoundIconPaint, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridDataBoundIconPaint;
	}

	private GridValidateFailedEventArgs Read133_GridValidateFailedEventArgs(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id152_GridValidateFailedEventArgs || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridValidateFailedEventArgs e = new GridValidateFailedEventArgs();
		bool[] array = new bool[1];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(e);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return e;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id180_Handled && (object)base.Reader.NamespaceURI == id2_Item)
				{
					e.Handled = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					array[0] = true;
				}
				else
				{
					UnknownNode(e, ":Handled");
				}
			}
			else
			{
				UnknownNode(e, ":Handled");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return e;
	}

	private GridSortBehavior Read132_GridSortBehavior(string s)
	{
		return s switch
		{
			"None" => GridSortBehavior.None, 
			"SingleClick" => GridSortBehavior.SingleClick, 
			"DoubleClick" => GridSortBehavior.DoubleClick, 
			_ => throw CreateUnknownConstantException(s, typeof(GridSortBehavior)), 
		};
	}

	private GridSerializeCellsBehavior Read131_GridSerializeCellsBehavior(string s)
	{
		return s switch
		{
			"SerializeIntoCode" => GridSerializeCellsBehavior.SerializeIntoCode, 
			"SerializeIntoResX" => GridSerializeCellsBehavior.SerializeIntoResX, 
			"SerializeAsRangeStylesIntoCode" => GridSerializeCellsBehavior.SerializeAsRangeStylesIntoCode, 
			_ => throw CreateUnknownConstantException(s, typeof(GridSerializeCellsBehavior)), 
		};
	}

	private GridRadioButtonInfo Read130_GridRadioButtonInfo(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id149_GridRadioButtonInfo || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridRadioButtonInfo gridRadioButtonInfo = new GridRadioButtonInfo();
		bool[] array = new bool[2];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridRadioButtonInfo);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridRadioButtonInfo;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id181_Description && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridRadioButtonInfo.Description = base.Reader.ReadElementString();
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id182_Enabled && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridRadioButtonInfo.Enabled = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					array[1] = true;
				}
				else
				{
					UnknownNode(gridRadioButtonInfo, ":Description, :Enabled");
				}
			}
			else
			{
				UnknownNode(gridRadioButtonInfo, ":Description, :Enabled");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridRadioButtonInfo;
	}

	private GridCellModelFactory Read129_GridCellModelFactory(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id148_GridCellModelFactory || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridCellModelFactory gridCellModelFactory = new GridCellModelFactory();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridCellModelFactory);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridCellModelFactory;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridCellModelFactory, "");
			}
			else
			{
				UnknownNode(gridCellModelFactory, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridCellModelFactory;
	}

	private GridRowColEntry Read125_GridRowColEntry(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id145_GridRowColEntry || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridRowColEntry gridRowColEntry = new GridRowColEntry();
		bool[] array = new bool[2];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!array[0] && (object)base.Reader.LocalName == id183_Index && (object)base.Reader.NamespaceURI == id2_Item)
			{
				gridRowColEntry.Index = XmlConvert.ToInt32(base.Reader.Value);
				array[0] = true;
			}
			else if (!array[1] && (object)base.Reader.LocalName == id184_Length && (object)base.Reader.NamespaceURI == id2_Item)
			{
				gridRowColEntry.Length = XmlConvert.ToInt32(base.Reader.Value);
				array[1] = true;
			}
			else if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridRowColEntry, ":Index, :Length");
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridRowColEntry;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridRowColEntry, "");
			}
			else
			{
				UnknownNode(gridRowColEntry, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridRowColEntry;
	}

	private RowStyles Read127_RowStyles(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id144_RowStyles || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		RowStyles rowStyles = new RowStyles();
		if (rowStyles.HiddenRows == null)
		{
			rowStyles.HiddenRows = new GridRowColEntryCollection();
		}
		_ = rowStyles.HiddenRows;
		if (rowStyles.RowHeights == null)
		{
			rowStyles.RowHeights = new GridRowColEntryCollection();
		}
		_ = rowStyles.RowHeights;
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(rowStyles);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return rowStyles;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if ((object)base.Reader.LocalName == id185_HiddenRows && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (!ReadNull())
					{
						if (rowStyles.HiddenRows == null)
						{
							rowStyles.HiddenRows = new GridRowColEntryCollection();
						}
						GridRowColEntryCollection hiddenRows = rowStyles.HiddenRows;
						if (base.Reader.IsEmptyElement)
						{
							base.Reader.Skip();
						}
						else
						{
							base.Reader.ReadStartElement();
							base.Reader.MoveToContent();
							int whileIterations2 = 0;
							int readerCount2 = base.ReaderCount;
							while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
							{
								if (base.Reader.NodeType == XmlNodeType.Element)
								{
									if ((object)base.Reader.LocalName == id145_GridRowColEntry && (object)base.Reader.NamespaceURI == id2_Item)
									{
										if (hiddenRows == null)
										{
											base.Reader.Skip();
										}
										else
										{
											hiddenRows.Add(Read125_GridRowColEntry(isNullable: true, checkType: true));
										}
									}
									else
									{
										UnknownNode(null, ":GridRowColEntry");
									}
								}
								else
								{
									UnknownNode(null, ":GridRowColEntry");
								}
								base.Reader.MoveToContent();
								CheckReaderCount(ref whileIterations2, ref readerCount2);
							}
							ReadEndElement();
						}
					}
				}
				else if ((object)base.Reader.LocalName == id186_RowHeights && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (!ReadNull())
					{
						if (rowStyles.RowHeights == null)
						{
							rowStyles.RowHeights = new GridRowColEntryCollection();
						}
						GridRowColEntryCollection rowHeights = rowStyles.RowHeights;
						if (base.Reader.IsEmptyElement)
						{
							base.Reader.Skip();
						}
						else
						{
							base.Reader.ReadStartElement();
							base.Reader.MoveToContent();
							int whileIterations3 = 0;
							int readerCount3 = base.ReaderCount;
							while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
							{
								if (base.Reader.NodeType == XmlNodeType.Element)
								{
									if ((object)base.Reader.LocalName == id145_GridRowColEntry && (object)base.Reader.NamespaceURI == id2_Item)
									{
										if (rowHeights == null)
										{
											base.Reader.Skip();
										}
										else
										{
											rowHeights.Add(Read125_GridRowColEntry(isNullable: true, checkType: true));
										}
									}
									else
									{
										UnknownNode(null, ":GridRowColEntry");
									}
								}
								else
								{
									UnknownNode(null, ":GridRowColEntry");
								}
								base.Reader.MoveToContent();
								CheckReaderCount(ref whileIterations3, ref readerCount3);
							}
							ReadEndElement();
						}
					}
				}
				else
				{
					UnknownNode(rowStyles, ":HiddenRows, :RowHeights");
				}
			}
			else
			{
				UnknownNode(rowStyles, ":HiddenRows, :RowHeights");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return rowStyles;
	}

	private ColumnStyles Read126_ColumnStyles(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id143_ColumnStyles || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		ColumnStyles columnStyles = new ColumnStyles();
		if (columnStyles.HiddenColumns == null)
		{
			columnStyles.HiddenColumns = new GridRowColEntryCollection();
		}
		_ = columnStyles.HiddenColumns;
		if (columnStyles.ColumnWidths == null)
		{
			columnStyles.ColumnWidths = new GridRowColEntryCollection();
		}
		_ = columnStyles.ColumnWidths;
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(columnStyles);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return columnStyles;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if ((object)base.Reader.LocalName == id187_HiddenColumns && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (!ReadNull())
					{
						if (columnStyles.HiddenColumns == null)
						{
							columnStyles.HiddenColumns = new GridRowColEntryCollection();
						}
						GridRowColEntryCollection hiddenColumns = columnStyles.HiddenColumns;
						if (base.Reader.IsEmptyElement)
						{
							base.Reader.Skip();
						}
						else
						{
							base.Reader.ReadStartElement();
							base.Reader.MoveToContent();
							int whileIterations2 = 0;
							int readerCount2 = base.ReaderCount;
							while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
							{
								if (base.Reader.NodeType == XmlNodeType.Element)
								{
									if ((object)base.Reader.LocalName == id145_GridRowColEntry && (object)base.Reader.NamespaceURI == id2_Item)
									{
										if (hiddenColumns == null)
										{
											base.Reader.Skip();
										}
										else
										{
											hiddenColumns.Add(Read125_GridRowColEntry(isNullable: true, checkType: true));
										}
									}
									else
									{
										UnknownNode(null, ":GridRowColEntry");
									}
								}
								else
								{
									UnknownNode(null, ":GridRowColEntry");
								}
								base.Reader.MoveToContent();
								CheckReaderCount(ref whileIterations2, ref readerCount2);
							}
							ReadEndElement();
						}
					}
				}
				else if ((object)base.Reader.LocalName == id188_ColumnWidths && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (!ReadNull())
					{
						if (columnStyles.ColumnWidths == null)
						{
							columnStyles.ColumnWidths = new GridRowColEntryCollection();
						}
						GridRowColEntryCollection columnWidths = columnStyles.ColumnWidths;
						if (base.Reader.IsEmptyElement)
						{
							base.Reader.Skip();
						}
						else
						{
							base.Reader.ReadStartElement();
							base.Reader.MoveToContent();
							int whileIterations3 = 0;
							int readerCount3 = base.ReaderCount;
							while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
							{
								if (base.Reader.NodeType == XmlNodeType.Element)
								{
									if ((object)base.Reader.LocalName == id145_GridRowColEntry && (object)base.Reader.NamespaceURI == id2_Item)
									{
										if (columnWidths == null)
										{
											base.Reader.Skip();
										}
										else
										{
											columnWidths.Add(Read125_GridRowColEntry(isNullable: true, checkType: true));
										}
									}
									else
									{
										UnknownNode(null, ":GridRowColEntry");
									}
								}
								else
								{
									UnknownNode(null, ":GridRowColEntry");
								}
								base.Reader.MoveToContent();
								CheckReaderCount(ref whileIterations3, ref readerCount3);
							}
							ReadEndElement();
						}
					}
				}
				else
				{
					UnknownNode(columnStyles, ":HiddenColumns, :ColumnWidths");
				}
			}
			else
			{
				UnknownNode(columnStyles, ":HiddenColumns, :ColumnWidths");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return columnStyles;
	}

	private GridCellsMemento Read128_GridCellsMemento(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id142_GridCellsMemento || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridCellsMemento gridCellsMemento = new GridCellsMemento();
		if (gridCellsMemento.CoveredRanges == null)
		{
			gridCellsMemento.CoveredRanges = new GridNonImmutableRangeInfoCollection();
		}
		_ = gridCellsMemento.CoveredRanges;
		if (gridCellsMemento.BanneredRanges == null)
		{
			gridCellsMemento.BanneredRanges = new GridNonImmutableRangeInfoCollection();
		}
		_ = gridCellsMemento.BanneredRanges;
		if (gridCellsMemento.GridBaseStylesToSerialize == null)
		{
			gridCellsMemento.GridBaseStylesToSerialize = new GridBaseStyleCollection();
		}
		GridBaseStyleCollection gridBaseStylesToSerialize = gridCellsMemento.GridBaseStylesToSerialize;
		if (gridCellsMemento.Cells == null)
		{
			gridCellsMemento.Cells = new GridCellInfoCollection();
		}
		GridCellInfoCollection cells = gridCellsMemento.Cells;
		bool[] array = new bool[6];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridCellsMemento);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridCellsMemento;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id189_ColumnStyleCollection && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridCellsMemento.GridColStyles = Read126_ColumnStyles(isNullable: false, checkType: true);
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id190_RowStyleCollection && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridCellsMemento.GridRowStyles = Read127_RowStyles(isNullable: false, checkType: true);
					array[1] = true;
				}
				else if ((object)base.Reader.LocalName == id191_CoveredRanges && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (!ReadNull())
					{
						if (gridCellsMemento.CoveredRanges == null)
						{
							gridCellsMemento.CoveredRanges = new GridNonImmutableRangeInfoCollection();
						}
						GridNonImmutableRangeInfoCollection coveredRanges = gridCellsMemento.CoveredRanges;
						if (base.Reader.IsEmptyElement)
						{
							base.Reader.Skip();
						}
						else
						{
							base.Reader.ReadStartElement();
							base.Reader.MoveToContent();
							int whileIterations2 = 0;
							int readerCount2 = base.ReaderCount;
							while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
							{
								if (base.Reader.NodeType == XmlNodeType.Element)
								{
									if ((object)base.Reader.LocalName == id94_GridNonImmutableRangeInfo && (object)base.Reader.NamespaceURI == id2_Item)
									{
										if (coveredRanges == null)
										{
											base.Reader.Skip();
										}
										else
										{
											coveredRanges.Add(Read97_GridNonImmutableRangeInfo(isNullable: true, checkType: true));
										}
									}
									else
									{
										UnknownNode(null, ":GridNonImmutableRangeInfo");
									}
								}
								else
								{
									UnknownNode(null, ":GridNonImmutableRangeInfo");
								}
								base.Reader.MoveToContent();
								CheckReaderCount(ref whileIterations2, ref readerCount2);
							}
							ReadEndElement();
						}
					}
				}
				else if ((object)base.Reader.LocalName == id192_BanneredRanges && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (!ReadNull())
					{
						if (gridCellsMemento.BanneredRanges == null)
						{
							gridCellsMemento.BanneredRanges = new GridNonImmutableRangeInfoCollection();
						}
						GridNonImmutableRangeInfoCollection banneredRanges = gridCellsMemento.BanneredRanges;
						if (base.Reader.IsEmptyElement)
						{
							base.Reader.Skip();
						}
						else
						{
							base.Reader.ReadStartElement();
							base.Reader.MoveToContent();
							int whileIterations3 = 0;
							int readerCount3 = base.ReaderCount;
							while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
							{
								if (base.Reader.NodeType == XmlNodeType.Element)
								{
									if ((object)base.Reader.LocalName == id94_GridNonImmutableRangeInfo && (object)base.Reader.NamespaceURI == id2_Item)
									{
										if (banneredRanges == null)
										{
											base.Reader.Skip();
										}
										else
										{
											banneredRanges.Add(Read97_GridNonImmutableRangeInfo(isNullable: true, checkType: true));
										}
									}
									else
									{
										UnknownNode(null, ":GridNonImmutableRangeInfo");
									}
								}
								else
								{
									UnknownNode(null, ":GridNonImmutableRangeInfo");
								}
								base.Reader.MoveToContent();
								CheckReaderCount(ref whileIterations3, ref readerCount3);
							}
							ReadEndElement();
						}
					}
				}
				else if ((object)base.Reader.LocalName == id193_BaseStylesMap && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (gridBaseStylesToSerialize == null)
					{
						base.Reader.Skip();
					}
					else
					{
						gridBaseStylesToSerialize.Add(Read104_GridBaseStyle(isNullable: false, checkType: true));
					}
				}
				else if ((object)base.Reader.LocalName == id194_CellData && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (cells == null)
					{
						base.Reader.Skip();
					}
					else
					{
						cells.Add(Read51_GridCellInfo(isNullable: false, checkType: true));
					}
				}
				else
				{
					UnknownNode(gridCellsMemento, ":ColumnStyleCollection, :RowStyleCollection, :CoveredRanges, :BanneredRanges, :BaseStylesMap, :CellData");
				}
			}
			else
			{
				UnknownNode(gridCellsMemento, ":ColumnStyleCollection, :RowStyleCollection, :CoveredRanges, :BanneredRanges, :BaseStylesMap, :CellData");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridCellsMemento;
	}

	private GridCellInfo Read51_GridCellInfo(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id47_GridCellInfo || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridCellInfo gridCellInfo = new GridCellInfo();
		bool[] array = new bool[3];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!array[0] && (object)base.Reader.LocalName == id195_Row && (object)base.Reader.NamespaceURI == id2_Item)
			{
				gridCellInfo.Row = XmlConvert.ToInt32(base.Reader.Value);
				array[0] = true;
			}
			else if (!array[1] && (object)base.Reader.LocalName == id196_Col && (object)base.Reader.NamespaceURI == id2_Item)
			{
				gridCellInfo.Col = XmlConvert.ToInt32(base.Reader.Value);
				array[1] = true;
			}
			else if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridCellInfo, ":Row, :Col");
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridCellInfo;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[2] && (object)base.Reader.LocalName == id197_CellContents && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridCellInfo.StyleInfo = (GridStyleInfo)ReadSerializable(new GridStyleInfo());
					array[2] = true;
				}
				else
				{
					UnknownNode(gridCellInfo, ":CellContents");
				}
			}
			else
			{
				UnknownNode(gridCellInfo, ":CellContents");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridCellInfo;
	}

	private GridBaseStyle Read104_GridBaseStyle(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id102_GridBaseStyle || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridBaseStyle gridBaseStyle = new GridBaseStyle();
		bool[] array = new bool[2];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridBaseStyle);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridBaseStyle;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id198_Name && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridBaseStyle.Name = base.Reader.ReadElementString();
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id178_StyleInfo && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridBaseStyle.StyleInfo = (GridStyleInfo)ReadSerializable(new GridStyleInfo());
					array[1] = true;
				}
				else
				{
					UnknownNode(gridBaseStyle, ":Name, :StyleInfo");
				}
			}
			else
			{
				UnknownNode(gridBaseStyle, ":Name, :StyleInfo");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridBaseStyle;
	}

	private GridNonImmutableRangeInfo Read97_GridNonImmutableRangeInfo(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id94_GridNonImmutableRangeInfo || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridNonImmutableRangeInfo gridNonImmutableRangeInfo = new GridNonImmutableRangeInfo();
		bool[] array = new bool[5];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridNonImmutableRangeInfo);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridNonImmutableRangeInfo;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id199_RangeType && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridNonImmutableRangeInfo.RangeType = Read96_GridRangeInfoType(base.Reader.ReadElementString());
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id200_Top && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridNonImmutableRangeInfo.Top = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[1] = true;
				}
				else if (!array[2] && (object)base.Reader.LocalName == id201_Left && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridNonImmutableRangeInfo.Left = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[2] = true;
				}
				else if (!array[3] && (object)base.Reader.LocalName == id202_Bottom && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridNonImmutableRangeInfo.Bottom = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[3] = true;
				}
				else if (!array[4] && (object)base.Reader.LocalName == id203_Right && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridNonImmutableRangeInfo.Right = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[4] = true;
				}
				else
				{
					UnknownNode(gridNonImmutableRangeInfo, ":RangeType, :Top, :Left, :Bottom, :Right");
				}
			}
			else
			{
				UnknownNode(gridNonImmutableRangeInfo, ":RangeType, :Top, :Left, :Bottom, :Right");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridNonImmutableRangeInfo;
	}

	private GridRangeInfoType Read96_GridRangeInfoType(string s)
	{
		return (GridRangeInfoType)XmlSerializationReader.ToEnum(s, GridRangeInfoTypeValues, "global::Syncfusion.Windows.Forms.Grid.GridRangeInfoType");
	}

	private GridDesignerMain Read124_GridDesignerMain(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id141_GridDesignerMain || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridDesignerMain gridDesignerMain = new GridDesignerMain();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridDesignerMain);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridDesignerMain;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridDesignerMain, "");
			}
			else
			{
				UnknownNode(gridDesignerMain, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridDesignerMain;
	}

	private GridVerticalAlignment Read123_GridVerticalAlignment(string s)
	{
		return s switch
		{
			"Top" => GridVerticalAlignment.Top, 
			"Middle" => GridVerticalAlignment.Middle, 
			"Bottom" => GridVerticalAlignment.Bottom, 
			_ => throw CreateUnknownConstantException(s, typeof(GridVerticalAlignment)), 
		};
	}

	private GridTextAlign Read122_GridTextAlign(string s)
	{
		return s switch
		{
			"Default" => GridTextAlign.Default, 
			"Left" => GridTextAlign.Left, 
			"Right" => GridTextAlign.Right, 
			_ => throw CreateUnknownConstantException(s, typeof(GridTextAlign)), 
		};
	}

	private GridStyleInfoConverter Read121_GridStyleInfoConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id138_GridStyleInfoConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridStyleInfoConverter gridStyleInfoConverter = new GridStyleInfoConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridStyleInfoConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridStyleInfoConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridStyleInfoConverter, "");
			}
			else
			{
				UnknownNode(gridStyleInfoConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridStyleInfoConverter;
	}

	private GridStyleInfoCustomProperties Read119_GridStyleInfoCustomProperties(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id137_GridStyleInfoCustomProperties || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridStyleInfoCustomProperties gridStyleInfoCustomProperties;
		try
		{
			gridStyleInfoCustomProperties = (GridStyleInfoCustomProperties)Activator.CreateInstance(typeof(GridStyleInfoCustomProperties), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
		}
		catch (MissingMethodException)
		{
			throw CreateInaccessibleConstructorException("global::Syncfusion.Windows.Forms.Grid.GridStyleInfoCustomProperties");
		}
		catch (SecurityException)
		{
			throw CreateCtorHasSecurityException("global::Syncfusion.Windows.Forms.Grid.GridStyleInfoCustomProperties");
		}
		bool[] array = new bool[1];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridStyleInfoCustomProperties);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridStyleInfoCustomProperties;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id178_StyleInfo && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridStyleInfoCustomProperties.StyleInfo = (GridStyleInfo)ReadSerializable(new GridStyleInfo());
					array[0] = true;
				}
				else
				{
					UnknownNode(gridStyleInfoCustomProperties, ":StyleInfo");
				}
			}
			else
			{
				UnknownNode(gridStyleInfoCustomProperties, ":StyleInfo");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridStyleInfoCustomProperties;
	}

	private GridShowButtons Read118_GridShowButtons(string s)
	{
		return s switch
		{
			"Hide" => GridShowButtons.Hide, 
			"Show" => GridShowButtons.Show, 
			"ShowCurrentRow" => GridShowButtons.ShowCurrentRow, 
			"ShowCurrentCell" => GridShowButtons.ShowCurrentCell, 
			"ShowCurrentCellEditing" => GridShowButtons.ShowCurrentCellEditing, 
			_ => throw CreateUnknownConstantException(s, typeof(GridShowButtons)), 
		};
	}

	private GridMargins Read117_GridMargins(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id129_GridMargins || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridMargins gridMargins = new GridMargins();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridMargins);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridMargins;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridMargins, "");
			}
			else
			{
				UnknownNode(gridMargins, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridMargins;
	}

	private GridHorizontalAlignment Read116_GridHorizontalAlignment(string s)
	{
		return s switch
		{
			"Left" => GridHorizontalAlignment.Left, 
			"Right" => GridHorizontalAlignment.Right, 
			"Center" => GridHorizontalAlignment.Center, 
			_ => throw CreateUnknownConstantException(s, typeof(GridHorizontalAlignment)), 
		};
	}

	private GridFormulaTag Read115_GridFormulaTag(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id125_GridFormulaTag || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridFormulaTag gridFormulaTag = new GridFormulaTag();
		bool[] array = new bool[4];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridFormulaTag);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridFormulaTag;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id204_Formula && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridFormulaTag.Formula = base.Reader.ReadElementString();
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id205_ParsedRow && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridFormulaTag.ParsedRow = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[1] = true;
				}
				else if (!array[2] && (object)base.Reader.LocalName == id206_ParsedCol && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridFormulaTag.ParsedCol = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[2] = true;
				}
				else if (!array[3] && (object)base.Reader.LocalName == id174_Text && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridFormulaTag.Text = base.Reader.ReadElementString();
					array[3] = true;
				}
				else
				{
					UnknownNode(gridFormulaTag, ":Formula, :ParsedRow, :ParsedCol, :Text");
				}
			}
			else
			{
				UnknownNode(gridFormulaTag, ":Formula, :ParsedRow, :ParsedCol, :Text");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridFormulaTag;
	}

	private GridFontInfoEditor Read114_GridFontInfoEditor(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id124_GridFontInfoEditor || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridFontInfoEditor gridFontInfoEditor = new GridFontInfoEditor();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridFontInfoEditor);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridFontInfoEditor;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridFontInfoEditor, "");
			}
			else
			{
				UnknownNode(gridFontInfoEditor, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridFontInfoEditor;
	}

	private GridCellTypeNameConverter Read112_GridCellTypeNameConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id115_GridCellTypeNameConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridCellTypeNameConverter gridCellTypeNameConverter = new GridCellTypeNameConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridCellTypeNameConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridCellTypeNameConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridCellTypeNameConverter, "");
			}
			else
			{
				UnknownNode(gridCellTypeNameConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridCellTypeNameConverter;
	}

	private GridCellAppearance Read111_GridCellAppearance(string s)
	{
		return s switch
		{
			"Flat" => GridCellAppearance.Flat, 
			"Raised" => GridCellAppearance.Raised, 
			"Sunken" => GridCellAppearance.Sunken, 
			_ => throw CreateUnknownConstantException(s, typeof(GridCellAppearance)), 
		};
	}

	private GridBorderSide Read110_GridBorderSide(string s)
	{
		return (GridBorderSide)XmlSerializationReader.ToEnum(s, GridBorderSideValues, "global::Syncfusion.Windows.Forms.Grid.GridBorderSide");
	}

	private GridBorderPaint Read109_GridBorderPaint(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id110_GridBorderPaint || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridBorderPaint gridBorderPaint;
		try
		{
			gridBorderPaint = (GridBorderPaint)Activator.CreateInstance(typeof(GridBorderPaint), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
		}
		catch (MissingMethodException)
		{
			throw CreateInaccessibleConstructorException("global::Syncfusion.Windows.Forms.Grid.GridBorderPaint");
		}
		catch (SecurityException)
		{
			throw CreateCtorHasSecurityException("global::Syncfusion.Windows.Forms.Grid.GridBorderPaint");
		}
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridBorderPaint);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridBorderPaint;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridBorderPaint, "");
			}
			else
			{
				UnknownNode(gridBorderPaint, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridBorderPaint;
	}

	private GridBorderConverter Read108_GridBorderConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id109_GridBorderConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridBorderConverter gridBorderConverter = new GridBorderConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridBorderConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridBorderConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridBorderConverter, "");
			}
			else
			{
				UnknownNode(gridBorderConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridBorderConverter;
	}

	private GridBorderCodeDomSerializer Read107_GridBorderCodeDomSerializer(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id108_GridBorderCodeDomSerializer || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridBorderCodeDomSerializer gridBorderCodeDomSerializer = new GridBorderCodeDomSerializer();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridBorderCodeDomSerializer);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridBorderCodeDomSerializer;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridBorderCodeDomSerializer, "");
			}
			else
			{
				UnknownNode(gridBorderCodeDomSerializer, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridBorderCodeDomSerializer;
	}

	private GridBorderWeight Read106_GridBorderWeight(string s)
	{
		return s switch
		{
			"ExtraThin" => GridBorderWeight.ExtraThin, 
			"Thin" => GridBorderWeight.Thin, 
			"Medium" => GridBorderWeight.Medium, 
			"Thick" => GridBorderWeight.Thick, 
			"ExtraThick" => GridBorderWeight.ExtraThick, 
			"ExtraExtraThick" => GridBorderWeight.ExtraExtraThick, 
			_ => throw CreateUnknownConstantException(s, typeof(GridBorderWeight)), 
		};
	}

	private GridBorderStyle Read105_GridBorderStyle(string s)
	{
		return s switch
		{
			"NotSet" => GridBorderStyle.NotSet, 
			"None" => GridBorderStyle.None, 
			"Dashed" => GridBorderStyle.Dashed, 
			"Dotted" => GridBorderStyle.Dotted, 
			"DashDot" => GridBorderStyle.DashDot, 
			"DashDotDot" => GridBorderStyle.DashDotDot, 
			"Solid" => GridBorderStyle.Solid, 
			"Standard" => GridBorderStyle.Standard, 
			_ => throw CreateUnknownConstantException(s, typeof(GridBorderStyle)), 
		};
	}

	private GridBaseStyleNameConverter Read103_GridBaseStyleNameConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id101_GridBaseStyleNameConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridBaseStyleNameConverter gridBaseStyleNameConverter = new GridBaseStyleNameConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridBaseStyleNameConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridBaseStyleNameConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridBaseStyleNameConverter, "");
			}
			else
			{
				UnknownNode(gridBaseStyleNameConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridBaseStyleNameConverter;
	}

	private GridBaseStyleConverter Read102_GridBaseStyleConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id100_GridBaseStyleConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridBaseStyleConverter gridBaseStyleConverter = new GridBaseStyleConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridBaseStyleConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridBaseStyleConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridBaseStyleConverter, "");
			}
			else
			{
				UnknownNode(gridBaseStyleConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridBaseStyleConverter;
	}

	private GridTriangleDirection Read101_GridTriangleDirection(string s)
	{
		return s switch
		{
			"Up" => GridTriangleDirection.Up, 
			"Down" => GridTriangleDirection.Down, 
			"Left" => GridTriangleDirection.Left, 
			"Right" => GridTriangleDirection.Right, 
			_ => throw CreateUnknownConstantException(s, typeof(GridTriangleDirection)), 
		};
	}

	private GridSortInfo Read100_GridSortInfo(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id98_GridSortInfo || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridSortInfo gridSortInfo = new GridSortInfo();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridSortInfo);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridSortInfo;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridSortInfo, "");
			}
			else
			{
				UnknownNode(gridSortInfo, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridSortInfo;
	}

	private GridPaintTriangle Read99_GridPaintTriangle(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id97_GridPaintTriangle || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridPaintTriangle gridPaintTriangle = new GridPaintTriangle();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridPaintTriangle);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridPaintTriangle;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridPaintTriangle, "");
			}
			else
			{
				UnknownNode(gridPaintTriangle, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridPaintTriangle;
	}

	private GridCursors Read98_GridCursors(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id96_GridCursors || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridCursors gridCursors = new GridCursors();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridCursors);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridCursors;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridCursors, "");
			}
			else
			{
				UnknownNode(gridCursors, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridCursors;
	}

	private GridRangeInfoListConverter Read95_GridRangeInfoListConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id92_GridRangeInfoListConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridRangeInfoListConverter gridRangeInfoListConverter = new GridRangeInfoListConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridRangeInfoListConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridRangeInfoListConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridRangeInfoListConverter, "");
			}
			else
			{
				UnknownNode(gridRangeInfoListConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridRangeInfoListConverter;
	}

	private GridRangeInfo Read90_GridRangeInfo(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id88_GridRangeInfo || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id94_GridNonImmutableRangeInfo && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read97_GridNonImmutableRangeInfo(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridRangeInfo gridRangeInfo = new GridRangeInfo();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridRangeInfo);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridRangeInfo;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridRangeInfo, "");
			}
			else
			{
				UnknownNode(gridRangeInfo, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridRangeInfo;
	}

	private GridRangeInfoCodeDomSerializer Read94_GridRangeInfoCodeDomSerializer(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id90_GridRangeInfoCodeDomSerializer || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridRangeInfoCodeDomSerializer gridRangeInfoCodeDomSerializer = new GridRangeInfoCodeDomSerializer();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridRangeInfoCodeDomSerializer);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridRangeInfoCodeDomSerializer;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridRangeInfoCodeDomSerializer, "");
			}
			else
			{
				UnknownNode(gridRangeInfoCodeDomSerializer, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridRangeInfoCodeDomSerializer;
	}

	private GridRangeInfoConverter Read91_GridRangeInfoConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id89_GridRangeInfoConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridRangeInfoConverter gridRangeInfoConverter = new GridRangeInfoConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridRangeInfoConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridRangeInfoConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridRangeInfoConverter, "");
			}
			else
			{
				UnknownNode(gridRangeInfoConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridRangeInfoConverter;
	}

	private GridMouseController Read89_GridMouseController(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id87_GridMouseController || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		throw CreateAbstractTypeException("GridMouseController", "");
	}

	private GridRowHiddenTypeConverter Read87_GridRowHiddenTypeConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id86_GridRowHiddenTypeConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridRowHiddenTypeConverter gridRowHiddenTypeConverter = new GridRowHiddenTypeConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridRowHiddenTypeConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridRowHiddenTypeConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridRowHiddenTypeConverter, "");
			}
			else
			{
				UnknownNode(gridRowHiddenTypeConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridRowHiddenTypeConverter;
	}

	private GridRowHidden Read86_GridRowHidden(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id85_GridRowHidden || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridRowHidden gridRowHidden = new GridRowHidden();
		bool[] array = new bool[1];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridRowHidden);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridRowHidden;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id207_RowIndex && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridRowHidden.RowIndex = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[0] = true;
				}
				else
				{
					UnknownNode(gridRowHidden, ":RowIndex");
				}
			}
			else
			{
				UnknownNode(gridRowHidden, ":RowIndex");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridRowHidden;
	}

	private GridRowHeightTypeConverter Read85_GridRowHeightTypeConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id83_GridRowHeightTypeConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridRowHeightTypeConverter gridRowHeightTypeConverter = new GridRowHeightTypeConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridRowHeightTypeConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridRowHeightTypeConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridRowHeightTypeConverter, "");
			}
			else
			{
				UnknownNode(gridRowHeightTypeConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridRowHeightTypeConverter;
	}

	private GridRowHeight Read84_GridRowHeight(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id82_GridRowHeight || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridRowHeight gridRowHeight = new GridRowHeight();
		bool[] array = new bool[2];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridRowHeight);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridRowHeight;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id208_Height && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						gridRowHeight.Height = XmlConvert.ToInt32(base.Reader.ReadElementString());
					}
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id207_RowIndex && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridRowHeight.RowIndex = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[1] = true;
				}
				else
				{
					UnknownNode(gridRowHeight, ":Height, :RowIndex");
				}
			}
			else
			{
				UnknownNode(gridRowHeight, ":Height, :RowIndex");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridRowHeight;
	}

	private GridRangeStyleTypeConverter Read83_GridRangeStyleTypeConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id80_GridRangeStyleTypeConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridRangeStyleTypeConverter gridRangeStyleTypeConverter = new GridRangeStyleTypeConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridRangeStyleTypeConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridRangeStyleTypeConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridRangeStyleTypeConverter, "");
			}
			else
			{
				UnknownNode(gridRangeStyleTypeConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridRangeStyleTypeConverter;
	}

	private GridRangeStyle Read82_GridRangeStyle(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id79_GridRangeStyle || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridRangeStyle gridRangeStyle = new GridRangeStyle();
		bool[] array = new bool[2];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridRangeStyle);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridRangeStyle;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id178_StyleInfo && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridRangeStyle.StyleInfo = (GridStyleInfo)ReadSerializable(new GridStyleInfo());
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id209_Range && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridRangeStyle.RangeInfo = base.Reader.ReadElementString();
					array[1] = true;
				}
				else
				{
					UnknownNode(gridRangeStyle, ":StyleInfo, :Range");
				}
			}
			else
			{
				UnknownNode(gridRangeStyle, ":StyleInfo, :Range");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridRangeStyle;
	}

	private GridProperties Read81_GridProperties(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id77_GridProperties || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridProperties gridProperties = new GridProperties();
		bool[] array = new bool[21];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridProperties);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridProperties;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id210_Buttons3D && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						gridProperties.Buttons3D = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					}
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id211_DisplayVertLines && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						gridProperties.DisplayVertLines = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					}
					array[1] = true;
				}
				else if (!array[2] && (object)base.Reader.LocalName == id212_DisplayHorzLines && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						gridProperties.DisplayHorzLines = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					}
					array[2] = true;
				}
				else if (!array[3] && (object)base.Reader.LocalName == id213_MarkRowHeader && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						gridProperties.MarkRowHeader = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					}
					array[3] = true;
				}
				else if (!array[4] && (object)base.Reader.LocalName == id214_MarkColHeader && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						gridProperties.MarkColHeader = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					}
					array[4] = true;
				}
				else if (!array[5] && (object)base.Reader.LocalName == id215_PrintRowHeader && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						gridProperties.PrintRowHeader = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					}
					array[5] = true;
				}
				else if (!array[6] && (object)base.Reader.LocalName == id216_PrintColHeader && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						gridProperties.PrintColHeader = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					}
					array[6] = true;
				}
				else if (!array[7] && (object)base.Reader.LocalName == id217_Printing && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridProperties.Printing = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					array[7] = true;
				}
				else if (!array[8] && (object)base.Reader.LocalName == id218_CenterHorizontal && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridProperties.CenterHorizontal = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					array[8] = true;
				}
				else if (!array[9] && (object)base.Reader.LocalName == id219_CenterVertical && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridProperties.CenterVertical = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					array[9] = true;
				}
				else if (!array[10] && (object)base.Reader.LocalName == id220_ColHeaders && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						gridProperties.ColHeaders = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					}
					array[10] = true;
				}
				else if (!array[11] && (object)base.Reader.LocalName == id221_PrintHorzLines && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridProperties.PrintHorzLines = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					array[11] = true;
				}
				else if (!array[12] && (object)base.Reader.LocalName == id222_RowHeaders && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						gridProperties.RowHeaders = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					}
					array[12] = true;
				}
				else if (!array[13] && (object)base.Reader.LocalName == id223_PrintVertLines && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridProperties.PrintVertLines = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					array[13] = true;
				}
				else if (!array[14] && (object)base.Reader.LocalName == id224_PageOrder && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridProperties.PageOrder = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[14] = true;
				}
				else if (!array[15] && (object)base.Reader.LocalName == id225_BlackWhite && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridProperties.BlackWhite = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					array[15] = true;
				}
				else if (!array[16] && (object)base.Reader.LocalName == id226_PrintFrame && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridProperties.PrintFrame = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					array[16] = true;
				}
				else if (!array[17] && (object)base.Reader.LocalName == id227_GridLineColorString && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridProperties.GridLineColorString = base.Reader.ReadElementString();
					array[17] = true;
				}
				else if (!array[18] && (object)base.Reader.LocalName == id228_FixedLinesColorString && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridProperties.FixedLinesColorString = base.Reader.ReadElementString();
					array[18] = true;
				}
				else if (!array[19] && (object)base.Reader.LocalName == id229_ResizingCellsLinesColorString && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridProperties.ResizingCellsLinesColorString = base.Reader.ReadElementString();
					array[19] = true;
				}
				else if (!array[20] && (object)base.Reader.LocalName == id230_BackgroundColorString && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridProperties.BackgroundColorString = base.Reader.ReadElementString();
					array[20] = true;
				}
				else
				{
					UnknownNode(gridProperties, ":Buttons3D, :DisplayVertLines, :DisplayHorzLines, :MarkRowHeader, :MarkColHeader, :PrintRowHeader, :PrintColHeader, :Printing, :CenterHorizontal, :CenterVertical, :ColHeaders, :PrintHorzLines, :RowHeaders, :PrintVertLines, :PageOrder, :BlackWhite, :PrintFrame, :GridLineColorString, :FixedLinesColorString, :ResizingCellsLinesColorString, :BackgroundColorString");
				}
			}
			else
			{
				UnknownNode(gridProperties, ":Buttons3D, :DisplayVertLines, :DisplayHorzLines, :MarkRowHeader, :MarkColHeader, :PrintRowHeader, :PrintColHeader, :Printing, :CenterHorizontal, :CenterVertical, :ColHeaders, :PrintHorzLines, :RowHeaders, :PrintVertLines, :PageOrder, :BlackWhite, :PrintFrame, :GridLineColorString, :FixedLinesColorString, :ResizingCellsLinesColorString, :BackgroundColorString");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridProperties;
	}

	private GridNamespaceGroupItem Read79_GridNamespaceGroupItem(bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id75_GridNamespaceGroupItem || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		GridNamespaceGroupItem gridNamespaceGroupItem;
		try
		{
			gridNamespaceGroupItem = (GridNamespaceGroupItem)Activator.CreateInstance(typeof(GridNamespaceGroupItem), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
		}
		catch (MissingMethodException)
		{
			throw CreateInaccessibleConstructorException("global::Syncfusion.Windows.Forms.Grid.GridNamespaceGroupItem");
		}
		catch (SecurityException)
		{
			throw CreateCtorHasSecurityException("global::Syncfusion.Windows.Forms.Grid.GridNamespaceGroupItem");
		}
		bool[] array = new bool[2];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!array[0] && (object)base.Reader.LocalName == id198_Name && (object)base.Reader.NamespaceURI == id2_Item)
			{
				gridNamespaceGroupItem.Name = base.Reader.Value;
				array[0] = true;
			}
			else if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridNamespaceGroupItem, ":Name");
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridNamespaceGroupItem;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[1] && (object)base.Reader.LocalName == id172_Value && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridNamespaceGroupItem.Value = base.Reader.ReadElementString();
					array[1] = true;
				}
				else
				{
					UnknownNode(gridNamespaceGroupItem, ":Value");
				}
			}
			else
			{
				UnknownNode(gridNamespaceGroupItem, ":Value");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridNamespaceGroupItem;
	}

	private GridRowColSizeDictionaryTypeConverter Read78_Item(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id74_Item || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridRowColSizeDictionaryTypeConverter gridRowColSizeDictionaryTypeConverter = new GridRowColSizeDictionaryTypeConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridRowColSizeDictionaryTypeConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridRowColSizeDictionaryTypeConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridRowColSizeDictionaryTypeConverter, "");
			}
			else
			{
				UnknownNode(gridRowColSizeDictionaryTypeConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridRowColSizeDictionaryTypeConverter;
	}

	private GridModelRowColOperations Read77_GridModelRowColOperations(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id73_GridModelRowColOperations || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		throw CreateAbstractTypeException("GridModelRowColOperations", "");
	}

	private GridClickedOnDisabledCellBehavior Read76_Item(string s)
	{
		return s switch
		{
			"Default" => GridClickedOnDisabledCellBehavior.Default, 
			"LeaveCurrentCell" => GridClickedOnDisabledCellBehavior.LeaveCurrentCell, 
			"DeactivateCurrentCell" => GridClickedOnDisabledCellBehavior.DeactivateCurrentCell, 
			_ => throw CreateUnknownConstantException(s, typeof(GridClickedOnDisabledCellBehavior)), 
		};
	}

	private GridModelHideRowColsIndexer Read75_GridModelHideRowColsIndexer(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id71_GridModelHideRowColsIndexer || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		throw CreateAbstractTypeException("GridModelHideRowColsIndexer", "");
	}

	private GridRowColHideDictionaryTypeConverter Read74_Item(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id70_Item || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridRowColHideDictionaryTypeConverter gridRowColHideDictionaryTypeConverter = new GridRowColHideDictionaryTypeConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridRowColHideDictionaryTypeConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridRowColHideDictionaryTypeConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridRowColHideDictionaryTypeConverter, "");
			}
			else
			{
				UnknownNode(gridRowColHideDictionaryTypeConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridRowColHideDictionaryTypeConverter;
	}

	private GridEndUpdateRequestEventArgs Read73_GridEndUpdateRequestEventArgs(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id69_GridEndUpdateRequestEventArgs || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridEndUpdateRequestEventArgs e = new GridEndUpdateRequestEventArgs();
		bool[] array = new bool[1];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(e);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return e;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id172_Value && (object)base.Reader.NamespaceURI == id2_Item)
				{
					e.Value = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					array[0] = true;
				}
				else
				{
					UnknownNode(e, ":Value");
				}
			}
			else
			{
				UnknownNode(e, ":Value");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return e;
	}

	private GridRowColCountEventArgs Read72_GridRowColCountEventArgs(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id68_GridRowColCountEventArgs || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridRowColCountEventArgs e = new GridRowColCountEventArgs();
		bool[] array = new bool[2];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(e);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return e;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id180_Handled && (object)base.Reader.NamespaceURI == id2_Item)
				{
					e.Handled = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id231_Count && (object)base.Reader.NamespaceURI == id2_Item)
				{
					e.Count = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[1] = true;
				}
				else
				{
					UnknownNode(e, ":Handled, :Count");
				}
			}
			else
			{
				UnknownNode(e, ":Handled, :Count");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return e;
	}

	private object Read1_Object(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType)
		{
			if (flag)
			{
				if (xmlQualifiedName != null)
				{
					return ReadTypedNull(xmlQualifiedName);
				}
				return null;
			}
			if (xmlQualifiedName == null)
			{
				return ReadTypedPrimitive(new XmlQualifiedName("anyType", "http://www.w3.org/2001/XMLSchema"));
			}
			if ((object)xmlQualifiedName.Name == id170_GridGdiPaint && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read150_GridGdiPaint(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id169_GridQueryAcceptDataOptions && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read149_GridQueryAcceptDataOptions(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id167_GridDragColumnHeaderHelper && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read147_GridDragColumnHeaderHelper(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id166_Item && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read146_Item(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id165_GridDragColumnHeaderBitmaps && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read145_GridDragColumnHeaderBitmaps(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id162_Item && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read144_Item(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id164_NamedRange && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read143_NamedRange(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id159_GridSheetFamilyItem && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read140_GridSheetFamilyItem(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id158_LenComparer && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read139_LenComparer(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id155_GridFilterBar && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read136_GridFilterBar(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id153_GridDataBoundIconPaint && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read134_GridDataBoundIconPaint(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id149_GridRadioButtonInfo && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read130_GridRadioButtonInfo(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id142_GridCellsMemento && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read128_GridCellsMemento(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id144_RowStyles && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read127_RowStyles(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id143_ColumnStyles && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read126_ColumnStyles(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id145_GridRowColEntry && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read125_GridRowColEntry(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id141_GridDesignerMain && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read124_GridDesignerMain(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id137_GridStyleInfoCustomProperties && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read119_GridStyleInfoCustomProperties(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id129_GridMargins && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read117_GridMargins(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id125_GridFormulaTag && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read115_GridFormulaTag(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id232_UITypeEditor && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read113_UITypeEditor(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id124_GridFontInfoEditor && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read114_GridFontInfoEditor(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id110_GridBorderPaint && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read109_GridBorderPaint(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id98_GridSortInfo && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read100_GridSortInfo(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id97_GridPaintTriangle && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read99_GridPaintTriangle(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id96_GridCursors && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read98_GridCursors(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id233_CodeDomSerializerBase && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read92_CodeDomSerializerBase(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id234_CodeDomSerializer && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read93_CodeDomSerializer(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id108_GridBorderCodeDomSerializer && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read107_GridBorderCodeDomSerializer(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id90_GridRangeInfoCodeDomSerializer && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read94_GridRangeInfoCodeDomSerializer(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id88_GridRangeInfo && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read90_GridRangeInfo(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id94_GridNonImmutableRangeInfo && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read97_GridNonImmutableRangeInfo(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id85_GridRowHidden && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read86_GridRowHidden(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id82_GridRowHeight && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read84_GridRowHeight(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id79_GridRangeStyle && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read82_GridRangeStyle(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id75_GridNamespaceGroupItem && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read79_GridNamespaceGroupItem(checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id235_EventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read69_EventArgs(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id161_GridFormulaParsingEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read142_GridFormulaParsingEventArgs(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id236_SyncfusionEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read70_SyncfusionEventArgs(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id154_Item && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read135_Item(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id69_GridEndUpdateRequestEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read73_GridEndUpdateRequestEventArgs(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id237_SyncfusionHandledEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read71_SyncfusionHandledEventArgs(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id152_GridValidateFailedEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read133_GridValidateFailedEventArgs(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id68_GridRowColCountEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read72_GridRowColCountEventArgs(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id61_GridData && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read67_GridData(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id60_GridCoveredCellPool && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read66_GridCoveredCellPool(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id238_SyncfusionCommand && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read64_SyncfusionCommand(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id59_GridModelCommand && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read65_GridModelCommand(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id57_GridColWidth && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read62_GridColWidth(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id54_GridColHidden && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read60_GridColHidden(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id239_ValueConvert && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read57_ValueConvert(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id51_GridCellValueConvert && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read58_GridCellValueConvert(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id240_NonFinalizeDisposable && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read55_NonFinalizeDisposable(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id102_GridBaseStyle && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read104_GridBaseStyle(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id241_GridSubComponent && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read88_GridSubComponent(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id87_GridMouseController && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read89_GridMouseController(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id242_Disposable && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read80_Disposable(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id77_GridProperties && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read81_GridProperties(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id50_GridModelBound && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read56_GridModelBound(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id73_GridModelRowColOperations && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read77_GridModelRowColOperations(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id71_GridModelHideRowColsIndexer && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read75_GridModelHideRowColsIndexer(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id243_TypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read52_TypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id244_StyleInfoBaseConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read120_StyleInfoBaseConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id138_GridStyleInfoConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read121_GridStyleInfoConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id115_GridCellTypeNameConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read112_GridCellTypeNameConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id109_GridBorderConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read108_GridBorderConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id101_GridBaseStyleNameConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read103_GridBaseStyleNameConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id92_GridRangeInfoListConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read95_GridRangeInfoListConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id89_GridRangeInfoConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read91_GridRangeInfoConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id74_Item && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read78_Item(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id70_Item && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read74_Item(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id62_GridDataTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read68_GridDataTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id52_GridCellValueTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read59_GridCellValueTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id245_ExpandableObjectConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read53_ExpandableObjectConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id100_GridBaseStyleConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read102_GridBaseStyleConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id86_GridRowHiddenTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read87_GridRowHiddenTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id83_GridRowHeightTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read85_GridRowHeightTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id80_GridRangeStyleTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read83_GridRangeStyleTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id58_GridColWidthTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read63_GridColWidthTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id55_GridColHiddenTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read61_GridColHiddenTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id49_GridCellInfoTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read54_GridCellInfoTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id47_GridCellInfo && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read51_GridCellInfo(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id46_GridBanneredCellPool && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read50_GridBanneredCellPool(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id45_GridUtil && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read49_GridUtil(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id44_GridCellTypeName && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read48_GridCellTypeName(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id39_GridDragDropFlags && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read43_GridDragDropFlags(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id28_GridHitTestContext && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read33_GridHitTestContext(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id20_GridCellBaseTextInfo && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read25_GridCellBaseTextInfo(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id12_GridConstants && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read17_GridConstants(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id11_GridCellPos && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read16_GridCellPos(checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id10_GridFontState && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read15_GridFontState(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id9_GridFactoryProvider && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read14_GridFactoryProvider(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id7_GridPrintInfo && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read12_GridPrintInfo(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id246_ImageUtil && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read8_ImageUtil(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id5_GridImageUtil && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read9_GridImageUtil(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id4_GridCellLayout && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read7_GridCellLayout(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id247_Rectangle && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read6_Rectangle(checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id248_Size && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read5_Size(checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id249_Point && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read4_Point(checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id3_GridBaseCellModelFactory && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read3_GridBaseCellModelFactory(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id148_GridCellModelFactory && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read129_GridCellModelFactory(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id1_GridWindowsAssembly && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read2_GridWindowsAssembly(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id250_ArrayOfRectangle && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				Rectangle[] result = null;
				if (!ReadNull())
				{
					Rectangle[] array = null;
					int num = 0;
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						base.Reader.ReadStartElement();
						base.Reader.MoveToContent();
						int whileIterations = 0;
						int readerCount = base.ReaderCount;
						while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
						{
							if (base.Reader.NodeType == XmlNodeType.Element)
							{
								if ((object)base.Reader.LocalName == id247_Rectangle && (object)base.Reader.NamespaceURI == id2_Item)
								{
									array = (Rectangle[])EnsureArrayIndex(array, num, typeof(Rectangle));
									ref Rectangle reference = ref array[num++];
									reference = Read6_Rectangle(checkType: true);
								}
								else
								{
									UnknownNode(null, ":Rectangle");
								}
							}
							else
							{
								UnknownNode(null, ":Rectangle");
							}
							base.Reader.MoveToContent();
							CheckReaderCount(ref whileIterations, ref readerCount);
						}
						ReadEndElement();
					}
					result = (Rectangle[])ShrinkArray(array, num, typeof(Rectangle), isNullable: false);
				}
				return result;
			}
			if ((object)xmlQualifiedName.Name == id6_GridImageSizeMode && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result2 = Read10_GridImageSizeMode(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result2;
			}
			if ((object)xmlQualifiedName.Name == id66_ArrayOfAnyType && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				ArrayList arrayList = null;
				if (!ReadNull())
				{
					if (arrayList == null)
					{
						arrayList = new ArrayList();
					}
					ArrayList arrayList2 = arrayList;
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						base.Reader.ReadStartElement();
						base.Reader.MoveToContent();
						int whileIterations2 = 0;
						int readerCount2 = base.ReaderCount;
						while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
						{
							if (base.Reader.NodeType == XmlNodeType.Element)
							{
								if ((object)base.Reader.LocalName == id67_anyType && (object)base.Reader.NamespaceURI == id2_Item)
								{
									if (arrayList2 == null)
									{
										base.Reader.Skip();
									}
									else
									{
										arrayList2.Add(Read1_Object(isNullable: true, checkType: true));
									}
								}
								else
								{
									UnknownNode(null, ":anyType");
								}
							}
							else
							{
								UnknownNode(null, ":anyType");
							}
							base.Reader.MoveToContent();
							CheckReaderCount(ref whileIterations2, ref readerCount2);
						}
						ReadEndElement();
					}
				}
				return arrayList;
			}
			if ((object)xmlQualifiedName.Name == id38_GridCountRecordsBehavior && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result3 = Read11_GridCountRecordsBehavior(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result3;
			}
			if ((object)xmlQualifiedName.Name == id8_GridCellSizeKind && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result4 = Read13_GridCellSizeKind(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result4;
			}
			if ((object)xmlQualifiedName.Name == id13_GridScrollCurrentCellReason && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result5 = Read18_GridScrollCurrentCellReason(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result5;
			}
			if ((object)xmlQualifiedName.Name == id14_GridDropDownStyle && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result6 = Read19_GridDropDownStyle(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result6;
			}
			if ((object)xmlQualifiedName.Name == id15_GridQueryFloatCell && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result7 = Read20_GridQueryFloatCell(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result7;
			}
			if ((object)xmlQualifiedName.Name == id16_GridWrapCellBehavior && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result8 = Read21_GridWrapCellBehavior(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result8;
			}
			if ((object)xmlQualifiedName.Name == id17_GridRefreshCurrentCellBehavior && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result9 = Read22_GridRefreshCurrentCellBehavior(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result9;
			}
			if ((object)xmlQualifiedName.Name == id18_GridResizeToFitOptions && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result10 = Read23_GridResizeToFitOptions(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result10;
			}
			if ((object)xmlQualifiedName.Name == id19_GridQueryBounds && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result11 = Read24_GridQueryBounds(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result11;
			}
			if ((object)xmlQualifiedName.Name == id21_GridSelectionReason && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result12 = Read26_GridSelectionReason(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result12;
			}
			if ((object)xmlQualifiedName.Name == id22_GridDragSelectionReason && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result13 = Read27_GridDragSelectionReason(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result13;
			}
			if ((object)xmlQualifiedName.Name == id23_GridResizeCellsReason && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result14 = Read28_GridResizeCellsReason(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result14;
			}
			if ((object)xmlQualifiedName.Name == id24_GridRangeOptions && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result15 = Read29_GridRangeOptions(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result15;
			}
			if ((object)xmlQualifiedName.Name == id25_GridBackgroundImageMode && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result16 = Read30_GridBackgroundImageMode(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result16;
			}
			if ((object)xmlQualifiedName.Name == id26_GridDirectionType && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result17 = Read31_GridDirectionType(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result17;
			}
			if ((object)xmlQualifiedName.Name == id27_GridResizeCellsBehavior && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result18 = Read32_GridResizeCellsBehavior(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result18;
			}
			if ((object)xmlQualifiedName.Name == id29_GridSelectionFlags && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result19 = Read34_GridSelectionFlags(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result19;
			}
			if ((object)xmlQualifiedName.Name == id30_GridFloatCellsMode && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result20 = Read35_GridFloatCellsMode(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result20;
			}
			if ((object)xmlQualifiedName.Name == id31_GridMergeCellDirection && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result21 = Read36_GridMergeCellDirection(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result21;
			}
			if ((object)xmlQualifiedName.Name == id32_GridMergeCellsMode && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result22 = Read37_GridMergeCellsMode(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result22;
			}
			if ((object)xmlQualifiedName.Name == id33_GridCellActivateAction && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result23 = Read38_GridCellActivateAction(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result23;
			}
			if ((object)xmlQualifiedName.Name == id34_GridDrawOrder && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result24 = Read39_GridDrawOrder(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result24;
			}
			if ((object)xmlQualifiedName.Name == id35_GridShowCurrentCellBorder && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result25 = Read40_GridShowCurrentCellBorder(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result25;
			}
			if ((object)xmlQualifiedName.Name == id36_GridSetCurrentCellOptions && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result26 = Read41_GridSetCurrentCellOptions(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result26;
			}
			if ((object)xmlQualifiedName.Name == id37_GridScrollbarMode && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result27 = Read42_GridScrollbarMode(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result27;
			}
			if ((object)xmlQualifiedName.Name == id40_GridFindTextOptions && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result28 = Read44_GridFindTextOptions(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result28;
			}
			if ((object)xmlQualifiedName.Name == id41_GridCommandMode && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result29 = Read45_GridCommandMode(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result29;
			}
			if ((object)xmlQualifiedName.Name == id42_GridControllerOptions && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result30 = Read46_GridControllerOptions(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result30;
			}
			if ((object)xmlQualifiedName.Name == id43_GridDataObjectConsumerOptions && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result31 = Read47_GridDataObjectConsumerOptions(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result31;
			}
			if ((object)xmlQualifiedName.Name == id48_ArrayOfGridCellInfo && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				GridCellInfoCollection gridCellInfoCollection = null;
				if (!ReadNull())
				{
					if (gridCellInfoCollection == null)
					{
						gridCellInfoCollection = new GridCellInfoCollection();
					}
					GridCellInfoCollection gridCellInfoCollection2 = gridCellInfoCollection;
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						base.Reader.ReadStartElement();
						base.Reader.MoveToContent();
						int whileIterations3 = 0;
						int readerCount3 = base.ReaderCount;
						while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
						{
							if (base.Reader.NodeType == XmlNodeType.Element)
							{
								if ((object)base.Reader.LocalName == id47_GridCellInfo && (object)base.Reader.NamespaceURI == id2_Item)
								{
									if (gridCellInfoCollection2 == null)
									{
										base.Reader.Skip();
									}
									else
									{
										gridCellInfoCollection2.Add(Read51_GridCellInfo(isNullable: true, checkType: true));
									}
								}
								else
								{
									UnknownNode(null, ":GridCellInfo");
								}
							}
							else
							{
								UnknownNode(null, ":GridCellInfo");
							}
							base.Reader.MoveToContent();
							CheckReaderCount(ref whileIterations3, ref readerCount3);
						}
						ReadEndElement();
					}
				}
				return gridCellInfoCollection;
			}
			if ((object)xmlQualifiedName.Name == id53_ArrayOfGridColHidden && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				GridColHiddenCollection gridColHiddenCollection = null;
				if (!ReadNull())
				{
					if (gridColHiddenCollection == null)
					{
						gridColHiddenCollection = (GridColHiddenCollection)Activator.CreateInstance(typeof(GridColHiddenCollection), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
					}
					GridColHiddenCollection gridColHiddenCollection2 = gridColHiddenCollection;
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						base.Reader.ReadStartElement();
						base.Reader.MoveToContent();
						int whileIterations4 = 0;
						int readerCount4 = base.ReaderCount;
						while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
						{
							if (base.Reader.NodeType == XmlNodeType.Element)
							{
								if ((object)base.Reader.LocalName == id54_GridColHidden && (object)base.Reader.NamespaceURI == id2_Item)
								{
									if (gridColHiddenCollection2 == null)
									{
										base.Reader.Skip();
									}
									else
									{
										gridColHiddenCollection2.Add(Read60_GridColHidden(isNullable: true, checkType: true));
									}
								}
								else
								{
									UnknownNode(null, ":GridColHidden");
								}
							}
							else
							{
								UnknownNode(null, ":GridColHidden");
							}
							base.Reader.MoveToContent();
							CheckReaderCount(ref whileIterations4, ref readerCount4);
						}
						ReadEndElement();
					}
				}
				return gridColHiddenCollection;
			}
			if ((object)xmlQualifiedName.Name == id56_ArrayOfGridColWidth && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				GridColWidthCollection gridColWidthCollection = null;
				if (!ReadNull())
				{
					if (gridColWidthCollection == null)
					{
						gridColWidthCollection = (GridColWidthCollection)Activator.CreateInstance(typeof(GridColWidthCollection), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
					}
					GridColWidthCollection gridColWidthCollection2 = gridColWidthCollection;
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						base.Reader.ReadStartElement();
						base.Reader.MoveToContent();
						int whileIterations5 = 0;
						int readerCount5 = base.ReaderCount;
						while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
						{
							if (base.Reader.NodeType == XmlNodeType.Element)
							{
								if ((object)base.Reader.LocalName == id57_GridColWidth && (object)base.Reader.NamespaceURI == id2_Item)
								{
									if (gridColWidthCollection2 == null)
									{
										base.Reader.Skip();
									}
									else
									{
										gridColWidthCollection2.Add(Read62_GridColWidth(isNullable: true, checkType: true));
									}
								}
								else
								{
									UnknownNode(null, ":GridColWidth");
								}
							}
							else
							{
								UnknownNode(null, ":GridColWidth");
							}
							base.Reader.MoveToContent();
							CheckReaderCount(ref whileIterations5, ref readerCount5);
						}
						ReadEndElement();
					}
				}
				return gridColWidthCollection;
			}
			if ((object)xmlQualifiedName.Name == id63_ArrayOfGridStyleInfoStore && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				GridCellCollection gridCellCollection = null;
				if (!ReadNull())
				{
					if (gridCellCollection == null)
					{
						gridCellCollection = new GridCellCollection();
					}
					GridCellCollection gridCellCollection2 = gridCellCollection;
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						base.Reader.ReadStartElement();
						base.Reader.MoveToContent();
						int whileIterations6 = 0;
						int readerCount6 = base.ReaderCount;
						while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
						{
							if (base.Reader.NodeType == XmlNodeType.Element)
							{
								if ((object)base.Reader.LocalName == id64_GridStyleInfoStore && (object)base.Reader.NamespaceURI == id2_Item)
								{
									gridCellCollection2.Add((GridStyleInfoStore)ReadSerializable(new GridStyleInfoStore()));
								}
								else
								{
									UnknownNode(null, ":GridStyleInfoStore");
								}
							}
							else
							{
								UnknownNode(null, ":GridStyleInfoStore");
							}
							base.Reader.MoveToContent();
							CheckReaderCount(ref whileIterations6, ref readerCount6);
						}
						ReadEndElement();
					}
				}
				return gridCellCollection;
			}
			if ((object)xmlQualifiedName.Name == id65_Item && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				GridRowCollection gridRowCollection = null;
				if (!ReadNull())
				{
					if (gridRowCollection == null)
					{
						gridRowCollection = new GridRowCollection();
					}
					GridRowCollection gridRowCollection2 = gridRowCollection;
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						base.Reader.ReadStartElement();
						base.Reader.MoveToContent();
						int whileIterations7 = 0;
						int readerCount7 = base.ReaderCount;
						while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
						{
							if (base.Reader.NodeType == XmlNodeType.Element)
							{
								if ((object)base.Reader.LocalName == id63_ArrayOfGridStyleInfoStore && (object)base.Reader.NamespaceURI == id2_Item)
								{
									if (!ReadNull())
									{
										GridCellCollection gridCellCollection3 = new GridCellCollection();
										gridRowCollection2.Add(gridCellCollection3);
										if (base.Reader.IsEmptyElement)
										{
											base.Reader.Skip();
										}
										else
										{
											base.Reader.ReadStartElement();
											base.Reader.MoveToContent();
											int whileIterations8 = 0;
											int readerCount8 = base.ReaderCount;
											while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
											{
												if (base.Reader.NodeType == XmlNodeType.Element)
												{
													if ((object)base.Reader.LocalName == id64_GridStyleInfoStore && (object)base.Reader.NamespaceURI == id2_Item)
													{
														gridCellCollection3.Add((GridStyleInfoStore)ReadSerializable(new GridStyleInfoStore()));
													}
													else
													{
														UnknownNode(null, ":GridStyleInfoStore");
													}
												}
												else
												{
													UnknownNode(null, ":GridStyleInfoStore");
												}
												base.Reader.MoveToContent();
												CheckReaderCount(ref whileIterations8, ref readerCount8);
											}
											ReadEndElement();
										}
									}
									else
									{
										GridCellCollection value = new GridCellCollection();
										gridRowCollection2.Add(value);
									}
								}
								else
								{
									UnknownNode(null, ":ArrayOfGridStyleInfoStore");
								}
							}
							else
							{
								UnknownNode(null, ":ArrayOfGridStyleInfoStore");
							}
							base.Reader.MoveToContent();
							CheckReaderCount(ref whileIterations7, ref readerCount7);
						}
						ReadEndElement();
					}
				}
				return gridRowCollection;
			}
			if ((object)xmlQualifiedName.Name == id72_Item && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result32 = Read76_Item(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result32;
			}
			if ((object)xmlQualifiedName.Name == id76_ArrayOfGridNamespaceGroupItem && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				GridNamespaceGroupItemCollection gridNamespaceGroupItemCollection = null;
				if (!ReadNull())
				{
					if (gridNamespaceGroupItemCollection == null)
					{
						gridNamespaceGroupItemCollection = new GridNamespaceGroupItemCollection();
					}
					GridNamespaceGroupItemCollection gridNamespaceGroupItemCollection2 = gridNamespaceGroupItemCollection;
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						base.Reader.ReadStartElement();
						base.Reader.MoveToContent();
						int whileIterations9 = 0;
						int readerCount9 = base.ReaderCount;
						while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
						{
							if (base.Reader.NodeType == XmlNodeType.Element)
							{
								if ((object)base.Reader.LocalName == id75_GridNamespaceGroupItem && (object)base.Reader.NamespaceURI == id2_Item)
								{
									if (gridNamespaceGroupItemCollection2 == null)
									{
										base.Reader.Skip();
									}
									else
									{
										gridNamespaceGroupItemCollection2.Add(Read79_GridNamespaceGroupItem(checkType: true));
									}
								}
								else
								{
									UnknownNode(null, ":GridNamespaceGroupItem");
								}
							}
							else
							{
								UnknownNode(null, ":GridNamespaceGroupItem");
							}
							base.Reader.MoveToContent();
							CheckReaderCount(ref whileIterations9, ref readerCount9);
						}
						ReadEndElement();
					}
				}
				return gridNamespaceGroupItemCollection;
			}
			if ((object)xmlQualifiedName.Name == id78_ArrayOfGridRangeStyle && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				GridRangeStyleCollection gridRangeStyleCollection = null;
				if (!ReadNull())
				{
					if (gridRangeStyleCollection == null)
					{
						gridRangeStyleCollection = (GridRangeStyleCollection)Activator.CreateInstance(typeof(GridRangeStyleCollection), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
					}
					GridRangeStyleCollection gridRangeStyleCollection2 = gridRangeStyleCollection;
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						base.Reader.ReadStartElement();
						base.Reader.MoveToContent();
						int whileIterations10 = 0;
						int readerCount10 = base.ReaderCount;
						while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
						{
							if (base.Reader.NodeType == XmlNodeType.Element)
							{
								if ((object)base.Reader.LocalName == id79_GridRangeStyle && (object)base.Reader.NamespaceURI == id2_Item)
								{
									if (gridRangeStyleCollection2 == null)
									{
										base.Reader.Skip();
									}
									else
									{
										gridRangeStyleCollection2.Add(Read82_GridRangeStyle(isNullable: true, checkType: true));
									}
								}
								else
								{
									UnknownNode(null, ":GridRangeStyle");
								}
							}
							else
							{
								UnknownNode(null, ":GridRangeStyle");
							}
							base.Reader.MoveToContent();
							CheckReaderCount(ref whileIterations10, ref readerCount10);
						}
						ReadEndElement();
					}
				}
				return gridRangeStyleCollection;
			}
			if ((object)xmlQualifiedName.Name == id81_ArrayOfGridRowHeight && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				GridRowHeightCollection gridRowHeightCollection = null;
				if (!ReadNull())
				{
					if (gridRowHeightCollection == null)
					{
						gridRowHeightCollection = (GridRowHeightCollection)Activator.CreateInstance(typeof(GridRowHeightCollection), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
					}
					GridRowHeightCollection gridRowHeightCollection2 = gridRowHeightCollection;
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						base.Reader.ReadStartElement();
						base.Reader.MoveToContent();
						int whileIterations11 = 0;
						int readerCount11 = base.ReaderCount;
						while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
						{
							if (base.Reader.NodeType == XmlNodeType.Element)
							{
								if ((object)base.Reader.LocalName == id82_GridRowHeight && (object)base.Reader.NamespaceURI == id2_Item)
								{
									if (gridRowHeightCollection2 == null)
									{
										base.Reader.Skip();
									}
									else
									{
										gridRowHeightCollection2.Add(Read84_GridRowHeight(isNullable: true, checkType: true));
									}
								}
								else
								{
									UnknownNode(null, ":GridRowHeight");
								}
							}
							else
							{
								UnknownNode(null, ":GridRowHeight");
							}
							base.Reader.MoveToContent();
							CheckReaderCount(ref whileIterations11, ref readerCount11);
						}
						ReadEndElement();
					}
				}
				return gridRowHeightCollection;
			}
			if ((object)xmlQualifiedName.Name == id84_ArrayOfGridRowHidden && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				GridRowHiddenCollection gridRowHiddenCollection = null;
				if (!ReadNull())
				{
					if (gridRowHiddenCollection == null)
					{
						gridRowHiddenCollection = (GridRowHiddenCollection)Activator.CreateInstance(typeof(GridRowHiddenCollection), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
					}
					GridRowHiddenCollection gridRowHiddenCollection2 = gridRowHiddenCollection;
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						base.Reader.ReadStartElement();
						base.Reader.MoveToContent();
						int whileIterations12 = 0;
						int readerCount12 = base.ReaderCount;
						while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
						{
							if (base.Reader.NodeType == XmlNodeType.Element)
							{
								if ((object)base.Reader.LocalName == id85_GridRowHidden && (object)base.Reader.NamespaceURI == id2_Item)
								{
									if (gridRowHiddenCollection2 == null)
									{
										base.Reader.Skip();
									}
									else
									{
										gridRowHiddenCollection2.Add(Read86_GridRowHidden(isNullable: true, checkType: true));
									}
								}
								else
								{
									UnknownNode(null, ":GridRowHidden");
								}
							}
							else
							{
								UnknownNode(null, ":GridRowHidden");
							}
							base.Reader.MoveToContent();
							CheckReaderCount(ref whileIterations12, ref readerCount12);
						}
						ReadEndElement();
					}
				}
				return gridRowHiddenCollection;
			}
			if ((object)xmlQualifiedName.Name == id91_ArrayOfGridRangeInfo && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				GridRangeInfoList gridRangeInfoList = null;
				if (!ReadNull())
				{
					if (gridRangeInfoList == null)
					{
						gridRangeInfoList = new GridRangeInfoList();
					}
					GridRangeInfoList gridRangeInfoList2 = gridRangeInfoList;
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						base.Reader.ReadStartElement();
						base.Reader.MoveToContent();
						int whileIterations13 = 0;
						int readerCount13 = base.ReaderCount;
						while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
						{
							if (base.Reader.NodeType == XmlNodeType.Element)
							{
								if ((object)base.Reader.LocalName == id88_GridRangeInfo && (object)base.Reader.NamespaceURI == id2_Item)
								{
									if (gridRangeInfoList2 == null)
									{
										base.Reader.Skip();
									}
									else
									{
										gridRangeInfoList2.Add(Read90_GridRangeInfo(isNullable: true, checkType: true));
									}
								}
								else
								{
									UnknownNode(null, ":GridRangeInfo");
								}
							}
							else
							{
								UnknownNode(null, ":GridRangeInfo");
							}
							base.Reader.MoveToContent();
							CheckReaderCount(ref whileIterations13, ref readerCount13);
						}
						ReadEndElement();
					}
				}
				return gridRangeInfoList;
			}
			if ((object)xmlQualifiedName.Name == id93_GridRangeInfoType && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result33 = Read96_GridRangeInfoType(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result33;
			}
			if ((object)xmlQualifiedName.Name == id95_Item && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				GridNonImmutableRangeInfoCollection gridNonImmutableRangeInfoCollection = null;
				if (!ReadNull())
				{
					if (gridNonImmutableRangeInfoCollection == null)
					{
						gridNonImmutableRangeInfoCollection = new GridNonImmutableRangeInfoCollection();
					}
					GridNonImmutableRangeInfoCollection gridNonImmutableRangeInfoCollection2 = gridNonImmutableRangeInfoCollection;
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						base.Reader.ReadStartElement();
						base.Reader.MoveToContent();
						int whileIterations14 = 0;
						int readerCount14 = base.ReaderCount;
						while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
						{
							if (base.Reader.NodeType == XmlNodeType.Element)
							{
								if ((object)base.Reader.LocalName == id94_GridNonImmutableRangeInfo && (object)base.Reader.NamespaceURI == id2_Item)
								{
									if (gridNonImmutableRangeInfoCollection2 == null)
									{
										base.Reader.Skip();
									}
									else
									{
										gridNonImmutableRangeInfoCollection2.Add(Read97_GridNonImmutableRangeInfo(isNullable: true, checkType: true));
									}
								}
								else
								{
									UnknownNode(null, ":GridNonImmutableRangeInfo");
								}
							}
							else
							{
								UnknownNode(null, ":GridNonImmutableRangeInfo");
							}
							base.Reader.MoveToContent();
							CheckReaderCount(ref whileIterations14, ref readerCount14);
						}
						ReadEndElement();
					}
				}
				return gridNonImmutableRangeInfoCollection;
			}
			if ((object)xmlQualifiedName.Name == id99_GridTriangleDirection && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result34 = Read101_GridTriangleDirection(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result34;
			}
			if ((object)xmlQualifiedName.Name == id103_ArrayOfGridBaseStyle && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				GridBaseStylesMap gridBaseStylesMap = null;
				if (!ReadNull())
				{
					if (gridBaseStylesMap == null)
					{
						gridBaseStylesMap = new GridBaseStylesMap();
					}
					GridBaseStylesMap gridBaseStylesMap2 = gridBaseStylesMap;
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						base.Reader.ReadStartElement();
						base.Reader.MoveToContent();
						int whileIterations15 = 0;
						int readerCount15 = base.ReaderCount;
						while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
						{
							if (base.Reader.NodeType == XmlNodeType.Element)
							{
								if ((object)base.Reader.LocalName == id102_GridBaseStyle && (object)base.Reader.NamespaceURI == id2_Item)
								{
									if (gridBaseStylesMap2 == null)
									{
										base.Reader.Skip();
									}
									else
									{
										gridBaseStylesMap2.Add(Read104_GridBaseStyle(isNullable: true, checkType: true));
									}
								}
								else
								{
									UnknownNode(null, ":GridBaseStyle");
								}
							}
							else
							{
								UnknownNode(null, ":GridBaseStyle");
							}
							base.Reader.MoveToContent();
							CheckReaderCount(ref whileIterations15, ref readerCount15);
						}
						ReadEndElement();
					}
				}
				return gridBaseStylesMap;
			}
			if ((object)xmlQualifiedName.Name == id105_GridBorderStyle && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result35 = Read105_GridBorderStyle(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result35;
			}
			if ((object)xmlQualifiedName.Name == id106_GridBorderWeight && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result36 = Read106_GridBorderWeight(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result36;
			}
			if ((object)xmlQualifiedName.Name == id111_GridBorderSide && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result37 = Read110_GridBorderSide(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result37;
			}
			if ((object)xmlQualifiedName.Name == id114_GridCellAppearance && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result38 = Read111_GridCellAppearance(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result38;
			}
			if ((object)xmlQualifiedName.Name == id126_GridHorizontalAlignment && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result39 = Read116_GridHorizontalAlignment(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result39;
			}
			if ((object)xmlQualifiedName.Name == id136_GridShowButtons && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result40 = Read118_GridShowButtons(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result40;
			}
			if ((object)xmlQualifiedName.Name == id139_GridTextAlign && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result41 = Read122_GridTextAlign(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result41;
			}
			if ((object)xmlQualifiedName.Name == id140_GridVerticalAlignment && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result42 = Read123_GridVerticalAlignment(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result42;
			}
			if ((object)xmlQualifiedName.Name == id146_ArrayOfGridRowColEntry && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				GridRowColEntryCollection gridRowColEntryCollection = null;
				if (!ReadNull())
				{
					if (gridRowColEntryCollection == null)
					{
						gridRowColEntryCollection = new GridRowColEntryCollection();
					}
					GridRowColEntryCollection gridRowColEntryCollection2 = gridRowColEntryCollection;
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						base.Reader.ReadStartElement();
						base.Reader.MoveToContent();
						int whileIterations16 = 0;
						int readerCount16 = base.ReaderCount;
						while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
						{
							if (base.Reader.NodeType == XmlNodeType.Element)
							{
								if ((object)base.Reader.LocalName == id145_GridRowColEntry && (object)base.Reader.NamespaceURI == id2_Item)
								{
									if (gridRowColEntryCollection2 == null)
									{
										base.Reader.Skip();
									}
									else
									{
										gridRowColEntryCollection2.Add(Read125_GridRowColEntry(isNullable: true, checkType: true));
									}
								}
								else
								{
									UnknownNode(null, ":GridRowColEntry");
								}
							}
							else
							{
								UnknownNode(null, ":GridRowColEntry");
							}
							base.Reader.MoveToContent();
							CheckReaderCount(ref whileIterations16, ref readerCount16);
						}
						ReadEndElement();
					}
				}
				return gridRowColEntryCollection;
			}
			if ((object)xmlQualifiedName.Name == id150_GridSerializeCellsBehavior && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result43 = Read131_GridSerializeCellsBehavior(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result43;
			}
			if ((object)xmlQualifiedName.Name == id151_GridSortBehavior && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result44 = Read132_GridSortBehavior(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result44;
			}
			if ((object)xmlQualifiedName.Name == id251_ArrayOfString && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				string[] result45 = null;
				if (!ReadNull())
				{
					string[] array2 = null;
					int num2 = 0;
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						base.Reader.ReadStartElement();
						base.Reader.MoveToContent();
						int whileIterations17 = 0;
						int readerCount17 = base.ReaderCount;
						while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
						{
							if (base.Reader.NodeType == XmlNodeType.Element)
							{
								if ((object)base.Reader.LocalName == id176_string && (object)base.Reader.NamespaceURI == id2_Item)
								{
									if (ReadNull())
									{
										array2 = (string[])EnsureArrayIndex(array2, num2, typeof(string));
										array2[num2++] = null;
									}
									else
									{
										array2 = (string[])EnsureArrayIndex(array2, num2, typeof(string));
										array2[num2++] = base.Reader.ReadElementString();
									}
								}
								else
								{
									UnknownNode(null, ":string");
								}
							}
							else
							{
								UnknownNode(null, ":string");
							}
							base.Reader.MoveToContent();
							CheckReaderCount(ref whileIterations17, ref readerCount17);
						}
						ReadEndElement();
					}
					result45 = (string[])ShrinkArray(array2, num2, typeof(string), isNullable: false);
				}
				return result45;
			}
			if ((object)xmlQualifiedName.Name == id156_Item && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result46 = Read137_Item(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result46;
			}
			if ((object)xmlQualifiedName.Name == id157_GridFindReplaceDialogOptions && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result47 = Read138_GridFindReplaceDialogOptions(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result47;
			}
			if ((object)xmlQualifiedName.Name == id160_GridFormulaCopyFlags && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result48 = Read141_GridFormulaCopyFlags(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result48;
			}
			if ((object)xmlQualifiedName.Name == id163_ArrayOfNamedRange && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				GridFormulaNamedRangesEditHelper.NamedRangeList namedRangeList = null;
				if (!ReadNull())
				{
					if (namedRangeList == null)
					{
						namedRangeList = new GridFormulaNamedRangesEditHelper.NamedRangeList();
					}
					GridFormulaNamedRangesEditHelper.NamedRangeList namedRangeList2 = namedRangeList;
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						base.Reader.ReadStartElement();
						base.Reader.MoveToContent();
						int whileIterations18 = 0;
						int readerCount18 = base.ReaderCount;
						while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
						{
							if (base.Reader.NodeType == XmlNodeType.Element)
							{
								if ((object)base.Reader.LocalName == id164_NamedRange && (object)base.Reader.NamespaceURI == id2_Item)
								{
									if (namedRangeList2 == null)
									{
										base.Reader.Skip();
									}
									else
									{
										namedRangeList2.Add(Read143_NamedRange(isNullable: true, checkType: true));
									}
								}
								else
								{
									UnknownNode(null, ":NamedRange");
								}
							}
							else
							{
								UnknownNode(null, ":NamedRange");
							}
							base.Reader.MoveToContent();
							CheckReaderCount(ref whileIterations18, ref readerCount18);
						}
						ReadEndElement();
					}
				}
				return namedRangeList;
			}
			if ((object)xmlQualifiedName.Name == id168_Item && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				base.Reader.ReadStartElement();
				object result49 = Read148_Item(CollapseWhitespace(base.Reader.ReadString()));
				ReadEndElement();
				return result49;
			}
			return ReadTypedPrimitive(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		object obj = new object();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(obj);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return obj;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations19 = 0;
		int readerCount19 = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(obj, "");
			}
			else
			{
				UnknownNode(obj, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations19, ref readerCount19);
		}
		ReadEndElement();
		return obj;
	}

	private GridColWidth Read62_GridColWidth(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id57_GridColWidth || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridColWidth gridColWidth = new GridColWidth();
		bool[] array = new bool[2];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridColWidth);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridColWidth;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id252_Width && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (base.Reader.IsEmptyElement)
					{
						base.Reader.Skip();
					}
					else
					{
						gridColWidth.Width = XmlConvert.ToInt32(base.Reader.ReadElementString());
					}
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id253_ColIndex && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridColWidth.ColIndex = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[1] = true;
				}
				else
				{
					UnknownNode(gridColWidth, ":Width, :ColIndex");
				}
			}
			else
			{
				UnknownNode(gridColWidth, ":Width, :ColIndex");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridColWidth;
	}

	private GridColHidden Read60_GridColHidden(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id54_GridColHidden || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridColHidden gridColHidden = new GridColHidden();
		bool[] array = new bool[1];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridColHidden);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridColHidden;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id253_ColIndex && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridColHidden.ColIndex = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[0] = true;
				}
				else
				{
					UnknownNode(gridColHidden, ":ColIndex");
				}
			}
			else
			{
				UnknownNode(gridColHidden, ":ColIndex");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridColHidden;
	}

	private GridDataObjectConsumerOptions Read47_GridDataObjectConsumerOptions(string s)
	{
		return (GridDataObjectConsumerOptions)XmlSerializationReader.ToEnum(s, GridDataObjectConsumerOptionsValues, "global::Syncfusion.Windows.Forms.Grid.GridDataObjectConsumerOptions");
	}

	private GridControllerOptions Read46_GridControllerOptions(string s)
	{
		return (GridControllerOptions)XmlSerializationReader.ToEnum(s, GridControllerOptionsValues, "global::Syncfusion.Windows.Forms.Grid.GridControllerOptions");
	}

	private GridCommandMode Read45_GridCommandMode(string s)
	{
		return s switch
		{
			"Recording" => GridCommandMode.Recording, 
			"Undo" => GridCommandMode.Undo, 
			"Redo" => GridCommandMode.Redo, 
			"Rollback" => GridCommandMode.Rollback, 
			_ => throw CreateUnknownConstantException(s, typeof(GridCommandMode)), 
		};
	}

	private GridFindTextOptions Read44_GridFindTextOptions(string s)
	{
		return s switch
		{
			"None" => GridFindTextOptions.None, 
			"MatchCase" => GridFindTextOptions.MatchCase, 
			"MatchWholeCell" => GridFindTextOptions.MatchWholeCell, 
			"SearchUp" => GridFindTextOptions.SearchUp, 
			"SelectionOnly" => GridFindTextOptions.SelectionOnly, 
			"ColumnOnly" => GridFindTextOptions.ColumnOnly, 
			"WholeTable" => GridFindTextOptions.WholeTable, 
			_ => throw CreateUnknownConstantException(s, typeof(GridFindTextOptions)), 
		};
	}

	private GridScrollbarMode Read42_GridScrollbarMode(string s)
	{
		return (GridScrollbarMode)XmlSerializationReader.ToEnum(s, GridScrollbarModeValues, "global::Syncfusion.Windows.Forms.Grid.GridScrollbarMode");
	}

	private GridSetCurrentCellOptions Read41_GridSetCurrentCellOptions(string s)
	{
		return (GridSetCurrentCellOptions)XmlSerializationReader.ToEnum(s, GridSetCurrentCellOptionsValues, "global::Syncfusion.Windows.Forms.Grid.GridSetCurrentCellOptions");
	}

	private GridShowCurrentCellBorder Read40_GridShowCurrentCellBorder(string s)
	{
		return s switch
		{
			"AlwaysVisible" => GridShowCurrentCellBorder.AlwaysVisible, 
			"HideAlways" => GridShowCurrentCellBorder.HideAlways, 
			"WhenGridActive" => GridShowCurrentCellBorder.WhenGridActive, 
			"GrayWhenLostFocus" => GridShowCurrentCellBorder.GrayWhenLostFocus, 
			_ => throw CreateUnknownConstantException(s, typeof(GridShowCurrentCellBorder)), 
		};
	}

	private GridDrawOrder Read39_GridDrawOrder(string s)
	{
		return s switch
		{
			"Rows" => GridDrawOrder.Rows, 
			"Columns" => GridDrawOrder.Columns, 
			_ => throw CreateUnknownConstantException(s, typeof(GridDrawOrder)), 
		};
	}

	private GridCellActivateAction Read38_GridCellActivateAction(string s)
	{
		return s switch
		{
			"None" => GridCellActivateAction.None, 
			"ClickOnCell" => GridCellActivateAction.ClickOnCell, 
			"SetCurrent" => GridCellActivateAction.SetCurrent, 
			"DblClickOnCell" => GridCellActivateAction.DblClickOnCell, 
			"SelectAll" => GridCellActivateAction.SelectAll, 
			"PositionCaret" => GridCellActivateAction.PositionCaret, 
			_ => throw CreateUnknownConstantException(s, typeof(GridCellActivateAction)), 
		};
	}

	private GridMergeCellsMode Read37_GridMergeCellsMode(string s)
	{
		return (GridMergeCellsMode)XmlSerializationReader.ToEnum(s, GridMergeCellsModeValues, "global::Syncfusion.Windows.Forms.Grid.GridMergeCellsMode");
	}

	private GridMergeCellDirection Read36_GridMergeCellDirection(string s)
	{
		return (GridMergeCellDirection)XmlSerializationReader.ToEnum(s, GridMergeCellDirectionValues, "global::Syncfusion.Windows.Forms.Grid.GridMergeCellDirection");
	}

	private GridFloatCellsMode Read35_GridFloatCellsMode(string s)
	{
		return s switch
		{
			"None" => GridFloatCellsMode.None, 
			"OnDemandCalculation" => GridFloatCellsMode.OnDemandCalculation, 
			"BeforeDisplayCalculation" => GridFloatCellsMode.BeforeDisplayCalculation, 
			_ => throw CreateUnknownConstantException(s, typeof(GridFloatCellsMode)), 
		};
	}

	private GridSelectionFlags Read34_GridSelectionFlags(string s)
	{
		return (GridSelectionFlags)XmlSerializationReader.ToEnum(s, GridSelectionFlagsValues, "global::Syncfusion.Windows.Forms.Grid.GridSelectionFlags");
	}

	private GridResizeCellsBehavior Read32_GridResizeCellsBehavior(string s)
	{
		return (GridResizeCellsBehavior)XmlSerializationReader.ToEnum(s, GridResizeCellsBehaviorValues, "global::Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior");
	}

	private GridDirectionType Read31_GridDirectionType(string s)
	{
		return s switch
		{
			"None" => GridDirectionType.None, 
			"Up" => GridDirectionType.Up, 
			"Left" => GridDirectionType.Left, 
			"Down" => GridDirectionType.Down, 
			"Right" => GridDirectionType.Right, 
			"PageDown" => GridDirectionType.PageDown, 
			"PageUp" => GridDirectionType.PageUp, 
			"Top" => GridDirectionType.Top, 
			"Bottom" => GridDirectionType.Bottom, 
			"MostLeft" => GridDirectionType.MostLeft, 
			"MostRight" => GridDirectionType.MostRight, 
			"TopLeft" => GridDirectionType.TopLeft, 
			"BottomRight" => GridDirectionType.BottomRight, 
			_ => throw CreateUnknownConstantException(s, typeof(GridDirectionType)), 
		};
	}

	private GridBackgroundImageMode Read30_GridBackgroundImageMode(string s)
	{
		return s switch
		{
			"Normal" => GridBackgroundImageMode.Normal, 
			"CenterImage" => GridBackgroundImageMode.CenterImage, 
			"StretchImage" => GridBackgroundImageMode.StretchImage, 
			"TileImage" => GridBackgroundImageMode.TileImage, 
			_ => throw CreateUnknownConstantException(s, typeof(GridBackgroundImageMode)), 
		};
	}

	private GridRangeOptions Read29_GridRangeOptions(string s)
	{
		return (GridRangeOptions)XmlSerializationReader.ToEnum(s, GridRangeOptionsValues, "global::Syncfusion.Windows.Forms.Grid.GridRangeOptions");
	}

	private GridResizeCellsReason Read28_GridResizeCellsReason(string s)
	{
		return s switch
		{
			"MouseDown" => GridResizeCellsReason.MouseDown, 
			"MouseMove" => GridResizeCellsReason.MouseMove, 
			"MouseUp" => GridResizeCellsReason.MouseUp, 
			"CancelMode" => GridResizeCellsReason.CancelMode, 
			"HitTest" => GridResizeCellsReason.HitTest, 
			"DoubleClick" => GridResizeCellsReason.DoubleClick, 
			"ResetHide" => GridResizeCellsReason.ResetHide, 
			"ResetDefault" => GridResizeCellsReason.ResetDefault, 
			_ => throw CreateUnknownConstantException(s, typeof(GridResizeCellsReason)), 
		};
	}

	private GridDragSelectionReason Read27_GridDragSelectionReason(string s)
	{
		return s switch
		{
			"MouseDown" => GridDragSelectionReason.MouseDown, 
			"MouseMove" => GridDragSelectionReason.MouseMove, 
			"MouseUp" => GridDragSelectionReason.MouseUp, 
			"CancelMode" => GridDragSelectionReason.CancelMode, 
			"HitTest" => GridDragSelectionReason.HitTest, 
			_ => throw CreateUnknownConstantException(s, typeof(GridDragSelectionReason)), 
		};
	}

	private GridSelectionReason Read26_GridSelectionReason(string s)
	{
		return s switch
		{
			"SelectRange" => GridSelectionReason.SelectRange, 
			"SetCurrentCell" => GridSelectionReason.SetCurrentCell, 
			"ArrowKey" => GridSelectionReason.ArrowKey, 
			"MouseDown" => GridSelectionReason.MouseDown, 
			"MouseMove" => GridSelectionReason.MouseMove, 
			"MouseUp" => GridSelectionReason.MouseUp, 
			"CancelMode" => GridSelectionReason.CancelMode, 
			"Clear" => GridSelectionReason.Clear, 
			_ => throw CreateUnknownConstantException(s, typeof(GridSelectionReason)), 
		};
	}

	private GridQueryBounds Read24_GridQueryBounds(string s)
	{
		return s switch
		{
			"Height" => GridQueryBounds.Height, 
			"Width" => GridQueryBounds.Width, 
			_ => throw CreateUnknownConstantException(s, typeof(GridQueryBounds)), 
		};
	}

	private GridResizeToFitOptions Read23_GridResizeToFitOptions(string s)
	{
		return (GridResizeToFitOptions)XmlSerializationReader.ToEnum(s, GridResizeToFitOptionsValues, "global::Syncfusion.Windows.Forms.Grid.GridResizeToFitOptions");
	}

	private GridRefreshCurrentCellBehavior Read22_GridRefreshCurrentCellBehavior(string s)
	{
		return s switch
		{
			"None" => GridRefreshCurrentCellBehavior.None, 
			"RefreshCell" => GridRefreshCurrentCellBehavior.RefreshCell, 
			"RefreshRow" => GridRefreshCurrentCellBehavior.RefreshRow, 
			_ => throw CreateUnknownConstantException(s, typeof(GridRefreshCurrentCellBehavior)), 
		};
	}

	private GridWrapCellBehavior Read21_GridWrapCellBehavior(string s)
	{
		return (GridWrapCellBehavior)XmlSerializationReader.ToEnum(s, GridWrapCellBehaviorValues, "global::Syncfusion.Windows.Forms.Grid.GridWrapCellBehavior");
	}

	private GridQueryFloatCell Read20_GridQueryFloatCell(string s)
	{
		return s switch
		{
			"FloatCell" => GridQueryFloatCell.FloatCell, 
			"FloodCell" => GridQueryFloatCell.FloodCell, 
			_ => throw CreateUnknownConstantException(s, typeof(GridQueryFloatCell)), 
		};
	}

	private GridDropDownStyle Read19_GridDropDownStyle(string s)
	{
		return s switch
		{
			"Editable" => GridDropDownStyle.Editable, 
			"Exclusive" => GridDropDownStyle.Exclusive, 
			"AutoComplete" => GridDropDownStyle.AutoComplete, 
			_ => throw CreateUnknownConstantException(s, typeof(GridDropDownStyle)), 
		};
	}

	private GridScrollCurrentCellReason Read18_GridScrollCurrentCellReason(string s)
	{
		return s switch
		{
			"None" => GridScrollCurrentCellReason.None, 
			"GridFocus" => GridScrollCurrentCellReason.GridFocus, 
			"BeginEdit" => GridScrollCurrentCellReason.BeginEdit, 
			"KeyPress" => GridScrollCurrentCellReason.KeyPress, 
			"Modified" => GridScrollCurrentCellReason.Modified, 
			"Activate" => GridScrollCurrentCellReason.Activate, 
			"Click" => GridScrollCurrentCellReason.Click, 
			"MoveTo" => GridScrollCurrentCellReason.MoveTo, 
			"Error" => GridScrollCurrentCellReason.Error, 
			"Command" => GridScrollCurrentCellReason.Command, 
			"ResizedCells" => GridScrollCurrentCellReason.ResizedCells, 
			"FindText" => GridScrollCurrentCellReason.FindText, 
			"SynchronizeRecord" => GridScrollCurrentCellReason.FindText, 
			"Any" => GridScrollCurrentCellReason.Any, 
			_ => throw CreateUnknownConstantException(s, typeof(GridScrollCurrentCellReason)), 
		};
	}

	private GridCellSizeKind Read13_GridCellSizeKind(string s)
	{
		return s switch
		{
			"ActualSize" => GridCellSizeKind.ActualSize, 
			"VisibleSize" => GridCellSizeKind.VisibleSize, 
			_ => throw CreateUnknownConstantException(s, typeof(GridCellSizeKind)), 
		};
	}

	private GridCountRecordsBehavior Read11_GridCountRecordsBehavior(string s)
	{
		return s switch
		{
			"CountNever" => GridCountRecordsBehavior.CountNever, 
			"CountAlways" => GridCountRecordsBehavior.CountAlways, 
			"CountPrint" => GridCountRecordsBehavior.CountPrint, 
			_ => throw CreateUnknownConstantException(s, typeof(GridCountRecordsBehavior)), 
		};
	}

	private GridImageSizeMode Read10_GridImageSizeMode(string s)
	{
		return s switch
		{
			"Normal" => GridImageSizeMode.Normal, 
			"CenterImage" => GridImageSizeMode.CenterImage, 
			"AutoSize" => GridImageSizeMode.AutoSize, 
			"StretchImage" => GridImageSizeMode.StretchImage, 
			_ => throw CreateUnknownConstantException(s, typeof(GridImageSizeMode)), 
		};
	}

	private Rectangle Read6_Rectangle(bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id247_Rectangle || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		Rectangle rectangle;
		try
		{
			rectangle = (Rectangle)Activator.CreateInstance(typeof(Rectangle), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
		}
		catch (MissingMethodException)
		{
			throw CreateInaccessibleConstructorException("global::System.Drawing.Rectangle");
		}
		catch (SecurityException)
		{
			throw CreateCtorHasSecurityException("global::System.Drawing.Rectangle");
		}
		bool[] array = new bool[6];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(rectangle);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return rectangle;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id254_Location && (object)base.Reader.NamespaceURI == id2_Item)
				{
					rectangle.Location = Read4_Point(checkType: true);
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id248_Size && (object)base.Reader.NamespaceURI == id2_Item)
				{
					rectangle.Size = Read5_Size(checkType: true);
					array[1] = true;
				}
				else if (!array[2] && (object)base.Reader.LocalName == id255_X && (object)base.Reader.NamespaceURI == id2_Item)
				{
					rectangle.X = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[2] = true;
				}
				else if (!array[3] && (object)base.Reader.LocalName == id256_Y && (object)base.Reader.NamespaceURI == id2_Item)
				{
					rectangle.Y = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[3] = true;
				}
				else if (!array[4] && (object)base.Reader.LocalName == id252_Width && (object)base.Reader.NamespaceURI == id2_Item)
				{
					rectangle.Width = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[4] = true;
				}
				else if (!array[5] && (object)base.Reader.LocalName == id208_Height && (object)base.Reader.NamespaceURI == id2_Item)
				{
					rectangle.Height = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[5] = true;
				}
				else
				{
					UnknownNode(rectangle, ":Location, :Size, :X, :Y, :Width, :Height");
				}
			}
			else
			{
				UnknownNode(rectangle, ":Location, :Size, :X, :Y, :Width, :Height");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return rectangle;
	}

	private Size Read5_Size(bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id248_Size || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		Size size;
		try
		{
			size = (Size)Activator.CreateInstance(typeof(Size), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
		}
		catch (MissingMethodException)
		{
			throw CreateInaccessibleConstructorException("global::System.Drawing.Size");
		}
		catch (SecurityException)
		{
			throw CreateCtorHasSecurityException("global::System.Drawing.Size");
		}
		bool[] array = new bool[2];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(size);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return size;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id252_Width && (object)base.Reader.NamespaceURI == id2_Item)
				{
					size.Width = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id208_Height && (object)base.Reader.NamespaceURI == id2_Item)
				{
					size.Height = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[1] = true;
				}
				else
				{
					UnknownNode(size, ":Width, :Height");
				}
			}
			else
			{
				UnknownNode(size, ":Width, :Height");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return size;
	}

	private Point Read4_Point(bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id249_Point || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		Point point;
		try
		{
			point = (Point)Activator.CreateInstance(typeof(Point), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
		}
		catch (MissingMethodException)
		{
			throw CreateInaccessibleConstructorException("global::System.Drawing.Point");
		}
		catch (SecurityException)
		{
			throw CreateCtorHasSecurityException("global::System.Drawing.Point");
		}
		bool[] array = new bool[2];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(point);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return point;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id255_X && (object)base.Reader.NamespaceURI == id2_Item)
				{
					point.X = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id256_Y && (object)base.Reader.NamespaceURI == id2_Item)
				{
					point.Y = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[1] = true;
				}
				else
				{
					UnknownNode(point, ":X, :Y");
				}
			}
			else
			{
				UnknownNode(point, ":X, :Y");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return point;
	}

	private GridWindowsAssembly Read2_GridWindowsAssembly(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id1_GridWindowsAssembly || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridWindowsAssembly gridWindowsAssembly = new GridWindowsAssembly();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridWindowsAssembly);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridWindowsAssembly;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridWindowsAssembly, "");
			}
			else
			{
				UnknownNode(gridWindowsAssembly, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridWindowsAssembly;
	}

	private GridBaseCellModelFactory Read3_GridBaseCellModelFactory(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id3_GridBaseCellModelFactory || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id148_GridCellModelFactory && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read129_GridCellModelFactory(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridBaseCellModelFactory gridBaseCellModelFactory = new GridBaseCellModelFactory();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridBaseCellModelFactory);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridBaseCellModelFactory;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridBaseCellModelFactory, "");
			}
			else
			{
				UnknownNode(gridBaseCellModelFactory, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridBaseCellModelFactory;
	}

	private GridCellLayout Read7_GridCellLayout(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id4_GridCellLayout || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridCellLayout gridCellLayout = new GridCellLayout();
		bool[] array = new bool[5];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridCellLayout);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridCellLayout;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id257_CellRectangle && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridCellLayout.CellRectangle = Read6_Rectangle(checkType: true);
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id258_InnerRectangle && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridCellLayout.InnerRectangle = Read6_Rectangle(checkType: true);
					array[1] = true;
				}
				else if ((object)base.Reader.LocalName == id259_Buttons && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (!ReadNull())
					{
						Rectangle[] array2 = null;
						int num = 0;
						if (base.Reader.IsEmptyElement)
						{
							base.Reader.Skip();
						}
						else
						{
							base.Reader.ReadStartElement();
							base.Reader.MoveToContent();
							int whileIterations2 = 0;
							int readerCount2 = base.ReaderCount;
							while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
							{
								if (base.Reader.NodeType == XmlNodeType.Element)
								{
									if ((object)base.Reader.LocalName == id247_Rectangle && (object)base.Reader.NamespaceURI == id2_Item)
									{
										array2 = (Rectangle[])EnsureArrayIndex(array2, num, typeof(Rectangle));
										ref Rectangle reference = ref array2[num++];
										reference = Read6_Rectangle(checkType: true);
									}
									else
									{
										UnknownNode(null, ":Rectangle");
									}
								}
								else
								{
									UnknownNode(null, ":Rectangle");
								}
								base.Reader.MoveToContent();
								CheckReaderCount(ref whileIterations2, ref readerCount2);
							}
							ReadEndElement();
						}
						gridCellLayout.Buttons = (Rectangle[])ShrinkArray(array2, num, typeof(Rectangle), isNullable: false);
					}
				}
				else if (!array[3] && (object)base.Reader.LocalName == id260_ClientRectangle && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridCellLayout.ClientRectangle = Read6_Rectangle(checkType: true);
					array[3] = true;
				}
				else if (!array[4] && (object)base.Reader.LocalName == id261_TextRectangle && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridCellLayout.TextRectangle = Read6_Rectangle(checkType: true);
					array[4] = true;
				}
				else
				{
					UnknownNode(gridCellLayout, ":CellRectangle, :InnerRectangle, :Buttons, :ClientRectangle, :TextRectangle");
				}
			}
			else
			{
				UnknownNode(gridCellLayout, ":CellRectangle, :InnerRectangle, :Buttons, :ClientRectangle, :TextRectangle");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridCellLayout;
	}

	private GridImageUtil Read9_GridImageUtil(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id5_GridImageUtil || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridImageUtil gridImageUtil = new GridImageUtil();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridImageUtil);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridImageUtil;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridImageUtil, "");
			}
			else
			{
				UnknownNode(gridImageUtil, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridImageUtil;
	}

	private ImageUtil Read8_ImageUtil(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id246_ImageUtil || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id5_GridImageUtil && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read9_GridImageUtil(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		ImageUtil imageUtil = new ImageUtil();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(imageUtil);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return imageUtil;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(imageUtil, "");
			}
			else
			{
				UnknownNode(imageUtil, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return imageUtil;
	}

	private GridPrintInfo Read12_GridPrintInfo(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id7_GridPrintInfo || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridPrintInfo gridPrintInfo = new GridPrintInfo();
		if (gridPrintInfo.m_awPageFirstCol == null)
		{
			gridPrintInfo.m_awPageFirstCol = new ArrayList();
		}
		_ = gridPrintInfo.m_awPageFirstCol;
		if (gridPrintInfo.m_awPageFirstRow == null)
		{
			gridPrintInfo.m_awPageFirstRow = new ArrayList();
		}
		_ = gridPrintInfo.m_awPageFirstRow;
		bool[] array = new bool[9];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridPrintInfo);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridPrintInfo;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id262_m_nPrintTopRow && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridPrintInfo.m_nPrintTopRow = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id263_m_nPrintLeftCol && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridPrintInfo.m_nPrintLeftCol = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[1] = true;
				}
				else if ((object)base.Reader.LocalName == id264_m_awPageFirstCol && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (!ReadNull())
					{
						if (gridPrintInfo.m_awPageFirstCol == null)
						{
							gridPrintInfo.m_awPageFirstCol = new ArrayList();
						}
						ArrayList awPageFirstCol = gridPrintInfo.m_awPageFirstCol;
						if (base.Reader.IsEmptyElement)
						{
							base.Reader.Skip();
						}
						else
						{
							base.Reader.ReadStartElement();
							base.Reader.MoveToContent();
							int whileIterations2 = 0;
							int readerCount2 = base.ReaderCount;
							while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
							{
								if (base.Reader.NodeType == XmlNodeType.Element)
								{
									if ((object)base.Reader.LocalName == id67_anyType && (object)base.Reader.NamespaceURI == id2_Item)
									{
										if (awPageFirstCol == null)
										{
											base.Reader.Skip();
										}
										else
										{
											awPageFirstCol.Add(Read1_Object(isNullable: true, checkType: true));
										}
									}
									else
									{
										UnknownNode(null, ":anyType");
									}
								}
								else
								{
									UnknownNode(null, ":anyType");
								}
								base.Reader.MoveToContent();
								CheckReaderCount(ref whileIterations2, ref readerCount2);
							}
							ReadEndElement();
						}
					}
				}
				else if ((object)base.Reader.LocalName == id265_m_awPageFirstRow && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (!ReadNull())
					{
						if (gridPrintInfo.m_awPageFirstRow == null)
						{
							gridPrintInfo.m_awPageFirstRow = new ArrayList();
						}
						ArrayList awPageFirstRow = gridPrintInfo.m_awPageFirstRow;
						if (base.Reader.IsEmptyElement)
						{
							base.Reader.Skip();
						}
						else
						{
							base.Reader.ReadStartElement();
							base.Reader.MoveToContent();
							int whileIterations3 = 0;
							int readerCount3 = base.ReaderCount;
							while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
							{
								if (base.Reader.NodeType == XmlNodeType.Element)
								{
									if ((object)base.Reader.LocalName == id67_anyType && (object)base.Reader.NamespaceURI == id2_Item)
									{
										if (awPageFirstRow == null)
										{
											base.Reader.Skip();
										}
										else
										{
											awPageFirstRow.Add(Read1_Object(isNullable: true, checkType: true));
										}
									}
									else
									{
										UnknownNode(null, ":anyType");
									}
								}
								else
								{
									UnknownNode(null, ":anyType");
								}
								base.Reader.MoveToContent();
								CheckReaderCount(ref whileIterations3, ref readerCount3);
							}
							ReadEndElement();
						}
					}
				}
				else if (!array[4] && (object)base.Reader.LocalName == id266_m_nCurrentPageColIndex && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridPrintInfo.m_nCurrentPageColIndex = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[4] = true;
				}
				else if (!array[5] && (object)base.Reader.LocalName == id267_m_nCurrentPageRowIndex && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridPrintInfo.m_nCurrentPageRowIndex = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[5] = true;
				}
				else if (!array[6] && (object)base.Reader.LocalName == id268_m_nPrintHandleRecordCount && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridPrintInfo.m_nPrintHandleRecordCount = Read11_GridCountRecordsBehavior(base.Reader.ReadElementString());
					array[6] = true;
				}
				else if (!array[7] && (object)base.Reader.LocalName == id269_m_bPrintPaintMsg && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridPrintInfo.m_bPrintPaintMsg = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					array[7] = true;
				}
				else if (!array[8] && (object)base.Reader.LocalName == id270_m_bPrintCurSelOnly && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridPrintInfo.m_bPrintCurSelOnly = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					array[8] = true;
				}
				else
				{
					UnknownNode(gridPrintInfo, ":m_nPrintTopRow, :m_nPrintLeftCol, :m_awPageFirstCol, :m_awPageFirstRow, :m_nCurrentPageColIndex, :m_nCurrentPageRowIndex, :m_nPrintHandleRecordCount, :m_bPrintPaintMsg, :m_bPrintCurSelOnly");
				}
			}
			else
			{
				UnknownNode(gridPrintInfo, ":m_nPrintTopRow, :m_nPrintLeftCol, :m_awPageFirstCol, :m_awPageFirstRow, :m_nCurrentPageColIndex, :m_nCurrentPageRowIndex, :m_nPrintHandleRecordCount, :m_bPrintPaintMsg, :m_bPrintCurSelOnly");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridPrintInfo;
	}

	private GridFactoryProvider Read14_GridFactoryProvider(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id9_GridFactoryProvider || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridFactoryProvider gridFactoryProvider = new GridFactoryProvider();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridFactoryProvider);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridFactoryProvider;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridFactoryProvider, "");
			}
			else
			{
				UnknownNode(gridFactoryProvider, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridFactoryProvider;
	}

	private GridFontState Read15_GridFontState(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id10_GridFontState || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridFontState gridFontState = new GridFontState();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridFontState);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridFontState;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridFontState, "");
			}
			else
			{
				UnknownNode(gridFontState, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridFontState;
	}

	private GridCellPos Read16_GridCellPos(bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id11_GridCellPos || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		GridCellPos gridCellPos;
		try
		{
			gridCellPos = (GridCellPos)Activator.CreateInstance(typeof(GridCellPos), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
		}
		catch (MissingMethodException)
		{
			throw CreateInaccessibleConstructorException("global::Syncfusion.Windows.Forms.Grid.GridCellPos");
		}
		catch (SecurityException)
		{
			throw CreateCtorHasSecurityException("global::Syncfusion.Windows.Forms.Grid.GridCellPos");
		}
		bool[] array = new bool[2];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridCellPos);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridCellPos;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id271_ColumnNumber && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridCellPos.ColumnNumber = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id272_RowNumber && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridCellPos.RowNumber = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[1] = true;
				}
				else
				{
					UnknownNode(gridCellPos, ":ColumnNumber, :RowNumber");
				}
			}
			else
			{
				UnknownNode(gridCellPos, ":ColumnNumber, :RowNumber");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridCellPos;
	}

	private GridConstants Read17_GridConstants(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id12_GridConstants || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridConstants gridConstants;
		try
		{
			gridConstants = (GridConstants)Activator.CreateInstance(typeof(GridConstants), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
		}
		catch (MissingMethodException)
		{
			throw CreateInaccessibleConstructorException("global::Syncfusion.Windows.Forms.Grid.GridConstants");
		}
		catch (SecurityException)
		{
			throw CreateCtorHasSecurityException("global::Syncfusion.Windows.Forms.Grid.GridConstants");
		}
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridConstants);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridConstants;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridConstants, "");
			}
			else
			{
				UnknownNode(gridConstants, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridConstants;
	}

	private GridCellBaseTextInfo Read25_GridCellBaseTextInfo(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id20_GridCellBaseTextInfo || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridCellBaseTextInfo gridCellBaseTextInfo;
		try
		{
			gridCellBaseTextInfo = (GridCellBaseTextInfo)Activator.CreateInstance(typeof(GridCellBaseTextInfo), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
		}
		catch (MissingMethodException)
		{
			throw CreateInaccessibleConstructorException("global::Syncfusion.Windows.Forms.Grid.GridCellBaseTextInfo");
		}
		catch (SecurityException)
		{
			throw CreateCtorHasSecurityException("global::Syncfusion.Windows.Forms.Grid.GridCellBaseTextInfo");
		}
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridCellBaseTextInfo);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridCellBaseTextInfo;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridCellBaseTextInfo, "");
			}
			else
			{
				UnknownNode(gridCellBaseTextInfo, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridCellBaseTextInfo;
	}

	private GridHitTestContext Read33_GridHitTestContext(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id28_GridHitTestContext || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridHitTestContext gridHitTestContext;
		try
		{
			gridHitTestContext = (GridHitTestContext)Activator.CreateInstance(typeof(GridHitTestContext), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
		}
		catch (MissingMethodException)
		{
			throw CreateInaccessibleConstructorException("global::Syncfusion.Windows.Forms.Grid.GridHitTestContext");
		}
		catch (SecurityException)
		{
			throw CreateCtorHasSecurityException("global::Syncfusion.Windows.Forms.Grid.GridHitTestContext");
		}
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridHitTestContext);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridHitTestContext;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridHitTestContext, "");
			}
			else
			{
				UnknownNode(gridHitTestContext, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridHitTestContext;
	}

	private GridDragDropFlags Read43_GridDragDropFlags(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id39_GridDragDropFlags || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridDragDropFlags gridDragDropFlags;
		try
		{
			gridDragDropFlags = (GridDragDropFlags)Activator.CreateInstance(typeof(GridDragDropFlags), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
		}
		catch (MissingMethodException)
		{
			throw CreateInaccessibleConstructorException("global::Syncfusion.Windows.Forms.Grid.GridDragDropFlags");
		}
		catch (SecurityException)
		{
			throw CreateCtorHasSecurityException("global::Syncfusion.Windows.Forms.Grid.GridDragDropFlags");
		}
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridDragDropFlags);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridDragDropFlags;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridDragDropFlags, "");
			}
			else
			{
				UnknownNode(gridDragDropFlags, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridDragDropFlags;
	}

	private GridCellTypeName Read48_GridCellTypeName(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id44_GridCellTypeName || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridCellTypeName gridCellTypeName = new GridCellTypeName();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridCellTypeName);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridCellTypeName;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridCellTypeName, "");
			}
			else
			{
				UnknownNode(gridCellTypeName, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridCellTypeName;
	}

	private GridUtil Read49_GridUtil(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id45_GridUtil || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridUtil gridUtil;
		try
		{
			gridUtil = (GridUtil)Activator.CreateInstance(typeof(GridUtil), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
		}
		catch (MissingMethodException)
		{
			throw CreateInaccessibleConstructorException("global::Syncfusion.Windows.Forms.Grid.GridUtil");
		}
		catch (SecurityException)
		{
			throw CreateCtorHasSecurityException("global::Syncfusion.Windows.Forms.Grid.GridUtil");
		}
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridUtil);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridUtil;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridUtil, "");
			}
			else
			{
				UnknownNode(gridUtil, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridUtil;
	}

	private GridBanneredCellPool Read50_GridBanneredCellPool(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id46_GridBanneredCellPool || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridBanneredCellPool gridBanneredCellPool = new GridBanneredCellPool();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridBanneredCellPool);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridBanneredCellPool;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridBanneredCellPool, "");
			}
			else
			{
				UnknownNode(gridBanneredCellPool, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridBanneredCellPool;
	}

	private GridCellInfoTypeConverter Read54_GridCellInfoTypeConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id49_GridCellInfoTypeConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridCellInfoTypeConverter gridCellInfoTypeConverter = new GridCellInfoTypeConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridCellInfoTypeConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridCellInfoTypeConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridCellInfoTypeConverter, "");
			}
			else
			{
				UnknownNode(gridCellInfoTypeConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridCellInfoTypeConverter;
	}

	private GridColHiddenTypeConverter Read61_GridColHiddenTypeConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id55_GridColHiddenTypeConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridColHiddenTypeConverter gridColHiddenTypeConverter = new GridColHiddenTypeConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridColHiddenTypeConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridColHiddenTypeConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridColHiddenTypeConverter, "");
			}
			else
			{
				UnknownNode(gridColHiddenTypeConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridColHiddenTypeConverter;
	}

	private GridColWidthTypeConverter Read63_GridColWidthTypeConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id58_GridColWidthTypeConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridColWidthTypeConverter gridColWidthTypeConverter = new GridColWidthTypeConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridColWidthTypeConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridColWidthTypeConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridColWidthTypeConverter, "");
			}
			else
			{
				UnknownNode(gridColWidthTypeConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridColWidthTypeConverter;
	}

	private ExpandableObjectConverter Read53_ExpandableObjectConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id245_ExpandableObjectConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id100_GridBaseStyleConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read102_GridBaseStyleConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id86_GridRowHiddenTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read87_GridRowHiddenTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id83_GridRowHeightTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read85_GridRowHeightTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id80_GridRangeStyleTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read83_GridRangeStyleTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id58_GridColWidthTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read63_GridColWidthTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id55_GridColHiddenTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read61_GridColHiddenTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id49_GridCellInfoTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read54_GridCellInfoTypeConverter(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		ExpandableObjectConverter expandableObjectConverter = new ExpandableObjectConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(expandableObjectConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return expandableObjectConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(expandableObjectConverter, "");
			}
			else
			{
				UnknownNode(expandableObjectConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return expandableObjectConverter;
	}

	private GridCellValueTypeConverter Read59_GridCellValueTypeConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id52_GridCellValueTypeConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridCellValueTypeConverter gridCellValueTypeConverter = new GridCellValueTypeConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridCellValueTypeConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridCellValueTypeConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridCellValueTypeConverter, "");
			}
			else
			{
				UnknownNode(gridCellValueTypeConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridCellValueTypeConverter;
	}

	private GridDataTypeConverter Read68_GridDataTypeConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id62_GridDataTypeConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridDataTypeConverter gridDataTypeConverter = new GridDataTypeConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridDataTypeConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridDataTypeConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridDataTypeConverter, "");
			}
			else
			{
				UnknownNode(gridDataTypeConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridDataTypeConverter;
	}

	private StyleInfoBaseConverter Read120_StyleInfoBaseConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id244_StyleInfoBaseConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id138_GridStyleInfoConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read121_GridStyleInfoConverter(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		StyleInfoBaseConverter styleInfoBaseConverter = new StyleInfoBaseConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(styleInfoBaseConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return styleInfoBaseConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(styleInfoBaseConverter, "");
			}
			else
			{
				UnknownNode(styleInfoBaseConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return styleInfoBaseConverter;
	}

	private TypeConverter Read52_TypeConverter(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id243_TypeConverter || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id244_StyleInfoBaseConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read120_StyleInfoBaseConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id138_GridStyleInfoConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read121_GridStyleInfoConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id115_GridCellTypeNameConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read112_GridCellTypeNameConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id109_GridBorderConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read108_GridBorderConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id101_GridBaseStyleNameConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read103_GridBaseStyleNameConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id92_GridRangeInfoListConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read95_GridRangeInfoListConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id89_GridRangeInfoConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read91_GridRangeInfoConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id74_Item && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read78_Item(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id70_Item && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read74_Item(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id62_GridDataTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read68_GridDataTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id52_GridCellValueTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read59_GridCellValueTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id245_ExpandableObjectConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read53_ExpandableObjectConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id100_GridBaseStyleConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read102_GridBaseStyleConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id86_GridRowHiddenTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read87_GridRowHiddenTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id83_GridRowHeightTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read85_GridRowHeightTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id80_GridRangeStyleTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read83_GridRangeStyleTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id58_GridColWidthTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read63_GridColWidthTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id55_GridColHiddenTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read61_GridColHiddenTypeConverter(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id49_GridCellInfoTypeConverter && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read54_GridCellInfoTypeConverter(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		TypeConverter typeConverter = new TypeConverter();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(typeConverter);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return typeConverter;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(typeConverter, "");
			}
			else
			{
				UnknownNode(typeConverter, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return typeConverter;
	}

	private GridModelBound Read56_GridModelBound(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id50_GridModelBound || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id73_GridModelRowColOperations && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read77_GridModelRowColOperations(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id71_GridModelHideRowColsIndexer && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read75_GridModelHideRowColsIndexer(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		throw CreateAbstractTypeException("GridModelBound", "");
	}

	private Disposable Read80_Disposable(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id242_Disposable || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id77_GridProperties && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read81_GridProperties(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		Disposable disposable = new Disposable();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(disposable);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return disposable;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(disposable, "");
			}
			else
			{
				UnknownNode(disposable, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return disposable;
	}

	private GridSubComponent Read88_GridSubComponent(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id241_GridSubComponent || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id87_GridMouseController && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read89_GridMouseController(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridSubComponent gridSubComponent;
		try
		{
			gridSubComponent = (GridSubComponent)Activator.CreateInstance(typeof(GridSubComponent), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
		}
		catch (MissingMethodException)
		{
			throw CreateInaccessibleConstructorException("global::Syncfusion.Windows.Forms.Grid.GridSubComponent");
		}
		catch (SecurityException)
		{
			throw CreateCtorHasSecurityException("global::Syncfusion.Windows.Forms.Grid.GridSubComponent");
		}
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridSubComponent);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridSubComponent;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridSubComponent, "");
			}
			else
			{
				UnknownNode(gridSubComponent, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridSubComponent;
	}

	private NonFinalizeDisposable Read55_NonFinalizeDisposable(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id240_NonFinalizeDisposable || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id102_GridBaseStyle && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read104_GridBaseStyle(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id241_GridSubComponent && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read88_GridSubComponent(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id87_GridMouseController && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read89_GridMouseController(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id242_Disposable && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read80_Disposable(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id77_GridProperties && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read81_GridProperties(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id50_GridModelBound && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read56_GridModelBound(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id73_GridModelRowColOperations && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read77_GridModelRowColOperations(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id71_GridModelHideRowColsIndexer && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read75_GridModelHideRowColsIndexer(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		NonFinalizeDisposable nonFinalizeDisposable = new NonFinalizeDisposable();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(nonFinalizeDisposable);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return nonFinalizeDisposable;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(nonFinalizeDisposable, "");
			}
			else
			{
				UnknownNode(nonFinalizeDisposable, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return nonFinalizeDisposable;
	}

	private GridCellValueConvert Read58_GridCellValueConvert(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id51_GridCellValueConvert || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridCellValueConvert gridCellValueConvert = new GridCellValueConvert();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridCellValueConvert);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridCellValueConvert;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridCellValueConvert, "");
			}
			else
			{
				UnknownNode(gridCellValueConvert, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridCellValueConvert;
	}

	private ValueConvert Read57_ValueConvert(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id239_ValueConvert || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id51_GridCellValueConvert && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read58_GridCellValueConvert(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		ValueConvert valueConvert;
		try
		{
			valueConvert = (ValueConvert)Activator.CreateInstance(typeof(ValueConvert), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, new object[0], null);
		}
		catch (MissingMethodException)
		{
			throw CreateInaccessibleConstructorException("global::Syncfusion.Styles.ValueConvert");
		}
		catch (SecurityException)
		{
			throw CreateCtorHasSecurityException("global::Syncfusion.Styles.ValueConvert");
		}
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(valueConvert);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return valueConvert;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(valueConvert, "");
			}
			else
			{
				UnknownNode(valueConvert, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return valueConvert;
	}

	private GridModelCommand Read65_GridModelCommand(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id59_GridModelCommand || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		throw CreateAbstractTypeException("GridModelCommand", "");
	}

	private SyncfusionCommand Read64_SyncfusionCommand(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id238_SyncfusionCommand || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id59_GridModelCommand && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read65_GridModelCommand(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		throw CreateAbstractTypeException("SyncfusionCommand", "");
	}

	private GridCoveredCellPool Read66_GridCoveredCellPool(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id60_GridCoveredCellPool || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridCoveredCellPool gridCoveredCellPool = new GridCoveredCellPool();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridCoveredCellPool);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridCoveredCellPool;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(gridCoveredCellPool, "");
			}
			else
			{
				UnknownNode(gridCoveredCellPool, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridCoveredCellPool;
	}

	private GridData Read67_GridData(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id61_GridData || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		GridData gridData = new GridData();
		_ = gridData.Rows;
		bool[] array = new bool[4];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(gridData);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return gridData;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id273_RowCount && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridData.RowCount = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[0] = true;
				}
				else if (!array[1] && (object)base.Reader.LocalName == id274_ColCount && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridData.ColCount = XmlConvert.ToInt32(base.Reader.ReadElementString());
					array[1] = true;
				}
				else if (!array[2] && (object)base.Reader.LocalName == id275_ExtendedInfo && (object)base.Reader.NamespaceURI == id2_Item)
				{
					gridData.ExtendedInfo = Read1_Object(isNullable: false, checkType: true);
					array[2] = true;
				}
				else if ((object)base.Reader.LocalName == id276_Rows && (object)base.Reader.NamespaceURI == id2_Item)
				{
					if (!ReadNull())
					{
						GridRowCollection rows = gridData.Rows;
						if (rows == null || base.Reader.IsEmptyElement)
						{
							base.Reader.Skip();
						}
						else
						{
							base.Reader.ReadStartElement();
							base.Reader.MoveToContent();
							int whileIterations2 = 0;
							int readerCount2 = base.ReaderCount;
							while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
							{
								if (base.Reader.NodeType == XmlNodeType.Element)
								{
									if ((object)base.Reader.LocalName == id63_ArrayOfGridStyleInfoStore && (object)base.Reader.NamespaceURI == id2_Item)
									{
										if (!ReadNull())
										{
											GridCellCollection gridCellCollection = new GridCellCollection();
											rows.Add(gridCellCollection);
											if (gridCellCollection == null || base.Reader.IsEmptyElement)
											{
												base.Reader.Skip();
											}
											else
											{
												base.Reader.ReadStartElement();
												base.Reader.MoveToContent();
												int whileIterations3 = 0;
												int readerCount3 = base.ReaderCount;
												while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
												{
													if (base.Reader.NodeType == XmlNodeType.Element)
													{
														if ((object)base.Reader.LocalName == id64_GridStyleInfoStore && (object)base.Reader.NamespaceURI == id2_Item)
														{
															gridCellCollection.Add((GridStyleInfoStore)ReadSerializable(new GridStyleInfoStore()));
														}
														else
														{
															UnknownNode(null, ":GridStyleInfoStore");
														}
													}
													else
													{
														UnknownNode(null, ":GridStyleInfoStore");
													}
													base.Reader.MoveToContent();
													CheckReaderCount(ref whileIterations3, ref readerCount3);
												}
												ReadEndElement();
											}
										}
										else
										{
											GridCellCollection value = new GridCellCollection();
											rows.Add(value);
										}
									}
									else
									{
										UnknownNode(null, ":ArrayOfGridStyleInfoStore");
									}
								}
								else
								{
									UnknownNode(null, ":ArrayOfGridStyleInfoStore");
								}
								base.Reader.MoveToContent();
								CheckReaderCount(ref whileIterations2, ref readerCount2);
							}
							ReadEndElement();
						}
					}
				}
				else
				{
					UnknownNode(gridData, ":RowCount, :ColCount, :ExtendedInfo, :Rows");
				}
			}
			else
			{
				UnknownNode(gridData, ":RowCount, :ColCount, :ExtendedInfo, :Rows");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return gridData;
	}

	private SyncfusionHandledEventArgs Read71_SyncfusionHandledEventArgs(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id237_SyncfusionHandledEventArgs || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id152_GridValidateFailedEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read133_GridValidateFailedEventArgs(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id68_GridRowColCountEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read72_GridRowColCountEventArgs(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		SyncfusionHandledEventArgs e = new SyncfusionHandledEventArgs();
		bool[] array = new bool[1];
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(e);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return e;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				if (!array[0] && (object)base.Reader.LocalName == id180_Handled && (object)base.Reader.NamespaceURI == id2_Item)
				{
					e.Handled = XmlConvert.ToBoolean(base.Reader.ReadElementString());
					array[0] = true;
				}
				else
				{
					UnknownNode(e, ":Handled");
				}
			}
			else
			{
				UnknownNode(e, ":Handled");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return e;
	}

	private SyncfusionEventArgs Read70_SyncfusionEventArgs(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id236_SyncfusionEventArgs || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id154_Item && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read135_Item(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id69_GridEndUpdateRequestEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read73_GridEndUpdateRequestEventArgs(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id237_SyncfusionHandledEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read71_SyncfusionHandledEventArgs(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id152_GridValidateFailedEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read133_GridValidateFailedEventArgs(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id68_GridRowColCountEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read72_GridRowColCountEventArgs(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		SyncfusionEventArgs e = new SyncfusionEventArgs();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(e);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return e;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(e, "");
			}
			else
			{
				UnknownNode(e, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return e;
	}

	private EventArgs Read69_EventArgs(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id235_EventArgs || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id161_GridFormulaParsingEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read142_GridFormulaParsingEventArgs(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id236_SyncfusionEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read70_SyncfusionEventArgs(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id154_Item && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read135_Item(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id69_GridEndUpdateRequestEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read73_GridEndUpdateRequestEventArgs(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id237_SyncfusionHandledEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read71_SyncfusionHandledEventArgs(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id152_GridValidateFailedEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read133_GridValidateFailedEventArgs(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id68_GridRowColCountEventArgs && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read72_GridRowColCountEventArgs(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		EventArgs e = new EventArgs();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(e);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return e;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(e, "");
			}
			else
			{
				UnknownNode(e, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return e;
	}

	private CodeDomSerializer Read93_CodeDomSerializer(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id234_CodeDomSerializer || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id108_GridBorderCodeDomSerializer && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read107_GridBorderCodeDomSerializer(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id90_GridRangeInfoCodeDomSerializer && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read94_GridRangeInfoCodeDomSerializer(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		CodeDomSerializer codeDomSerializer = new CodeDomSerializer();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(codeDomSerializer);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return codeDomSerializer;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(codeDomSerializer, "");
			}
			else
			{
				UnknownNode(codeDomSerializer, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return codeDomSerializer;
	}

	private CodeDomSerializerBase Read92_CodeDomSerializerBase(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id233_CodeDomSerializerBase || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id234_CodeDomSerializer && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read93_CodeDomSerializer(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id108_GridBorderCodeDomSerializer && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read107_GridBorderCodeDomSerializer(isNullable, checkType: false);
			}
			if ((object)xmlQualifiedName.Name == id90_GridRangeInfoCodeDomSerializer && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read94_GridRangeInfoCodeDomSerializer(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		throw CreateAbstractTypeException("CodeDomSerializerBase", "");
	}

	private UITypeEditor Read113_UITypeEditor(bool isNullable, bool checkType)
	{
		XmlQualifiedName xmlQualifiedName = (checkType ? GetXsiType() : null);
		bool flag = false;
		if (isNullable)
		{
			flag = ReadNull();
		}
		if (checkType && !(xmlQualifiedName == null) && ((object)xmlQualifiedName.Name != id232_UITypeEditor || (object)xmlQualifiedName.Namespace != id2_Item))
		{
			if ((object)xmlQualifiedName.Name == id124_GridFontInfoEditor && (object)xmlQualifiedName.Namespace == id2_Item)
			{
				return Read114_GridFontInfoEditor(isNullable, checkType: false);
			}
			throw CreateUnknownTypeException(xmlQualifiedName);
		}
		if (flag)
		{
			return null;
		}
		UITypeEditor uITypeEditor = new UITypeEditor();
		while (base.Reader.MoveToNextAttribute())
		{
			if (!IsXmlnsAttribute(base.Reader.Name))
			{
				UnknownNode(uITypeEditor);
			}
		}
		base.Reader.MoveToElement();
		if (base.Reader.IsEmptyElement)
		{
			base.Reader.Skip();
			return uITypeEditor;
		}
		base.Reader.ReadStartElement();
		base.Reader.MoveToContent();
		int whileIterations = 0;
		int readerCount = base.ReaderCount;
		while (base.Reader.NodeType != XmlNodeType.EndElement && base.Reader.NodeType != XmlNodeType.None)
		{
			if (base.Reader.NodeType == XmlNodeType.Element)
			{
				UnknownNode(uITypeEditor, "");
			}
			else
			{
				UnknownNode(uITypeEditor, "");
			}
			base.Reader.MoveToContent();
			CheckReaderCount(ref whileIterations, ref readerCount);
		}
		ReadEndElement();
		return uITypeEditor;
	}

	protected override void InitCallbacks()
	{
	}

	protected override void InitIDs()
	{
		id204_Formula = base.Reader.NameTable.Add("Formula");
		id50_GridModelBound = base.Reader.NameTable.Add("GridModelBound");
		id203_Right = base.Reader.NameTable.Add("Right");
		id31_GridMergeCellDirection = base.Reader.NameTable.Add("GridMergeCellDirection");
		id227_GridLineColorString = base.Reader.NameTable.Add("GridLineColorString");
		id237_SyncfusionHandledEventArgs = base.Reader.NameTable.Add("SyncfusionHandledEventArgs");
		id18_GridResizeToFitOptions = base.Reader.NameTable.Add("GridResizeToFitOptions");
		id269_m_bPrintPaintMsg = base.Reader.NameTable.Add("m_bPrintPaintMsg");
		id45_GridUtil = base.Reader.NameTable.Add("GridUtil");
		id124_GridFontInfoEditor = base.Reader.NameTable.Add("GridFontInfoEditor");
		id167_GridDragColumnHeaderHelper = base.Reader.NameTable.Add("GridDragColumnHeaderHelper");
		id128_GridMarginsInfo = base.Reader.NameTable.Add("GridMarginsInfo");
		id214_MarkColHeader = base.Reader.NameTable.Add("MarkColHeader");
		id126_GridHorizontalAlignment = base.Reader.NameTable.Add("GridHorizontalAlignment");
		id65_Item = base.Reader.NameTable.Add("ArrayOfArrayOfGridStyleInfoStore");
		id56_ArrayOfGridColWidth = base.Reader.NameTable.Add("ArrayOfGridColWidth");
		id180_Handled = base.Reader.NameTable.Add("Handled");
		id262_m_nPrintTopRow = base.Reader.NameTable.Add("m_nPrintTopRow");
		id223_PrintVertLines = base.Reader.NameTable.Add("PrintVertLines");
		id39_GridDragDropFlags = base.Reader.NameTable.Add("GridDragDropFlags");
		id11_GridCellPos = base.Reader.NameTable.Add("GridCellPos");
		id19_GridQueryBounds = base.Reader.NameTable.Add("GridQueryBounds");
		id75_GridNamespaceGroupItem = base.Reader.NameTable.Add("GridNamespaceGroupItem");
		id81_ArrayOfGridRowHeight = base.Reader.NameTable.Add("ArrayOfGridRowHeight");
		id243_TypeConverter = base.Reader.NameTable.Add("TypeConverter");
		id135_GridProgressBarInfo = base.Reader.NameTable.Add("GridProgressBarInfo");
		id220_ColHeaders = base.Reader.NameTable.Add("ColHeaders");
		id158_LenComparer = base.Reader.NameTable.Add("LenComparer");
		id260_ClientRectangle = base.Reader.NameTable.Add("ClientRectangle");
		id235_EventArgs = base.Reader.NameTable.Add("EventArgs");
		id244_StyleInfoBaseConverter = base.Reader.NameTable.Add("StyleInfoBaseConverter");
		id38_GridCountRecordsBehavior = base.Reader.NameTable.Add("GridCountRecordsBehavior");
		id240_NonFinalizeDisposable = base.Reader.NameTable.Add("NonFinalizeDisposable");
		id270_m_bPrintCurSelOnly = base.Reader.NameTable.Add("m_bPrintCurSelOnly");
		id184_Length = base.Reader.NameTable.Add("Length");
		id111_GridBorderSide = base.Reader.NameTable.Add("GridBorderSide");
		id61_GridData = base.Reader.NameTable.Add("GridData");
		id125_GridFormulaTag = base.Reader.NameTable.Add("GridFormulaTag");
		id252_Width = base.Reader.NameTable.Add("Width");
		id248_Size = base.Reader.NameTable.Add("Size");
		id15_GridQueryFloatCell = base.Reader.NameTable.Add("GridQueryFloatCell");
		id211_DisplayVertLines = base.Reader.NameTable.Add("DisplayVertLines");
		id255_X = base.Reader.NameTable.Add("X");
		id256_Y = base.Reader.NameTable.Add("Y");
		id198_Name = base.Reader.NameTable.Add("Name");
		id271_ColumnNumber = base.Reader.NameTable.Add("ColumnNumber");
		id166_Item = base.Reader.NameTable.Add("GridDragColumnHeaderMouseControllerBase");
		id85_GridRowHidden = base.Reader.NameTable.Add("GridRowHidden");
		id174_Text = base.Reader.NameTable.Add("Text");
		id113_GridBordersInfo = base.Reader.NameTable.Add("GridBordersInfo");
		id106_GridBorderWeight = base.Reader.NameTable.Add("GridBorderWeight");
		id54_GridColHidden = base.Reader.NameTable.Add("GridColHidden");
		id266_m_nCurrentPageColIndex = base.Reader.NameTable.Add("m_nCurrentPageColIndex");
		id22_GridDragSelectionReason = base.Reader.NameTable.Add("GridDragSelectionReason");
		id209_Range = base.Reader.NameTable.Add("Range");
		id41_GridCommandMode = base.Reader.NameTable.Add("GridCommandMode");
		id234_CodeDomSerializer = base.Reader.NameTable.Add("CodeDomSerializer");
		id185_HiddenRows = base.Reader.NameTable.Add("HiddenRows");
		id157_GridFindReplaceDialogOptions = base.Reader.NameTable.Add("GridFindReplaceDialogOptions");
		id238_SyncfusionCommand = base.Reader.NameTable.Add("SyncfusionCommand");
		id96_GridCursors = base.Reader.NameTable.Add("GridCursors");
		id177_RowFilter = base.Reader.NameTable.Add("RowFilter");
		id53_ArrayOfGridColHidden = base.Reader.NameTable.Add("ArrayOfGridColHidden");
		id216_PrintColHeader = base.Reader.NameTable.Add("PrintColHeader");
		id188_ColumnWidths = base.Reader.NameTable.Add("ColumnWidths");
		id55_GridColHiddenTypeConverter = base.Reader.NameTable.Add("GridColHiddenTypeConverter");
		id40_GridFindTextOptions = base.Reader.NameTable.Add("GridFindTextOptions");
		id229_ResizingCellsLinesColorString = base.Reader.NameTable.Add("ResizingCellsLinesColorString");
		id136_GridShowButtons = base.Reader.NameTable.Add("GridShowButtons");
		id149_GridRadioButtonInfo = base.Reader.NameTable.Add("GridRadioButtonInfo");
		id178_StyleInfo = base.Reader.NameTable.Add("StyleInfo");
		id59_GridModelCommand = base.Reader.NameTable.Add("GridModelCommand");
		id80_GridRangeStyleTypeConverter = base.Reader.NameTable.Add("GridRangeStyleTypeConverter");
		id141_GridDesignerMain = base.Reader.NameTable.Add("GridDesignerMain");
		id213_MarkRowHeader = base.Reader.NameTable.Add("MarkRowHeader");
		id121_GridCurrencyEditInfoStore = base.Reader.NameTable.Add("GridCurrencyEditInfoStore");
		id64_GridStyleInfoStore = base.Reader.NameTable.Add("GridStyleInfoStore");
		id43_GridDataObjectConsumerOptions = base.Reader.NameTable.Add("GridDataObjectConsumerOptions");
		id62_GridDataTypeConverter = base.Reader.NameTable.Add("GridDataTypeConverter");
		id263_m_nPrintLeftCol = base.Reader.NameTable.Add("m_nPrintLeftCol");
		id146_ArrayOfGridRowColEntry = base.Reader.NameTable.Add("ArrayOfGridRowColEntry");
		id132_GridNumericUpDownCellInfoStore = base.Reader.NameTable.Add("GridNumericUpDownCellInfoStore");
		id88_GridRangeInfo = base.Reader.NameTable.Add("GridRangeInfo");
		id139_GridTextAlign = base.Reader.NameTable.Add("GridTextAlign");
		id27_GridResizeCellsBehavior = base.Reader.NameTable.Add("GridResizeCellsBehavior");
		id109_GridBorderConverter = base.Reader.NameTable.Add("GridBorderConverter");
		id197_CellContents = base.Reader.NameTable.Add("CellContents");
		id170_GridGdiPaint = base.Reader.NameTable.Add("GridGdiPaint");
		id110_GridBorderPaint = base.Reader.NameTable.Add("GridBorderPaint");
		id268_m_nPrintHandleRecordCount = base.Reader.NameTable.Add("m_nPrintHandleRecordCount");
		id70_Item = base.Reader.NameTable.Add("GridRowColHideDictionaryTypeConverter");
		id95_Item = base.Reader.NameTable.Add("ArrayOfGridNonImmutableRangeInfo");
		id251_ArrayOfString = base.Reader.NameTable.Add("ArrayOfString");
		id222_RowHeaders = base.Reader.NameTable.Add("RowHeaders");
		id239_ValueConvert = base.Reader.NameTable.Add("ValueConvert");
		id25_GridBackgroundImageMode = base.Reader.NameTable.Add("GridBackgroundImageMode");
		id258_InnerRectangle = base.Reader.NameTable.Add("InnerRectangle");
		id107_GridBorder = base.Reader.NameTable.Add("GridBorder");
		id182_Enabled = base.Reader.NameTable.Add("Enabled");
		id159_GridSheetFamilyItem = base.Reader.NameTable.Add("GridSheetFamilyItem");
		id34_GridDrawOrder = base.Reader.NameTable.Add("GridDrawOrder");
		id63_ArrayOfGridStyleInfoStore = base.Reader.NameTable.Add("ArrayOfGridStyleInfoStore");
		id114_GridCellAppearance = base.Reader.NameTable.Add("GridCellAppearance");
		id155_GridFilterBar = base.Reader.NameTable.Add("GridFilterBar");
		id172_Value = base.Reader.NameTable.Add("Value");
		id137_GridStyleInfoCustomProperties = base.Reader.NameTable.Add("GridStyleInfoCustomProperties");
		id186_RowHeights = base.Reader.NameTable.Add("RowHeights");
		id12_GridConstants = base.Reader.NameTable.Add("GridConstants");
		id32_GridMergeCellsMode = base.Reader.NameTable.Add("GridMergeCellsMode");
		id49_GridCellInfoTypeConverter = base.Reader.NameTable.Add("GridCellInfoTypeConverter");
		id165_GridDragColumnHeaderBitmaps = base.Reader.NameTable.Add("GridDragColumnHeaderBitmaps");
		id140_GridVerticalAlignment = base.Reader.NameTable.Add("GridVerticalAlignment");
		id232_UITypeEditor = base.Reader.NameTable.Add("UITypeEditor");
		id215_PrintRowHeader = base.Reader.NameTable.Add("PrintRowHeader");
		id115_GridCellTypeNameConverter = base.Reader.NameTable.Add("GridCellTypeNameConverter");
		id119_GridCheckBoxCellInfo = base.Reader.NameTable.Add("GridCheckBoxCellInfo");
		id161_GridFormulaParsingEventArgs = base.Reader.NameTable.Add("GridFormulaParsingEventArgs");
		id118_GridCheckBoxCellInfoStore = base.Reader.NameTable.Add("GridCheckBoxCellInfoStore");
		id46_GridBanneredCellPool = base.Reader.NameTable.Add("GridBanneredCellPool");
		id98_GridSortInfo = base.Reader.NameTable.Add("GridSortInfo");
		id254_Location = base.Reader.NameTable.Add("Location");
		id264_m_awPageFirstCol = base.Reader.NameTable.Add("m_awPageFirstCol");
		id230_BackgroundColorString = base.Reader.NameTable.Add("BackgroundColorString");
		id76_ArrayOfGridNamespaceGroupItem = base.Reader.NameTable.Add("ArrayOfGridNamespaceGroupItem");
		id265_m_awPageFirstRow = base.Reader.NameTable.Add("m_awPageFirstRow");
		id7_GridPrintInfo = base.Reader.NameTable.Add("GridPrintInfo");
		id175_GridFilterBarStrings = base.Reader.NameTable.Add("GridFilterBarStrings");
		id275_ExtendedInfo = base.Reader.NameTable.Add("ExtendedInfo");
		id71_GridModelHideRowColsIndexer = base.Reader.NameTable.Add("GridModelHideRowColsIndexer");
		id5_GridImageUtil = base.Reader.NameTable.Add("GridImageUtil");
		id51_GridCellValueConvert = base.Reader.NameTable.Add("GridCellValueConvert");
		id201_Left = base.Reader.NameTable.Add("Left");
		id245_ExpandableObjectConverter = base.Reader.NameTable.Add("ExpandableObjectConverter");
		id226_PrintFrame = base.Reader.NameTable.Add("PrintFrame");
		id241_GridSubComponent = base.Reader.NameTable.Add("GridSubComponent");
		id163_ArrayOfNamedRange = base.Reader.NameTable.Add("ArrayOfNamedRange");
		id224_PageOrder = base.Reader.NameTable.Add("PageOrder");
		id154_Item = base.Reader.NameTable.Add("GridFilterBarTextChangedEventArgs");
		id142_GridCellsMemento = base.Reader.NameTable.Add("GridCellsMemento");
		id156_Item = base.Reader.NameTable.Add("GridCurrentRecordItemChangedBehavior");
		id48_ArrayOfGridCellInfo = base.Reader.NameTable.Add("ArrayOfGridCellInfo");
		id29_GridSelectionFlags = base.Reader.NameTable.Add("GridSelectionFlags");
		id13_GridScrollCurrentCellReason = base.Reader.NameTable.Add("GridScrollCurrentCellReason");
		id249_Point = base.Reader.NameTable.Add("Point");
		id205_ParsedRow = base.Reader.NameTable.Add("ParsedRow");
		id79_GridRangeStyle = base.Reader.NameTable.Add("GridRangeStyle");
		id219_CenterVertical = base.Reader.NameTable.Add("CenterVertical");
		id246_ImageUtil = base.Reader.NameTable.Add("ImageUtil");
		id68_GridRowColCountEventArgs = base.Reader.NameTable.Add("GridRowColCountEventArgs");
		id231_Count = base.Reader.NameTable.Add("Count");
		id131_GridMaskEditInfoStore = base.Reader.NameTable.Add("GridMaskEditInfoStore");
		id104_GridStyleInfo = base.Reader.NameTable.Add("GridStyleInfo");
		id152_GridValidateFailedEventArgs = base.Reader.NameTable.Add("GridValidateFailedEventArgs");
		id250_ArrayOfRectangle = base.Reader.NameTable.Add("ArrayOfRectangle");
		id212_DisplayHorzLines = base.Reader.NameTable.Add("DisplayHorzLines");
		id129_GridMargins = base.Reader.NameTable.Add("GridMargins");
		id37_GridScrollbarMode = base.Reader.NameTable.Add("GridScrollbarMode");
		id257_CellRectangle = base.Reader.NameTable.Add("CellRectangle");
		id276_Rows = base.Reader.NameTable.Add("Rows");
		id259_Buttons = base.Reader.NameTable.Add("Buttons");
		id143_ColumnStyles = base.Reader.NameTable.Add("ColumnStyles");
		id196_Col = base.Reader.NameTable.Add("Col");
		id144_RowStyles = base.Reader.NameTable.Add("RowStyles");
		id33_GridCellActivateAction = base.Reader.NameTable.Add("GridCellActivateAction");
		id73_GridModelRowColOperations = base.Reader.NameTable.Add("GridModelRowColOperations");
		id133_GridNumericUpDownCellInfo = base.Reader.NameTable.Add("GridNumericUpDownCellInfo");
		id208_Height = base.Reader.NameTable.Add("Height");
		id127_GridMarginsInfoStore = base.Reader.NameTable.Add("GridMarginsInfoStore");
		id108_GridBorderCodeDomSerializer = base.Reader.NameTable.Add("GridBorderCodeDomSerializer");
		id36_GridSetCurrentCellOptions = base.Reader.NameTable.Add("GridSetCurrentCellOptions");
		id150_GridSerializeCellsBehavior = base.Reader.NameTable.Add("GridSerializeCellsBehavior");
		id84_ArrayOfGridRowHidden = base.Reader.NameTable.Add("ArrayOfGridRowHidden");
		id2_Item = base.Reader.NameTable.Add("");
		id123_GridFontInfo = base.Reader.NameTable.Add("GridFontInfo");
		id272_RowNumber = base.Reader.NameTable.Add("RowNumber");
		id94_GridNonImmutableRangeInfo = base.Reader.NameTable.Add("GridNonImmutableRangeInfo");
		id200_Top = base.Reader.NameTable.Add("Top");
		id138_GridStyleInfoConverter = base.Reader.NameTable.Add("GridStyleInfoConverter");
		id90_GridRangeInfoCodeDomSerializer = base.Reader.NameTable.Add("GridRangeInfoCodeDomSerializer");
		id267_m_nCurrentPageRowIndex = base.Reader.NameTable.Add("m_nCurrentPageRowIndex");
		id187_HiddenColumns = base.Reader.NameTable.Add("HiddenColumns");
		id17_GridRefreshCurrentCellBehavior = base.Reader.NameTable.Add("GridRefreshCurrentCellBehavior");
		id148_GridCellModelFactory = base.Reader.NameTable.Add("GridCellModelFactory");
		id74_Item = base.Reader.NameTable.Add("GridRowColSizeDictionaryTypeConverter");
		id82_GridRowHeight = base.Reader.NameTable.Add("GridRowHeight");
		id28_GridHitTestContext = base.Reader.NameTable.Add("GridHitTestContext");
		id9_GridFactoryProvider = base.Reader.NameTable.Add("GridFactoryProvider");
		id16_GridWrapCellBehavior = base.Reader.NameTable.Add("GridWrapCellBehavior");
		id58_GridColWidthTypeConverter = base.Reader.NameTable.Add("GridColWidthTypeConverter");
		id202_Bottom = base.Reader.NameTable.Add("Bottom");
		id47_GridCellInfo = base.Reader.NameTable.Add("GridCellInfo");
		id171_Key = base.Reader.NameTable.Add("Key");
		id86_GridRowHiddenTypeConverter = base.Reader.NameTable.Add("GridRowHiddenTypeConverter");
		id274_ColCount = base.Reader.NameTable.Add("ColCount");
		id160_GridFormulaCopyFlags = base.Reader.NameTable.Add("GridFormulaCopyFlags");
		id44_GridCellTypeName = base.Reader.NameTable.Add("GridCellTypeName");
		id217_Printing = base.Reader.NameTable.Add("Printing");
		id91_ArrayOfGridRangeInfo = base.Reader.NameTable.Add("ArrayOfGridRangeInfo");
		id8_GridCellSizeKind = base.Reader.NameTable.Add("GridCellSizeKind");
		id20_GridCellBaseTextInfo = base.Reader.NameTable.Add("GridCellBaseTextInfo");
		id1_GridWindowsAssembly = base.Reader.NameTable.Add("GridWindowsAssembly");
		id93_GridRangeInfoType = base.Reader.NameTable.Add("GridRangeInfoType");
		id92_GridRangeInfoListConverter = base.Reader.NameTable.Add("GridRangeInfoListConverter");
		id253_ColIndex = base.Reader.NameTable.Add("ColIndex");
		id57_GridColWidth = base.Reader.NameTable.Add("GridColWidth");
		id168_Item = base.Reader.NameTable.Add("GridQueryDragColumnHeaderReason");
		id151_GridSortBehavior = base.Reader.NameTable.Add("GridSortBehavior");
		id193_BaseStylesMap = base.Reader.NameTable.Add("BaseStylesMap");
		id176_string = base.Reader.NameTable.Add("string");
		id228_FixedLinesColorString = base.Reader.NameTable.Add("FixedLinesColorString");
		id3_GridBaseCellModelFactory = base.Reader.NameTable.Add("GridBaseCellModelFactory");
		id89_GridRangeInfoConverter = base.Reader.NameTable.Add("GridRangeInfoConverter");
		id233_CodeDomSerializerBase = base.Reader.NameTable.Add("CodeDomSerializerBase");
		id273_RowCount = base.Reader.NameTable.Add("RowCount");
		id101_GridBaseStyleNameConverter = base.Reader.NameTable.Add("GridBaseStyleNameConverter");
		id179_ParenthesesAroundColumnFilters = base.Reader.NameTable.Add("ParenthesesAroundColumnFilters");
		id99_GridTriangleDirection = base.Reader.NameTable.Add("GridTriangleDirection");
		id105_GridBorderStyle = base.Reader.NameTable.Add("GridBorderStyle");
		id83_GridRowHeightTypeConverter = base.Reader.NameTable.Add("GridRowHeightTypeConverter");
		id24_GridRangeOptions = base.Reader.NameTable.Add("GridRangeOptions");
		id164_NamedRange = base.Reader.NameTable.Add("NamedRange");
		id4_GridCellLayout = base.Reader.NameTable.Add("GridCellLayout");
		id191_CoveredRanges = base.Reader.NameTable.Add("CoveredRanges");
		id77_GridProperties = base.Reader.NameTable.Add("GridProperties");
		id72_Item = base.Reader.NameTable.Add("GridClickedOnDisabledCellBehavior");
		id247_Rectangle = base.Reader.NameTable.Add("Rectangle");
		id21_GridSelectionReason = base.Reader.NameTable.Add("GridSelectionReason");
		id169_GridQueryAcceptDataOptions = base.Reader.NameTable.Add("GridQueryAcceptDataOptions");
		id87_GridMouseController = base.Reader.NameTable.Add("GridMouseController");
		id134_GridProgressBarInfoStore = base.Reader.NameTable.Add("GridProgressBarInfoStore");
		id6_GridImageSizeMode = base.Reader.NameTable.Add("GridImageSizeMode");
		id181_Description = base.Reader.NameTable.Add("Description");
		id183_Index = base.Reader.NameTable.Add("Index");
		id14_GridDropDownStyle = base.Reader.NameTable.Add("GridDropDownStyle");
		id23_GridResizeCellsReason = base.Reader.NameTable.Add("GridResizeCellsReason");
		id130_GridMaskEditInfo = base.Reader.NameTable.Add("GridMaskEditInfo");
		id66_ArrayOfAnyType = base.Reader.NameTable.Add("ArrayOfAnyType");
		id190_RowStyleCollection = base.Reader.NameTable.Add("RowStyleCollection");
		id153_GridDataBoundIconPaint = base.Reader.NameTable.Add("GridDataBoundIconPaint");
		id102_GridBaseStyle = base.Reader.NameTable.Add("GridBaseStyle");
		id116_GridCellValidateValueInfoStore = base.Reader.NameTable.Add("GridCellValidateValueInfoStore");
		id100_GridBaseStyleConverter = base.Reader.NameTable.Add("GridBaseStyleConverter");
		id207_RowIndex = base.Reader.NameTable.Add("RowIndex");
		id261_TextRectangle = base.Reader.NameTable.Add("TextRectangle");
		id221_PrintHorzLines = base.Reader.NameTable.Add("PrintHorzLines");
		id97_GridPaintTriangle = base.Reader.NameTable.Add("GridPaintTriangle");
		id67_anyType = base.Reader.NameTable.Add("anyType");
		id189_ColumnStyleCollection = base.Reader.NameTable.Add("ColumnStyleCollection");
		id192_BanneredRanges = base.Reader.NameTable.Add("BanneredRanges");
		id42_GridControllerOptions = base.Reader.NameTable.Add("GridControllerOptions");
		id218_CenterHorizontal = base.Reader.NameTable.Add("CenterHorizontal");
		id103_ArrayOfGridBaseStyle = base.Reader.NameTable.Add("ArrayOfGridBaseStyle");
		id225_BlackWhite = base.Reader.NameTable.Add("BlackWhite");
		id35_GridShowCurrentCellBorder = base.Reader.NameTable.Add("GridShowCurrentCellBorder");
		id145_GridRowColEntry = base.Reader.NameTable.Add("GridRowColEntry");
		id199_RangeType = base.Reader.NameTable.Add("RangeType");
		id30_GridFloatCellsMode = base.Reader.NameTable.Add("GridFloatCellsMode");
		id147_GridSyncProperties = base.Reader.NameTable.Add("GridSyncProperties");
		id60_GridCoveredCellPool = base.Reader.NameTable.Add("GridCoveredCellPool");
		id162_Item = base.Reader.NameTable.Add("GridFormulaNamedRangesEditHelper");
		id120_GridCurrencyEditInfo = base.Reader.NameTable.Add("GridCurrencyEditInfo");
		id242_Disposable = base.Reader.NameTable.Add("Disposable");
		id210_Buttons3D = base.Reader.NameTable.Add("Buttons3D");
		id10_GridFontState = base.Reader.NameTable.Add("GridFontState");
		id236_SyncfusionEventArgs = base.Reader.NameTable.Add("SyncfusionEventArgs");
		id52_GridCellValueTypeConverter = base.Reader.NameTable.Add("GridCellValueTypeConverter");
		id173_List = base.Reader.NameTable.Add("List");
		id26_GridDirectionType = base.Reader.NameTable.Add("GridDirectionType");
		id206_ParsedCol = base.Reader.NameTable.Add("ParsedCol");
		id194_CellData = base.Reader.NameTable.Add("CellData");
		id112_GridBordersInfoStore = base.Reader.NameTable.Add("GridBordersInfoStore");
		id195_Row = base.Reader.NameTable.Add("Row");
		id69_GridEndUpdateRequestEventArgs = base.Reader.NameTable.Add("GridEndUpdateRequestEventArgs");
		id117_GridCellValidateValueInfo = base.Reader.NameTable.Add("GridCellValidateValueInfo");
		id78_ArrayOfGridRangeStyle = base.Reader.NameTable.Add("ArrayOfGridRangeStyle");
		id122_GridFontInfoStore = base.Reader.NameTable.Add("GridFontInfoStore");
	}
}
