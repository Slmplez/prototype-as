using System;
using System.Collections;
using System.Xml.Serialization;
using Syncfusion;
using Syncfusion.Windows.Forms.Grid;
using Syncfusion.Windows.Forms.Grid.Design;

namespace Microsoft.Xml.Serialization.GeneratedAssembly;

public class XmlSerializerContract : XmlSerializerImplementation
{
	private Hashtable readMethods;

	private Hashtable writeMethods;

	private Hashtable typedSerializers;

	public override XmlSerializationReader Reader => new XmlSerializationReader1();

	public override XmlSerializationWriter Writer => new XmlSerializationWriter1();

	public override Hashtable ReadMethods
	{
		get
		{
			if (readMethods == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable["Syncfusion.GridWindowsAssembly::"] = "Read151_GridWindowsAssembly";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBaseCellModelFactory::"] = "Read152_GridBaseCellModelFactory";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellLayout::"] = "Read153_GridCellLayout";
				hashtable["Syncfusion.Windows.Forms.Grid.GridImageUtil::"] = "Read154_GridImageUtil";
				hashtable["Syncfusion.Windows.Forms.Grid.GridImageSizeMode::"] = "Read155_GridImageSizeMode";
				hashtable["Syncfusion.Windows.Forms.Grid.GridPrintInfo::"] = "Read156_GridPrintInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellSizeKind::"] = "Read157_GridCellSizeKind";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFactoryProvider::"] = "Read158_GridFactoryProvider";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFontState::"] = "Read159_GridFontState";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellPos::"] = "Read160_GridCellPos";
				hashtable["Syncfusion.Windows.Forms.Grid.GridConstants::"] = "Read161_GridConstants";
				hashtable["Syncfusion.Windows.Forms.Grid.GridScrollCurrentCellReason::"] = "Read162_GridScrollCurrentCellReason";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDropDownStyle::"] = "Read163_GridDropDownStyle";
				hashtable["Syncfusion.Windows.Forms.Grid.GridQueryFloatCell::"] = "Read164_GridQueryFloatCell";
				hashtable["Syncfusion.Windows.Forms.Grid.GridWrapCellBehavior::"] = "Read165_GridWrapCellBehavior";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRefreshCurrentCellBehavior::"] = "Read166_GridRefreshCurrentCellBehavior";
				hashtable["Syncfusion.Windows.Forms.Grid.GridResizeToFitOptions::"] = "Read167_GridResizeToFitOptions";
				hashtable["Syncfusion.Windows.Forms.Grid.GridQueryBounds::"] = "Read168_GridQueryBounds";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellBaseTextInfo::"] = "Read169_GridCellBaseTextInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridSelectionReason::"] = "Read170_GridSelectionReason";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDragSelectionReason::"] = "Read171_GridDragSelectionReason";
				hashtable["Syncfusion.Windows.Forms.Grid.GridResizeCellsReason::"] = "Read172_GridResizeCellsReason";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeOptions::"] = "Read173_GridRangeOptions";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBackgroundImageMode::"] = "Read174_GridBackgroundImageMode";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDirectionType::"] = "Read175_GridDirectionType";
				hashtable["Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior::"] = "Read176_GridResizeCellsBehavior";
				hashtable["Syncfusion.Windows.Forms.Grid.GridHitTestContext::"] = "Read177_GridHitTestContext";
				hashtable["Syncfusion.Windows.Forms.Grid.GridSelectionFlags::"] = "Read178_GridSelectionFlags";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFloatCellsMode::"] = "Read179_GridFloatCellsMode";
				hashtable["Syncfusion.Windows.Forms.Grid.GridMergeCellDirection::"] = "Read180_GridMergeCellDirection";
				hashtable["Syncfusion.Windows.Forms.Grid.GridMergeCellsMode::"] = "Read181_GridMergeCellsMode";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellActivateAction::"] = "Read182_GridCellActivateAction";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDrawOrder::"] = "Read183_GridDrawOrder";
				hashtable["Syncfusion.Windows.Forms.Grid.GridShowCurrentCellBorder::"] = "Read184_GridShowCurrentCellBorder";
				hashtable["Syncfusion.Windows.Forms.Grid.GridSetCurrentCellOptions::"] = "Read185_GridSetCurrentCellOptions";
				hashtable["Syncfusion.Windows.Forms.Grid.GridScrollbarMode::"] = "Read186_GridScrollbarMode";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCountRecordsBehavior::"] = "Read187_GridCountRecordsBehavior";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDragDropFlags::"] = "Read188_GridDragDropFlags";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFindTextOptions::"] = "Read189_GridFindTextOptions";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCommandMode::"] = "Read190_GridCommandMode";
				hashtable["Syncfusion.Windows.Forms.Grid.GridControllerOptions::"] = "Read191_GridControllerOptions";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDataObjectConsumerOptions::"] = "Read192_GridDataObjectConsumerOptions";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellTypeName::"] = "Read193_GridCellTypeName";
				hashtable["Syncfusion.Windows.Forms.Grid.GridUtil::"] = "Read194_GridUtil";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBanneredCellPool::"] = "Read195_GridBanneredCellPool";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellInfo::"] = "Read196_GridCellInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellInfoCollection::"] = "Read197_ArrayOfGridCellInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellInfoTypeConverter::"] = "Read198_GridCellInfoTypeConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridModelBound::"] = "Read199_GridModelBound";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellValueConvert::"] = "Read200_GridCellValueConvert";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellValueTypeConverter::"] = "Read201_GridCellValueTypeConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridColHiddenCollection::"] = "Read202_ArrayOfGridColHidden";
				hashtable["Syncfusion.Windows.Forms.Grid.GridColHidden::"] = "Read203_GridColHidden";
				hashtable["Syncfusion.Windows.Forms.Grid.GridColHiddenTypeConverter::"] = "Read204_GridColHiddenTypeConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridColWidthCollection::"] = "Read205_ArrayOfGridColWidth";
				hashtable["Syncfusion.Windows.Forms.Grid.GridColWidth::"] = "Read206_GridColWidth";
				hashtable["Syncfusion.Windows.Forms.Grid.GridColWidthTypeConverter::"] = "Read207_GridColWidthTypeConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridModelCommand::"] = "Read208_GridModelCommand";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCoveredCellPool::"] = "Read209_GridCoveredCellPool";
				hashtable["Syncfusion.Windows.Forms.Grid.GridData::"] = "Read210_GridData";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDataTypeConverter::"] = "Read211_GridDataTypeConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellCollection::"] = "Read212_ArrayOfGridStyleInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowCollection::"] = "Read213_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridPropertyStandardValuesList::"] = "Read214_ArrayOfAnyType";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowColCountEventArgs::"] = "Read215_GridRowColCountEventArgs";
				hashtable["Syncfusion.Windows.Forms.Grid.GridEndUpdateRequestEventArgs::"] = "Read216_GridEndUpdateRequestEventArgs";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowColHideDictionaryTypeConverter::"] = "Read217_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridModelHideRowColsIndexer::"] = "Read218_GridModelHideRowColsIndexer";
				hashtable["Syncfusion.Windows.Forms.Grid.GridClickedOnDisabledCellBehavior::"] = "Read219_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridModelRowColOperations::"] = "Read220_GridModelRowColOperations";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowColSizeDictionaryTypeConverter::"] = "Read221_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridNamespaceGroupItem::"] = "Read222_GridNamespaceGroupItem";
				hashtable["Syncfusion.Windows.Forms.Grid.GridNamespaceGroupItemCollection::"] = "Read223_ArrayOfGridNamespaceGroupItem";
				hashtable["Syncfusion.Windows.Forms.Grid.GridProperties::"] = "Read224_GridProperties";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeStyleCollection::"] = "Read225_ArrayOfGridRangeStyle";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeStyle::"] = "Read226_GridRangeStyle";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeStyleTypeConverter::"] = "Read227_GridRangeStyleTypeConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowHeightCollection::"] = "Read228_ArrayOfGridRowHeight";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowHeight::"] = "Read229_GridRowHeight";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowHeightTypeConverter::"] = "Read230_GridRowHeightTypeConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowHiddenCollection::"] = "Read231_ArrayOfGridRowHidden";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowHidden::"] = "Read232_GridRowHidden";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowHiddenTypeConverter::"] = "Read233_GridRowHiddenTypeConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridMouseController::"] = "Read234_GridMouseController";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeInfo::"] = "Read235_GridRangeInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeInfoConverter::"] = "Read236_GridRangeInfoConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeInfoCodeDomSerializer::"] = "Read237_GridRangeInfoCodeDomSerializer";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeInfoList::"] = "Read238_ArrayOfGridRangeInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeInfoListConverter::"] = "Read239_GridRangeInfoListConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeInfoType::"] = "Read240_GridRangeInfoType";
				hashtable["Syncfusion.Windows.Forms.Grid.GridNonImmutableRangeInfo::"] = "Read241_GridNonImmutableRangeInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridNonImmutableRangeInfoCollection::"] = "Read242_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCursors::"] = "Read243_GridCursors";
				hashtable["Syncfusion.Windows.Forms.Grid.GridPaintTriangle::"] = "Read244_GridPaintTriangle";
				hashtable["Syncfusion.Windows.Forms.Grid.GridSortInfo::"] = "Read245_GridSortInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridTriangleDirection::"] = "Read246_GridTriangleDirection";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBaseStyleConverter::"] = "Read247_GridBaseStyleConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBaseStyleNameConverter::"] = "Read248_GridBaseStyleNameConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBaseStyle::"] = "Read249_GridBaseStyle";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBaseStylesMap::"] = "Read250_ArrayOfGridBaseStyle";
				hashtable["Syncfusion.Windows.Forms.Grid.GridStyleInfo::"] = "Read251_GridStyleInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBaseStyleCollection::"] = "Read252_ArrayOfGridBaseStyle";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBorderStyle::"] = "Read253_GridBorderStyle";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBorderWeight::"] = "Read254_GridBorderWeight";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBorder::"] = "Read255_GridBorder";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBorderCodeDomSerializer::"] = "Read256_GridBorderCodeDomSerializer";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBorderConverter::"] = "Read257_GridBorderConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBorderPaint::"] = "Read258_GridBorderPaint";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBorderSide::"] = "Read259_GridBorderSide";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBordersInfoStore::"] = "Read260_GridBordersInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBordersInfo::"] = "Read261_GridBordersInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellAppearance::"] = "Read262_GridCellAppearance";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellTypeNameConverter::"] = "Read263_GridCellTypeNameConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellValidateValueInfoStore::"] = "Read264_GridCellValidateValueInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellValidateValueInfo::"] = "Read265_GridCellValidateValueInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCheckBoxCellInfoStore::"] = "Read266_GridCheckBoxCellInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCheckBoxCellInfo::"] = "Read267_GridCheckBoxCellInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCurrencyEditInfo::"] = "Read268_GridCurrencyEditInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCurrencyEditInfoStore::"] = "Read269_GridCurrencyEditInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFontInfoStore::"] = "Read270_GridFontInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFontInfo::"] = "Read271_GridFontInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFontInfoEditor::"] = "Read272_GridFontInfoEditor";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFormulaTag::"] = "Read273_GridFormulaTag";
				hashtable["Syncfusion.Windows.Forms.Grid.GridHorizontalAlignment::"] = "Read274_GridHorizontalAlignment";
				hashtable["Syncfusion.Windows.Forms.Grid.GridMarginsInfoStore::"] = "Read275_GridMarginsInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridMarginsInfo::"] = "Read276_GridMarginsInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridMargins::"] = "Read277_GridMargins";
				hashtable["Syncfusion.Windows.Forms.Grid.GridMaskEditInfo::"] = "Read278_GridMaskEditInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridMaskEditInfoStore::"] = "Read279_GridMaskEditInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridNumericUpDownCellInfoStore::"] = "Read280_GridNumericUpDownCellInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridNumericUpDownCellInfo::"] = "Read281_GridNumericUpDownCellInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridProgressBarInfoStore::"] = "Read282_GridProgressBarInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridProgressBarInfo::"] = "Read283_GridProgressBarInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridShowButtons::"] = "Read284_GridShowButtons";
				hashtable["Syncfusion.Windows.Forms.Grid.GridStyleInfoStore::"] = "Read285_GridStyleInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridStyleInfoCustomProperties::"] = "Read286_GridStyleInfoCustomProperties";
				hashtable["Syncfusion.Windows.Forms.Grid.GridStyleInfoConverter::"] = "Read287_GridStyleInfoConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridTextAlign::"] = "Read288_GridTextAlign";
				hashtable["Syncfusion.Windows.Forms.Grid.GridVerticalAlignment::"] = "Read289_GridVerticalAlignment";
				hashtable["Syncfusion.Windows.Forms.Grid.Design.GridDesignerMain::"] = "Read290_GridDesignerMain";
				hashtable["Syncfusion.Windows.Forms.Grid.Design.GridCellsMemento::"] = "Read291_GridCellsMemento";
				hashtable["Syncfusion.Windows.Forms.Grid.Design.ColumnStyles::"] = "Read292_ColumnStyles";
				hashtable["Syncfusion.Windows.Forms.Grid.Design.RowStyles::"] = "Read293_RowStyles";
				hashtable["Syncfusion.Windows.Forms.Grid.Design.GridRowColEntry::"] = "Read294_GridRowColEntry";
				hashtable["Syncfusion.Windows.Forms.Grid.Design.GridRowColEntryCollection::"] = "Read295_ArrayOfGridRowColEntry";
				hashtable["Syncfusion.Windows.Forms.Grid.Design.GridSyncProperties::"] = "Read296_GridSyncProperties";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellModelFactory::"] = "Read297_GridCellModelFactory";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRadioButtonInfo::"] = "Read298_GridRadioButtonInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridSerializeCellsBehavior::"] = "Read299_GridSerializeCellsBehavior";
				hashtable["Syncfusion.Windows.Forms.Grid.GridSortBehavior::"] = "Read300_GridSortBehavior";
				hashtable["Syncfusion.Windows.Forms.Grid.GridValidateFailedEventArgs::"] = "Read301_GridValidateFailedEventArgs";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDataBoundIconPaint::"] = "Read302_GridDataBoundIconPaint";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFilterBarTextChangedEventArgs::"] = "Read303_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFilterBar::"] = "Read304_GridFilterBar";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCurrentRecordItemChangedBehavior::"] = "Read305_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFindReplaceDialogOptions::"] = "Read306_GridFindReplaceDialogOptions";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFormulaEngine+LenComparer::"] = "Read307_LenComparer";
				hashtable["Syncfusion.Windows.Forms.Grid.GridSheetFamilyItem::"] = "Read308_GridSheetFamilyItem";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFormulaCopyFlags::"] = "Read309_GridFormulaCopyFlags";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFormulaParsingEventArgs::"] = "Read310_GridFormulaParsingEventArgs";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFormulaNamedRangesEditHelper::"] = "Read311_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFormulaNamedRangesEditHelper+NamedRangeList::"] = "Read312_ArrayOfNamedRange";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFormulaNamedRangesEditHelper+NamedRange::"] = "Read313_NamedRange";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDragColumnHeaderBitmaps::"] = "Read314_GridDragColumnHeaderBitmaps";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDragColumnHeaderMouseControllerBase::"] = "Read315_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDragColumnHeaderHelper::"] = "Read316_GridDragColumnHeaderHelper";
				hashtable["Syncfusion.Windows.Forms.Grid.GridQueryDragColumnHeaderReason::"] = "Read317_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridQueryAcceptDataOptions::"] = "Read318_GridQueryAcceptDataOptions";
				hashtable["Syncfusion.Windows.Forms.Grid.GridGdiPaint::"] = "Read319_GridGdiPaint";
				if (readMethods == null)
				{
					readMethods = hashtable;
				}
			}
			return readMethods;
		}
	}

	public override Hashtable WriteMethods
	{
		get
		{
			if (writeMethods == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable["Syncfusion.GridWindowsAssembly::"] = "Write151_GridWindowsAssembly";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBaseCellModelFactory::"] = "Write152_GridBaseCellModelFactory";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellLayout::"] = "Write153_GridCellLayout";
				hashtable["Syncfusion.Windows.Forms.Grid.GridImageUtil::"] = "Write154_GridImageUtil";
				hashtable["Syncfusion.Windows.Forms.Grid.GridImageSizeMode::"] = "Write155_GridImageSizeMode";
				hashtable["Syncfusion.Windows.Forms.Grid.GridPrintInfo::"] = "Write156_GridPrintInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellSizeKind::"] = "Write157_GridCellSizeKind";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFactoryProvider::"] = "Write158_GridFactoryProvider";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFontState::"] = "Write159_GridFontState";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellPos::"] = "Write160_GridCellPos";
				hashtable["Syncfusion.Windows.Forms.Grid.GridConstants::"] = "Write161_GridConstants";
				hashtable["Syncfusion.Windows.Forms.Grid.GridScrollCurrentCellReason::"] = "Write162_GridScrollCurrentCellReason";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDropDownStyle::"] = "Write163_GridDropDownStyle";
				hashtable["Syncfusion.Windows.Forms.Grid.GridQueryFloatCell::"] = "Write164_GridQueryFloatCell";
				hashtable["Syncfusion.Windows.Forms.Grid.GridWrapCellBehavior::"] = "Write165_GridWrapCellBehavior";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRefreshCurrentCellBehavior::"] = "Write166_GridRefreshCurrentCellBehavior";
				hashtable["Syncfusion.Windows.Forms.Grid.GridResizeToFitOptions::"] = "Write167_GridResizeToFitOptions";
				hashtable["Syncfusion.Windows.Forms.Grid.GridQueryBounds::"] = "Write168_GridQueryBounds";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellBaseTextInfo::"] = "Write169_GridCellBaseTextInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridSelectionReason::"] = "Write170_GridSelectionReason";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDragSelectionReason::"] = "Write171_GridDragSelectionReason";
				hashtable["Syncfusion.Windows.Forms.Grid.GridResizeCellsReason::"] = "Write172_GridResizeCellsReason";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeOptions::"] = "Write173_GridRangeOptions";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBackgroundImageMode::"] = "Write174_GridBackgroundImageMode";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDirectionType::"] = "Write175_GridDirectionType";
				hashtable["Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior::"] = "Write176_GridResizeCellsBehavior";
				hashtable["Syncfusion.Windows.Forms.Grid.GridHitTestContext::"] = "Write177_GridHitTestContext";
				hashtable["Syncfusion.Windows.Forms.Grid.GridSelectionFlags::"] = "Write178_GridSelectionFlags";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFloatCellsMode::"] = "Write179_GridFloatCellsMode";
				hashtable["Syncfusion.Windows.Forms.Grid.GridMergeCellDirection::"] = "Write180_GridMergeCellDirection";
				hashtable["Syncfusion.Windows.Forms.Grid.GridMergeCellsMode::"] = "Write181_GridMergeCellsMode";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellActivateAction::"] = "Write182_GridCellActivateAction";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDrawOrder::"] = "Write183_GridDrawOrder";
				hashtable["Syncfusion.Windows.Forms.Grid.GridShowCurrentCellBorder::"] = "Write184_GridShowCurrentCellBorder";
				hashtable["Syncfusion.Windows.Forms.Grid.GridSetCurrentCellOptions::"] = "Write185_GridSetCurrentCellOptions";
				hashtable["Syncfusion.Windows.Forms.Grid.GridScrollbarMode::"] = "Write186_GridScrollbarMode";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCountRecordsBehavior::"] = "Write187_GridCountRecordsBehavior";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDragDropFlags::"] = "Write188_GridDragDropFlags";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFindTextOptions::"] = "Write189_GridFindTextOptions";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCommandMode::"] = "Write190_GridCommandMode";
				hashtable["Syncfusion.Windows.Forms.Grid.GridControllerOptions::"] = "Write191_GridControllerOptions";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDataObjectConsumerOptions::"] = "Write192_GridDataObjectConsumerOptions";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellTypeName::"] = "Write193_GridCellTypeName";
				hashtable["Syncfusion.Windows.Forms.Grid.GridUtil::"] = "Write194_GridUtil";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBanneredCellPool::"] = "Write195_GridBanneredCellPool";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellInfo::"] = "Write196_GridCellInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellInfoCollection::"] = "Write197_ArrayOfGridCellInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellInfoTypeConverter::"] = "Write198_GridCellInfoTypeConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridModelBound::"] = "Write199_GridModelBound";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellValueConvert::"] = "Write200_GridCellValueConvert";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellValueTypeConverter::"] = "Write201_GridCellValueTypeConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridColHiddenCollection::"] = "Write202_ArrayOfGridColHidden";
				hashtable["Syncfusion.Windows.Forms.Grid.GridColHidden::"] = "Write203_GridColHidden";
				hashtable["Syncfusion.Windows.Forms.Grid.GridColHiddenTypeConverter::"] = "Write204_GridColHiddenTypeConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridColWidthCollection::"] = "Write205_ArrayOfGridColWidth";
				hashtable["Syncfusion.Windows.Forms.Grid.GridColWidth::"] = "Write206_GridColWidth";
				hashtable["Syncfusion.Windows.Forms.Grid.GridColWidthTypeConverter::"] = "Write207_GridColWidthTypeConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridModelCommand::"] = "Write208_GridModelCommand";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCoveredCellPool::"] = "Write209_GridCoveredCellPool";
				hashtable["Syncfusion.Windows.Forms.Grid.GridData::"] = "Write210_GridData";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDataTypeConverter::"] = "Write211_GridDataTypeConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellCollection::"] = "Write212_ArrayOfGridStyleInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowCollection::"] = "Write213_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridPropertyStandardValuesList::"] = "Write214_ArrayOfAnyType";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowColCountEventArgs::"] = "Write215_GridRowColCountEventArgs";
				hashtable["Syncfusion.Windows.Forms.Grid.GridEndUpdateRequestEventArgs::"] = "Write216_GridEndUpdateRequestEventArgs";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowColHideDictionaryTypeConverter::"] = "Write217_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridModelHideRowColsIndexer::"] = "Write218_GridModelHideRowColsIndexer";
				hashtable["Syncfusion.Windows.Forms.Grid.GridClickedOnDisabledCellBehavior::"] = "Write219_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridModelRowColOperations::"] = "Write220_GridModelRowColOperations";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowColSizeDictionaryTypeConverter::"] = "Write221_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridNamespaceGroupItem::"] = "Write222_GridNamespaceGroupItem";
				hashtable["Syncfusion.Windows.Forms.Grid.GridNamespaceGroupItemCollection::"] = "Write223_ArrayOfGridNamespaceGroupItem";
				hashtable["Syncfusion.Windows.Forms.Grid.GridProperties::"] = "Write224_GridProperties";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeStyleCollection::"] = "Write225_ArrayOfGridRangeStyle";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeStyle::"] = "Write226_GridRangeStyle";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeStyleTypeConverter::"] = "Write227_GridRangeStyleTypeConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowHeightCollection::"] = "Write228_ArrayOfGridRowHeight";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowHeight::"] = "Write229_GridRowHeight";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowHeightTypeConverter::"] = "Write230_GridRowHeightTypeConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowHiddenCollection::"] = "Write231_ArrayOfGridRowHidden";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowHidden::"] = "Write232_GridRowHidden";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRowHiddenTypeConverter::"] = "Write233_GridRowHiddenTypeConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridMouseController::"] = "Write234_GridMouseController";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeInfo::"] = "Write235_GridRangeInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeInfoConverter::"] = "Write236_GridRangeInfoConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeInfoCodeDomSerializer::"] = "Write237_GridRangeInfoCodeDomSerializer";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeInfoList::"] = "Write238_ArrayOfGridRangeInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeInfoListConverter::"] = "Write239_GridRangeInfoListConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRangeInfoType::"] = "Write240_GridRangeInfoType";
				hashtable["Syncfusion.Windows.Forms.Grid.GridNonImmutableRangeInfo::"] = "Write241_GridNonImmutableRangeInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridNonImmutableRangeInfoCollection::"] = "Write242_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCursors::"] = "Write243_GridCursors";
				hashtable["Syncfusion.Windows.Forms.Grid.GridPaintTriangle::"] = "Write244_GridPaintTriangle";
				hashtable["Syncfusion.Windows.Forms.Grid.GridSortInfo::"] = "Write245_GridSortInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridTriangleDirection::"] = "Write246_GridTriangleDirection";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBaseStyleConverter::"] = "Write247_GridBaseStyleConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBaseStyleNameConverter::"] = "Write248_GridBaseStyleNameConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBaseStyle::"] = "Write249_GridBaseStyle";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBaseStylesMap::"] = "Write250_ArrayOfGridBaseStyle";
				hashtable["Syncfusion.Windows.Forms.Grid.GridStyleInfo::"] = "Write251_GridStyleInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBaseStyleCollection::"] = "Write252_ArrayOfGridBaseStyle";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBorderStyle::"] = "Write253_GridBorderStyle";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBorderWeight::"] = "Write254_GridBorderWeight";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBorder::"] = "Write255_GridBorder";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBorderCodeDomSerializer::"] = "Write256_GridBorderCodeDomSerializer";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBorderConverter::"] = "Write257_GridBorderConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBorderPaint::"] = "Write258_GridBorderPaint";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBorderSide::"] = "Write259_GridBorderSide";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBordersInfoStore::"] = "Write260_GridBordersInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridBordersInfo::"] = "Write261_GridBordersInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellAppearance::"] = "Write262_GridCellAppearance";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellTypeNameConverter::"] = "Write263_GridCellTypeNameConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellValidateValueInfoStore::"] = "Write264_GridCellValidateValueInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellValidateValueInfo::"] = "Write265_GridCellValidateValueInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCheckBoxCellInfoStore::"] = "Write266_GridCheckBoxCellInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCheckBoxCellInfo::"] = "Write267_GridCheckBoxCellInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCurrencyEditInfo::"] = "Write268_GridCurrencyEditInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCurrencyEditInfoStore::"] = "Write269_GridCurrencyEditInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFontInfoStore::"] = "Write270_GridFontInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFontInfo::"] = "Write271_GridFontInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFontInfoEditor::"] = "Write272_GridFontInfoEditor";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFormulaTag::"] = "Write273_GridFormulaTag";
				hashtable["Syncfusion.Windows.Forms.Grid.GridHorizontalAlignment::"] = "Write274_GridHorizontalAlignment";
				hashtable["Syncfusion.Windows.Forms.Grid.GridMarginsInfoStore::"] = "Write275_GridMarginsInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridMarginsInfo::"] = "Write276_GridMarginsInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridMargins::"] = "Write277_GridMargins";
				hashtable["Syncfusion.Windows.Forms.Grid.GridMaskEditInfo::"] = "Write278_GridMaskEditInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridMaskEditInfoStore::"] = "Write279_GridMaskEditInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridNumericUpDownCellInfoStore::"] = "Write280_GridNumericUpDownCellInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridNumericUpDownCellInfo::"] = "Write281_GridNumericUpDownCellInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridProgressBarInfoStore::"] = "Write282_GridProgressBarInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridProgressBarInfo::"] = "Write283_GridProgressBarInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridShowButtons::"] = "Write284_GridShowButtons";
				hashtable["Syncfusion.Windows.Forms.Grid.GridStyleInfoStore::"] = "Write285_GridStyleInfoStore";
				hashtable["Syncfusion.Windows.Forms.Grid.GridStyleInfoCustomProperties::"] = "Write286_GridStyleInfoCustomProperties";
				hashtable["Syncfusion.Windows.Forms.Grid.GridStyleInfoConverter::"] = "Write287_GridStyleInfoConverter";
				hashtable["Syncfusion.Windows.Forms.Grid.GridTextAlign::"] = "Write288_GridTextAlign";
				hashtable["Syncfusion.Windows.Forms.Grid.GridVerticalAlignment::"] = "Write289_GridVerticalAlignment";
				hashtable["Syncfusion.Windows.Forms.Grid.Design.GridDesignerMain::"] = "Write290_GridDesignerMain";
				hashtable["Syncfusion.Windows.Forms.Grid.Design.GridCellsMemento::"] = "Write291_GridCellsMemento";
				hashtable["Syncfusion.Windows.Forms.Grid.Design.ColumnStyles::"] = "Write292_ColumnStyles";
				hashtable["Syncfusion.Windows.Forms.Grid.Design.RowStyles::"] = "Write293_RowStyles";
				hashtable["Syncfusion.Windows.Forms.Grid.Design.GridRowColEntry::"] = "Write294_GridRowColEntry";
				hashtable["Syncfusion.Windows.Forms.Grid.Design.GridRowColEntryCollection::"] = "Write295_ArrayOfGridRowColEntry";
				hashtable["Syncfusion.Windows.Forms.Grid.Design.GridSyncProperties::"] = "Write296_GridSyncProperties";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCellModelFactory::"] = "Write297_GridCellModelFactory";
				hashtable["Syncfusion.Windows.Forms.Grid.GridRadioButtonInfo::"] = "Write298_GridRadioButtonInfo";
				hashtable["Syncfusion.Windows.Forms.Grid.GridSerializeCellsBehavior::"] = "Write299_GridSerializeCellsBehavior";
				hashtable["Syncfusion.Windows.Forms.Grid.GridSortBehavior::"] = "Write300_GridSortBehavior";
				hashtable["Syncfusion.Windows.Forms.Grid.GridValidateFailedEventArgs::"] = "Write301_GridValidateFailedEventArgs";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDataBoundIconPaint::"] = "Write302_GridDataBoundIconPaint";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFilterBarTextChangedEventArgs::"] = "Write303_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFilterBar::"] = "Write304_GridFilterBar";
				hashtable["Syncfusion.Windows.Forms.Grid.GridCurrentRecordItemChangedBehavior::"] = "Write305_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFindReplaceDialogOptions::"] = "Write306_GridFindReplaceDialogOptions";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFormulaEngine+LenComparer::"] = "Write307_LenComparer";
				hashtable["Syncfusion.Windows.Forms.Grid.GridSheetFamilyItem::"] = "Write308_GridSheetFamilyItem";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFormulaCopyFlags::"] = "Write309_GridFormulaCopyFlags";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFormulaParsingEventArgs::"] = "Write310_GridFormulaParsingEventArgs";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFormulaNamedRangesEditHelper::"] = "Write311_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFormulaNamedRangesEditHelper+NamedRangeList::"] = "Write312_ArrayOfNamedRange";
				hashtable["Syncfusion.Windows.Forms.Grid.GridFormulaNamedRangesEditHelper+NamedRange::"] = "Write313_NamedRange";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDragColumnHeaderBitmaps::"] = "Write314_GridDragColumnHeaderBitmaps";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDragColumnHeaderMouseControllerBase::"] = "Write315_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridDragColumnHeaderHelper::"] = "Write316_GridDragColumnHeaderHelper";
				hashtable["Syncfusion.Windows.Forms.Grid.GridQueryDragColumnHeaderReason::"] = "Write317_Item";
				hashtable["Syncfusion.Windows.Forms.Grid.GridQueryAcceptDataOptions::"] = "Write318_GridQueryAcceptDataOptions";
				hashtable["Syncfusion.Windows.Forms.Grid.GridGdiPaint::"] = "Write319_GridGdiPaint";
				if (writeMethods == null)
				{
					writeMethods = hashtable;
				}
			}
			return writeMethods;
		}
	}

	public override Hashtable TypedSerializers
	{
		get
		{
			if (typedSerializers == null)
			{
				Hashtable hashtable = new Hashtable();
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridQueryDragColumnHeaderReason::", new GridQueryDragColumnHeaderReasonSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridSortInfo::", new GridSortInfoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridGdiPaint::", new GridGdiPaintSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridProgressBarInfo::", new GridProgressBarInfoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridBaseStyleCollection::", new GridBaseStylesMapSerializer1());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRowColCountEventArgs::", new GridRowColCountEventArgsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridBorderCodeDomSerializer::", new GridBorderCodeDomSerializerSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRowHeightCollection::", new GridRowHeightCollectionSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridBorderStyle::", new GridBorderStyleSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCellAppearance::", new GridCellAppearanceSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridFormulaParsingEventArgs::", new GridFormulaParsingEventArgsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCellSizeKind::", new GridCellSizeKindSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.Design.ColumnStyles::", new ColumnStylesSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridBordersInfo::", new GridBordersInfoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRowColHideDictionaryTypeConverter::", new GridRowColHideDictionaryTypeConverterSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridPrintInfo::", new GridPrintInfoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridImageUtil::", new GridImageUtilSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridMarginsInfo::", new GridMarginsInfoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridBackgroundImageMode::", new GridBackgroundImageModeSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridModelBound::", new GridModelBoundSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRangeInfoType::", new GridRangeInfoTypeSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridFindReplaceDialogOptions::", new GridFindReplaceDialogOptionsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridDragColumnHeaderMouseControllerBase::", new GridDragColumnHeaderMouseControllerBaseSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRangeInfoListConverter::", new GridRangeInfoListConverterSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridNonImmutableRangeInfo::", new GridNonImmutableRangeInfoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridColHiddenCollection::", new GridColHiddenCollectionSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridMaskEditInfoStore::", new GridMaskEditInfoStoreSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridClickedOnDisabledCellBehavior::", new GridClickedOnDisabledCellBehaviorSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridDataObjectConsumerOptions::", new GridDataObjectConsumerOptionsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.Design.GridDesignerMain::", new GridDesignerMainSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCurrentRecordItemChangedBehavior::", new GridCurrentRecordItemChangedBehaviorSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRangeStyle::", new GridRangeStyleSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridColWidthCollection::", new GridColWidthCollectionSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridMaskEditInfo::", new GridMaskEditInfoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRowHeight::", new GridRowHeightSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridFormulaNamedRangesEditHelper+NamedRange::", new NamedRangeSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridBorderPaint::", new GridBorderPaintSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridQueryAcceptDataOptions::", new GridQueryAcceptDataOptionsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridColWidth::", new GridColWidthSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridDrawOrder::", new GridDrawOrderSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridQueryFloatCell::", new GridQueryFloatCellSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.Design.GridRowColEntryCollection::", new GridRowColEntryCollectionSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridStyleInfoCustomProperties::", new GridStyleInfoCustomPropertiesSerializer());
				hashtable.Add("Syncfusion.GridWindowsAssembly::", new GridWindowsAssemblySerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridImageSizeMode::", new GridImageSizeModeSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCurrencyEditInfoStore::", new GridCurrencyEditInfoStoreSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridTextAlign::", new GridTextAlignSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCheckBoxCellInfoStore::", new GridCheckBoxCellInfoStoreSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridProgressBarInfoStore::", new GridProgressBarInfoStoreSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridShowButtons::", new GridShowButtonsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridDataBoundIconPaint::", new GridDataBoundIconPaintSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRangeInfoCodeDomSerializer::", new GridRangeInfoCodeDomSerializerSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridFontState::", new GridFontStateSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridMouseController::", new GridMouseControllerSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior::", new GridResizeCellsBehaviorSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridUtil::", new GridUtilSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCellInfoTypeConverter::", new GridCellInfoTypeConverterSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridFormulaNamedRangesEditHelper::", new GridFormulaNamedRangesEditHelperSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridBaseCellModelFactory::", new GridBaseCellModelFactorySerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridNamespaceGroupItemCollection::", new GridNamespaceGroupItemCollectionSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridBaseStylesMap::", new GridBaseStylesMapSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCellCollection::", new GridCellCollectionSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridModelRowColOperations::", new GridModelRowColOperationsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridNumericUpDownCellInfo::", new GridNumericUpDownCellInfoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridBordersInfoStore::", new GridBordersInfoStoreSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridPaintTriangle::", new GridPaintTriangleSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRowHidden::", new GridRowHiddenSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCountRecordsBehavior::", new GridCountRecordsBehaviorSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridMarginsInfoStore::", new GridMarginsInfoStoreSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridHorizontalAlignment::", new GridHorizontalAlignmentSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridColHiddenTypeConverter::", new GridColHiddenTypeConverterSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridBanneredCellPool::", new GridBanneredCellPoolSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCellLayout::", new GridCellLayoutSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRowCollection::", new GridRowCollectionSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridFontInfoEditor::", new GridFontInfoEditorSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCellValidateValueInfo::", new GridCellValidateValueInfoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCellActivateAction::", new GridCellActivateActionSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridFactoryProvider::", new GridFactoryProviderSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.Design.GridSyncProperties::", new GridSyncPropertiesSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridBorderSide::", new GridBorderSideSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridFontInfo::", new GridFontInfoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridProperties::", new GridPropertiesSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridColWidthTypeConverter::", new GridColWidthTypeConverterSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRangeStyleTypeConverter::", new GridRangeStyleTypeConverterSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridBorderWeight::", new GridBorderWeightSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridSelectionReason::", new GridSelectionReasonSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRangeInfoList::", new GridRangeInfoListSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridValidateFailedEventArgs::", new GridValidateFailedEventArgsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRangeOptions::", new GridRangeOptionsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridEndUpdateRequestEventArgs::", new GridEndUpdateRequestEventArgsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridStyleInfo::", new GridStyleInfoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCellTypeName::", new GridCellTypeNameSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCursors::", new GridCursorsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCellBaseTextInfo::", new GridCellBaseTextInfoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCellInfoCollection::", new GridCellInfoCollectionSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridStyleInfoStore::", new GridStyleInfoStoreSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRowHiddenCollection::", new GridRowHiddenCollectionSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridFormulaCopyFlags::", new GridFormulaCopyFlagsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridQueryBounds::", new GridQueryBoundsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridColHidden::", new GridColHiddenSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridHitTestContext::", new GridHitTestContextSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridShowCurrentCellBorder::", new GridShowCurrentCellBorderSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridBorder::", new GridBorderSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridDataTypeConverter::", new GridDataTypeConverterSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRefreshCurrentCellBehavior::", new GridRefreshCurrentCellBehaviorSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.Design.GridCellsMemento::", new GridCellsMementoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridBorderConverter::", new GridBorderConverterSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCheckBoxCellInfo::", new GridCheckBoxCellInfoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridVerticalAlignment::", new GridVerticalAlignmentSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridDragSelectionReason::", new GridDragSelectionReasonSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridSortBehavior::", new GridSortBehaviorSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridPropertyStandardValuesList::", new GridPropertyStandardValuesListSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridFontInfoStore::", new GridFontInfoStoreSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridScrollCurrentCellReason::", new GridScrollCurrentCellReasonSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridFindTextOptions::", new GridFindTextOptionsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridData::", new GridDataSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridScrollbarMode::", new GridScrollbarModeSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCurrencyEditInfo::", new GridCurrencyEditInfoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridTriangleDirection::", new GridTriangleDirectionSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridMargins::", new GridMarginsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridBaseStyleNameConverter::", new GridBaseStyleNameConverterSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRangeStyleCollection::", new GridRangeStyleCollectionSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridNumericUpDownCellInfoStore::", new GridNumericUpDownCellInfoStoreSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridResizeCellsReason::", new GridResizeCellsReasonSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridDragColumnHeaderBitmaps::", new GridDragColumnHeaderBitmapsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridFloatCellsMode::", new GridFloatCellsModeSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCellInfo::", new GridCellInfoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridSheetFamilyItem::", new GridSheetFamilyItemSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridFormulaEngine+LenComparer::", new LenComparerSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRowHiddenTypeConverter::", new GridRowHiddenTypeConverterSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRowColSizeDictionaryTypeConverter::", new GridRowColSizeDictionaryTypeConverterSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridBaseStyle::", new GridBaseStyleSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRangeInfoConverter::", new GridRangeInfoConverterSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridStyleInfoConverter::", new GridStyleInfoConverterSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.Design.GridRowColEntry::", new GridRowColEntrySerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCellValidateValueInfoStore::", new GridCellValidateValueInfoStoreSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCellValueConvert::", new GridCellValueConvertSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCellValueTypeConverter::", new GridCellValueTypeConverterSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridNonImmutableRangeInfoCollection::", new GridNonImmutableRangeInfoCollectionSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridFilterBar::", new GridFilterBarSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridSerializeCellsBehavior::", new GridSerializeCellsBehaviorSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridMergeCellsMode::", new GridMergeCellsModeSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridFormulaTag::", new GridFormulaTagSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.Design.RowStyles::", new RowStylesSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRadioButtonInfo::", new GridRadioButtonInfoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCellModelFactory::", new GridCellModelFactorySerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRowHeightTypeConverter::", new GridRowHeightTypeConverterSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCellPos::", new GridCellPosSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridDragColumnHeaderHelper::", new GridDragColumnHeaderHelperSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCoveredCellPool::", new GridCoveredCellPoolSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridFilterBarTextChangedEventArgs::", new GridFilterBarTextChangedEventArgsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridMergeCellDirection::", new GridMergeCellDirectionSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridSelectionFlags::", new GridSelectionFlagsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridRangeInfo::", new GridRangeInfoSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridResizeToFitOptions::", new GridResizeToFitOptionsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridNamespaceGroupItem::", new GridNamespaceGroupItemSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridModelCommand::", new GridModelCommandSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridDirectionType::", new GridDirectionTypeSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridSetCurrentCellOptions::", new GridSetCurrentCellOptionsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCellTypeNameConverter::", new GridCellTypeNameConverterSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridModelHideRowColsIndexer::", new GridModelHideRowColsIndexerSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridFormulaNamedRangesEditHelper+NamedRangeList::", new NamedRangeListSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridDragDropFlags::", new GridDragDropFlagsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridControllerOptions::", new GridControllerOptionsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridDropDownStyle::", new GridDropDownStyleSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridWrapCellBehavior::", new GridWrapCellBehaviorSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridBaseStyleConverter::", new GridBaseStyleConverterSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridConstants::", new GridConstantsSerializer());
				hashtable.Add("Syncfusion.Windows.Forms.Grid.GridCommandMode::", new GridCommandModeSerializer());
				if (typedSerializers == null)
				{
					typedSerializers = hashtable;
				}
			}
			return typedSerializers;
		}
	}

	public override bool CanSerialize(Type type)
	{
		if (type == typeof(GridWindowsAssembly))
		{
			return true;
		}
		if (type == typeof(GridBaseCellModelFactory))
		{
			return true;
		}
		if (type == typeof(GridCellLayout))
		{
			return true;
		}
		if (type == typeof(GridImageUtil))
		{
			return true;
		}
		if (type == typeof(GridImageSizeMode))
		{
			return true;
		}
		if (type == typeof(GridPrintInfo))
		{
			return true;
		}
		if (type == typeof(GridCellSizeKind))
		{
			return true;
		}
		if (type == typeof(GridFactoryProvider))
		{
			return true;
		}
		if (type == typeof(GridFontState))
		{
			return true;
		}
		if (type == typeof(GridCellPos))
		{
			return true;
		}
		if (type == typeof(GridConstants))
		{
			return true;
		}
		if (type == typeof(GridScrollCurrentCellReason))
		{
			return true;
		}
		if (type == typeof(GridDropDownStyle))
		{
			return true;
		}
		if (type == typeof(GridQueryFloatCell))
		{
			return true;
		}
		if (type == typeof(GridWrapCellBehavior))
		{
			return true;
		}
		if (type == typeof(GridRefreshCurrentCellBehavior))
		{
			return true;
		}
		if (type == typeof(GridResizeToFitOptions))
		{
			return true;
		}
		if (type == typeof(GridQueryBounds))
		{
			return true;
		}
		if (type == typeof(GridCellBaseTextInfo))
		{
			return true;
		}
		if (type == typeof(GridSelectionReason))
		{
			return true;
		}
		if (type == typeof(GridDragSelectionReason))
		{
			return true;
		}
		if (type == typeof(GridResizeCellsReason))
		{
			return true;
		}
		if (type == typeof(GridRangeOptions))
		{
			return true;
		}
		if (type == typeof(GridBackgroundImageMode))
		{
			return true;
		}
		if (type == typeof(GridDirectionType))
		{
			return true;
		}
		if (type == typeof(GridResizeCellsBehavior))
		{
			return true;
		}
		if (type == typeof(GridHitTestContext))
		{
			return true;
		}
		if (type == typeof(GridSelectionFlags))
		{
			return true;
		}
		if (type == typeof(GridFloatCellsMode))
		{
			return true;
		}
		if (type == typeof(GridMergeCellDirection))
		{
			return true;
		}
		if (type == typeof(GridMergeCellsMode))
		{
			return true;
		}
		if (type == typeof(GridCellActivateAction))
		{
			return true;
		}
		if (type == typeof(GridDrawOrder))
		{
			return true;
		}
		if (type == typeof(GridShowCurrentCellBorder))
		{
			return true;
		}
		if (type == typeof(GridSetCurrentCellOptions))
		{
			return true;
		}
		if (type == typeof(GridScrollbarMode))
		{
			return true;
		}
		if (type == typeof(GridCountRecordsBehavior))
		{
			return true;
		}
		if (type == typeof(GridDragDropFlags))
		{
			return true;
		}
		if (type == typeof(GridFindTextOptions))
		{
			return true;
		}
		if (type == typeof(GridCommandMode))
		{
			return true;
		}
		if (type == typeof(GridControllerOptions))
		{
			return true;
		}
		if (type == typeof(GridDataObjectConsumerOptions))
		{
			return true;
		}
		if (type == typeof(GridCellTypeName))
		{
			return true;
		}
		if (type == typeof(GridUtil))
		{
			return true;
		}
		if (type == typeof(GridBanneredCellPool))
		{
			return true;
		}
		if (type == typeof(GridCellInfo))
		{
			return true;
		}
		if (type == typeof(GridCellInfoCollection))
		{
			return true;
		}
		if (type == typeof(GridCellInfoTypeConverter))
		{
			return true;
		}
		if (type == typeof(GridModelBound))
		{
			return true;
		}
		if (type == typeof(GridCellValueConvert))
		{
			return true;
		}
		if (type == typeof(GridCellValueTypeConverter))
		{
			return true;
		}
		if (type == typeof(GridColHiddenCollection))
		{
			return true;
		}
		if (type == typeof(GridColHidden))
		{
			return true;
		}
		if (type == typeof(GridColHiddenTypeConverter))
		{
			return true;
		}
		if (type == typeof(GridColWidthCollection))
		{
			return true;
		}
		if (type == typeof(GridColWidth))
		{
			return true;
		}
		if (type == typeof(GridColWidthTypeConverter))
		{
			return true;
		}
		if (type == typeof(GridModelCommand))
		{
			return true;
		}
		if (type == typeof(GridCoveredCellPool))
		{
			return true;
		}
		if (type == typeof(GridData))
		{
			return true;
		}
		if (type == typeof(GridDataTypeConverter))
		{
			return true;
		}
		if (type == typeof(GridCellCollection))
		{
			return true;
		}
		if (type == typeof(GridRowCollection))
		{
			return true;
		}
		if (type == typeof(GridPropertyStandardValuesList))
		{
			return true;
		}
		if (type == typeof(GridRowColCountEventArgs))
		{
			return true;
		}
		if (type == typeof(GridEndUpdateRequestEventArgs))
		{
			return true;
		}
		if (type == typeof(GridRowColHideDictionaryTypeConverter))
		{
			return true;
		}
		if (type == typeof(GridModelHideRowColsIndexer))
		{
			return true;
		}
		if (type == typeof(GridClickedOnDisabledCellBehavior))
		{
			return true;
		}
		if (type == typeof(GridModelRowColOperations))
		{
			return true;
		}
		if (type == typeof(GridRowColSizeDictionaryTypeConverter))
		{
			return true;
		}
		if (type == typeof(GridNamespaceGroupItem))
		{
			return true;
		}
		if (type == typeof(GridNamespaceGroupItemCollection))
		{
			return true;
		}
		if (type == typeof(GridProperties))
		{
			return true;
		}
		if (type == typeof(GridRangeStyleCollection))
		{
			return true;
		}
		if (type == typeof(GridRangeStyle))
		{
			return true;
		}
		if (type == typeof(GridRangeStyleTypeConverter))
		{
			return true;
		}
		if (type == typeof(GridRowHeightCollection))
		{
			return true;
		}
		if (type == typeof(GridRowHeight))
		{
			return true;
		}
		if (type == typeof(GridRowHeightTypeConverter))
		{
			return true;
		}
		if (type == typeof(GridRowHiddenCollection))
		{
			return true;
		}
		if (type == typeof(GridRowHidden))
		{
			return true;
		}
		if (type == typeof(GridRowHiddenTypeConverter))
		{
			return true;
		}
		if (type == typeof(GridMouseController))
		{
			return true;
		}
		if (type == typeof(GridRangeInfo))
		{
			return true;
		}
		if (type == typeof(GridRangeInfoConverter))
		{
			return true;
		}
		if (type == typeof(GridRangeInfoCodeDomSerializer))
		{
			return true;
		}
		if (type == typeof(GridRangeInfoList))
		{
			return true;
		}
		if (type == typeof(GridRangeInfoListConverter))
		{
			return true;
		}
		if (type == typeof(GridRangeInfoType))
		{
			return true;
		}
		if (type == typeof(GridNonImmutableRangeInfo))
		{
			return true;
		}
		if (type == typeof(GridNonImmutableRangeInfoCollection))
		{
			return true;
		}
		if (type == typeof(GridCursors))
		{
			return true;
		}
		if (type == typeof(GridPaintTriangle))
		{
			return true;
		}
		if (type == typeof(GridSortInfo))
		{
			return true;
		}
		if (type == typeof(GridTriangleDirection))
		{
			return true;
		}
		if (type == typeof(GridBaseStyleConverter))
		{
			return true;
		}
		if (type == typeof(GridBaseStyleNameConverter))
		{
			return true;
		}
		if (type == typeof(GridBaseStyle))
		{
			return true;
		}
		if (type == typeof(GridBaseStylesMap))
		{
			return true;
		}
		if (type == typeof(GridStyleInfo))
		{
			return true;
		}
		if (type == typeof(GridBaseStyleCollection))
		{
			return true;
		}
		if (type == typeof(GridBorderStyle))
		{
			return true;
		}
		if (type == typeof(GridBorderWeight))
		{
			return true;
		}
		if (type == typeof(GridBorder))
		{
			return true;
		}
		if (type == typeof(GridBorderCodeDomSerializer))
		{
			return true;
		}
		if (type == typeof(GridBorderConverter))
		{
			return true;
		}
		if (type == typeof(GridBorderPaint))
		{
			return true;
		}
		if (type == typeof(GridBorderSide))
		{
			return true;
		}
		if (type == typeof(GridBordersInfoStore))
		{
			return true;
		}
		if (type == typeof(GridBordersInfo))
		{
			return true;
		}
		if (type == typeof(GridCellAppearance))
		{
			return true;
		}
		if (type == typeof(GridCellTypeNameConverter))
		{
			return true;
		}
		if (type == typeof(GridCellValidateValueInfoStore))
		{
			return true;
		}
		if (type == typeof(GridCellValidateValueInfo))
		{
			return true;
		}
		if (type == typeof(GridCheckBoxCellInfoStore))
		{
			return true;
		}
		if (type == typeof(GridCheckBoxCellInfo))
		{
			return true;
		}
		if (type == typeof(GridCurrencyEditInfo))
		{
			return true;
		}
		if (type == typeof(GridCurrencyEditInfoStore))
		{
			return true;
		}
		if (type == typeof(GridFontInfoStore))
		{
			return true;
		}
		if (type == typeof(GridFontInfo))
		{
			return true;
		}
		if (type == typeof(GridFontInfoEditor))
		{
			return true;
		}
		if (type == typeof(GridFormulaTag))
		{
			return true;
		}
		if (type == typeof(GridHorizontalAlignment))
		{
			return true;
		}
		if (type == typeof(GridMarginsInfoStore))
		{
			return true;
		}
		if (type == typeof(GridMarginsInfo))
		{
			return true;
		}
		if (type == typeof(GridMargins))
		{
			return true;
		}
		if (type == typeof(GridMaskEditInfo))
		{
			return true;
		}
		if (type == typeof(GridMaskEditInfoStore))
		{
			return true;
		}
		if (type == typeof(GridNumericUpDownCellInfoStore))
		{
			return true;
		}
		if (type == typeof(GridNumericUpDownCellInfo))
		{
			return true;
		}
		if (type == typeof(GridProgressBarInfoStore))
		{
			return true;
		}
		if (type == typeof(GridProgressBarInfo))
		{
			return true;
		}
		if (type == typeof(GridShowButtons))
		{
			return true;
		}
		if (type == typeof(GridStyleInfoStore))
		{
			return true;
		}
		if (type == typeof(GridStyleInfoCustomProperties))
		{
			return true;
		}
		if (type == typeof(GridStyleInfoConverter))
		{
			return true;
		}
		if (type == typeof(GridTextAlign))
		{
			return true;
		}
		if (type == typeof(GridVerticalAlignment))
		{
			return true;
		}
		if (type == typeof(GridDesignerMain))
		{
			return true;
		}
		if (type == typeof(GridCellsMemento))
		{
			return true;
		}
		if (type == typeof(ColumnStyles))
		{
			return true;
		}
		if (type == typeof(RowStyles))
		{
			return true;
		}
		if (type == typeof(GridRowColEntry))
		{
			return true;
		}
		if (type == typeof(GridRowColEntryCollection))
		{
			return true;
		}
		if (type == typeof(GridSyncProperties))
		{
			return true;
		}
		if (type == typeof(GridCellModelFactory))
		{
			return true;
		}
		if (type == typeof(GridRadioButtonInfo))
		{
			return true;
		}
		if (type == typeof(GridSerializeCellsBehavior))
		{
			return true;
		}
		if (type == typeof(GridSortBehavior))
		{
			return true;
		}
		if (type == typeof(GridValidateFailedEventArgs))
		{
			return true;
		}
		if (type == typeof(GridDataBoundIconPaint))
		{
			return true;
		}
		if (type == typeof(GridFilterBarTextChangedEventArgs))
		{
			return true;
		}
		if (type == typeof(GridFilterBar))
		{
			return true;
		}
		if (type == typeof(GridCurrentRecordItemChangedBehavior))
		{
			return true;
		}
		if (type == typeof(GridFindReplaceDialogOptions))
		{
			return true;
		}
		if (type == typeof(GridFormulaEngine.LenComparer))
		{
			return true;
		}
		if (type == typeof(GridSheetFamilyItem))
		{
			return true;
		}
		if (type == typeof(GridFormulaCopyFlags))
		{
			return true;
		}
		if (type == typeof(GridFormulaParsingEventArgs))
		{
			return true;
		}
		if (type == typeof(GridFormulaNamedRangesEditHelper))
		{
			return true;
		}
		if (type == typeof(GridFormulaNamedRangesEditHelper.NamedRangeList))
		{
			return true;
		}
		if (type == typeof(GridFormulaNamedRangesEditHelper.NamedRange))
		{
			return true;
		}
		if (type == typeof(GridDragColumnHeaderBitmaps))
		{
			return true;
		}
		if (type == typeof(GridDragColumnHeaderMouseControllerBase))
		{
			return true;
		}
		if (type == typeof(GridDragColumnHeaderHelper))
		{
			return true;
		}
		if (type == typeof(GridQueryDragColumnHeaderReason))
		{
			return true;
		}
		if (type == typeof(GridQueryAcceptDataOptions))
		{
			return true;
		}
		if (type == typeof(GridGdiPaint))
		{
			return true;
		}
		return false;
	}

	public override XmlSerializer GetSerializer(Type type)
	{
		if (type == typeof(GridWindowsAssembly))
		{
			return new GridWindowsAssemblySerializer();
		}
		if (type == typeof(GridBaseCellModelFactory))
		{
			return new GridBaseCellModelFactorySerializer();
		}
		if (type == typeof(GridCellLayout))
		{
			return new GridCellLayoutSerializer();
		}
		if (type == typeof(GridImageUtil))
		{
			return new GridImageUtilSerializer();
		}
		if (type == typeof(GridImageSizeMode))
		{
			return new GridImageSizeModeSerializer();
		}
		if (type == typeof(GridPrintInfo))
		{
			return new GridPrintInfoSerializer();
		}
		if (type == typeof(GridCellSizeKind))
		{
			return new GridCellSizeKindSerializer();
		}
		if (type == typeof(GridFactoryProvider))
		{
			return new GridFactoryProviderSerializer();
		}
		if (type == typeof(GridFontState))
		{
			return new GridFontStateSerializer();
		}
		if (type == typeof(GridCellPos))
		{
			return new GridCellPosSerializer();
		}
		if (type == typeof(GridConstants))
		{
			return new GridConstantsSerializer();
		}
		if (type == typeof(GridScrollCurrentCellReason))
		{
			return new GridScrollCurrentCellReasonSerializer();
		}
		if (type == typeof(GridDropDownStyle))
		{
			return new GridDropDownStyleSerializer();
		}
		if (type == typeof(GridQueryFloatCell))
		{
			return new GridQueryFloatCellSerializer();
		}
		if (type == typeof(GridWrapCellBehavior))
		{
			return new GridWrapCellBehaviorSerializer();
		}
		if (type == typeof(GridRefreshCurrentCellBehavior))
		{
			return new GridRefreshCurrentCellBehaviorSerializer();
		}
		if (type == typeof(GridResizeToFitOptions))
		{
			return new GridResizeToFitOptionsSerializer();
		}
		if (type == typeof(GridQueryBounds))
		{
			return new GridQueryBoundsSerializer();
		}
		if (type == typeof(GridCellBaseTextInfo))
		{
			return new GridCellBaseTextInfoSerializer();
		}
		if (type == typeof(GridSelectionReason))
		{
			return new GridSelectionReasonSerializer();
		}
		if (type == typeof(GridDragSelectionReason))
		{
			return new GridDragSelectionReasonSerializer();
		}
		if (type == typeof(GridResizeCellsReason))
		{
			return new GridResizeCellsReasonSerializer();
		}
		if (type == typeof(GridRangeOptions))
		{
			return new GridRangeOptionsSerializer();
		}
		if (type == typeof(GridBackgroundImageMode))
		{
			return new GridBackgroundImageModeSerializer();
		}
		if (type == typeof(GridDirectionType))
		{
			return new GridDirectionTypeSerializer();
		}
		if (type == typeof(GridResizeCellsBehavior))
		{
			return new GridResizeCellsBehaviorSerializer();
		}
		if (type == typeof(GridHitTestContext))
		{
			return new GridHitTestContextSerializer();
		}
		if (type == typeof(GridSelectionFlags))
		{
			return new GridSelectionFlagsSerializer();
		}
		if (type == typeof(GridFloatCellsMode))
		{
			return new GridFloatCellsModeSerializer();
		}
		if (type == typeof(GridMergeCellDirection))
		{
			return new GridMergeCellDirectionSerializer();
		}
		if (type == typeof(GridMergeCellsMode))
		{
			return new GridMergeCellsModeSerializer();
		}
		if (type == typeof(GridCellActivateAction))
		{
			return new GridCellActivateActionSerializer();
		}
		if (type == typeof(GridDrawOrder))
		{
			return new GridDrawOrderSerializer();
		}
		if (type == typeof(GridShowCurrentCellBorder))
		{
			return new GridShowCurrentCellBorderSerializer();
		}
		if (type == typeof(GridSetCurrentCellOptions))
		{
			return new GridSetCurrentCellOptionsSerializer();
		}
		if (type == typeof(GridScrollbarMode))
		{
			return new GridScrollbarModeSerializer();
		}
		if (type == typeof(GridCountRecordsBehavior))
		{
			return new GridCountRecordsBehaviorSerializer();
		}
		if (type == typeof(GridDragDropFlags))
		{
			return new GridDragDropFlagsSerializer();
		}
		if (type == typeof(GridFindTextOptions))
		{
			return new GridFindTextOptionsSerializer();
		}
		if (type == typeof(GridCommandMode))
		{
			return new GridCommandModeSerializer();
		}
		if (type == typeof(GridControllerOptions))
		{
			return new GridControllerOptionsSerializer();
		}
		if (type == typeof(GridDataObjectConsumerOptions))
		{
			return new GridDataObjectConsumerOptionsSerializer();
		}
		if (type == typeof(GridCellTypeName))
		{
			return new GridCellTypeNameSerializer();
		}
		if (type == typeof(GridUtil))
		{
			return new GridUtilSerializer();
		}
		if (type == typeof(GridBanneredCellPool))
		{
			return new GridBanneredCellPoolSerializer();
		}
		if (type == typeof(GridCellInfo))
		{
			return new GridCellInfoSerializer();
		}
		if (type == typeof(GridCellInfoCollection))
		{
			return new GridCellInfoCollectionSerializer();
		}
		if (type == typeof(GridCellInfoTypeConverter))
		{
			return new GridCellInfoTypeConverterSerializer();
		}
		if (type == typeof(GridModelBound))
		{
			return new GridModelBoundSerializer();
		}
		if (type == typeof(GridCellValueConvert))
		{
			return new GridCellValueConvertSerializer();
		}
		if (type == typeof(GridCellValueTypeConverter))
		{
			return new GridCellValueTypeConverterSerializer();
		}
		if (type == typeof(GridColHiddenCollection))
		{
			return new GridColHiddenCollectionSerializer();
		}
		if (type == typeof(GridColHidden))
		{
			return new GridColHiddenSerializer();
		}
		if (type == typeof(GridColHiddenTypeConverter))
		{
			return new GridColHiddenTypeConverterSerializer();
		}
		if (type == typeof(GridColWidthCollection))
		{
			return new GridColWidthCollectionSerializer();
		}
		if (type == typeof(GridColWidth))
		{
			return new GridColWidthSerializer();
		}
		if (type == typeof(GridColWidthTypeConverter))
		{
			return new GridColWidthTypeConverterSerializer();
		}
		if (type == typeof(GridModelCommand))
		{
			return new GridModelCommandSerializer();
		}
		if (type == typeof(GridCoveredCellPool))
		{
			return new GridCoveredCellPoolSerializer();
		}
		if (type == typeof(GridData))
		{
			return new GridDataSerializer();
		}
		if (type == typeof(GridDataTypeConverter))
		{
			return new GridDataTypeConverterSerializer();
		}
		if (type == typeof(GridCellCollection))
		{
			return new GridCellCollectionSerializer();
		}
		if (type == typeof(GridRowCollection))
		{
			return new GridRowCollectionSerializer();
		}
		if (type == typeof(GridPropertyStandardValuesList))
		{
			return new GridPropertyStandardValuesListSerializer();
		}
		if (type == typeof(GridRowColCountEventArgs))
		{
			return new GridRowColCountEventArgsSerializer();
		}
		if (type == typeof(GridEndUpdateRequestEventArgs))
		{
			return new GridEndUpdateRequestEventArgsSerializer();
		}
		if (type == typeof(GridRowColHideDictionaryTypeConverter))
		{
			return new GridRowColHideDictionaryTypeConverterSerializer();
		}
		if (type == typeof(GridModelHideRowColsIndexer))
		{
			return new GridModelHideRowColsIndexerSerializer();
		}
		if (type == typeof(GridClickedOnDisabledCellBehavior))
		{
			return new GridClickedOnDisabledCellBehaviorSerializer();
		}
		if (type == typeof(GridModelRowColOperations))
		{
			return new GridModelRowColOperationsSerializer();
		}
		if (type == typeof(GridRowColSizeDictionaryTypeConverter))
		{
			return new GridRowColSizeDictionaryTypeConverterSerializer();
		}
		if (type == typeof(GridNamespaceGroupItem))
		{
			return new GridNamespaceGroupItemSerializer();
		}
		if (type == typeof(GridNamespaceGroupItemCollection))
		{
			return new GridNamespaceGroupItemCollectionSerializer();
		}
		if (type == typeof(GridProperties))
		{
			return new GridPropertiesSerializer();
		}
		if (type == typeof(GridRangeStyleCollection))
		{
			return new GridRangeStyleCollectionSerializer();
		}
		if (type == typeof(GridRangeStyle))
		{
			return new GridRangeStyleSerializer();
		}
		if (type == typeof(GridRangeStyleTypeConverter))
		{
			return new GridRangeStyleTypeConverterSerializer();
		}
		if (type == typeof(GridRowHeightCollection))
		{
			return new GridRowHeightCollectionSerializer();
		}
		if (type == typeof(GridRowHeight))
		{
			return new GridRowHeightSerializer();
		}
		if (type == typeof(GridRowHeightTypeConverter))
		{
			return new GridRowHeightTypeConverterSerializer();
		}
		if (type == typeof(GridRowHiddenCollection))
		{
			return new GridRowHiddenCollectionSerializer();
		}
		if (type == typeof(GridRowHidden))
		{
			return new GridRowHiddenSerializer();
		}
		if (type == typeof(GridRowHiddenTypeConverter))
		{
			return new GridRowHiddenTypeConverterSerializer();
		}
		if (type == typeof(GridMouseController))
		{
			return new GridMouseControllerSerializer();
		}
		if (type == typeof(GridRangeInfo))
		{
			return new GridRangeInfoSerializer();
		}
		if (type == typeof(GridRangeInfoConverter))
		{
			return new GridRangeInfoConverterSerializer();
		}
		if (type == typeof(GridRangeInfoCodeDomSerializer))
		{
			return new GridRangeInfoCodeDomSerializerSerializer();
		}
		if (type == typeof(GridRangeInfoList))
		{
			return new GridRangeInfoListSerializer();
		}
		if (type == typeof(GridRangeInfoListConverter))
		{
			return new GridRangeInfoListConverterSerializer();
		}
		if (type == typeof(GridRangeInfoType))
		{
			return new GridRangeInfoTypeSerializer();
		}
		if (type == typeof(GridNonImmutableRangeInfo))
		{
			return new GridNonImmutableRangeInfoSerializer();
		}
		if (type == typeof(GridNonImmutableRangeInfoCollection))
		{
			return new GridNonImmutableRangeInfoCollectionSerializer();
		}
		if (type == typeof(GridCursors))
		{
			return new GridCursorsSerializer();
		}
		if (type == typeof(GridPaintTriangle))
		{
			return new GridPaintTriangleSerializer();
		}
		if (type == typeof(GridSortInfo))
		{
			return new GridSortInfoSerializer();
		}
		if (type == typeof(GridTriangleDirection))
		{
			return new GridTriangleDirectionSerializer();
		}
		if (type == typeof(GridBaseStyleConverter))
		{
			return new GridBaseStyleConverterSerializer();
		}
		if (type == typeof(GridBaseStyleNameConverter))
		{
			return new GridBaseStyleNameConverterSerializer();
		}
		if (type == typeof(GridBaseStyle))
		{
			return new GridBaseStyleSerializer();
		}
		if (type == typeof(GridBaseStylesMap))
		{
			return new GridBaseStylesMapSerializer();
		}
		if (type == typeof(GridStyleInfo))
		{
			return new GridStyleInfoSerializer();
		}
		if (type == typeof(GridBaseStylesMap))
		{
			return new GridBaseStylesMapSerializer1();
		}
		if (type == typeof(GridBorderStyle))
		{
			return new GridBorderStyleSerializer();
		}
		if (type == typeof(GridBorderWeight))
		{
			return new GridBorderWeightSerializer();
		}
		if (type == typeof(GridBorder))
		{
			return new GridBorderSerializer();
		}
		if (type == typeof(GridBorderCodeDomSerializer))
		{
			return new GridBorderCodeDomSerializerSerializer();
		}
		if (type == typeof(GridBorderConverter))
		{
			return new GridBorderConverterSerializer();
		}
		if (type == typeof(GridBorderPaint))
		{
			return new GridBorderPaintSerializer();
		}
		if (type == typeof(GridBorderSide))
		{
			return new GridBorderSideSerializer();
		}
		if (type == typeof(GridBordersInfoStore))
		{
			return new GridBordersInfoStoreSerializer();
		}
		if (type == typeof(GridBordersInfo))
		{
			return new GridBordersInfoSerializer();
		}
		if (type == typeof(GridCellAppearance))
		{
			return new GridCellAppearanceSerializer();
		}
		if (type == typeof(GridCellTypeNameConverter))
		{
			return new GridCellTypeNameConverterSerializer();
		}
		if (type == typeof(GridCellValidateValueInfoStore))
		{
			return new GridCellValidateValueInfoStoreSerializer();
		}
		if (type == typeof(GridCellValidateValueInfo))
		{
			return new GridCellValidateValueInfoSerializer();
		}
		if (type == typeof(GridCheckBoxCellInfoStore))
		{
			return new GridCheckBoxCellInfoStoreSerializer();
		}
		if (type == typeof(GridCheckBoxCellInfo))
		{
			return new GridCheckBoxCellInfoSerializer();
		}
		if (type == typeof(GridCurrencyEditInfo))
		{
			return new GridCurrencyEditInfoSerializer();
		}
		if (type == typeof(GridCurrencyEditInfoStore))
		{
			return new GridCurrencyEditInfoStoreSerializer();
		}
		if (type == typeof(GridFontInfoStore))
		{
			return new GridFontInfoStoreSerializer();
		}
		if (type == typeof(GridFontInfo))
		{
			return new GridFontInfoSerializer();
		}
		if (type == typeof(GridFontInfoEditor))
		{
			return new GridFontInfoEditorSerializer();
		}
		if (type == typeof(GridFormulaTag))
		{
			return new GridFormulaTagSerializer();
		}
		if (type == typeof(GridHorizontalAlignment))
		{
			return new GridHorizontalAlignmentSerializer();
		}
		if (type == typeof(GridMarginsInfoStore))
		{
			return new GridMarginsInfoStoreSerializer();
		}
		if (type == typeof(GridMarginsInfo))
		{
			return new GridMarginsInfoSerializer();
		}
		if (type == typeof(GridMargins))
		{
			return new GridMarginsSerializer();
		}
		if (type == typeof(GridMaskEditInfo))
		{
			return new GridMaskEditInfoSerializer();
		}
		if (type == typeof(GridMaskEditInfoStore))
		{
			return new GridMaskEditInfoStoreSerializer();
		}
		if (type == typeof(GridNumericUpDownCellInfoStore))
		{
			return new GridNumericUpDownCellInfoStoreSerializer();
		}
		if (type == typeof(GridNumericUpDownCellInfo))
		{
			return new GridNumericUpDownCellInfoSerializer();
		}
		if (type == typeof(GridProgressBarInfoStore))
		{
			return new GridProgressBarInfoStoreSerializer();
		}
		if (type == typeof(GridProgressBarInfo))
		{
			return new GridProgressBarInfoSerializer();
		}
		if (type == typeof(GridShowButtons))
		{
			return new GridShowButtonsSerializer();
		}
		if (type == typeof(GridStyleInfoStore))
		{
			return new GridStyleInfoStoreSerializer();
		}
		if (type == typeof(GridStyleInfoCustomProperties))
		{
			return new GridStyleInfoCustomPropertiesSerializer();
		}
		if (type == typeof(GridStyleInfoConverter))
		{
			return new GridStyleInfoConverterSerializer();
		}
		if (type == typeof(GridTextAlign))
		{
			return new GridTextAlignSerializer();
		}
		if (type == typeof(GridVerticalAlignment))
		{
			return new GridVerticalAlignmentSerializer();
		}
		if (type == typeof(GridDesignerMain))
		{
			return new GridDesignerMainSerializer();
		}
		if (type == typeof(GridCellsMemento))
		{
			return new GridCellsMementoSerializer();
		}
		if (type == typeof(ColumnStyles))
		{
			return new ColumnStylesSerializer();
		}
		if (type == typeof(RowStyles))
		{
			return new RowStylesSerializer();
		}
		if (type == typeof(GridRowColEntry))
		{
			return new GridRowColEntrySerializer();
		}
		if (type == typeof(GridRowColEntryCollection))
		{
			return new GridRowColEntryCollectionSerializer();
		}
		if (type == typeof(GridSyncProperties))
		{
			return new GridSyncPropertiesSerializer();
		}
		if (type == typeof(GridCellModelFactory))
		{
			return new GridCellModelFactorySerializer();
		}
		if (type == typeof(GridRadioButtonInfo))
		{
			return new GridRadioButtonInfoSerializer();
		}
		if (type == typeof(GridSerializeCellsBehavior))
		{
			return new GridSerializeCellsBehaviorSerializer();
		}
		if (type == typeof(GridSortBehavior))
		{
			return new GridSortBehaviorSerializer();
		}
		if (type == typeof(GridValidateFailedEventArgs))
		{
			return new GridValidateFailedEventArgsSerializer();
		}
		if (type == typeof(GridDataBoundIconPaint))
		{
			return new GridDataBoundIconPaintSerializer();
		}
		if (type == typeof(GridFilterBarTextChangedEventArgs))
		{
			return new GridFilterBarTextChangedEventArgsSerializer();
		}
		if (type == typeof(GridFilterBar))
		{
			return new GridFilterBarSerializer();
		}
		if (type == typeof(GridCurrentRecordItemChangedBehavior))
		{
			return new GridCurrentRecordItemChangedBehaviorSerializer();
		}
		if (type == typeof(GridFindReplaceDialogOptions))
		{
			return new GridFindReplaceDialogOptionsSerializer();
		}
		if (type == typeof(GridFormulaEngine.LenComparer))
		{
			return new LenComparerSerializer();
		}
		if (type == typeof(GridSheetFamilyItem))
		{
			return new GridSheetFamilyItemSerializer();
		}
		if (type == typeof(GridFormulaCopyFlags))
		{
			return new GridFormulaCopyFlagsSerializer();
		}
		if (type == typeof(GridFormulaParsingEventArgs))
		{
			return new GridFormulaParsingEventArgsSerializer();
		}
		if (type == typeof(GridFormulaNamedRangesEditHelper))
		{
			return new GridFormulaNamedRangesEditHelperSerializer();
		}
		if (type == typeof(GridFormulaNamedRangesEditHelper.NamedRangeList))
		{
			return new NamedRangeListSerializer();
		}
		if (type == typeof(GridFormulaNamedRangesEditHelper.NamedRange))
		{
			return new NamedRangeSerializer();
		}
		if (type == typeof(GridDragColumnHeaderBitmaps))
		{
			return new GridDragColumnHeaderBitmapsSerializer();
		}
		if (type == typeof(GridDragColumnHeaderMouseControllerBase))
		{
			return new GridDragColumnHeaderMouseControllerBaseSerializer();
		}
		if (type == typeof(GridDragColumnHeaderHelper))
		{
			return new GridDragColumnHeaderHelperSerializer();
		}
		if (type == typeof(GridQueryDragColumnHeaderReason))
		{
			return new GridQueryDragColumnHeaderReasonSerializer();
		}
		if (type == typeof(GridQueryAcceptDataOptions))
		{
			return new GridQueryAcceptDataOptionsSerializer();
		}
		if (type == typeof(GridGdiPaint))
		{
			return new GridGdiPaintSerializer();
		}
		return null;
	}
}
