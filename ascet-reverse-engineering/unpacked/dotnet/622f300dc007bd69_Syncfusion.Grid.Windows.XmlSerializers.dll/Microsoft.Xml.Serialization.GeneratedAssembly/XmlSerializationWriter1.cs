using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Drawing.Design;
using System.Globalization;
using System.Xml;
using System.Xml.Serialization;
using Syncfusion;
using Syncfusion.ComponentModel;
using Syncfusion.Styles;
using Syncfusion.Windows.Forms;
using Syncfusion.Windows.Forms.Grid;
using Syncfusion.Windows.Forms.Grid.Design;

namespace Microsoft.Xml.Serialization.GeneratedAssembly;

public class XmlSerializationWriter1 : XmlSerializationWriter
{
	public void Write151_GridWindowsAssembly(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridWindowsAssembly", "");
			return;
		}
		TopLevelElement();
		Write2_GridWindowsAssembly("GridWindowsAssembly", "", (GridWindowsAssembly)o, isNullable: true, needType: false);
	}

	public void Write152_GridBaseCellModelFactory(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridBaseCellModelFactory", "");
			return;
		}
		TopLevelElement();
		Write3_GridBaseCellModelFactory("GridBaseCellModelFactory", "", (GridBaseCellModelFactory)o, isNullable: true, needType: false);
	}

	public void Write153_GridCellLayout(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCellLayout", "");
			return;
		}
		TopLevelElement();
		Write7_GridCellLayout("GridCellLayout", "", (GridCellLayout)o, isNullable: true, needType: false);
	}

	public void Write154_GridImageUtil(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridImageUtil", "");
			return;
		}
		TopLevelElement();
		Write9_GridImageUtil("GridImageUtil", "", (GridImageUtil)o, isNullable: true, needType: false);
	}

	public void Write155_GridImageSizeMode(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridImageSizeMode", "");
		}
		else
		{
			WriteElementString("GridImageSizeMode", "", Write10_GridImageSizeMode((GridImageSizeMode)o));
		}
	}

	public void Write156_GridPrintInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridPrintInfo", "");
			return;
		}
		TopLevelElement();
		Write12_GridPrintInfo("GridPrintInfo", "", (GridPrintInfo)o, isNullable: true, needType: false);
	}

	public void Write157_GridCellSizeKind(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridCellSizeKind", "");
		}
		else
		{
			WriteElementString("GridCellSizeKind", "", Write13_GridCellSizeKind((GridCellSizeKind)o));
		}
	}

	public void Write158_GridFactoryProvider(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridFactoryProvider", "");
			return;
		}
		TopLevelElement();
		Write14_GridFactoryProvider("GridFactoryProvider", "", (GridFactoryProvider)o, isNullable: true, needType: false);
	}

	public void Write159_GridFontState(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridFontState", "");
			return;
		}
		TopLevelElement();
		Write15_GridFontState("GridFontState", "", (GridFontState)o, isNullable: true, needType: false);
	}

	public void Write160_GridCellPos(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridCellPos", "");
		}
		else
		{
			Write16_GridCellPos("GridCellPos", "", (GridCellPos)o, needType: false);
		}
	}

	public void Write161_GridConstants(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridConstants", "");
			return;
		}
		TopLevelElement();
		Write17_GridConstants("GridConstants", "", (GridConstants)o, isNullable: true, needType: false);
	}

	public void Write162_GridScrollCurrentCellReason(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridScrollCurrentCellReason", "");
		}
		else
		{
			WriteElementString("GridScrollCurrentCellReason", "", Write18_GridScrollCurrentCellReason((GridScrollCurrentCellReason)o));
		}
	}

	public void Write163_GridDropDownStyle(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridDropDownStyle", "");
		}
		else
		{
			WriteElementString("GridDropDownStyle", "", Write19_GridDropDownStyle((GridDropDownStyle)o));
		}
	}

	public void Write164_GridQueryFloatCell(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridQueryFloatCell", "");
		}
		else
		{
			WriteElementString("GridQueryFloatCell", "", Write20_GridQueryFloatCell((GridQueryFloatCell)o));
		}
	}

	public void Write165_GridWrapCellBehavior(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridWrapCellBehavior", "");
		}
		else
		{
			WriteElementString("GridWrapCellBehavior", "", Write21_GridWrapCellBehavior((GridWrapCellBehavior)o));
		}
	}

	public void Write166_GridRefreshCurrentCellBehavior(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridRefreshCurrentCellBehavior", "");
		}
		else
		{
			WriteElementString("GridRefreshCurrentCellBehavior", "", Write22_GridRefreshCurrentCellBehavior((GridRefreshCurrentCellBehavior)o));
		}
	}

	public void Write167_GridResizeToFitOptions(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridResizeToFitOptions", "");
		}
		else
		{
			WriteElementString("GridResizeToFitOptions", "", Write23_GridResizeToFitOptions((GridResizeToFitOptions)o));
		}
	}

	public void Write168_GridQueryBounds(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridQueryBounds", "");
		}
		else
		{
			WriteElementString("GridQueryBounds", "", Write24_GridQueryBounds((GridQueryBounds)o));
		}
	}

	public void Write169_GridCellBaseTextInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCellBaseTextInfo", "");
			return;
		}
		TopLevelElement();
		Write25_GridCellBaseTextInfo("GridCellBaseTextInfo", "", (GridCellBaseTextInfo)o, isNullable: true, needType: false);
	}

	public void Write170_GridSelectionReason(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridSelectionReason", "");
		}
		else
		{
			WriteElementString("GridSelectionReason", "", Write26_GridSelectionReason((GridSelectionReason)o));
		}
	}

	public void Write171_GridDragSelectionReason(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridDragSelectionReason", "");
		}
		else
		{
			WriteElementString("GridDragSelectionReason", "", Write27_GridDragSelectionReason((GridDragSelectionReason)o));
		}
	}

	public void Write172_GridResizeCellsReason(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridResizeCellsReason", "");
		}
		else
		{
			WriteElementString("GridResizeCellsReason", "", Write28_GridResizeCellsReason((GridResizeCellsReason)o));
		}
	}

	public void Write173_GridRangeOptions(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridRangeOptions", "");
		}
		else
		{
			WriteElementString("GridRangeOptions", "", Write29_GridRangeOptions((GridRangeOptions)o));
		}
	}

	public void Write174_GridBackgroundImageMode(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridBackgroundImageMode", "");
		}
		else
		{
			WriteElementString("GridBackgroundImageMode", "", Write30_GridBackgroundImageMode((GridBackgroundImageMode)o));
		}
	}

	public void Write175_GridDirectionType(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridDirectionType", "");
		}
		else
		{
			WriteElementString("GridDirectionType", "", Write31_GridDirectionType((GridDirectionType)o));
		}
	}

	public void Write176_GridResizeCellsBehavior(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridResizeCellsBehavior", "");
		}
		else
		{
			WriteElementString("GridResizeCellsBehavior", "", Write32_GridResizeCellsBehavior((GridResizeCellsBehavior)o));
		}
	}

	public void Write177_GridHitTestContext(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridHitTestContext", "");
			return;
		}
		TopLevelElement();
		Write33_GridHitTestContext("GridHitTestContext", "", (GridHitTestContext)o, isNullable: true, needType: false);
	}

	public void Write178_GridSelectionFlags(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridSelectionFlags", "");
		}
		else
		{
			WriteElementString("GridSelectionFlags", "", Write34_GridSelectionFlags((GridSelectionFlags)o));
		}
	}

	public void Write179_GridFloatCellsMode(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridFloatCellsMode", "");
		}
		else
		{
			WriteElementString("GridFloatCellsMode", "", Write35_GridFloatCellsMode((GridFloatCellsMode)o));
		}
	}

	public void Write180_GridMergeCellDirection(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridMergeCellDirection", "");
		}
		else
		{
			WriteElementString("GridMergeCellDirection", "", Write36_GridMergeCellDirection((GridMergeCellDirection)o));
		}
	}

	public void Write181_GridMergeCellsMode(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridMergeCellsMode", "");
		}
		else
		{
			WriteElementString("GridMergeCellsMode", "", Write37_GridMergeCellsMode((GridMergeCellsMode)o));
		}
	}

	public void Write182_GridCellActivateAction(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridCellActivateAction", "");
		}
		else
		{
			WriteElementString("GridCellActivateAction", "", Write38_GridCellActivateAction((GridCellActivateAction)o));
		}
	}

	public void Write183_GridDrawOrder(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridDrawOrder", "");
		}
		else
		{
			WriteElementString("GridDrawOrder", "", Write39_GridDrawOrder((GridDrawOrder)o));
		}
	}

	public void Write184_GridShowCurrentCellBorder(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridShowCurrentCellBorder", "");
		}
		else
		{
			WriteElementString("GridShowCurrentCellBorder", "", Write40_GridShowCurrentCellBorder((GridShowCurrentCellBorder)o));
		}
	}

	public void Write185_GridSetCurrentCellOptions(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridSetCurrentCellOptions", "");
		}
		else
		{
			WriteElementString("GridSetCurrentCellOptions", "", Write41_GridSetCurrentCellOptions((GridSetCurrentCellOptions)o));
		}
	}

	public void Write186_GridScrollbarMode(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridScrollbarMode", "");
		}
		else
		{
			WriteElementString("GridScrollbarMode", "", Write42_GridScrollbarMode((GridScrollbarMode)o));
		}
	}

	public void Write187_GridCountRecordsBehavior(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridCountRecordsBehavior", "");
		}
		else
		{
			WriteElementString("GridCountRecordsBehavior", "", Write11_GridCountRecordsBehavior((GridCountRecordsBehavior)o));
		}
	}

	public void Write188_GridDragDropFlags(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridDragDropFlags", "");
			return;
		}
		TopLevelElement();
		Write43_GridDragDropFlags("GridDragDropFlags", "", (GridDragDropFlags)o, isNullable: true, needType: false);
	}

	public void Write189_GridFindTextOptions(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridFindTextOptions", "");
		}
		else
		{
			WriteElementString("GridFindTextOptions", "", Write44_GridFindTextOptions((GridFindTextOptions)o));
		}
	}

	public void Write190_GridCommandMode(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridCommandMode", "");
		}
		else
		{
			WriteElementString("GridCommandMode", "", Write45_GridCommandMode((GridCommandMode)o));
		}
	}

	public void Write191_GridControllerOptions(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridControllerOptions", "");
		}
		else
		{
			WriteElementString("GridControllerOptions", "", Write46_GridControllerOptions((GridControllerOptions)o));
		}
	}

	public void Write192_GridDataObjectConsumerOptions(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridDataObjectConsumerOptions", "");
		}
		else
		{
			WriteElementString("GridDataObjectConsumerOptions", "", Write47_GridDataObjectConsumerOptions((GridDataObjectConsumerOptions)o));
		}
	}

	public void Write193_GridCellTypeName(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCellTypeName", "");
			return;
		}
		TopLevelElement();
		Write48_GridCellTypeName("GridCellTypeName", "", (GridCellTypeName)o, isNullable: true, needType: false);
	}

	public void Write194_GridUtil(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridUtil", "");
			return;
		}
		TopLevelElement();
		Write49_GridUtil("GridUtil", "", (GridUtil)o, isNullable: true, needType: false);
	}

	public void Write195_GridBanneredCellPool(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridBanneredCellPool", "");
			return;
		}
		TopLevelElement();
		Write50_GridBanneredCellPool("GridBanneredCellPool", "", (GridBanneredCellPool)o, isNullable: true, needType: false);
	}

	public void Write196_GridCellInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCellInfo", "");
			return;
		}
		TopLevelElement();
		Write51_GridCellInfo("GridCellInfo", "", (GridCellInfo)o, isNullable: true, needType: false);
	}

	public void Write197_ArrayOfGridCellInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("ArrayOfGridCellInfo", "");
			return;
		}
		TopLevelElement();
		GridCellInfoCollection gridCellInfoCollection = (GridCellInfoCollection)o;
		if (gridCellInfoCollection == null)
		{
			WriteNullTagLiteral("ArrayOfGridCellInfo", "");
			return;
		}
		WriteStartElement("ArrayOfGridCellInfo", "", null, writePrefixed: false);
		for (int i = 0; i < ((ICollection)gridCellInfoCollection).Count; i++)
		{
			Write51_GridCellInfo("GridCellInfo", "", gridCellInfoCollection[i], isNullable: true, needType: false);
		}
		WriteEndElement();
	}

	public void Write198_GridCellInfoTypeConverter(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCellInfoTypeConverter", "");
			return;
		}
		TopLevelElement();
		Write54_GridCellInfoTypeConverter("GridCellInfoTypeConverter", "", (GridCellInfoTypeConverter)o, isNullable: true, needType: false);
	}

	public void Write199_GridModelBound(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridModelBound", "");
			return;
		}
		TopLevelElement();
		Write56_GridModelBound("GridModelBound", "", (GridModelBound)o, isNullable: true, needType: false);
	}

	public void Write200_GridCellValueConvert(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCellValueConvert", "");
			return;
		}
		TopLevelElement();
		Write58_GridCellValueConvert("GridCellValueConvert", "", (GridCellValueConvert)o, isNullable: true, needType: false);
	}

	public void Write201_GridCellValueTypeConverter(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCellValueTypeConverter", "");
			return;
		}
		TopLevelElement();
		Write59_GridCellValueTypeConverter("GridCellValueTypeConverter", "", (GridCellValueTypeConverter)o, isNullable: true, needType: false);
	}

	public void Write202_ArrayOfGridColHidden(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("ArrayOfGridColHidden", "");
			return;
		}
		TopLevelElement();
		GridColHiddenCollection gridColHiddenCollection = (GridColHiddenCollection)o;
		if (gridColHiddenCollection == null)
		{
			WriteNullTagLiteral("ArrayOfGridColHidden", "");
			return;
		}
		WriteStartElement("ArrayOfGridColHidden", "", null, writePrefixed: false);
		for (int i = 0; i < ((ICollection)gridColHiddenCollection).Count; i++)
		{
			Write60_GridColHidden("GridColHidden", "", gridColHiddenCollection[i], isNullable: true, needType: false);
		}
		WriteEndElement();
	}

	public void Write203_GridColHidden(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridColHidden", "");
			return;
		}
		TopLevelElement();
		Write60_GridColHidden("GridColHidden", "", (GridColHidden)o, isNullable: true, needType: false);
	}

	public void Write204_GridColHiddenTypeConverter(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridColHiddenTypeConverter", "");
			return;
		}
		TopLevelElement();
		Write61_GridColHiddenTypeConverter("GridColHiddenTypeConverter", "", (GridColHiddenTypeConverter)o, isNullable: true, needType: false);
	}

	public void Write205_ArrayOfGridColWidth(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("ArrayOfGridColWidth", "");
			return;
		}
		TopLevelElement();
		GridColWidthCollection gridColWidthCollection = (GridColWidthCollection)o;
		if (gridColWidthCollection == null)
		{
			WriteNullTagLiteral("ArrayOfGridColWidth", "");
			return;
		}
		WriteStartElement("ArrayOfGridColWidth", "", null, writePrefixed: false);
		for (int i = 0; i < ((ICollection)gridColWidthCollection).Count; i++)
		{
			Write62_GridColWidth("GridColWidth", "", gridColWidthCollection[i], isNullable: true, needType: false);
		}
		WriteEndElement();
	}

	public void Write206_GridColWidth(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridColWidth", "");
			return;
		}
		TopLevelElement();
		Write62_GridColWidth("GridColWidth", "", (GridColWidth)o, isNullable: true, needType: false);
	}

	public void Write207_GridColWidthTypeConverter(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridColWidthTypeConverter", "");
			return;
		}
		TopLevelElement();
		Write63_GridColWidthTypeConverter("GridColWidthTypeConverter", "", (GridColWidthTypeConverter)o, isNullable: true, needType: false);
	}

	public void Write208_GridModelCommand(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridModelCommand", "");
			return;
		}
		TopLevelElement();
		Write65_GridModelCommand("GridModelCommand", "", (GridModelCommand)o, isNullable: true, needType: false);
	}

	public void Write209_GridCoveredCellPool(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCoveredCellPool", "");
			return;
		}
		TopLevelElement();
		Write66_GridCoveredCellPool("GridCoveredCellPool", "", (GridCoveredCellPool)o, isNullable: true, needType: false);
	}

	public void Write210_GridData(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridData", "");
			return;
		}
		TopLevelElement();
		Write67_GridData("GridData", "", (GridData)o, isNullable: true, needType: false);
	}

	public void Write211_GridDataTypeConverter(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridDataTypeConverter", "");
			return;
		}
		TopLevelElement();
		Write68_GridDataTypeConverter("GridDataTypeConverter", "", (GridDataTypeConverter)o, isNullable: true, needType: false);
	}

	public void Write212_ArrayOfGridStyleInfoStore(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("ArrayOfGridStyleInfoStore", "");
			return;
		}
		TopLevelElement();
		GridCellCollection gridCellCollection = (GridCellCollection)o;
		if (gridCellCollection == null)
		{
			WriteNullTagLiteral("ArrayOfGridStyleInfoStore", "");
			return;
		}
		WriteStartElement("ArrayOfGridStyleInfoStore", "", null, writePrefixed: false);
		for (int i = 0; i < ((ICollection)gridCellCollection).Count; i++)
		{
			WriteSerializable(gridCellCollection[i], "GridStyleInfoStore", "", isNullable: true, wrapped: true);
		}
		WriteEndElement();
	}

	public void Write213_Item(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("ArrayOfArrayOfGridStyleInfoStore", "");
			return;
		}
		TopLevelElement();
		GridRowCollection gridRowCollection = (GridRowCollection)o;
		if (gridRowCollection == null)
		{
			WriteNullTagLiteral("ArrayOfArrayOfGridStyleInfoStore", "");
			return;
		}
		WriteStartElement("ArrayOfArrayOfGridStyleInfoStore", "", null, writePrefixed: false);
		for (int i = 0; i < ((ICollection)gridRowCollection).Count; i++)
		{
			GridCellCollection gridCellCollection = gridRowCollection[i];
			if (gridCellCollection == null)
			{
				WriteNullTagLiteral("ArrayOfGridStyleInfoStore", "");
				continue;
			}
			WriteStartElement("ArrayOfGridStyleInfoStore", "", null, writePrefixed: false);
			for (int j = 0; j < ((ICollection)gridCellCollection).Count; j++)
			{
				WriteSerializable(gridCellCollection[j], "GridStyleInfoStore", "", isNullable: true, wrapped: true);
			}
			WriteEndElement();
		}
		WriteEndElement();
	}

	public void Write214_ArrayOfAnyType(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("ArrayOfAnyType", "");
			return;
		}
		TopLevelElement();
		GridPropertyStandardValuesList gridPropertyStandardValuesList = (GridPropertyStandardValuesList)o;
		if (gridPropertyStandardValuesList == null)
		{
			WriteNullTagLiteral("ArrayOfAnyType", "");
			return;
		}
		WriteStartElement("ArrayOfAnyType", "", null, writePrefixed: false);
		for (int i = 0; i < ((ICollection)gridPropertyStandardValuesList).Count; i++)
		{
			Write1_Object("anyType", "", gridPropertyStandardValuesList[i], isNullable: true, needType: false);
		}
		WriteEndElement();
	}

	public void Write215_GridRowColCountEventArgs(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridRowColCountEventArgs", "");
			return;
		}
		TopLevelElement();
		Write72_GridRowColCountEventArgs("GridRowColCountEventArgs", "", (GridRowColCountEventArgs)o, isNullable: true, needType: false);
	}

	public void Write216_GridEndUpdateRequestEventArgs(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridEndUpdateRequestEventArgs", "");
			return;
		}
		TopLevelElement();
		Write73_GridEndUpdateRequestEventArgs("GridEndUpdateRequestEventArgs", "", (GridEndUpdateRequestEventArgs)o, isNullable: true, needType: false);
	}

	public void Write217_Item(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridRowColHideDictionaryTypeConverter", "");
			return;
		}
		TopLevelElement();
		Write74_Item("GridRowColHideDictionaryTypeConverter", "", (GridRowColHideDictionaryTypeConverter)o, isNullable: true, needType: false);
	}

	public void Write218_GridModelHideRowColsIndexer(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridModelHideRowColsIndexer", "");
			return;
		}
		TopLevelElement();
		Write75_GridModelHideRowColsIndexer("GridModelHideRowColsIndexer", "", (GridModelHideRowColsIndexer)o, isNullable: true, needType: false);
	}

	public void Write219_Item(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridClickedOnDisabledCellBehavior", "");
		}
		else
		{
			WriteElementString("GridClickedOnDisabledCellBehavior", "", Write76_Item((GridClickedOnDisabledCellBehavior)o));
		}
	}

	public void Write220_GridModelRowColOperations(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridModelRowColOperations", "");
			return;
		}
		TopLevelElement();
		Write77_GridModelRowColOperations("GridModelRowColOperations", "", (GridModelRowColOperations)o, isNullable: true, needType: false);
	}

	public void Write221_Item(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridRowColSizeDictionaryTypeConverter", "");
			return;
		}
		TopLevelElement();
		Write78_Item("GridRowColSizeDictionaryTypeConverter", "", (GridRowColSizeDictionaryTypeConverter)o, isNullable: true, needType: false);
	}

	public void Write222_GridNamespaceGroupItem(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridNamespaceGroupItem", "");
		}
		else
		{
			Write79_GridNamespaceGroupItem("GridNamespaceGroupItem", "", (GridNamespaceGroupItem)o, needType: false);
		}
	}

	public void Write223_ArrayOfGridNamespaceGroupItem(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("ArrayOfGridNamespaceGroupItem", "");
			return;
		}
		TopLevelElement();
		GridNamespaceGroupItemCollection gridNamespaceGroupItemCollection = (GridNamespaceGroupItemCollection)o;
		if (gridNamespaceGroupItemCollection == null)
		{
			WriteNullTagLiteral("ArrayOfGridNamespaceGroupItem", "");
			return;
		}
		WriteStartElement("ArrayOfGridNamespaceGroupItem", "", null, writePrefixed: false);
		for (int i = 0; i < ((ICollection)gridNamespaceGroupItemCollection).Count; i++)
		{
			Write79_GridNamespaceGroupItem("GridNamespaceGroupItem", "", gridNamespaceGroupItemCollection[i], needType: false);
		}
		WriteEndElement();
	}

	public void Write224_GridProperties(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridProperties", "");
			return;
		}
		TopLevelElement();
		Write81_GridProperties("GridProperties", "", (GridProperties)o, isNullable: true, needType: false);
	}

	public void Write225_ArrayOfGridRangeStyle(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("ArrayOfGridRangeStyle", "");
			return;
		}
		TopLevelElement();
		GridRangeStyleCollection gridRangeStyleCollection = (GridRangeStyleCollection)o;
		if (gridRangeStyleCollection == null)
		{
			WriteNullTagLiteral("ArrayOfGridRangeStyle", "");
			return;
		}
		WriteStartElement("ArrayOfGridRangeStyle", "", null, writePrefixed: false);
		for (int i = 0; i < ((ICollection)gridRangeStyleCollection).Count; i++)
		{
			Write82_GridRangeStyle("GridRangeStyle", "", gridRangeStyleCollection[i], isNullable: true, needType: false);
		}
		WriteEndElement();
	}

	public void Write226_GridRangeStyle(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridRangeStyle", "");
			return;
		}
		TopLevelElement();
		Write82_GridRangeStyle("GridRangeStyle", "", (GridRangeStyle)o, isNullable: true, needType: false);
	}

	public void Write227_GridRangeStyleTypeConverter(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridRangeStyleTypeConverter", "");
			return;
		}
		TopLevelElement();
		Write83_GridRangeStyleTypeConverter("GridRangeStyleTypeConverter", "", (GridRangeStyleTypeConverter)o, isNullable: true, needType: false);
	}

	public void Write228_ArrayOfGridRowHeight(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("ArrayOfGridRowHeight", "");
			return;
		}
		TopLevelElement();
		GridRowHeightCollection gridRowHeightCollection = (GridRowHeightCollection)o;
		if (gridRowHeightCollection == null)
		{
			WriteNullTagLiteral("ArrayOfGridRowHeight", "");
			return;
		}
		WriteStartElement("ArrayOfGridRowHeight", "", null, writePrefixed: false);
		for (int i = 0; i < ((ICollection)gridRowHeightCollection).Count; i++)
		{
			Write84_GridRowHeight("GridRowHeight", "", gridRowHeightCollection[i], isNullable: true, needType: false);
		}
		WriteEndElement();
	}

	public void Write229_GridRowHeight(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridRowHeight", "");
			return;
		}
		TopLevelElement();
		Write84_GridRowHeight("GridRowHeight", "", (GridRowHeight)o, isNullable: true, needType: false);
	}

	public void Write230_GridRowHeightTypeConverter(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridRowHeightTypeConverter", "");
			return;
		}
		TopLevelElement();
		Write85_GridRowHeightTypeConverter("GridRowHeightTypeConverter", "", (GridRowHeightTypeConverter)o, isNullable: true, needType: false);
	}

	public void Write231_ArrayOfGridRowHidden(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("ArrayOfGridRowHidden", "");
			return;
		}
		TopLevelElement();
		GridRowHiddenCollection gridRowHiddenCollection = (GridRowHiddenCollection)o;
		if (gridRowHiddenCollection == null)
		{
			WriteNullTagLiteral("ArrayOfGridRowHidden", "");
			return;
		}
		WriteStartElement("ArrayOfGridRowHidden", "", null, writePrefixed: false);
		for (int i = 0; i < ((ICollection)gridRowHiddenCollection).Count; i++)
		{
			Write86_GridRowHidden("GridRowHidden", "", gridRowHiddenCollection[i], isNullable: true, needType: false);
		}
		WriteEndElement();
	}

	public void Write232_GridRowHidden(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridRowHidden", "");
			return;
		}
		TopLevelElement();
		Write86_GridRowHidden("GridRowHidden", "", (GridRowHidden)o, isNullable: true, needType: false);
	}

	public void Write233_GridRowHiddenTypeConverter(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridRowHiddenTypeConverter", "");
			return;
		}
		TopLevelElement();
		Write87_GridRowHiddenTypeConverter("GridRowHiddenTypeConverter", "", (GridRowHiddenTypeConverter)o, isNullable: true, needType: false);
	}

	public void Write234_GridMouseController(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridMouseController", "");
			return;
		}
		TopLevelElement();
		Write89_GridMouseController("GridMouseController", "", (GridMouseController)o, isNullable: true, needType: false);
	}

	public void Write235_GridRangeInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridRangeInfo", "");
			return;
		}
		TopLevelElement();
		Write90_GridRangeInfo("GridRangeInfo", "", (GridRangeInfo)o, isNullable: true, needType: false);
	}

	public void Write236_GridRangeInfoConverter(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridRangeInfoConverter", "");
			return;
		}
		TopLevelElement();
		Write91_GridRangeInfoConverter("GridRangeInfoConverter", "", (GridRangeInfoConverter)o, isNullable: true, needType: false);
	}

	public void Write237_GridRangeInfoCodeDomSerializer(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridRangeInfoCodeDomSerializer", "");
			return;
		}
		TopLevelElement();
		Write94_GridRangeInfoCodeDomSerializer("GridRangeInfoCodeDomSerializer", "", (GridRangeInfoCodeDomSerializer)o, isNullable: true, needType: false);
	}

	public void Write238_ArrayOfGridRangeInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("ArrayOfGridRangeInfo", "");
			return;
		}
		TopLevelElement();
		GridRangeInfoList gridRangeInfoList = (GridRangeInfoList)o;
		if (gridRangeInfoList == null)
		{
			WriteNullTagLiteral("ArrayOfGridRangeInfo", "");
			return;
		}
		WriteStartElement("ArrayOfGridRangeInfo", "", null, writePrefixed: false);
		for (int i = 0; i < ((ICollection)gridRangeInfoList).Count; i++)
		{
			Write90_GridRangeInfo("GridRangeInfo", "", gridRangeInfoList[i], isNullable: true, needType: false);
		}
		WriteEndElement();
	}

	public void Write239_GridRangeInfoListConverter(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridRangeInfoListConverter", "");
			return;
		}
		TopLevelElement();
		Write95_GridRangeInfoListConverter("GridRangeInfoListConverter", "", (GridRangeInfoListConverter)o, isNullable: true, needType: false);
	}

	public void Write240_GridRangeInfoType(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridRangeInfoType", "");
		}
		else
		{
			WriteElementString("GridRangeInfoType", "", Write96_GridRangeInfoType((GridRangeInfoType)o));
		}
	}

	public void Write241_GridNonImmutableRangeInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridNonImmutableRangeInfo", "");
			return;
		}
		TopLevelElement();
		Write97_GridNonImmutableRangeInfo("GridNonImmutableRangeInfo", "", (GridNonImmutableRangeInfo)o, isNullable: true, needType: false);
	}

	public void Write242_Item(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("ArrayOfGridNonImmutableRangeInfo", "");
			return;
		}
		TopLevelElement();
		GridNonImmutableRangeInfoCollection gridNonImmutableRangeInfoCollection = (GridNonImmutableRangeInfoCollection)o;
		if (gridNonImmutableRangeInfoCollection == null)
		{
			WriteNullTagLiteral("ArrayOfGridNonImmutableRangeInfo", "");
			return;
		}
		WriteStartElement("ArrayOfGridNonImmutableRangeInfo", "", null, writePrefixed: false);
		for (int i = 0; i < ((ICollection)gridNonImmutableRangeInfoCollection).Count; i++)
		{
			Write97_GridNonImmutableRangeInfo("GridNonImmutableRangeInfo", "", gridNonImmutableRangeInfoCollection[i], isNullable: true, needType: false);
		}
		WriteEndElement();
	}

	public void Write243_GridCursors(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCursors", "");
			return;
		}
		TopLevelElement();
		Write98_GridCursors("GridCursors", "", (GridCursors)o, isNullable: true, needType: false);
	}

	public void Write244_GridPaintTriangle(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridPaintTriangle", "");
			return;
		}
		TopLevelElement();
		Write99_GridPaintTriangle("GridPaintTriangle", "", (GridPaintTriangle)o, isNullable: true, needType: false);
	}

	public void Write245_GridSortInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridSortInfo", "");
			return;
		}
		TopLevelElement();
		Write100_GridSortInfo("GridSortInfo", "", (GridSortInfo)o, isNullable: true, needType: false);
	}

	public void Write246_GridTriangleDirection(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridTriangleDirection", "");
		}
		else
		{
			WriteElementString("GridTriangleDirection", "", Write101_GridTriangleDirection((GridTriangleDirection)o));
		}
	}

	public void Write247_GridBaseStyleConverter(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridBaseStyleConverter", "");
			return;
		}
		TopLevelElement();
		Write102_GridBaseStyleConverter("GridBaseStyleConverter", "", (GridBaseStyleConverter)o, isNullable: true, needType: false);
	}

	public void Write248_GridBaseStyleNameConverter(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridBaseStyleNameConverter", "");
			return;
		}
		TopLevelElement();
		Write103_GridBaseStyleNameConverter("GridBaseStyleNameConverter", "", (GridBaseStyleNameConverter)o, isNullable: true, needType: false);
	}

	public void Write249_GridBaseStyle(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridBaseStyle", "");
			return;
		}
		TopLevelElement();
		Write104_GridBaseStyle("GridBaseStyle", "", (GridBaseStyle)o, isNullable: true, needType: false);
	}

	public void Write250_ArrayOfGridBaseStyle(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("ArrayOfGridBaseStyle", "");
			return;
		}
		TopLevelElement();
		GridBaseStylesMap gridBaseStylesMap = (GridBaseStylesMap)o;
		if (gridBaseStylesMap == null)
		{
			WriteNullTagLiteral("ArrayOfGridBaseStyle", "");
			return;
		}
		WriteStartElement("ArrayOfGridBaseStyle", "", null, writePrefixed: false);
		for (int i = 0; i < ((ICollection)gridBaseStylesMap).Count; i++)
		{
			Write104_GridBaseStyle("GridBaseStyle", "", gridBaseStylesMap[i], isNullable: true, needType: false);
		}
		WriteEndElement();
	}

	public void Write251_GridStyleInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridStyleInfo", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridStyleInfo)o, "GridStyleInfo", "", isNullable: true, wrapped: true);
	}

	public void Write252_ArrayOfGridBaseStyle(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("ArrayOfGridBaseStyle", "");
			return;
		}
		TopLevelElement();
		GridBaseStylesMap gridBaseStylesMap = (GridBaseStylesMap)o;
		if (gridBaseStylesMap == null)
		{
			WriteNullTagLiteral("ArrayOfGridBaseStyle", "");
			return;
		}
		WriteStartElement("ArrayOfGridBaseStyle", "", null, writePrefixed: false);
		for (int i = 0; i < ((ICollection)gridBaseStylesMap).Count; i++)
		{
			Write104_GridBaseStyle("GridBaseStyle", "", gridBaseStylesMap[i], isNullable: true, needType: false);
		}
		WriteEndElement();
	}

	public void Write253_GridBorderStyle(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridBorderStyle", "");
		}
		else
		{
			WriteElementString("GridBorderStyle", "", Write105_GridBorderStyle((GridBorderStyle)o));
		}
	}

	public void Write254_GridBorderWeight(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridBorderWeight", "");
		}
		else
		{
			WriteElementString("GridBorderWeight", "", Write106_GridBorderWeight((GridBorderWeight)o));
		}
	}

	public void Write255_GridBorder(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridBorder", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridBorder)o, "GridBorder", "", isNullable: true, wrapped: true);
	}

	public void Write256_GridBorderCodeDomSerializer(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridBorderCodeDomSerializer", "");
			return;
		}
		TopLevelElement();
		Write107_GridBorderCodeDomSerializer("GridBorderCodeDomSerializer", "", (GridBorderCodeDomSerializer)o, isNullable: true, needType: false);
	}

	public void Write257_GridBorderConverter(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridBorderConverter", "");
			return;
		}
		TopLevelElement();
		Write108_GridBorderConverter("GridBorderConverter", "", (GridBorderConverter)o, isNullable: true, needType: false);
	}

	public void Write258_GridBorderPaint(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridBorderPaint", "");
			return;
		}
		TopLevelElement();
		Write109_GridBorderPaint("GridBorderPaint", "", (GridBorderPaint)o, isNullable: true, needType: false);
	}

	public void Write259_GridBorderSide(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridBorderSide", "");
		}
		else
		{
			WriteElementString("GridBorderSide", "", Write110_GridBorderSide((GridBorderSide)o));
		}
	}

	public void Write260_GridBordersInfoStore(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridBordersInfoStore", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridBordersInfoStore)o, "GridBordersInfoStore", "", isNullable: true, wrapped: true);
	}

	public void Write261_GridBordersInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridBordersInfo", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridBordersInfo)o, "GridBordersInfo", "", isNullable: true, wrapped: true);
	}

	public void Write262_GridCellAppearance(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridCellAppearance", "");
		}
		else
		{
			WriteElementString("GridCellAppearance", "", Write111_GridCellAppearance((GridCellAppearance)o));
		}
	}

	public void Write263_GridCellTypeNameConverter(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCellTypeNameConverter", "");
			return;
		}
		TopLevelElement();
		Write112_GridCellTypeNameConverter("GridCellTypeNameConverter", "", (GridCellTypeNameConverter)o, isNullable: true, needType: false);
	}

	public void Write264_GridCellValidateValueInfoStore(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCellValidateValueInfoStore", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridCellValidateValueInfoStore)o, "GridCellValidateValueInfoStore", "", isNullable: true, wrapped: true);
	}

	public void Write265_GridCellValidateValueInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCellValidateValueInfo", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridCellValidateValueInfo)o, "GridCellValidateValueInfo", "", isNullable: true, wrapped: true);
	}

	public void Write266_GridCheckBoxCellInfoStore(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCheckBoxCellInfoStore", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridCheckBoxCellInfoStore)o, "GridCheckBoxCellInfoStore", "", isNullable: true, wrapped: true);
	}

	public void Write267_GridCheckBoxCellInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCheckBoxCellInfo", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridCheckBoxCellInfo)o, "GridCheckBoxCellInfo", "", isNullable: true, wrapped: true);
	}

	public void Write268_GridCurrencyEditInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCurrencyEditInfo", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridCurrencyEditInfo)o, "GridCurrencyEditInfo", "", isNullable: true, wrapped: true);
	}

	public void Write269_GridCurrencyEditInfoStore(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCurrencyEditInfoStore", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridCurrencyEditInfoStore)o, "GridCurrencyEditInfoStore", "", isNullable: true, wrapped: true);
	}

	public void Write270_GridFontInfoStore(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridFontInfoStore", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridFontInfoStore)o, "GridFontInfoStore", "", isNullable: true, wrapped: true);
	}

	public void Write271_GridFontInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridFontInfo", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridFontInfo)o, "GridFontInfo", "", isNullable: true, wrapped: true);
	}

	public void Write272_GridFontInfoEditor(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridFontInfoEditor", "");
			return;
		}
		TopLevelElement();
		Write114_GridFontInfoEditor("GridFontInfoEditor", "", (GridFontInfoEditor)o, isNullable: true, needType: false);
	}

	public void Write273_GridFormulaTag(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridFormulaTag", "");
			return;
		}
		TopLevelElement();
		Write115_GridFormulaTag("GridFormulaTag", "", (GridFormulaTag)o, isNullable: true, needType: false);
	}

	public void Write274_GridHorizontalAlignment(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridHorizontalAlignment", "");
		}
		else
		{
			WriteElementString("GridHorizontalAlignment", "", Write116_GridHorizontalAlignment((GridHorizontalAlignment)o));
		}
	}

	public void Write275_GridMarginsInfoStore(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridMarginsInfoStore", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridMarginsInfoStore)o, "GridMarginsInfoStore", "", isNullable: true, wrapped: true);
	}

	public void Write276_GridMarginsInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridMarginsInfo", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridMarginsInfo)o, "GridMarginsInfo", "", isNullable: true, wrapped: true);
	}

	public void Write277_GridMargins(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridMargins", "");
			return;
		}
		TopLevelElement();
		Write117_GridMargins("GridMargins", "", (GridMargins)o, isNullable: true, needType: false);
	}

	public void Write278_GridMaskEditInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridMaskEditInfo", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridMaskEditInfo)o, "GridMaskEditInfo", "", isNullable: true, wrapped: true);
	}

	public void Write279_GridMaskEditInfoStore(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridMaskEditInfoStore", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridMaskEditInfoStore)o, "GridMaskEditInfoStore", "", isNullable: true, wrapped: true);
	}

	public void Write280_GridNumericUpDownCellInfoStore(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridNumericUpDownCellInfoStore", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridNumericUpDownCellInfoStore)o, "GridNumericUpDownCellInfoStore", "", isNullable: true, wrapped: true);
	}

	public void Write281_GridNumericUpDownCellInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridNumericUpDownCellInfo", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridNumericUpDownCellInfo)o, "GridNumericUpDownCellInfo", "", isNullable: true, wrapped: true);
	}

	public void Write282_GridProgressBarInfoStore(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridProgressBarInfoStore", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridProgressBarInfoStore)o, "GridProgressBarInfoStore", "", isNullable: true, wrapped: true);
	}

	public void Write283_GridProgressBarInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridProgressBarInfo", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridProgressBarInfo)o, "GridProgressBarInfo", "", isNullable: true, wrapped: true);
	}

	public void Write284_GridShowButtons(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridShowButtons", "");
		}
		else
		{
			WriteElementString("GridShowButtons", "", Write118_GridShowButtons((GridShowButtons)o));
		}
	}

	public void Write285_GridStyleInfoStore(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridStyleInfoStore", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridStyleInfoStore)o, "GridStyleInfoStore", "", isNullable: true, wrapped: true);
	}

	public void Write286_GridStyleInfoCustomProperties(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridStyleInfoCustomProperties", "");
			return;
		}
		TopLevelElement();
		Write119_GridStyleInfoCustomProperties("GridStyleInfoCustomProperties", "", (GridStyleInfoCustomProperties)o, isNullable: true, needType: false);
	}

	public void Write287_GridStyleInfoConverter(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridStyleInfoConverter", "");
			return;
		}
		TopLevelElement();
		Write121_GridStyleInfoConverter("GridStyleInfoConverter", "", (GridStyleInfoConverter)o, isNullable: true, needType: false);
	}

	public void Write288_GridTextAlign(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridTextAlign", "");
		}
		else
		{
			WriteElementString("GridTextAlign", "", Write122_GridTextAlign((GridTextAlign)o));
		}
	}

	public void Write289_GridVerticalAlignment(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridVerticalAlignment", "");
		}
		else
		{
			WriteElementString("GridVerticalAlignment", "", Write123_GridVerticalAlignment((GridVerticalAlignment)o));
		}
	}

	public void Write290_GridDesignerMain(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridDesignerMain", "");
			return;
		}
		TopLevelElement();
		Write124_GridDesignerMain("GridDesignerMain", "", (GridDesignerMain)o, isNullable: true, needType: false);
	}

	public void Write291_GridCellsMemento(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCellsMemento", "");
			return;
		}
		TopLevelElement();
		Write128_GridCellsMemento("GridCellsMemento", "", (GridCellsMemento)o, isNullable: true, needType: false);
	}

	public void Write292_ColumnStyles(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("ColumnStyles", "");
			return;
		}
		TopLevelElement();
		Write126_ColumnStyles("ColumnStyles", "", (ColumnStyles)o, isNullable: true, needType: false);
	}

	public void Write293_RowStyles(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("RowStyles", "");
			return;
		}
		TopLevelElement();
		Write127_RowStyles("RowStyles", "", (RowStyles)o, isNullable: true, needType: false);
	}

	public void Write294_GridRowColEntry(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridRowColEntry", "");
			return;
		}
		TopLevelElement();
		Write125_GridRowColEntry("GridRowColEntry", "", (GridRowColEntry)o, isNullable: true, needType: false);
	}

	public void Write295_ArrayOfGridRowColEntry(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("ArrayOfGridRowColEntry", "");
			return;
		}
		TopLevelElement();
		GridRowColEntryCollection gridRowColEntryCollection = (GridRowColEntryCollection)o;
		if (gridRowColEntryCollection == null)
		{
			WriteNullTagLiteral("ArrayOfGridRowColEntry", "");
			return;
		}
		WriteStartElement("ArrayOfGridRowColEntry", "", null, writePrefixed: false);
		for (int i = 0; i < ((ICollection)gridRowColEntryCollection).Count; i++)
		{
			Write125_GridRowColEntry("GridRowColEntry", "", gridRowColEntryCollection[i], isNullable: true, needType: false);
		}
		WriteEndElement();
	}

	public void Write296_GridSyncProperties(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridSyncProperties", "");
			return;
		}
		TopLevelElement();
		WriteSerializable((GridSyncProperties)o, "GridSyncProperties", "", isNullable: true, wrapped: true);
	}

	public void Write297_GridCellModelFactory(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridCellModelFactory", "");
			return;
		}
		TopLevelElement();
		Write129_GridCellModelFactory("GridCellModelFactory", "", (GridCellModelFactory)o, isNullable: true, needType: false);
	}

	public void Write298_GridRadioButtonInfo(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridRadioButtonInfo", "");
			return;
		}
		TopLevelElement();
		Write130_GridRadioButtonInfo("GridRadioButtonInfo", "", (GridRadioButtonInfo)o, isNullable: true, needType: false);
	}

	public void Write299_GridSerializeCellsBehavior(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridSerializeCellsBehavior", "");
		}
		else
		{
			WriteElementString("GridSerializeCellsBehavior", "", Write131_GridSerializeCellsBehavior((GridSerializeCellsBehavior)o));
		}
	}

	public void Write300_GridSortBehavior(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridSortBehavior", "");
		}
		else
		{
			WriteElementString("GridSortBehavior", "", Write132_GridSortBehavior((GridSortBehavior)o));
		}
	}

	public void Write301_GridValidateFailedEventArgs(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridValidateFailedEventArgs", "");
			return;
		}
		TopLevelElement();
		Write133_GridValidateFailedEventArgs("GridValidateFailedEventArgs", "", (GridValidateFailedEventArgs)o, isNullable: true, needType: false);
	}

	public void Write302_GridDataBoundIconPaint(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridDataBoundIconPaint", "");
			return;
		}
		TopLevelElement();
		Write134_GridDataBoundIconPaint("GridDataBoundIconPaint", "", (GridDataBoundIconPaint)o, isNullable: true, needType: false);
	}

	public void Write303_Item(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridFilterBarTextChangedEventArgs", "");
			return;
		}
		TopLevelElement();
		Write135_Item("GridFilterBarTextChangedEventArgs", "", (GridFilterBarTextChangedEventArgs)o, isNullable: true, needType: false);
	}

	public void Write304_GridFilterBar(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridFilterBar", "");
			return;
		}
		TopLevelElement();
		Write136_GridFilterBar("GridFilterBar", "", (GridFilterBar)o, isNullable: true, needType: false);
	}

	public void Write305_Item(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridCurrentRecordItemChangedBehavior", "");
		}
		else
		{
			WriteElementString("GridCurrentRecordItemChangedBehavior", "", Write137_Item((GridCurrentRecordItemChangedBehavior)o));
		}
	}

	public void Write306_GridFindReplaceDialogOptions(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridFindReplaceDialogOptions", "");
		}
		else
		{
			WriteElementString("GridFindReplaceDialogOptions", "", Write138_GridFindReplaceDialogOptions((GridFindReplaceDialogOptions)o));
		}
	}

	public void Write307_LenComparer(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("LenComparer", "");
			return;
		}
		TopLevelElement();
		Write139_LenComparer("LenComparer", "", (GridFormulaEngine.LenComparer)o, isNullable: true, needType: false);
	}

	public void Write308_GridSheetFamilyItem(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridSheetFamilyItem", "");
			return;
		}
		TopLevelElement();
		Write140_GridSheetFamilyItem("GridSheetFamilyItem", "", (GridSheetFamilyItem)o, isNullable: true, needType: false);
	}

	public void Write309_GridFormulaCopyFlags(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridFormulaCopyFlags", "");
		}
		else
		{
			WriteElementString("GridFormulaCopyFlags", "", Write141_GridFormulaCopyFlags((GridFormulaCopyFlags)o));
		}
	}

	public void Write310_GridFormulaParsingEventArgs(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridFormulaParsingEventArgs", "");
			return;
		}
		TopLevelElement();
		Write142_GridFormulaParsingEventArgs("GridFormulaParsingEventArgs", "", (GridFormulaParsingEventArgs)o, isNullable: true, needType: false);
	}

	public void Write311_Item(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridFormulaNamedRangesEditHelper", "");
			return;
		}
		TopLevelElement();
		Write144_Item("GridFormulaNamedRangesEditHelper", "", (GridFormulaNamedRangesEditHelper)o, isNullable: true, needType: false);
	}

	public void Write312_ArrayOfNamedRange(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("ArrayOfNamedRange", "");
			return;
		}
		TopLevelElement();
		GridFormulaNamedRangesEditHelper.NamedRangeList namedRangeList = (GridFormulaNamedRangesEditHelper.NamedRangeList)o;
		if (namedRangeList == null)
		{
			WriteNullTagLiteral("ArrayOfNamedRange", "");
			return;
		}
		WriteStartElement("ArrayOfNamedRange", "", null, writePrefixed: false);
		for (int i = 0; i < ((ICollection)namedRangeList).Count; i++)
		{
			Write143_NamedRange("NamedRange", "", namedRangeList[i], isNullable: true, needType: false);
		}
		WriteEndElement();
	}

	public void Write313_NamedRange(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("NamedRange", "");
			return;
		}
		TopLevelElement();
		Write143_NamedRange("NamedRange", "", (GridFormulaNamedRangesEditHelper.NamedRange)o, isNullable: true, needType: false);
	}

	public void Write314_GridDragColumnHeaderBitmaps(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridDragColumnHeaderBitmaps", "");
			return;
		}
		TopLevelElement();
		Write145_GridDragColumnHeaderBitmaps("GridDragColumnHeaderBitmaps", "", (GridDragColumnHeaderBitmaps)o, isNullable: true, needType: false);
	}

	public void Write315_Item(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridDragColumnHeaderMouseControllerBase", "");
			return;
		}
		TopLevelElement();
		Write146_Item("GridDragColumnHeaderMouseControllerBase", "", (GridDragColumnHeaderMouseControllerBase)o, isNullable: true, needType: false);
	}

	public void Write316_GridDragColumnHeaderHelper(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridDragColumnHeaderHelper", "");
			return;
		}
		TopLevelElement();
		Write147_GridDragColumnHeaderHelper("GridDragColumnHeaderHelper", "", (GridDragColumnHeaderHelper)o, isNullable: true, needType: false);
	}

	public void Write317_Item(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteEmptyTag("GridQueryDragColumnHeaderReason", "");
		}
		else
		{
			WriteElementString("GridQueryDragColumnHeaderReason", "", Write148_Item((GridQueryDragColumnHeaderReason)o));
		}
	}

	public void Write318_GridQueryAcceptDataOptions(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridQueryAcceptDataOptions", "");
			return;
		}
		TopLevelElement();
		Write149_GridQueryAcceptDataOptions("GridQueryAcceptDataOptions", "", (GridQueryAcceptDataOptions)o, isNullable: true, needType: false);
	}

	public void Write319_GridGdiPaint(object o)
	{
		WriteStartDocument();
		if (o == null)
		{
			WriteNullTagLiteral("GridGdiPaint", "");
			return;
		}
		TopLevelElement();
		Write150_GridGdiPaint("GridGdiPaint", "", (GridGdiPaint)o, isNullable: true, needType: false);
	}

	private void Write150_GridGdiPaint(string n, string ns, GridGdiPaint o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridGdiPaint)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridGdiPaint", "");
		}
		WriteEndElement(o);
	}

	private void Write149_GridQueryAcceptDataOptions(string n, string ns, GridQueryAcceptDataOptions o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridQueryAcceptDataOptions)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridQueryAcceptDataOptions", "");
		}
		WriteEndElement(o);
	}

	private string Write148_Item(GridQueryDragColumnHeaderReason v)
	{
		string text = null;
		return v switch
		{
			GridQueryDragColumnHeaderReason.HitTest => "HitTest", 
			GridQueryDragColumnHeaderReason.ShowRedArrowIndicator => "ShowRedArrowIndicator", 
			GridQueryDragColumnHeaderReason.MouseUp => "MouseUp", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridQueryDragColumnHeaderReason"), 
		};
	}

	private void Write147_GridDragColumnHeaderHelper(string n, string ns, GridDragColumnHeaderHelper o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridDragColumnHeaderHelper)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridDragColumnHeaderHelper", "");
		}
		WriteEndElement(o);
	}

	private void Write146_Item(string n, string ns, GridDragColumnHeaderMouseControllerBase o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
		}
		else if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridDragColumnHeaderMouseControllerBase)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
	}

	private void Write145_GridDragColumnHeaderBitmaps(string n, string ns, GridDragColumnHeaderBitmaps o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridDragColumnHeaderBitmaps)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridDragColumnHeaderBitmaps", "");
		}
		WriteEndElement(o);
	}

	private void Write143_NamedRange(string n, string ns, GridFormulaNamedRangesEditHelper.NamedRange o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridFormulaNamedRangesEditHelper.NamedRange)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("NamedRange", "");
		}
		WriteElementString("Key", "", o.Key);
		WriteElementString("Value", "", o.Value);
		WriteEndElement(o);
	}

	private void Write144_Item(string n, string ns, GridFormulaNamedRangesEditHelper o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridFormulaNamedRangesEditHelper)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridFormulaNamedRangesEditHelper", "");
		}
		GridFormulaNamedRangesEditHelper.NamedRangeList list = o.List;
		if (list != null)
		{
			WriteStartElement("List", "", null, writePrefixed: false);
			for (int i = 0; i < ((ICollection)list).Count; i++)
			{
				Write143_NamedRange("NamedRange", "", list[i], isNullable: true, needType: false);
			}
			WriteEndElement();
		}
		WriteEndElement(o);
	}

	private void Write142_GridFormulaParsingEventArgs(string n, string ns, GridFormulaParsingEventArgs o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridFormulaParsingEventArgs)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridFormulaParsingEventArgs", "");
		}
		WriteElementString("Text", "", o.Text);
		WriteEndElement(o);
	}

	private string Write141_GridFormulaCopyFlags(GridFormulaCopyFlags v)
	{
		string text = null;
		return v switch
		{
			GridFormulaCopyFlags.None => "None", 
			GridFormulaCopyFlags.ClipBoardText => "ClipBoardText", 
			GridFormulaCopyFlags.ClipBoardFormula => "ClipBoardFormula", 
			GridFormulaCopyFlags.ClipBoardReferencesAdjusted => "ClipBoardReferencesAdjusted", 
			GridFormulaCopyFlags.InsDelRangeReferencesUpdated => "InsDelRangeReferencesUpdated", 
			GridFormulaCopyFlags.NamedRangeReferencesUpdated => "NamedRangeReferencesUpdated", 
			GridFormulaCopyFlags.UpdateReferencesDuringDnD => "UpdateReferencesDuringDnD", 
			_ => XmlSerializationWriter.FromEnum((long)v, new string[7] { "None", "ClipBoardText", "ClipBoardFormula", "ClipBoardReferencesAdjusted", "InsDelRangeReferencesUpdated", "NamedRangeReferencesUpdated", "UpdateReferencesDuringDnD" }, new long[7] { 0L, 1L, 2L, 4L, 128L, 256L, 512L }, "Syncfusion.Windows.Forms.Grid.GridFormulaCopyFlags"), 
		};
	}

	private void Write140_GridSheetFamilyItem(string n, string ns, GridSheetFamilyItem o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridSheetFamilyItem)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridSheetFamilyItem", "");
		}
		WriteEndElement(o);
	}

	private void Write139_LenComparer(string n, string ns, GridFormulaEngine.LenComparer o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridFormulaEngine.LenComparer)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("LenComparer", "");
		}
		WriteEndElement(o);
	}

	private string Write138_GridFindReplaceDialogOptions(GridFindReplaceDialogOptions v)
	{
		string text = null;
		return v switch
		{
			GridFindReplaceDialogOptions.None => "None", 
			GridFindReplaceDialogOptions.ShowMatchCase => "ShowMatchCase", 
			GridFindReplaceDialogOptions.ShowMatchWholeCell => "ShowMatchWholeCell", 
			GridFindReplaceDialogOptions.ShowSearchUp => "ShowSearchUp", 
			GridFindReplaceDialogOptions.ShowSearchSelection => "ShowSearchSelection", 
			GridFindReplaceDialogOptions.All => "All", 
			_ => XmlSerializationWriter.FromEnum((long)v, new string[6] { "None", "ShowMatchCase", "ShowMatchWholeCell", "ShowSearchUp", "ShowSearchSelection", "All" }, new long[6] { 0L, 1L, 2L, 4L, 8L, 15L }, "Syncfusion.Windows.Forms.Grid.GridFindReplaceDialogOptions"), 
		};
	}

	private string Write137_Item(GridCurrentRecordItemChangedBehavior v)
	{
		string text = null;
		return v switch
		{
			GridCurrentRecordItemChangedBehavior.None => "None", 
			GridCurrentRecordItemChangedBehavior.ReloadCurrentRecord => "ReloadCurrentRecord", 
			GridCurrentRecordItemChangedBehavior.KeepCurrentRecord => "KeepCurrentRecord", 
			GridCurrentRecordItemChangedBehavior.KeepCurrentCellText => "KeepCurrentCellText", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridCurrentRecordItemChangedBehavior"), 
		};
	}

	private void Write136_GridFilterBar(string n, string ns, GridFilterBar o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridFilterBar)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridFilterBar", "");
		}
		string[] gridFilterBarStrings = o.GridFilterBarStrings;
		if (gridFilterBarStrings != null)
		{
			WriteStartElement("GridFilterBarStrings", "", null, writePrefixed: false);
			for (int i = 0; i < gridFilterBarStrings.Length; i++)
			{
				WriteNullableStringLiteral("string", "", gridFilterBarStrings[i]);
			}
			WriteEndElement();
		}
		WriteElementString("RowFilter", "", o.RowFilter);
		WriteSerializable(o.StyleInfo, "StyleInfo", "", isNullable: false, wrapped: true);
		WriteElementStringRaw("ParenthesesAroundColumnFilters", "", XmlConvert.ToString(o.ParenthesesAroundColumnFilters));
		WriteEndElement(o);
	}

	private void Write135_Item(string n, string ns, GridFilterBarTextChangedEventArgs o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridFilterBarTextChangedEventArgs)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridFilterBarTextChangedEventArgs", "");
		}
		WriteEndElement(o);
	}

	private void Write134_GridDataBoundIconPaint(string n, string ns, GridDataBoundIconPaint o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridDataBoundIconPaint)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridDataBoundIconPaint", "");
		}
		WriteEndElement(o);
	}

	private void Write133_GridValidateFailedEventArgs(string n, string ns, GridValidateFailedEventArgs o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridValidateFailedEventArgs)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridValidateFailedEventArgs", "");
		}
		WriteElementStringRaw("Handled", "", XmlConvert.ToString(o.Handled));
		WriteEndElement(o);
	}

	private string Write132_GridSortBehavior(GridSortBehavior v)
	{
		string text = null;
		return v switch
		{
			GridSortBehavior.None => "None", 
			GridSortBehavior.SingleClick => "SingleClick", 
			GridSortBehavior.DoubleClick => "DoubleClick", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridSortBehavior"), 
		};
	}

	private string Write131_GridSerializeCellsBehavior(GridSerializeCellsBehavior v)
	{
		string text = null;
		return v switch
		{
			GridSerializeCellsBehavior.SerializeIntoCode => "SerializeIntoCode", 
			GridSerializeCellsBehavior.SerializeIntoResX => "SerializeIntoResX", 
			GridSerializeCellsBehavior.SerializeAsRangeStylesIntoCode => "SerializeAsRangeStylesIntoCode", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridSerializeCellsBehavior"), 
		};
	}

	private void Write130_GridRadioButtonInfo(string n, string ns, GridRadioButtonInfo o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridRadioButtonInfo)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridRadioButtonInfo", "");
		}
		WriteElementString("Description", "", o.Description);
		WriteElementStringRaw("Enabled", "", XmlConvert.ToString(o.Enabled));
		WriteEndElement(o);
	}

	private void Write129_GridCellModelFactory(string n, string ns, GridCellModelFactory o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridCellModelFactory)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridCellModelFactory", "");
		}
		WriteEndElement(o);
	}

	private void Write125_GridRowColEntry(string n, string ns, GridRowColEntry o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridRowColEntry)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridRowColEntry", "");
		}
		WriteAttribute("Index", "", XmlConvert.ToString(o.Index));
		WriteAttribute("Length", "", XmlConvert.ToString(o.Length));
		WriteEndElement(o);
	}

	private void Write127_RowStyles(string n, string ns, RowStyles o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(RowStyles)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("RowStyles", "");
		}
		GridRowColEntryCollection hiddenRows = o.HiddenRows;
		if (hiddenRows != null)
		{
			WriteStartElement("HiddenRows", "", null, writePrefixed: false);
			for (int i = 0; i < ((ICollection)hiddenRows).Count; i++)
			{
				Write125_GridRowColEntry("GridRowColEntry", "", hiddenRows[i], isNullable: true, needType: false);
			}
			WriteEndElement();
		}
		GridRowColEntryCollection rowHeights = o.RowHeights;
		if (rowHeights != null)
		{
			WriteStartElement("RowHeights", "", null, writePrefixed: false);
			for (int j = 0; j < ((ICollection)rowHeights).Count; j++)
			{
				Write125_GridRowColEntry("GridRowColEntry", "", rowHeights[j], isNullable: true, needType: false);
			}
			WriteEndElement();
		}
		WriteEndElement(o);
	}

	private void Write126_ColumnStyles(string n, string ns, ColumnStyles o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(ColumnStyles)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("ColumnStyles", "");
		}
		GridRowColEntryCollection hiddenColumns = o.HiddenColumns;
		if (hiddenColumns != null)
		{
			WriteStartElement("HiddenColumns", "", null, writePrefixed: false);
			for (int i = 0; i < ((ICollection)hiddenColumns).Count; i++)
			{
				Write125_GridRowColEntry("GridRowColEntry", "", hiddenColumns[i], isNullable: true, needType: false);
			}
			WriteEndElement();
		}
		GridRowColEntryCollection columnWidths = o.ColumnWidths;
		if (columnWidths != null)
		{
			WriteStartElement("ColumnWidths", "", null, writePrefixed: false);
			for (int j = 0; j < ((ICollection)columnWidths).Count; j++)
			{
				Write125_GridRowColEntry("GridRowColEntry", "", columnWidths[j], isNullable: true, needType: false);
			}
			WriteEndElement();
		}
		WriteEndElement(o);
	}

	private void Write128_GridCellsMemento(string n, string ns, GridCellsMemento o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridCellsMemento)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridCellsMemento", "");
		}
		Write126_ColumnStyles("ColumnStyleCollection", "", o.GridColStyles, isNullable: false, needType: false);
		Write127_RowStyles("RowStyleCollection", "", o.GridRowStyles, isNullable: false, needType: false);
		GridNonImmutableRangeInfoCollection coveredRanges = o.CoveredRanges;
		if (coveredRanges != null)
		{
			WriteStartElement("CoveredRanges", "", null, writePrefixed: false);
			for (int i = 0; i < ((ICollection)coveredRanges).Count; i++)
			{
				Write97_GridNonImmutableRangeInfo("GridNonImmutableRangeInfo", "", coveredRanges[i], isNullable: true, needType: false);
			}
			WriteEndElement();
		}
		GridNonImmutableRangeInfoCollection banneredRanges = o.BanneredRanges;
		if (banneredRanges != null)
		{
			WriteStartElement("BanneredRanges", "", null, writePrefixed: false);
			for (int j = 0; j < ((ICollection)banneredRanges).Count; j++)
			{
				Write97_GridNonImmutableRangeInfo("GridNonImmutableRangeInfo", "", banneredRanges[j], isNullable: true, needType: false);
			}
			WriteEndElement();
		}
		GridBaseStyleCollection gridBaseStylesToSerialize = o.GridBaseStylesToSerialize;
		if (gridBaseStylesToSerialize != null)
		{
			for (int k = 0; k < ((ICollection)gridBaseStylesToSerialize).Count; k++)
			{
				Write104_GridBaseStyle("BaseStylesMap", "", gridBaseStylesToSerialize[k], isNullable: false, needType: false);
			}
		}
		GridCellInfoCollection cells = o.Cells;
		if (cells != null)
		{
			for (int l = 0; l < ((ICollection)cells).Count; l++)
			{
				Write51_GridCellInfo("CellData", "", cells[l], isNullable: false, needType: false);
			}
		}
		WriteEndElement(o);
	}

	private void Write51_GridCellInfo(string n, string ns, GridCellInfo o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridCellInfo)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridCellInfo", "");
		}
		WriteAttribute("Row", "", XmlConvert.ToString(o.Row));
		WriteAttribute("Col", "", XmlConvert.ToString(o.Col));
		WriteSerializable(o.StyleInfo, "CellContents", "", isNullable: false, wrapped: true);
		WriteEndElement(o);
	}

	private void Write104_GridBaseStyle(string n, string ns, GridBaseStyle o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridBaseStyle)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridBaseStyle", "");
		}
		WriteElementString("Name", "", o.Name);
		WriteSerializable(o.StyleInfo, "StyleInfo", "", isNullable: false, wrapped: true);
		WriteEndElement(o);
	}

	private void Write97_GridNonImmutableRangeInfo(string n, string ns, GridNonImmutableRangeInfo o, bool isNullable, bool needType)
	{
		if ((object)o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridNonImmutableRangeInfo)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridNonImmutableRangeInfo", "");
		}
		WriteElementString("RangeType", "", Write96_GridRangeInfoType(o.RangeType));
		WriteElementStringRaw("Top", "", XmlConvert.ToString(o.Top));
		WriteElementStringRaw("Left", "", XmlConvert.ToString(o.Left));
		WriteElementStringRaw("Bottom", "", XmlConvert.ToString(o.Bottom));
		WriteElementStringRaw("Right", "", XmlConvert.ToString(o.Right));
		WriteEndElement(o);
	}

	private string Write96_GridRangeInfoType(GridRangeInfoType v)
	{
		string text = null;
		return v switch
		{
			GridRangeInfoType.Empty => "Empty", 
			GridRangeInfoType.Cells => "Cells", 
			GridRangeInfoType.Rows => "Rows", 
			GridRangeInfoType.Cols => "Cols", 
			GridRangeInfoType.Table => "Table", 
			_ => XmlSerializationWriter.FromEnum((long)v, new string[5] { "Empty", "Cells", "Rows", "Cols", "Table" }, new long[5] { 0L, 1L, 2L, 4L, 6L }, "Syncfusion.Windows.Forms.Grid.GridRangeInfoType"), 
		};
	}

	private void Write124_GridDesignerMain(string n, string ns, GridDesignerMain o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridDesignerMain)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridDesignerMain", "");
		}
		WriteEndElement(o);
	}

	private string Write123_GridVerticalAlignment(GridVerticalAlignment v)
	{
		string text = null;
		return v switch
		{
			GridVerticalAlignment.Top => "Top", 
			GridVerticalAlignment.Middle => "Middle", 
			GridVerticalAlignment.Bottom => "Bottom", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridVerticalAlignment"), 
		};
	}

	private string Write122_GridTextAlign(GridTextAlign v)
	{
		string text = null;
		return v switch
		{
			GridTextAlign.Default => "Default", 
			GridTextAlign.Left => "Left", 
			GridTextAlign.Right => "Right", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridTextAlign"), 
		};
	}

	private void Write121_GridStyleInfoConverter(string n, string ns, GridStyleInfoConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridStyleInfoConverter)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridStyleInfoConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write119_GridStyleInfoCustomProperties(string n, string ns, GridStyleInfoCustomProperties o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridStyleInfoCustomProperties)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridStyleInfoCustomProperties", "");
		}
		WriteSerializable(o.StyleInfo, "StyleInfo", "", isNullable: false, wrapped: true);
		WriteEndElement(o);
	}

	private string Write118_GridShowButtons(GridShowButtons v)
	{
		string text = null;
		return v switch
		{
			GridShowButtons.Hide => "Hide", 
			GridShowButtons.Show => "Show", 
			GridShowButtons.ShowCurrentRow => "ShowCurrentRow", 
			GridShowButtons.ShowCurrentCell => "ShowCurrentCell", 
			GridShowButtons.ShowCurrentCellEditing => "ShowCurrentCellEditing", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridShowButtons"), 
		};
	}

	private void Write117_GridMargins(string n, string ns, GridMargins o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridMargins)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridMargins", "");
		}
		WriteEndElement(o);
	}

	private string Write116_GridHorizontalAlignment(GridHorizontalAlignment v)
	{
		string text = null;
		return v switch
		{
			GridHorizontalAlignment.Left => "Left", 
			GridHorizontalAlignment.Right => "Right", 
			GridHorizontalAlignment.Center => "Center", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridHorizontalAlignment"), 
		};
	}

	private void Write115_GridFormulaTag(string n, string ns, GridFormulaTag o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridFormulaTag)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridFormulaTag", "");
		}
		WriteElementString("Formula", "", o.Formula);
		WriteElementStringRaw("ParsedRow", "", XmlConvert.ToString(o.ParsedRow));
		WriteElementStringRaw("ParsedCol", "", XmlConvert.ToString(o.ParsedCol));
		WriteElementString("Text", "", o.Text);
		WriteEndElement(o);
	}

	private void Write114_GridFontInfoEditor(string n, string ns, GridFontInfoEditor o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridFontInfoEditor)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridFontInfoEditor", "");
		}
		WriteEndElement(o);
	}

	private void Write112_GridCellTypeNameConverter(string n, string ns, GridCellTypeNameConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridCellTypeNameConverter)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridCellTypeNameConverter", "");
		}
		WriteEndElement(o);
	}

	private string Write111_GridCellAppearance(GridCellAppearance v)
	{
		string text = null;
		return v switch
		{
			GridCellAppearance.Flat => "Flat", 
			GridCellAppearance.Raised => "Raised", 
			GridCellAppearance.Sunken => "Sunken", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridCellAppearance"), 
		};
	}

	private string Write110_GridBorderSide(GridBorderSide v)
	{
		string text = null;
		return v switch
		{
			GridBorderSide.Left => "Left", 
			GridBorderSide.Top => "Top", 
			GridBorderSide.Right => "Right", 
			GridBorderSide.Bottom => "Bottom", 
			GridBorderSide.All => "All", 
			_ => XmlSerializationWriter.FromEnum((long)v, new string[5] { "Left", "Top", "Right", "Bottom", "All" }, new long[5] { 1L, 2L, 4L, 8L, 15L }, "Syncfusion.Windows.Forms.Grid.GridBorderSide"), 
		};
	}

	private void Write109_GridBorderPaint(string n, string ns, GridBorderPaint o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridBorderPaint)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridBorderPaint", "");
		}
		WriteEndElement(o);
	}

	private void Write108_GridBorderConverter(string n, string ns, GridBorderConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridBorderConverter)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridBorderConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write107_GridBorderCodeDomSerializer(string n, string ns, GridBorderCodeDomSerializer o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridBorderCodeDomSerializer)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridBorderCodeDomSerializer", "");
		}
		WriteEndElement(o);
	}

	private string Write106_GridBorderWeight(GridBorderWeight v)
	{
		string text = null;
		return v switch
		{
			GridBorderWeight.ExtraThin => "ExtraThin", 
			GridBorderWeight.Thin => "Thin", 
			GridBorderWeight.Medium => "Medium", 
			GridBorderWeight.Thick => "Thick", 
			GridBorderWeight.ExtraThick => "ExtraThick", 
			GridBorderWeight.ExtraExtraThick => "ExtraExtraThick", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridBorderWeight"), 
		};
	}

	private string Write105_GridBorderStyle(GridBorderStyle v)
	{
		string text = null;
		return v switch
		{
			GridBorderStyle.NotSet => "NotSet", 
			GridBorderStyle.None => "None", 
			GridBorderStyle.Dashed => "Dashed", 
			GridBorderStyle.Dotted => "Dotted", 
			GridBorderStyle.DashDot => "DashDot", 
			GridBorderStyle.DashDotDot => "DashDotDot", 
			GridBorderStyle.Solid => "Solid", 
			GridBorderStyle.Standard => "Standard", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridBorderStyle"), 
		};
	}

	private void Write103_GridBaseStyleNameConverter(string n, string ns, GridBaseStyleNameConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridBaseStyleNameConverter)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridBaseStyleNameConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write102_GridBaseStyleConverter(string n, string ns, GridBaseStyleConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridBaseStyleConverter)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridBaseStyleConverter", "");
		}
		WriteEndElement(o);
	}

	private string Write101_GridTriangleDirection(GridTriangleDirection v)
	{
		string text = null;
		return v switch
		{
			GridTriangleDirection.Up => "Up", 
			GridTriangleDirection.Down => "Down", 
			GridTriangleDirection.Left => "Left", 
			GridTriangleDirection.Right => "Right", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridTriangleDirection"), 
		};
	}

	private void Write100_GridSortInfo(string n, string ns, GridSortInfo o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridSortInfo)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridSortInfo", "");
		}
		WriteEndElement(o);
	}

	private void Write99_GridPaintTriangle(string n, string ns, GridPaintTriangle o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridPaintTriangle)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridPaintTriangle", "");
		}
		WriteEndElement(o);
	}

	private void Write98_GridCursors(string n, string ns, GridCursors o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridCursors)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridCursors", "");
		}
		WriteEndElement(o);
	}

	private void Write95_GridRangeInfoListConverter(string n, string ns, GridRangeInfoListConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridRangeInfoListConverter)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridRangeInfoListConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write90_GridRangeInfo(string n, string ns, GridRangeInfo o, bool isNullable, bool needType)
	{
		if ((object)o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridRangeInfo)))
			{
				if (type == typeof(GridNonImmutableRangeInfo))
				{
					Write97_GridNonImmutableRangeInfo(n, ns, (GridNonImmutableRangeInfo)o, isNullable, needType: true);
					return;
				}
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridRangeInfo", "");
		}
		WriteEndElement(o);
	}

	private void Write94_GridRangeInfoCodeDomSerializer(string n, string ns, GridRangeInfoCodeDomSerializer o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridRangeInfoCodeDomSerializer)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridRangeInfoCodeDomSerializer", "");
		}
		WriteEndElement(o);
	}

	private void Write91_GridRangeInfoConverter(string n, string ns, GridRangeInfoConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridRangeInfoConverter)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridRangeInfoConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write89_GridMouseController(string n, string ns, GridMouseController o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
		}
		else if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridMouseController)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
	}

	private void Write87_GridRowHiddenTypeConverter(string n, string ns, GridRowHiddenTypeConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridRowHiddenTypeConverter)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridRowHiddenTypeConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write86_GridRowHidden(string n, string ns, GridRowHidden o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridRowHidden)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridRowHidden", "");
		}
		WriteElementStringRaw("RowIndex", "", XmlConvert.ToString(o.RowIndex));
		WriteEndElement(o);
	}

	private void Write85_GridRowHeightTypeConverter(string n, string ns, GridRowHeightTypeConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridRowHeightTypeConverter)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridRowHeightTypeConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write84_GridRowHeight(string n, string ns, GridRowHeight o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridRowHeight)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridRowHeight", "");
		}
		if (o.Height != -1)
		{
			WriteElementStringRaw("Height", "", XmlConvert.ToString(o.Height));
		}
		WriteElementStringRaw("RowIndex", "", XmlConvert.ToString(o.RowIndex));
		WriteEndElement(o);
	}

	private void Write83_GridRangeStyleTypeConverter(string n, string ns, GridRangeStyleTypeConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridRangeStyleTypeConverter)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridRangeStyleTypeConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write82_GridRangeStyle(string n, string ns, GridRangeStyle o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridRangeStyle)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridRangeStyle", "");
		}
		WriteSerializable(o.StyleInfo, "StyleInfo", "", isNullable: false, wrapped: true);
		WriteElementString("Range", "", o.RangeInfo);
		WriteEndElement(o);
	}

	private void Write81_GridProperties(string n, string ns, GridProperties o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridProperties)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridProperties", "");
		}
		if (!o.Buttons3D)
		{
			WriteElementStringRaw("Buttons3D", "", XmlConvert.ToString(o.Buttons3D));
		}
		if (!o.DisplayVertLines)
		{
			WriteElementStringRaw("DisplayVertLines", "", XmlConvert.ToString(o.DisplayVertLines));
		}
		if (!o.DisplayHorzLines)
		{
			WriteElementStringRaw("DisplayHorzLines", "", XmlConvert.ToString(o.DisplayHorzLines));
		}
		if (!o.MarkRowHeader)
		{
			WriteElementStringRaw("MarkRowHeader", "", XmlConvert.ToString(o.MarkRowHeader));
		}
		if (!o.MarkColHeader)
		{
			WriteElementStringRaw("MarkColHeader", "", XmlConvert.ToString(o.MarkColHeader));
		}
		if (!o.PrintRowHeader)
		{
			WriteElementStringRaw("PrintRowHeader", "", XmlConvert.ToString(o.PrintRowHeader));
		}
		if (!o.PrintColHeader)
		{
			WriteElementStringRaw("PrintColHeader", "", XmlConvert.ToString(o.PrintColHeader));
		}
		WriteElementStringRaw("Printing", "", XmlConvert.ToString(o.Printing));
		WriteElementStringRaw("CenterHorizontal", "", XmlConvert.ToString(o.CenterHorizontal));
		WriteElementStringRaw("CenterVertical", "", XmlConvert.ToString(o.CenterVertical));
		if (!o.ColHeaders)
		{
			WriteElementStringRaw("ColHeaders", "", XmlConvert.ToString(o.ColHeaders));
		}
		WriteElementStringRaw("PrintHorzLines", "", XmlConvert.ToString(o.PrintHorzLines));
		if (!o.RowHeaders)
		{
			WriteElementStringRaw("RowHeaders", "", XmlConvert.ToString(o.RowHeaders));
		}
		WriteElementStringRaw("PrintVertLines", "", XmlConvert.ToString(o.PrintVertLines));
		WriteElementStringRaw("PageOrder", "", XmlConvert.ToString(o.PageOrder));
		WriteElementStringRaw("BlackWhite", "", XmlConvert.ToString(o.BlackWhite));
		WriteElementStringRaw("PrintFrame", "", XmlConvert.ToString(o.PrintFrame));
		WriteElementString("GridLineColorString", "", o.GridLineColorString);
		WriteElementString("FixedLinesColorString", "", o.FixedLinesColorString);
		WriteElementString("ResizingCellsLinesColorString", "", o.ResizingCellsLinesColorString);
		WriteElementString("BackgroundColorString", "", o.BackgroundColorString);
		WriteEndElement(o);
	}

	private void Write79_GridNamespaceGroupItem(string n, string ns, GridNamespaceGroupItem o, bool needType)
	{
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridNamespaceGroupItem)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridNamespaceGroupItem", "");
		}
		WriteAttribute("Name", "", o.Name);
		WriteElementString("Value", "", o.Value);
		WriteEndElement(o);
	}

	private void Write78_Item(string n, string ns, GridRowColSizeDictionaryTypeConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridRowColSizeDictionaryTypeConverter)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridRowColSizeDictionaryTypeConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write77_GridModelRowColOperations(string n, string ns, GridModelRowColOperations o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
		}
		else if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridModelRowColOperations)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
	}

	private string Write76_Item(GridClickedOnDisabledCellBehavior v)
	{
		string text = null;
		return v switch
		{
			GridClickedOnDisabledCellBehavior.Default => "Default", 
			GridClickedOnDisabledCellBehavior.LeaveCurrentCell => "LeaveCurrentCell", 
			GridClickedOnDisabledCellBehavior.DeactivateCurrentCell => "DeactivateCurrentCell", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridClickedOnDisabledCellBehavior"), 
		};
	}

	private void Write75_GridModelHideRowColsIndexer(string n, string ns, GridModelHideRowColsIndexer o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
		}
		else if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridModelHideRowColsIndexer)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
	}

	private void Write74_Item(string n, string ns, GridRowColHideDictionaryTypeConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridRowColHideDictionaryTypeConverter)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridRowColHideDictionaryTypeConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write73_GridEndUpdateRequestEventArgs(string n, string ns, GridEndUpdateRequestEventArgs o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridEndUpdateRequestEventArgs)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridEndUpdateRequestEventArgs", "");
		}
		WriteElementStringRaw("Value", "", XmlConvert.ToString(o.Value));
		WriteEndElement(o);
	}

	private void Write72_GridRowColCountEventArgs(string n, string ns, GridRowColCountEventArgs o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridRowColCountEventArgs)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridRowColCountEventArgs", "");
		}
		WriteElementStringRaw("Handled", "", XmlConvert.ToString(o.Handled));
		WriteElementStringRaw("Count", "", XmlConvert.ToString(o.Count));
		WriteEndElement(o);
	}

	private void Write1_Object(string n, string ns, object o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(object)))
			{
				if (type == typeof(GridGdiPaint))
				{
					Write150_GridGdiPaint(n, ns, (GridGdiPaint)o, isNullable, needType: true);
				}
				else if (type == typeof(GridQueryAcceptDataOptions))
				{
					Write149_GridQueryAcceptDataOptions(n, ns, (GridQueryAcceptDataOptions)o, isNullable, needType: true);
				}
				else if (type == typeof(GridDragColumnHeaderHelper))
				{
					Write147_GridDragColumnHeaderHelper(n, ns, (GridDragColumnHeaderHelper)o, isNullable, needType: true);
				}
				else if (type == typeof(GridDragColumnHeaderMouseControllerBase))
				{
					Write146_Item(n, ns, (GridDragColumnHeaderMouseControllerBase)o, isNullable, needType: true);
				}
				else if (type == typeof(GridDragColumnHeaderBitmaps))
				{
					Write145_GridDragColumnHeaderBitmaps(n, ns, (GridDragColumnHeaderBitmaps)o, isNullable, needType: true);
				}
				else if (type == typeof(GridFormulaNamedRangesEditHelper))
				{
					Write144_Item(n, ns, (GridFormulaNamedRangesEditHelper)o, isNullable, needType: true);
				}
				else if (type == typeof(GridFormulaNamedRangesEditHelper.NamedRange))
				{
					Write143_NamedRange(n, ns, (GridFormulaNamedRangesEditHelper.NamedRange)o, isNullable, needType: true);
				}
				else if (type == typeof(GridSheetFamilyItem))
				{
					Write140_GridSheetFamilyItem(n, ns, (GridSheetFamilyItem)o, isNullable, needType: true);
				}
				else if (type == typeof(GridFormulaEngine.LenComparer))
				{
					Write139_LenComparer(n, ns, (GridFormulaEngine.LenComparer)o, isNullable, needType: true);
				}
				else if (type == typeof(GridFilterBar))
				{
					Write136_GridFilterBar(n, ns, (GridFilterBar)o, isNullable, needType: true);
				}
				else if (type == typeof(GridDataBoundIconPaint))
				{
					Write134_GridDataBoundIconPaint(n, ns, (GridDataBoundIconPaint)o, isNullable, needType: true);
				}
				else if (type == typeof(GridRadioButtonInfo))
				{
					Write130_GridRadioButtonInfo(n, ns, (GridRadioButtonInfo)o, isNullable, needType: true);
				}
				else if (type == typeof(GridCellsMemento))
				{
					Write128_GridCellsMemento(n, ns, (GridCellsMemento)o, isNullable, needType: true);
				}
				else if (type == typeof(RowStyles))
				{
					Write127_RowStyles(n, ns, (RowStyles)o, isNullable, needType: true);
				}
				else if (type == typeof(ColumnStyles))
				{
					Write126_ColumnStyles(n, ns, (ColumnStyles)o, isNullable, needType: true);
				}
				else if (type == typeof(GridRowColEntry))
				{
					Write125_GridRowColEntry(n, ns, (GridRowColEntry)o, isNullable, needType: true);
				}
				else if (type == typeof(GridDesignerMain))
				{
					Write124_GridDesignerMain(n, ns, (GridDesignerMain)o, isNullable, needType: true);
				}
				else if (type == typeof(GridStyleInfoCustomProperties))
				{
					Write119_GridStyleInfoCustomProperties(n, ns, (GridStyleInfoCustomProperties)o, isNullable, needType: true);
				}
				else if (type == typeof(GridMargins))
				{
					Write117_GridMargins(n, ns, (GridMargins)o, isNullable, needType: true);
				}
				else if (type == typeof(GridFormulaTag))
				{
					Write115_GridFormulaTag(n, ns, (GridFormulaTag)o, isNullable, needType: true);
				}
				else if (type == typeof(UITypeEditor))
				{
					Write113_UITypeEditor(n, ns, (UITypeEditor)o, isNullable, needType: true);
				}
				else if (type == typeof(GridFontInfoEditor))
				{
					Write114_GridFontInfoEditor(n, ns, (GridFontInfoEditor)o, isNullable, needType: true);
				}
				else if (type == typeof(GridBorderPaint))
				{
					Write109_GridBorderPaint(n, ns, (GridBorderPaint)o, isNullable, needType: true);
				}
				else if (type == typeof(GridSortInfo))
				{
					Write100_GridSortInfo(n, ns, (GridSortInfo)o, isNullable, needType: true);
				}
				else if (type == typeof(GridPaintTriangle))
				{
					Write99_GridPaintTriangle(n, ns, (GridPaintTriangle)o, isNullable, needType: true);
				}
				else if (type == typeof(GridCursors))
				{
					Write98_GridCursors(n, ns, (GridCursors)o, isNullable, needType: true);
				}
				else if (type == typeof(CodeDomSerializerBase))
				{
					Write92_CodeDomSerializerBase(n, ns, (CodeDomSerializerBase)o, isNullable, needType: true);
				}
				else if (type == typeof(CodeDomSerializer))
				{
					Write93_CodeDomSerializer(n, ns, (CodeDomSerializer)o, isNullable, needType: true);
				}
				else if (type == typeof(GridBorderCodeDomSerializer))
				{
					Write107_GridBorderCodeDomSerializer(n, ns, (GridBorderCodeDomSerializer)o, isNullable, needType: true);
				}
				else if (type == typeof(GridRangeInfoCodeDomSerializer))
				{
					Write94_GridRangeInfoCodeDomSerializer(n, ns, (GridRangeInfoCodeDomSerializer)o, isNullable, needType: true);
				}
				else if (type == typeof(GridRangeInfo))
				{
					Write90_GridRangeInfo(n, ns, (GridRangeInfo)o, isNullable, needType: true);
				}
				else if (type == typeof(GridNonImmutableRangeInfo))
				{
					Write97_GridNonImmutableRangeInfo(n, ns, (GridNonImmutableRangeInfo)o, isNullable, needType: true);
				}
				else if (type == typeof(GridRowHidden))
				{
					Write86_GridRowHidden(n, ns, (GridRowHidden)o, isNullable, needType: true);
				}
				else if (type == typeof(GridRowHeight))
				{
					Write84_GridRowHeight(n, ns, (GridRowHeight)o, isNullable, needType: true);
				}
				else if (type == typeof(GridRangeStyle))
				{
					Write82_GridRangeStyle(n, ns, (GridRangeStyle)o, isNullable, needType: true);
				}
				else if (type == typeof(GridNamespaceGroupItem))
				{
					Write79_GridNamespaceGroupItem(n, ns, (GridNamespaceGroupItem)o, needType: true);
				}
				else if (type == typeof(EventArgs))
				{
					Write69_EventArgs(n, ns, (EventArgs)o, isNullable, needType: true);
				}
				else if (type == typeof(GridFormulaParsingEventArgs))
				{
					Write142_GridFormulaParsingEventArgs(n, ns, (GridFormulaParsingEventArgs)o, isNullable, needType: true);
				}
				else if (type == typeof(SyncfusionEventArgs))
				{
					Write70_SyncfusionEventArgs(n, ns, (SyncfusionEventArgs)o, isNullable, needType: true);
				}
				else if (type == typeof(GridFilterBarTextChangedEventArgs))
				{
					Write135_Item(n, ns, (GridFilterBarTextChangedEventArgs)o, isNullable, needType: true);
				}
				else if (type == typeof(GridEndUpdateRequestEventArgs))
				{
					Write73_GridEndUpdateRequestEventArgs(n, ns, (GridEndUpdateRequestEventArgs)o, isNullable, needType: true);
				}
				else if (type == typeof(SyncfusionHandledEventArgs))
				{
					Write71_SyncfusionHandledEventArgs(n, ns, (SyncfusionHandledEventArgs)o, isNullable, needType: true);
				}
				else if (type == typeof(GridValidateFailedEventArgs))
				{
					Write133_GridValidateFailedEventArgs(n, ns, (GridValidateFailedEventArgs)o, isNullable, needType: true);
				}
				else if (type == typeof(GridRowColCountEventArgs))
				{
					Write72_GridRowColCountEventArgs(n, ns, (GridRowColCountEventArgs)o, isNullable, needType: true);
				}
				else if (type == typeof(GridData))
				{
					Write67_GridData(n, ns, (GridData)o, isNullable, needType: true);
				}
				else if (type == typeof(GridCoveredCellPool))
				{
					Write66_GridCoveredCellPool(n, ns, (GridCoveredCellPool)o, isNullable, needType: true);
				}
				else if (type == typeof(SyncfusionCommand))
				{
					Write64_SyncfusionCommand(n, ns, (SyncfusionCommand)o, isNullable, needType: true);
				}
				else if (type == typeof(GridModelCommand))
				{
					Write65_GridModelCommand(n, ns, (GridModelCommand)o, isNullable, needType: true);
				}
				else if (type == typeof(GridColWidth))
				{
					Write62_GridColWidth(n, ns, (GridColWidth)o, isNullable, needType: true);
				}
				else if (type == typeof(GridColHidden))
				{
					Write60_GridColHidden(n, ns, (GridColHidden)o, isNullable, needType: true);
				}
				else if (type == typeof(ValueConvert))
				{
					Write57_ValueConvert(n, ns, (ValueConvert)o, isNullable, needType: true);
				}
				else if (type == typeof(GridCellValueConvert))
				{
					Write58_GridCellValueConvert(n, ns, (GridCellValueConvert)o, isNullable, needType: true);
				}
				else if (type == typeof(NonFinalizeDisposable))
				{
					Write55_NonFinalizeDisposable(n, ns, (NonFinalizeDisposable)o, isNullable, needType: true);
				}
				else if (type == typeof(GridBaseStyle))
				{
					Write104_GridBaseStyle(n, ns, (GridBaseStyle)o, isNullable, needType: true);
				}
				else if (type == typeof(GridSubComponent))
				{
					Write88_GridSubComponent(n, ns, (GridSubComponent)o, isNullable, needType: true);
				}
				else if (type == typeof(GridMouseController))
				{
					Write89_GridMouseController(n, ns, (GridMouseController)o, isNullable, needType: true);
				}
				else if (type == typeof(Disposable))
				{
					Write80_Disposable(n, ns, (Disposable)o, isNullable, needType: true);
				}
				else if (type == typeof(GridProperties))
				{
					Write81_GridProperties(n, ns, (GridProperties)o, isNullable, needType: true);
				}
				else if (type == typeof(GridModelBound))
				{
					Write56_GridModelBound(n, ns, (GridModelBound)o, isNullable, needType: true);
				}
				else if (type == typeof(GridModelRowColOperations))
				{
					Write77_GridModelRowColOperations(n, ns, (GridModelRowColOperations)o, isNullable, needType: true);
				}
				else if (type == typeof(GridModelHideRowColsIndexer))
				{
					Write75_GridModelHideRowColsIndexer(n, ns, (GridModelHideRowColsIndexer)o, isNullable, needType: true);
				}
				else if (type == typeof(TypeConverter))
				{
					Write52_TypeConverter(n, ns, (TypeConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(StyleInfoBaseConverter))
				{
					Write120_StyleInfoBaseConverter(n, ns, (StyleInfoBaseConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridStyleInfoConverter))
				{
					Write121_GridStyleInfoConverter(n, ns, (GridStyleInfoConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridCellTypeNameConverter))
				{
					Write112_GridCellTypeNameConverter(n, ns, (GridCellTypeNameConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridBorderConverter))
				{
					Write108_GridBorderConverter(n, ns, (GridBorderConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridBaseStyleNameConverter))
				{
					Write103_GridBaseStyleNameConverter(n, ns, (GridBaseStyleNameConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridRangeInfoListConverter))
				{
					Write95_GridRangeInfoListConverter(n, ns, (GridRangeInfoListConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridRangeInfoConverter))
				{
					Write91_GridRangeInfoConverter(n, ns, (GridRangeInfoConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridRowColSizeDictionaryTypeConverter))
				{
					Write78_Item(n, ns, (GridRowColSizeDictionaryTypeConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridRowColHideDictionaryTypeConverter))
				{
					Write74_Item(n, ns, (GridRowColHideDictionaryTypeConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridDataTypeConverter))
				{
					Write68_GridDataTypeConverter(n, ns, (GridDataTypeConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridCellValueTypeConverter))
				{
					Write59_GridCellValueTypeConverter(n, ns, (GridCellValueTypeConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(ExpandableObjectConverter))
				{
					Write53_ExpandableObjectConverter(n, ns, (ExpandableObjectConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridBaseStyleConverter))
				{
					Write102_GridBaseStyleConverter(n, ns, (GridBaseStyleConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridRowHiddenTypeConverter))
				{
					Write87_GridRowHiddenTypeConverter(n, ns, (GridRowHiddenTypeConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridRowHeightTypeConverter))
				{
					Write85_GridRowHeightTypeConverter(n, ns, (GridRowHeightTypeConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridRangeStyleTypeConverter))
				{
					Write83_GridRangeStyleTypeConverter(n, ns, (GridRangeStyleTypeConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridColWidthTypeConverter))
				{
					Write63_GridColWidthTypeConverter(n, ns, (GridColWidthTypeConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridColHiddenTypeConverter))
				{
					Write61_GridColHiddenTypeConverter(n, ns, (GridColHiddenTypeConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridCellInfoTypeConverter))
				{
					Write54_GridCellInfoTypeConverter(n, ns, (GridCellInfoTypeConverter)o, isNullable, needType: true);
				}
				else if (type == typeof(GridCellInfo))
				{
					Write51_GridCellInfo(n, ns, (GridCellInfo)o, isNullable, needType: true);
				}
				else if (type == typeof(GridBanneredCellPool))
				{
					Write50_GridBanneredCellPool(n, ns, (GridBanneredCellPool)o, isNullable, needType: true);
				}
				else if (type == typeof(GridUtil))
				{
					Write49_GridUtil(n, ns, (GridUtil)o, isNullable, needType: true);
				}
				else if (type == typeof(GridCellTypeName))
				{
					Write48_GridCellTypeName(n, ns, (GridCellTypeName)o, isNullable, needType: true);
				}
				else if (type == typeof(GridDragDropFlags))
				{
					Write43_GridDragDropFlags(n, ns, (GridDragDropFlags)o, isNullable, needType: true);
				}
				else if (type == typeof(GridHitTestContext))
				{
					Write33_GridHitTestContext(n, ns, (GridHitTestContext)o, isNullable, needType: true);
				}
				else if (type == typeof(GridCellBaseTextInfo))
				{
					Write25_GridCellBaseTextInfo(n, ns, (GridCellBaseTextInfo)o, isNullable, needType: true);
				}
				else if (type == typeof(GridConstants))
				{
					Write17_GridConstants(n, ns, (GridConstants)o, isNullable, needType: true);
				}
				else if (type == typeof(GridCellPos))
				{
					Write16_GridCellPos(n, ns, (GridCellPos)o, needType: true);
				}
				else if (type == typeof(GridFontState))
				{
					Write15_GridFontState(n, ns, (GridFontState)o, isNullable, needType: true);
				}
				else if (type == typeof(GridFactoryProvider))
				{
					Write14_GridFactoryProvider(n, ns, (GridFactoryProvider)o, isNullable, needType: true);
				}
				else if (type == typeof(GridPrintInfo))
				{
					Write12_GridPrintInfo(n, ns, (GridPrintInfo)o, isNullable, needType: true);
				}
				else if (type == typeof(ImageUtil))
				{
					Write8_ImageUtil(n, ns, (ImageUtil)o, isNullable, needType: true);
				}
				else if (type == typeof(GridImageUtil))
				{
					Write9_GridImageUtil(n, ns, (GridImageUtil)o, isNullable, needType: true);
				}
				else if (type == typeof(GridCellLayout))
				{
					Write7_GridCellLayout(n, ns, (GridCellLayout)o, isNullable, needType: true);
				}
				else if (type == typeof(Rectangle))
				{
					Write6_Rectangle(n, ns, (Rectangle)o, needType: true);
				}
				else if (type == typeof(Size))
				{
					Write5_Size(n, ns, (Size)o, needType: true);
				}
				else if (type == typeof(Point))
				{
					Write4_Point(n, ns, (Point)o, needType: true);
				}
				else if (type == typeof(GridBaseCellModelFactory))
				{
					Write3_GridBaseCellModelFactory(n, ns, (GridBaseCellModelFactory)o, isNullable, needType: true);
				}
				else if (type == typeof(GridCellModelFactory))
				{
					Write129_GridCellModelFactory(n, ns, (GridCellModelFactory)o, isNullable, needType: true);
				}
				else if (type == typeof(GridWindowsAssembly))
				{
					Write2_GridWindowsAssembly(n, ns, (GridWindowsAssembly)o, isNullable, needType: true);
				}
				else if (type == typeof(Rectangle[]))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("ArrayOfRectangle", "");
					Rectangle[] array = (Rectangle[])o;
					if (array != null)
					{
						for (int i = 0; i < array.Length; i++)
						{
							Write6_Rectangle("Rectangle", "", array[i], needType: false);
						}
					}
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridImageSizeMode))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridImageSizeMode", "");
					base.Writer.WriteString(Write10_GridImageSizeMode((GridImageSizeMode)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(ArrayList))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("ArrayOfAnyType", "");
					ArrayList arrayList = (ArrayList)o;
					if (arrayList != null)
					{
						for (int j = 0; j < ((ICollection)arrayList).Count; j++)
						{
							Write1_Object("anyType", "", arrayList[j], isNullable: true, needType: false);
						}
					}
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridCountRecordsBehavior))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridCountRecordsBehavior", "");
					base.Writer.WriteString(Write11_GridCountRecordsBehavior((GridCountRecordsBehavior)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridCellSizeKind))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridCellSizeKind", "");
					base.Writer.WriteString(Write13_GridCellSizeKind((GridCellSizeKind)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridScrollCurrentCellReason))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridScrollCurrentCellReason", "");
					base.Writer.WriteString(Write18_GridScrollCurrentCellReason((GridScrollCurrentCellReason)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridDropDownStyle))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridDropDownStyle", "");
					base.Writer.WriteString(Write19_GridDropDownStyle((GridDropDownStyle)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridQueryFloatCell))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridQueryFloatCell", "");
					base.Writer.WriteString(Write20_GridQueryFloatCell((GridQueryFloatCell)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridWrapCellBehavior))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridWrapCellBehavior", "");
					base.Writer.WriteString(Write21_GridWrapCellBehavior((GridWrapCellBehavior)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridRefreshCurrentCellBehavior))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridRefreshCurrentCellBehavior", "");
					base.Writer.WriteString(Write22_GridRefreshCurrentCellBehavior((GridRefreshCurrentCellBehavior)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridResizeToFitOptions))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridResizeToFitOptions", "");
					base.Writer.WriteString(Write23_GridResizeToFitOptions((GridResizeToFitOptions)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridQueryBounds))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridQueryBounds", "");
					base.Writer.WriteString(Write24_GridQueryBounds((GridQueryBounds)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridSelectionReason))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridSelectionReason", "");
					base.Writer.WriteString(Write26_GridSelectionReason((GridSelectionReason)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridDragSelectionReason))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridDragSelectionReason", "");
					base.Writer.WriteString(Write27_GridDragSelectionReason((GridDragSelectionReason)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridResizeCellsReason))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridResizeCellsReason", "");
					base.Writer.WriteString(Write28_GridResizeCellsReason((GridResizeCellsReason)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridRangeOptions))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridRangeOptions", "");
					base.Writer.WriteString(Write29_GridRangeOptions((GridRangeOptions)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridBackgroundImageMode))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridBackgroundImageMode", "");
					base.Writer.WriteString(Write30_GridBackgroundImageMode((GridBackgroundImageMode)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridDirectionType))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridDirectionType", "");
					base.Writer.WriteString(Write31_GridDirectionType((GridDirectionType)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridResizeCellsBehavior))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridResizeCellsBehavior", "");
					base.Writer.WriteString(Write32_GridResizeCellsBehavior((GridResizeCellsBehavior)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridSelectionFlags))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridSelectionFlags", "");
					base.Writer.WriteString(Write34_GridSelectionFlags((GridSelectionFlags)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridFloatCellsMode))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridFloatCellsMode", "");
					base.Writer.WriteString(Write35_GridFloatCellsMode((GridFloatCellsMode)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridMergeCellDirection))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridMergeCellDirection", "");
					base.Writer.WriteString(Write36_GridMergeCellDirection((GridMergeCellDirection)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridMergeCellsMode))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridMergeCellsMode", "");
					base.Writer.WriteString(Write37_GridMergeCellsMode((GridMergeCellsMode)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridCellActivateAction))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridCellActivateAction", "");
					base.Writer.WriteString(Write38_GridCellActivateAction((GridCellActivateAction)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridDrawOrder))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridDrawOrder", "");
					base.Writer.WriteString(Write39_GridDrawOrder((GridDrawOrder)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridShowCurrentCellBorder))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridShowCurrentCellBorder", "");
					base.Writer.WriteString(Write40_GridShowCurrentCellBorder((GridShowCurrentCellBorder)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridSetCurrentCellOptions))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridSetCurrentCellOptions", "");
					base.Writer.WriteString(Write41_GridSetCurrentCellOptions((GridSetCurrentCellOptions)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridScrollbarMode))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridScrollbarMode", "");
					base.Writer.WriteString(Write42_GridScrollbarMode((GridScrollbarMode)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridFindTextOptions))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridFindTextOptions", "");
					base.Writer.WriteString(Write44_GridFindTextOptions((GridFindTextOptions)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridCommandMode))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridCommandMode", "");
					base.Writer.WriteString(Write45_GridCommandMode((GridCommandMode)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridControllerOptions))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridControllerOptions", "");
					base.Writer.WriteString(Write46_GridControllerOptions((GridControllerOptions)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridDataObjectConsumerOptions))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridDataObjectConsumerOptions", "");
					base.Writer.WriteString(Write47_GridDataObjectConsumerOptions((GridDataObjectConsumerOptions)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridCellInfoCollection))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("ArrayOfGridCellInfo", "");
					GridCellInfoCollection gridCellInfoCollection = (GridCellInfoCollection)o;
					if (gridCellInfoCollection != null)
					{
						for (int k = 0; k < ((ICollection)gridCellInfoCollection).Count; k++)
						{
							Write51_GridCellInfo("GridCellInfo", "", gridCellInfoCollection[k], isNullable: true, needType: false);
						}
					}
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridColHiddenCollection))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("ArrayOfGridColHidden", "");
					GridColHiddenCollection gridColHiddenCollection = (GridColHiddenCollection)o;
					if (gridColHiddenCollection != null)
					{
						for (int l = 0; l < ((ICollection)gridColHiddenCollection).Count; l++)
						{
							Write60_GridColHidden("GridColHidden", "", gridColHiddenCollection[l], isNullable: true, needType: false);
						}
					}
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridColWidthCollection))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("ArrayOfGridColWidth", "");
					GridColWidthCollection gridColWidthCollection = (GridColWidthCollection)o;
					if (gridColWidthCollection != null)
					{
						for (int m = 0; m < ((ICollection)gridColWidthCollection).Count; m++)
						{
							Write62_GridColWidth("GridColWidth", "", gridColWidthCollection[m], isNullable: true, needType: false);
						}
					}
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridCellCollection))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("ArrayOfGridStyleInfoStore", "");
					GridCellCollection gridCellCollection = (GridCellCollection)o;
					if (gridCellCollection != null)
					{
						for (int num = 0; num < ((ICollection)gridCellCollection).Count; num++)
						{
							WriteSerializable(gridCellCollection[num], "GridStyleInfoStore", "", isNullable: true, wrapped: true);
						}
					}
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridRowCollection))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("ArrayOfArrayOfGridStyleInfoStore", "");
					GridCellCollection gridCellCollection2 = (GridCellCollection)o;
					if (gridCellCollection2 == null)
					{
						WriteNullTagLiteral("ArrayOfGridStyleInfoStore", "");
					}
					else
					{
						WriteStartElement("ArrayOfGridStyleInfoStore", "", null, writePrefixed: false);
						for (int num2 = 0; num2 < ((ICollection)gridCellCollection2).Count; num2++)
						{
							WriteSerializable(gridCellCollection2[num2], "GridStyleInfoStore", "", isNullable: true, wrapped: true);
						}
						WriteEndElement();
					}
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridClickedOnDisabledCellBehavior))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridClickedOnDisabledCellBehavior", "");
					base.Writer.WriteString(Write76_Item((GridClickedOnDisabledCellBehavior)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridNamespaceGroupItemCollection))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("ArrayOfGridNamespaceGroupItem", "");
					GridNamespaceGroupItemCollection gridNamespaceGroupItemCollection = (GridNamespaceGroupItemCollection)o;
					if (gridNamespaceGroupItemCollection != null)
					{
						for (int num3 = 0; num3 < ((ICollection)gridNamespaceGroupItemCollection).Count; num3++)
						{
							Write79_GridNamespaceGroupItem("GridNamespaceGroupItem", "", gridNamespaceGroupItemCollection[num3], needType: false);
						}
					}
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridRangeStyleCollection))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("ArrayOfGridRangeStyle", "");
					GridRangeStyleCollection gridRangeStyleCollection = (GridRangeStyleCollection)o;
					if (gridRangeStyleCollection != null)
					{
						for (int num4 = 0; num4 < ((ICollection)gridRangeStyleCollection).Count; num4++)
						{
							Write82_GridRangeStyle("GridRangeStyle", "", gridRangeStyleCollection[num4], isNullable: true, needType: false);
						}
					}
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridRowHeightCollection))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("ArrayOfGridRowHeight", "");
					GridRowHeightCollection gridRowHeightCollection = (GridRowHeightCollection)o;
					if (gridRowHeightCollection != null)
					{
						for (int num5 = 0; num5 < ((ICollection)gridRowHeightCollection).Count; num5++)
						{
							Write84_GridRowHeight("GridRowHeight", "", gridRowHeightCollection[num5], isNullable: true, needType: false);
						}
					}
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridRowHiddenCollection))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("ArrayOfGridRowHidden", "");
					GridRowHiddenCollection gridRowHiddenCollection = (GridRowHiddenCollection)o;
					if (gridRowHiddenCollection != null)
					{
						for (int num6 = 0; num6 < ((ICollection)gridRowHiddenCollection).Count; num6++)
						{
							Write86_GridRowHidden("GridRowHidden", "", gridRowHiddenCollection[num6], isNullable: true, needType: false);
						}
					}
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridRangeInfoList))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("ArrayOfGridRangeInfo", "");
					GridRangeInfoList gridRangeInfoList = (GridRangeInfoList)o;
					if (gridRangeInfoList != null)
					{
						for (int num7 = 0; num7 < ((ICollection)gridRangeInfoList).Count; num7++)
						{
							Write90_GridRangeInfo("GridRangeInfo", "", gridRangeInfoList[num7], isNullable: true, needType: false);
						}
					}
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridRangeInfoType))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridRangeInfoType", "");
					base.Writer.WriteString(Write96_GridRangeInfoType((GridRangeInfoType)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridNonImmutableRangeInfoCollection))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("ArrayOfGridNonImmutableRangeInfo", "");
					GridNonImmutableRangeInfoCollection gridNonImmutableRangeInfoCollection = (GridNonImmutableRangeInfoCollection)o;
					if (gridNonImmutableRangeInfoCollection != null)
					{
						for (int num8 = 0; num8 < ((ICollection)gridNonImmutableRangeInfoCollection).Count; num8++)
						{
							Write97_GridNonImmutableRangeInfo("GridNonImmutableRangeInfo", "", gridNonImmutableRangeInfoCollection[num8], isNullable: true, needType: false);
						}
					}
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridTriangleDirection))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridTriangleDirection", "");
					base.Writer.WriteString(Write101_GridTriangleDirection((GridTriangleDirection)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridBaseStylesMap))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("ArrayOfGridBaseStyle", "");
					GridBaseStylesMap gridBaseStylesMap = (GridBaseStylesMap)o;
					if (gridBaseStylesMap != null)
					{
						for (int num9 = 0; num9 < ((ICollection)gridBaseStylesMap).Count; num9++)
						{
							Write104_GridBaseStyle("GridBaseStyle", "", gridBaseStylesMap[num9], isNullable: true, needType: false);
						}
					}
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridBorderStyle))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridBorderStyle", "");
					base.Writer.WriteString(Write105_GridBorderStyle((GridBorderStyle)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridBorderWeight))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridBorderWeight", "");
					base.Writer.WriteString(Write106_GridBorderWeight((GridBorderWeight)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridBorderSide))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridBorderSide", "");
					base.Writer.WriteString(Write110_GridBorderSide((GridBorderSide)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridCellAppearance))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridCellAppearance", "");
					base.Writer.WriteString(Write111_GridCellAppearance((GridCellAppearance)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridHorizontalAlignment))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridHorizontalAlignment", "");
					base.Writer.WriteString(Write116_GridHorizontalAlignment((GridHorizontalAlignment)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridShowButtons))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridShowButtons", "");
					base.Writer.WriteString(Write118_GridShowButtons((GridShowButtons)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridTextAlign))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridTextAlign", "");
					base.Writer.WriteString(Write122_GridTextAlign((GridTextAlign)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridVerticalAlignment))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridVerticalAlignment", "");
					base.Writer.WriteString(Write123_GridVerticalAlignment((GridVerticalAlignment)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridRowColEntryCollection))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("ArrayOfGridRowColEntry", "");
					GridRowColEntryCollection gridRowColEntryCollection = (GridRowColEntryCollection)o;
					if (gridRowColEntryCollection != null)
					{
						for (int num10 = 0; num10 < ((ICollection)gridRowColEntryCollection).Count; num10++)
						{
							Write125_GridRowColEntry("GridRowColEntry", "", gridRowColEntryCollection[num10], isNullable: true, needType: false);
						}
					}
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridSerializeCellsBehavior))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridSerializeCellsBehavior", "");
					base.Writer.WriteString(Write131_GridSerializeCellsBehavior((GridSerializeCellsBehavior)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridSortBehavior))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridSortBehavior", "");
					base.Writer.WriteString(Write132_GridSortBehavior((GridSortBehavior)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(string[]))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("ArrayOfString", "");
					string[] array2 = (string[])o;
					if (array2 != null)
					{
						for (int num11 = 0; num11 < array2.Length; num11++)
						{
							WriteNullableStringLiteral("string", "", array2[num11]);
						}
					}
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridCurrentRecordItemChangedBehavior))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridCurrentRecordItemChangedBehavior", "");
					base.Writer.WriteString(Write137_Item((GridCurrentRecordItemChangedBehavior)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridFindReplaceDialogOptions))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridFindReplaceDialogOptions", "");
					base.Writer.WriteString(Write138_GridFindReplaceDialogOptions((GridFindReplaceDialogOptions)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridFormulaCopyFlags))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridFormulaCopyFlags", "");
					base.Writer.WriteString(Write141_GridFormulaCopyFlags((GridFormulaCopyFlags)o));
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridFormulaNamedRangesEditHelper.NamedRangeList))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("ArrayOfNamedRange", "");
					GridFormulaNamedRangesEditHelper.NamedRangeList namedRangeList = (GridFormulaNamedRangesEditHelper.NamedRangeList)o;
					if (namedRangeList != null)
					{
						for (int num12 = 0; num12 < ((ICollection)namedRangeList).Count; num12++)
						{
							Write143_NamedRange("NamedRange", "", namedRangeList[num12], isNullable: true, needType: false);
						}
					}
					base.Writer.WriteEndElement();
				}
				else if (type == typeof(GridQueryDragColumnHeaderReason))
				{
					base.Writer.WriteStartElement(n, ns);
					WriteXsiType("GridQueryDragColumnHeaderReason", "");
					base.Writer.WriteString(Write148_Item((GridQueryDragColumnHeaderReason)o));
					base.Writer.WriteEndElement();
				}
				else
				{
					WriteTypedPrimitive(n, ns, o, xsiType: true);
				}
				return;
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		WriteEndElement(o);
	}

	private void Write62_GridColWidth(string n, string ns, GridColWidth o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridColWidth)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridColWidth", "");
		}
		if (o.Width != -1)
		{
			WriteElementStringRaw("Width", "", XmlConvert.ToString(o.Width));
		}
		WriteElementStringRaw("ColIndex", "", XmlConvert.ToString(o.ColIndex));
		WriteEndElement(o);
	}

	private void Write60_GridColHidden(string n, string ns, GridColHidden o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridColHidden)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridColHidden", "");
		}
		WriteElementStringRaw("ColIndex", "", XmlConvert.ToString(o.ColIndex));
		WriteEndElement(o);
	}

	private string Write47_GridDataObjectConsumerOptions(GridDataObjectConsumerOptions v)
	{
		string text = null;
		return v switch
		{
			GridDataObjectConsumerOptions.None => "None", 
			GridDataObjectConsumerOptions.Styles => "Styles", 
			GridDataObjectConsumerOptions.Text => "Text", 
			GridDataObjectConsumerOptions.All => "All", 
			_ => XmlSerializationWriter.FromEnum((long)v, new string[4] { "None", "Styles", "Text", "All" }, new long[4] { 0L, 1L, 2L, 3L }, "Syncfusion.Windows.Forms.Grid.GridDataObjectConsumerOptions"), 
		};
	}

	private string Write46_GridControllerOptions(GridControllerOptions v)
	{
		string text = null;
		return v switch
		{
			GridControllerOptions.None => "None", 
			GridControllerOptions.ClickCells => "ClickCells", 
			GridControllerOptions.DragSelectRowOrColumn => "DragSelectRowOrColumn", 
			GridControllerOptions.OleDataSource => "OleDataSource", 
			GridControllerOptions.OleDropTarget => "OleDropTarget", 
			GridControllerOptions.SelectCells => "SelectCells", 
			GridControllerOptions.ExcelLikeSelection => "ExcelLikeSelection", 
			GridControllerOptions.ResizeCells => "ResizeCells", 
			GridControllerOptions.DragColumnHeader => "DragColumnHeader", 
			GridControllerOptions.All => "All", 
			_ => XmlSerializationWriter.FromEnum((long)v, new string[10] { "None", "ClickCells", "DragSelectRowOrColumn", "OleDataSource", "OleDropTarget", "SelectCells", "ExcelLikeSelection", "ResizeCells", "DragColumnHeader", "All" }, new long[10] { 0L, 1L, 2L, 4L, 8L, 16L, 32L, 64L, 128L, 127L }, "Syncfusion.Windows.Forms.Grid.GridControllerOptions"), 
		};
	}

	private string Write45_GridCommandMode(GridCommandMode v)
	{
		string text = null;
		return v switch
		{
			GridCommandMode.Recording => "Recording", 
			GridCommandMode.Undo => "Undo", 
			GridCommandMode.Redo => "Redo", 
			GridCommandMode.Rollback => "Rollback", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridCommandMode"), 
		};
	}

	private string Write44_GridFindTextOptions(GridFindTextOptions v)
	{
		string text = null;
		return v switch
		{
			GridFindTextOptions.None => "None", 
			GridFindTextOptions.MatchCase => "MatchCase", 
			GridFindTextOptions.MatchWholeCell => "MatchWholeCell", 
			GridFindTextOptions.SearchUp => "SearchUp", 
			GridFindTextOptions.SelectionOnly => "SelectionOnly", 
			GridFindTextOptions.ColumnOnly => "ColumnOnly", 
			GridFindTextOptions.WholeTable => "WholeTable", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridFindTextOptions"), 
		};
	}

	private string Write42_GridScrollbarMode(GridScrollbarMode v)
	{
		string text = null;
		return v switch
		{
			GridScrollbarMode.DetectIfShared => "DetectIfShared", 
			GridScrollbarMode.Disabled => "Disabled", 
			GridScrollbarMode.Enabled => "Enabled", 
			GridScrollbarMode.Automatic => "Automatic", 
			GridScrollbarMode.Shared => "Shared", 
			GridScrollbarMode.AutoScroll => "AutoScroll", 
			GridScrollbarMode.DisableAutoScroll => "DisableAutoScroll", 
			_ => XmlSerializationWriter.FromEnum((long)v, new string[7] { "DetectIfShared", "Disabled", "Enabled", "Automatic", "Shared", "AutoScroll", "DisableAutoScroll" }, new long[7] { -1L, 0L, 1L, 2L, 4L, 8L, 16L }, "Syncfusion.Windows.Forms.Grid.GridScrollbarMode"), 
		};
	}

	private string Write41_GridSetCurrentCellOptions(GridSetCurrentCellOptions v)
	{
		string text = null;
		return v switch
		{
			GridSetCurrentCellOptions.None => "None", 
			GridSetCurrentCellOptions.NoSelectRange => "NoSelectRange", 
			GridSetCurrentCellOptions.ScrollInView => "ScrollInView", 
			GridSetCurrentCellOptions.NoSetFocus => "NoSetFocus", 
			GridSetCurrentCellOptions.SetFocus => "SetFocus", 
			GridSetCurrentCellOptions.NoSyncCurrentCell => "NoSyncCurrentCell", 
			GridSetCurrentCellOptions.ForceRefresh => "ForceRefresh", 
			GridSetCurrentCellOptions.BeginEndUpdate => "BeginEndUpdate", 
			GridSetCurrentCellOptions.NoActivate => "NoActivate", 
			_ => XmlSerializationWriter.FromEnum((long)v, new string[9] { "None", "NoSelectRange", "ScrollInView", "NoSetFocus", "SetFocus", "NoSyncCurrentCell", "ForceRefresh", "BeginEndUpdate", "NoActivate" }, new long[9] { 0L, 1L, 2L, 4L, 8L, 16L, 32L, 64L, 128L }, "Syncfusion.Windows.Forms.Grid.GridSetCurrentCellOptions"), 
		};
	}

	private string Write40_GridShowCurrentCellBorder(GridShowCurrentCellBorder v)
	{
		string text = null;
		return v switch
		{
			GridShowCurrentCellBorder.AlwaysVisible => "AlwaysVisible", 
			GridShowCurrentCellBorder.HideAlways => "HideAlways", 
			GridShowCurrentCellBorder.WhenGridActive => "WhenGridActive", 
			GridShowCurrentCellBorder.GrayWhenLostFocus => "GrayWhenLostFocus", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridShowCurrentCellBorder"), 
		};
	}

	private string Write39_GridDrawOrder(GridDrawOrder v)
	{
		string text = null;
		return v switch
		{
			GridDrawOrder.Rows => "Rows", 
			GridDrawOrder.Columns => "Columns", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridDrawOrder"), 
		};
	}

	private string Write38_GridCellActivateAction(GridCellActivateAction v)
	{
		string text = null;
		return v switch
		{
			GridCellActivateAction.None => "None", 
			GridCellActivateAction.ClickOnCell => "ClickOnCell", 
			GridCellActivateAction.SetCurrent => "SetCurrent", 
			GridCellActivateAction.DblClickOnCell => "DblClickOnCell", 
			GridCellActivateAction.SelectAll => "SelectAll", 
			GridCellActivateAction.PositionCaret => "PositionCaret", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridCellActivateAction"), 
		};
	}

	private string Write37_GridMergeCellsMode(GridMergeCellsMode v)
	{
		string text = null;
		return v switch
		{
			GridMergeCellsMode.None => "None", 
			GridMergeCellsMode.OnDemandCalculation => "OnDemandCalculation", 
			GridMergeCellsMode.BeforeDisplayCalculation => "BeforeDisplayCalculation", 
			GridMergeCellsMode.MergeRowsInColumn => "MergeRowsInColumn", 
			GridMergeCellsMode.MergeColumnsInRow => "MergeColumnsInRow", 
			GridMergeCellsMode.SkipHiddencells => "SkipHiddencells", 
			_ => XmlSerializationWriter.FromEnum((long)v, new string[6] { "None", "OnDemandCalculation", "BeforeDisplayCalculation", "MergeRowsInColumn", "MergeColumnsInRow", "SkipHiddencells" }, new long[6] { 0L, 1L, 2L, 4L, 8L, 16L }, "Syncfusion.Windows.Forms.Grid.GridMergeCellsMode"), 
		};
	}

	private string Write36_GridMergeCellDirection(GridMergeCellDirection v)
	{
		string text = null;
		return v switch
		{
			GridMergeCellDirection.None => "None", 
			GridMergeCellDirection.ColumnsInRow => "ColumnsInRow", 
			GridMergeCellDirection.RowsInColumn => "RowsInColumn", 
			GridMergeCellDirection.Both => "Both", 
			_ => XmlSerializationWriter.FromEnum((long)v, new string[4] { "None", "ColumnsInRow", "RowsInColumn", "Both" }, new long[4] { 0L, 1L, 2L, 3L }, "Syncfusion.Windows.Forms.Grid.GridMergeCellDirection"), 
		};
	}

	private string Write35_GridFloatCellsMode(GridFloatCellsMode v)
	{
		string text = null;
		return v switch
		{
			GridFloatCellsMode.None => "None", 
			GridFloatCellsMode.OnDemandCalculation => "OnDemandCalculation", 
			GridFloatCellsMode.BeforeDisplayCalculation => "BeforeDisplayCalculation", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridFloatCellsMode"), 
		};
	}

	private string Write34_GridSelectionFlags(GridSelectionFlags v)
	{
		string text = null;
		return v switch
		{
			GridSelectionFlags.None => "None", 
			GridSelectionFlags.Row => "Row", 
			GridSelectionFlags.Column => "Column", 
			GridSelectionFlags.Table => "Table", 
			GridSelectionFlags.Cell => "Cell", 
			GridSelectionFlags.Multiple => "Multiple", 
			GridSelectionFlags.Shift => "Shift", 
			GridSelectionFlags.Keyboard => "Keyboard", 
			GridSelectionFlags.AlphaBlend => "AlphaBlend", 
			GridSelectionFlags.MixRangeType => "MixRangeType", 
			GridSelectionFlags.Any => "Any", 
			_ => XmlSerializationWriter.FromEnum((long)v, new string[11]
			{
				"None", "Row", "Column", "Table", "Cell", "Multiple", "Shift", "Keyboard", "AlphaBlend", "MixRangeType",
				"Any"
			}, new long[11]
			{
				0L, 1L, 2L, 4L, 8L, 16L, 32L, 64L, 128L, 256L,
				255L
			}, "Syncfusion.Windows.Forms.Grid.GridSelectionFlags"), 
		};
	}

	private string Write32_GridResizeCellsBehavior(GridResizeCellsBehavior v)
	{
		string text = null;
		return v switch
		{
			GridResizeCellsBehavior.None => "None", 
			GridResizeCellsBehavior.ResizeAll => "ResizeAll", 
			GridResizeCellsBehavior.ResizeSingle => "ResizeSingle", 
			GridResizeCellsBehavior.InsideGrid => "InsideGrid", 
			GridResizeCellsBehavior.IgnoreHeaders => "IgnoreHeaders", 
			GridResizeCellsBehavior.OutlineHeaders => "OutlineHeaders", 
			GridResizeCellsBehavior.OutlineBounds => "OutlineBounds", 
			GridResizeCellsBehavior.AllowDragOutside => "AllowDragOutside", 
			_ => XmlSerializationWriter.FromEnum((long)v, new string[8] { "None", "ResizeAll", "ResizeSingle", "InsideGrid", "IgnoreHeaders", "OutlineHeaders", "OutlineBounds", "AllowDragOutside" }, new long[8] { 0L, 1L, 2L, 4L, 8L, 16L, 32L, 64L }, "Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior"), 
		};
	}

	private string Write31_GridDirectionType(GridDirectionType v)
	{
		string text = null;
		return v switch
		{
			GridDirectionType.None => "None", 
			GridDirectionType.Up => "Up", 
			GridDirectionType.Left => "Left", 
			GridDirectionType.Down => "Down", 
			GridDirectionType.Right => "Right", 
			GridDirectionType.PageDown => "PageDown", 
			GridDirectionType.PageUp => "PageUp", 
			GridDirectionType.Top => "Top", 
			GridDirectionType.Bottom => "Bottom", 
			GridDirectionType.MostLeft => "MostLeft", 
			GridDirectionType.MostRight => "MostRight", 
			GridDirectionType.TopLeft => "TopLeft", 
			GridDirectionType.BottomRight => "BottomRight", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridDirectionType"), 
		};
	}

	private string Write30_GridBackgroundImageMode(GridBackgroundImageMode v)
	{
		string text = null;
		return v switch
		{
			GridBackgroundImageMode.Normal => "Normal", 
			GridBackgroundImageMode.CenterImage => "CenterImage", 
			GridBackgroundImageMode.StretchImage => "StretchImage", 
			GridBackgroundImageMode.TileImage => "TileImage", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridBackgroundImageMode"), 
		};
	}

	private string Write29_GridRangeOptions(GridRangeOptions v)
	{
		string text = null;
		return v switch
		{
			GridRangeOptions.None => "None", 
			GridRangeOptions.MergeCoveredCells => "MergeCoveredCells", 
			GridRangeOptions.MergeMergedCells => "MergeMergedCells", 
			GridRangeOptions.MergeFloatedCells => "MergeFloatedCells", 
			GridRangeOptions.MergeBanneredCells => "MergeBanneredCells", 
			GridRangeOptions.MergeAllSpannedCells => "MergeAllSpannedCells", 
			GridRangeOptions.CalculateNonClientArea => "CalculateNonClientArea", 
			_ => XmlSerializationWriter.FromEnum((long)v, new string[7] { "None", "MergeCoveredCells", "MergeMergedCells", "MergeFloatedCells", "MergeBanneredCells", "MergeAllSpannedCells", "CalculateNonClientArea" }, new long[7] { 0L, 1L, 2L, 4L, 8L, 15L, 16L }, "Syncfusion.Windows.Forms.Grid.GridRangeOptions"), 
		};
	}

	private string Write28_GridResizeCellsReason(GridResizeCellsReason v)
	{
		string text = null;
		return v switch
		{
			GridResizeCellsReason.MouseDown => "MouseDown", 
			GridResizeCellsReason.MouseMove => "MouseMove", 
			GridResizeCellsReason.MouseUp => "MouseUp", 
			GridResizeCellsReason.CancelMode => "CancelMode", 
			GridResizeCellsReason.HitTest => "HitTest", 
			GridResizeCellsReason.DoubleClick => "DoubleClick", 
			GridResizeCellsReason.ResetHide => "ResetHide", 
			GridResizeCellsReason.ResetDefault => "ResetDefault", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridResizeCellsReason"), 
		};
	}

	private string Write27_GridDragSelectionReason(GridDragSelectionReason v)
	{
		string text = null;
		return v switch
		{
			GridDragSelectionReason.MouseDown => "MouseDown", 
			GridDragSelectionReason.MouseMove => "MouseMove", 
			GridDragSelectionReason.MouseUp => "MouseUp", 
			GridDragSelectionReason.CancelMode => "CancelMode", 
			GridDragSelectionReason.HitTest => "HitTest", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridDragSelectionReason"), 
		};
	}

	private string Write26_GridSelectionReason(GridSelectionReason v)
	{
		string text = null;
		return v switch
		{
			GridSelectionReason.SelectRange => "SelectRange", 
			GridSelectionReason.SetCurrentCell => "SetCurrentCell", 
			GridSelectionReason.ArrowKey => "ArrowKey", 
			GridSelectionReason.MouseDown => "MouseDown", 
			GridSelectionReason.MouseMove => "MouseMove", 
			GridSelectionReason.MouseUp => "MouseUp", 
			GridSelectionReason.CancelMode => "CancelMode", 
			GridSelectionReason.Clear => "Clear", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridSelectionReason"), 
		};
	}

	private string Write24_GridQueryBounds(GridQueryBounds v)
	{
		string text = null;
		return v switch
		{
			GridQueryBounds.Height => "Height", 
			GridQueryBounds.Width => "Width", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridQueryBounds"), 
		};
	}

	private string Write23_GridResizeToFitOptions(GridResizeToFitOptions v)
	{
		string text = null;
		return v switch
		{
			GridResizeToFitOptions.None => "None", 
			GridResizeToFitOptions.ResizeCoveredCells => "ResizeCoveredCells", 
			GridResizeToFitOptions.NoShrinkSize => "NoShrinkSize", 
			GridResizeToFitOptions.IncludeHeaders => "IncludeHeaders", 
			GridResizeToFitOptions.IncludeCellsWithinCoveredRange => "IncludeCellsWithinCoveredRange", 
			_ => XmlSerializationWriter.FromEnum((long)v, new string[5] { "None", "ResizeCoveredCells", "NoShrinkSize", "IncludeHeaders", "IncludeCellsWithinCoveredRange" }, new long[5] { 0L, 1L, 2L, 4L, 8L }, "Syncfusion.Windows.Forms.Grid.GridResizeToFitOptions"), 
		};
	}

	private string Write22_GridRefreshCurrentCellBehavior(GridRefreshCurrentCellBehavior v)
	{
		string text = null;
		return v switch
		{
			GridRefreshCurrentCellBehavior.None => "None", 
			GridRefreshCurrentCellBehavior.RefreshCell => "RefreshCell", 
			GridRefreshCurrentCellBehavior.RefreshRow => "RefreshRow", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridRefreshCurrentCellBehavior"), 
		};
	}

	private string Write21_GridWrapCellBehavior(GridWrapCellBehavior v)
	{
		string text = null;
		return v switch
		{
			GridWrapCellBehavior.None => "None", 
			GridWrapCellBehavior.WrapRow => "WrapRow", 
			GridWrapCellBehavior.WrapGrid => "WrapGrid", 
			GridWrapCellBehavior.NextControlInForm => "NextControlInForm", 
			_ => XmlSerializationWriter.FromEnum((long)v, new string[4] { "None", "WrapRow", "WrapGrid", "NextControlInForm" }, new long[4] { 0L, 1L, 2L, 4L }, "Syncfusion.Windows.Forms.Grid.GridWrapCellBehavior"), 
		};
	}

	private string Write20_GridQueryFloatCell(GridQueryFloatCell v)
	{
		string text = null;
		return v switch
		{
			GridQueryFloatCell.FloatCell => "FloatCell", 
			GridQueryFloatCell.FloodCell => "FloodCell", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridQueryFloatCell"), 
		};
	}

	private string Write19_GridDropDownStyle(GridDropDownStyle v)
	{
		string text = null;
		return v switch
		{
			GridDropDownStyle.Editable => "Editable", 
			GridDropDownStyle.Exclusive => "Exclusive", 
			GridDropDownStyle.AutoComplete => "AutoComplete", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridDropDownStyle"), 
		};
	}

	private string Write18_GridScrollCurrentCellReason(GridScrollCurrentCellReason v)
	{
		string text = null;
		return v switch
		{
			GridScrollCurrentCellReason.None => "None", 
			GridScrollCurrentCellReason.GridFocus => "GridFocus", 
			GridScrollCurrentCellReason.BeginEdit => "BeginEdit", 
			GridScrollCurrentCellReason.KeyPress => "KeyPress", 
			GridScrollCurrentCellReason.Modified => "Modified", 
			GridScrollCurrentCellReason.Activate => "Activate", 
			GridScrollCurrentCellReason.Click => "Click", 
			GridScrollCurrentCellReason.MoveTo => "MoveTo", 
			GridScrollCurrentCellReason.Error => "Error", 
			GridScrollCurrentCellReason.Command => "Command", 
			GridScrollCurrentCellReason.ResizedCells => "ResizedCells", 
			GridScrollCurrentCellReason.FindText => "FindText", 
			GridScrollCurrentCellReason.Any => "Any", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridScrollCurrentCellReason"), 
		};
	}

	private string Write13_GridCellSizeKind(GridCellSizeKind v)
	{
		string text = null;
		return v switch
		{
			GridCellSizeKind.ActualSize => "ActualSize", 
			GridCellSizeKind.VisibleSize => "VisibleSize", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridCellSizeKind"), 
		};
	}

	private string Write11_GridCountRecordsBehavior(GridCountRecordsBehavior v)
	{
		string text = null;
		return v switch
		{
			GridCountRecordsBehavior.CountNever => "CountNever", 
			GridCountRecordsBehavior.CountAlways => "CountAlways", 
			GridCountRecordsBehavior.CountPrint => "CountPrint", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridCountRecordsBehavior"), 
		};
	}

	private string Write10_GridImageSizeMode(GridImageSizeMode v)
	{
		string text = null;
		return v switch
		{
			GridImageSizeMode.Normal => "Normal", 
			GridImageSizeMode.CenterImage => "CenterImage", 
			GridImageSizeMode.AutoSize => "AutoSize", 
			GridImageSizeMode.StretchImage => "StretchImage", 
			_ => throw CreateInvalidEnumValueException(((long)v).ToString(CultureInfo.InvariantCulture), "Syncfusion.Windows.Forms.Grid.GridImageSizeMode"), 
		};
	}

	private void Write6_Rectangle(string n, string ns, Rectangle o, bool needType)
	{
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(Rectangle)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("Rectangle", "");
		}
		Write4_Point("Location", "", o.Location, needType: false);
		Write5_Size("Size", "", o.Size, needType: false);
		WriteElementStringRaw("X", "", XmlConvert.ToString(o.X));
		WriteElementStringRaw("Y", "", XmlConvert.ToString(o.Y));
		WriteElementStringRaw("Width", "", XmlConvert.ToString(o.Width));
		WriteElementStringRaw("Height", "", XmlConvert.ToString(o.Height));
		WriteEndElement(o);
	}

	private void Write5_Size(string n, string ns, Size o, bool needType)
	{
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(Size)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("Size", "");
		}
		WriteElementStringRaw("Width", "", XmlConvert.ToString(o.Width));
		WriteElementStringRaw("Height", "", XmlConvert.ToString(o.Height));
		WriteEndElement(o);
	}

	private void Write4_Point(string n, string ns, Point o, bool needType)
	{
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(Point)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("Point", "");
		}
		WriteElementStringRaw("X", "", XmlConvert.ToString(o.X));
		WriteElementStringRaw("Y", "", XmlConvert.ToString(o.Y));
		WriteEndElement(o);
	}

	private void Write2_GridWindowsAssembly(string n, string ns, GridWindowsAssembly o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridWindowsAssembly)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridWindowsAssembly", "");
		}
		WriteEndElement(o);
	}

	private void Write3_GridBaseCellModelFactory(string n, string ns, GridBaseCellModelFactory o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridBaseCellModelFactory)))
			{
				if (type == typeof(GridCellModelFactory))
				{
					Write129_GridCellModelFactory(n, ns, (GridCellModelFactory)o, isNullable, needType: true);
					return;
				}
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridBaseCellModelFactory", "");
		}
		WriteEndElement(o);
	}

	private void Write7_GridCellLayout(string n, string ns, GridCellLayout o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridCellLayout)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridCellLayout", "");
		}
		Write6_Rectangle("CellRectangle", "", o.CellRectangle, needType: false);
		Write6_Rectangle("InnerRectangle", "", o.InnerRectangle, needType: false);
		Rectangle[] buttons = o.Buttons;
		if (buttons != null)
		{
			WriteStartElement("Buttons", "", null, writePrefixed: false);
			for (int i = 0; i < buttons.Length; i++)
			{
				Write6_Rectangle("Rectangle", "", buttons[i], needType: false);
			}
			WriteEndElement();
		}
		Write6_Rectangle("ClientRectangle", "", o.ClientRectangle, needType: false);
		Write6_Rectangle("TextRectangle", "", o.TextRectangle, needType: false);
		WriteEndElement(o);
	}

	private void Write9_GridImageUtil(string n, string ns, GridImageUtil o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridImageUtil)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridImageUtil", "");
		}
		WriteEndElement(o);
	}

	private void Write8_ImageUtil(string n, string ns, ImageUtil o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(ImageUtil)))
			{
				if (type == typeof(GridImageUtil))
				{
					Write9_GridImageUtil(n, ns, (GridImageUtil)o, isNullable, needType: true);
					return;
				}
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("ImageUtil", "");
		}
		WriteEndElement(o);
	}

	private void Write12_GridPrintInfo(string n, string ns, GridPrintInfo o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridPrintInfo)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridPrintInfo", "");
		}
		WriteElementStringRaw("m_nPrintTopRow", "", XmlConvert.ToString(o.m_nPrintTopRow));
		WriteElementStringRaw("m_nPrintLeftCol", "", XmlConvert.ToString(o.m_nPrintLeftCol));
		ArrayList awPageFirstCol = o.m_awPageFirstCol;
		if (awPageFirstCol != null)
		{
			WriteStartElement("m_awPageFirstCol", "", null, writePrefixed: false);
			for (int i = 0; i < ((ICollection)awPageFirstCol).Count; i++)
			{
				Write1_Object("anyType", "", awPageFirstCol[i], isNullable: true, needType: false);
			}
			WriteEndElement();
		}
		ArrayList awPageFirstRow = o.m_awPageFirstRow;
		if (awPageFirstRow != null)
		{
			WriteStartElement("m_awPageFirstRow", "", null, writePrefixed: false);
			for (int j = 0; j < ((ICollection)awPageFirstRow).Count; j++)
			{
				Write1_Object("anyType", "", awPageFirstRow[j], isNullable: true, needType: false);
			}
			WriteEndElement();
		}
		WriteElementStringRaw("m_nCurrentPageColIndex", "", XmlConvert.ToString(o.m_nCurrentPageColIndex));
		WriteElementStringRaw("m_nCurrentPageRowIndex", "", XmlConvert.ToString(o.m_nCurrentPageRowIndex));
		WriteElementString("m_nPrintHandleRecordCount", "", Write11_GridCountRecordsBehavior(o.m_nPrintHandleRecordCount));
		WriteElementStringRaw("m_bPrintPaintMsg", "", XmlConvert.ToString(o.m_bPrintPaintMsg));
		WriteElementStringRaw("m_bPrintCurSelOnly", "", XmlConvert.ToString(o.m_bPrintCurSelOnly));
		WriteEndElement(o);
	}

	private void Write14_GridFactoryProvider(string n, string ns, GridFactoryProvider o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridFactoryProvider)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridFactoryProvider", "");
		}
		WriteEndElement(o);
	}

	private void Write15_GridFontState(string n, string ns, GridFontState o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridFontState)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridFontState", "");
		}
		WriteEndElement(o);
	}

	private void Write16_GridCellPos(string n, string ns, GridCellPos o, bool needType)
	{
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridCellPos)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridCellPos", "");
		}
		WriteElementStringRaw("ColumnNumber", "", XmlConvert.ToString(o.ColumnNumber));
		WriteElementStringRaw("RowNumber", "", XmlConvert.ToString(o.RowNumber));
		WriteEndElement(o);
	}

	private void Write17_GridConstants(string n, string ns, GridConstants o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridConstants)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridConstants", "");
		}
		WriteEndElement(o);
	}

	private void Write25_GridCellBaseTextInfo(string n, string ns, GridCellBaseTextInfo o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridCellBaseTextInfo)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridCellBaseTextInfo", "");
		}
		WriteEndElement(o);
	}

	private void Write33_GridHitTestContext(string n, string ns, GridHitTestContext o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridHitTestContext)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridHitTestContext", "");
		}
		WriteEndElement(o);
	}

	private void Write43_GridDragDropFlags(string n, string ns, GridDragDropFlags o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridDragDropFlags)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridDragDropFlags", "");
		}
		WriteEndElement(o);
	}

	private void Write48_GridCellTypeName(string n, string ns, GridCellTypeName o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridCellTypeName)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridCellTypeName", "");
		}
		WriteEndElement(o);
	}

	private void Write49_GridUtil(string n, string ns, GridUtil o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridUtil)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridUtil", "");
		}
		WriteEndElement(o);
	}

	private void Write50_GridBanneredCellPool(string n, string ns, GridBanneredCellPool o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridBanneredCellPool)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridBanneredCellPool", "");
		}
		WriteEndElement(o);
	}

	private void Write54_GridCellInfoTypeConverter(string n, string ns, GridCellInfoTypeConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridCellInfoTypeConverter)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridCellInfoTypeConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write61_GridColHiddenTypeConverter(string n, string ns, GridColHiddenTypeConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridColHiddenTypeConverter)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridColHiddenTypeConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write63_GridColWidthTypeConverter(string n, string ns, GridColWidthTypeConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridColWidthTypeConverter)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridColWidthTypeConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write53_ExpandableObjectConverter(string n, string ns, ExpandableObjectConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(ExpandableObjectConverter)))
			{
				if (type == typeof(GridBaseStyleConverter))
				{
					Write102_GridBaseStyleConverter(n, ns, (GridBaseStyleConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridRowHiddenTypeConverter))
				{
					Write87_GridRowHiddenTypeConverter(n, ns, (GridRowHiddenTypeConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridRowHeightTypeConverter))
				{
					Write85_GridRowHeightTypeConverter(n, ns, (GridRowHeightTypeConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridRangeStyleTypeConverter))
				{
					Write83_GridRangeStyleTypeConverter(n, ns, (GridRangeStyleTypeConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridColWidthTypeConverter))
				{
					Write63_GridColWidthTypeConverter(n, ns, (GridColWidthTypeConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridColHiddenTypeConverter))
				{
					Write61_GridColHiddenTypeConverter(n, ns, (GridColHiddenTypeConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridCellInfoTypeConverter))
				{
					Write54_GridCellInfoTypeConverter(n, ns, (GridCellInfoTypeConverter)o, isNullable, needType: true);
					return;
				}
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("ExpandableObjectConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write59_GridCellValueTypeConverter(string n, string ns, GridCellValueTypeConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridCellValueTypeConverter)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridCellValueTypeConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write68_GridDataTypeConverter(string n, string ns, GridDataTypeConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridDataTypeConverter)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridDataTypeConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write120_StyleInfoBaseConverter(string n, string ns, StyleInfoBaseConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(StyleInfoBaseConverter)))
			{
				if (type == typeof(GridStyleInfoConverter))
				{
					Write121_GridStyleInfoConverter(n, ns, (GridStyleInfoConverter)o, isNullable, needType: true);
					return;
				}
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("StyleInfoBaseConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write52_TypeConverter(string n, string ns, TypeConverter o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(TypeConverter)))
			{
				if (type == typeof(StyleInfoBaseConverter))
				{
					Write120_StyleInfoBaseConverter(n, ns, (StyleInfoBaseConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridStyleInfoConverter))
				{
					Write121_GridStyleInfoConverter(n, ns, (GridStyleInfoConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridCellTypeNameConverter))
				{
					Write112_GridCellTypeNameConverter(n, ns, (GridCellTypeNameConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridBorderConverter))
				{
					Write108_GridBorderConverter(n, ns, (GridBorderConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridBaseStyleNameConverter))
				{
					Write103_GridBaseStyleNameConverter(n, ns, (GridBaseStyleNameConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridRangeInfoListConverter))
				{
					Write95_GridRangeInfoListConverter(n, ns, (GridRangeInfoListConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridRangeInfoConverter))
				{
					Write91_GridRangeInfoConverter(n, ns, (GridRangeInfoConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridRowColSizeDictionaryTypeConverter))
				{
					Write78_Item(n, ns, (GridRowColSizeDictionaryTypeConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridRowColHideDictionaryTypeConverter))
				{
					Write74_Item(n, ns, (GridRowColHideDictionaryTypeConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridDataTypeConverter))
				{
					Write68_GridDataTypeConverter(n, ns, (GridDataTypeConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridCellValueTypeConverter))
				{
					Write59_GridCellValueTypeConverter(n, ns, (GridCellValueTypeConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(ExpandableObjectConverter))
				{
					Write53_ExpandableObjectConverter(n, ns, (ExpandableObjectConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridBaseStyleConverter))
				{
					Write102_GridBaseStyleConverter(n, ns, (GridBaseStyleConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridRowHiddenTypeConverter))
				{
					Write87_GridRowHiddenTypeConverter(n, ns, (GridRowHiddenTypeConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridRowHeightTypeConverter))
				{
					Write85_GridRowHeightTypeConverter(n, ns, (GridRowHeightTypeConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridRangeStyleTypeConverter))
				{
					Write83_GridRangeStyleTypeConverter(n, ns, (GridRangeStyleTypeConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridColWidthTypeConverter))
				{
					Write63_GridColWidthTypeConverter(n, ns, (GridColWidthTypeConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridColHiddenTypeConverter))
				{
					Write61_GridColHiddenTypeConverter(n, ns, (GridColHiddenTypeConverter)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridCellInfoTypeConverter))
				{
					Write54_GridCellInfoTypeConverter(n, ns, (GridCellInfoTypeConverter)o, isNullable, needType: true);
					return;
				}
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("TypeConverter", "");
		}
		WriteEndElement(o);
	}

	private void Write56_GridModelBound(string n, string ns, GridModelBound o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
		}
		else
		{
			if (needType)
			{
				return;
			}
			Type type = o.GetType();
			if (type == typeof(GridModelBound))
			{
				return;
			}
			if (type == typeof(GridModelRowColOperations))
			{
				Write77_GridModelRowColOperations(n, ns, (GridModelRowColOperations)o, isNullable, needType: true);
				return;
			}
			if (!(type == typeof(GridModelHideRowColsIndexer)))
			{
				throw CreateUnknownTypeException(o);
			}
			Write75_GridModelHideRowColsIndexer(n, ns, (GridModelHideRowColsIndexer)o, isNullable, needType: true);
		}
	}

	private void Write80_Disposable(string n, string ns, Disposable o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(Disposable)))
			{
				if (type == typeof(GridProperties))
				{
					Write81_GridProperties(n, ns, (GridProperties)o, isNullable, needType: true);
					return;
				}
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("Disposable", "");
		}
		WriteEndElement(o);
	}

	private void Write88_GridSubComponent(string n, string ns, GridSubComponent o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridSubComponent)))
			{
				if (type == typeof(GridMouseController))
				{
					Write89_GridMouseController(n, ns, (GridMouseController)o, isNullable, needType: true);
					return;
				}
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridSubComponent", "");
		}
		WriteEndElement(o);
	}

	private void Write55_NonFinalizeDisposable(string n, string ns, NonFinalizeDisposable o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(NonFinalizeDisposable)))
			{
				if (type == typeof(GridBaseStyle))
				{
					Write104_GridBaseStyle(n, ns, (GridBaseStyle)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridSubComponent))
				{
					Write88_GridSubComponent(n, ns, (GridSubComponent)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridMouseController))
				{
					Write89_GridMouseController(n, ns, (GridMouseController)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(Disposable))
				{
					Write80_Disposable(n, ns, (Disposable)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridProperties))
				{
					Write81_GridProperties(n, ns, (GridProperties)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridModelBound))
				{
					Write56_GridModelBound(n, ns, (GridModelBound)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridModelRowColOperations))
				{
					Write77_GridModelRowColOperations(n, ns, (GridModelRowColOperations)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridModelHideRowColsIndexer))
				{
					Write75_GridModelHideRowColsIndexer(n, ns, (GridModelHideRowColsIndexer)o, isNullable, needType: true);
					return;
				}
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("NonFinalizeDisposable", "");
		}
		WriteEndElement(o);
	}

	private void Write58_GridCellValueConvert(string n, string ns, GridCellValueConvert o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridCellValueConvert)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridCellValueConvert", "");
		}
		WriteEndElement(o);
	}

	private void Write57_ValueConvert(string n, string ns, ValueConvert o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(ValueConvert)))
			{
				if (type == typeof(GridCellValueConvert))
				{
					Write58_GridCellValueConvert(n, ns, (GridCellValueConvert)o, isNullable, needType: true);
					return;
				}
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("ValueConvert", "");
		}
		WriteEndElement(o);
	}

	private void Write65_GridModelCommand(string n, string ns, GridModelCommand o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
		}
		else if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridModelCommand)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
	}

	private void Write64_SyncfusionCommand(string n, string ns, SyncfusionCommand o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
		}
		else
		{
			if (needType)
			{
				return;
			}
			Type type = o.GetType();
			if (!(type == typeof(SyncfusionCommand)))
			{
				if (!(type == typeof(GridModelCommand)))
				{
					throw CreateUnknownTypeException(o);
				}
				Write65_GridModelCommand(n, ns, (GridModelCommand)o, isNullable, needType: true);
			}
		}
	}

	private void Write66_GridCoveredCellPool(string n, string ns, GridCoveredCellPool o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridCoveredCellPool)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridCoveredCellPool", "");
		}
		WriteEndElement(o);
	}

	private void Write67_GridData(string n, string ns, GridData o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(GridData)))
			{
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("GridData", "");
		}
		WriteElementStringRaw("RowCount", "", XmlConvert.ToString(o.RowCount));
		WriteElementStringRaw("ColCount", "", XmlConvert.ToString(o.ColCount));
		Write1_Object("ExtendedInfo", "", o.ExtendedInfo, isNullable: false, needType: false);
		GridRowCollection rows = o.Rows;
		if (rows != null)
		{
			WriteStartElement("Rows", "", null, writePrefixed: false);
			for (int i = 0; i < ((ICollection)rows).Count; i++)
			{
				GridCellCollection gridCellCollection = rows[i];
				if (gridCellCollection == null)
				{
					WriteNullTagLiteral("ArrayOfGridStyleInfoStore", "");
					continue;
				}
				WriteStartElement("ArrayOfGridStyleInfoStore", "", null, writePrefixed: false);
				for (int j = 0; j < ((ICollection)gridCellCollection).Count; j++)
				{
					WriteSerializable(gridCellCollection[j], "GridStyleInfoStore", "", isNullable: true, wrapped: true);
				}
				WriteEndElement();
			}
			WriteEndElement();
		}
		WriteEndElement(o);
	}

	private void Write71_SyncfusionHandledEventArgs(string n, string ns, SyncfusionHandledEventArgs o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(SyncfusionHandledEventArgs)))
			{
				if (type == typeof(GridValidateFailedEventArgs))
				{
					Write133_GridValidateFailedEventArgs(n, ns, (GridValidateFailedEventArgs)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridRowColCountEventArgs))
				{
					Write72_GridRowColCountEventArgs(n, ns, (GridRowColCountEventArgs)o, isNullable, needType: true);
					return;
				}
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("SyncfusionHandledEventArgs", "");
		}
		WriteElementStringRaw("Handled", "", XmlConvert.ToString(o.Handled));
		WriteEndElement(o);
	}

	private void Write70_SyncfusionEventArgs(string n, string ns, SyncfusionEventArgs o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(SyncfusionEventArgs)))
			{
				if (type == typeof(GridFilterBarTextChangedEventArgs))
				{
					Write135_Item(n, ns, (GridFilterBarTextChangedEventArgs)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridEndUpdateRequestEventArgs))
				{
					Write73_GridEndUpdateRequestEventArgs(n, ns, (GridEndUpdateRequestEventArgs)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(SyncfusionHandledEventArgs))
				{
					Write71_SyncfusionHandledEventArgs(n, ns, (SyncfusionHandledEventArgs)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridValidateFailedEventArgs))
				{
					Write133_GridValidateFailedEventArgs(n, ns, (GridValidateFailedEventArgs)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridRowColCountEventArgs))
				{
					Write72_GridRowColCountEventArgs(n, ns, (GridRowColCountEventArgs)o, isNullable, needType: true);
					return;
				}
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("SyncfusionEventArgs", "");
		}
		WriteEndElement(o);
	}

	private void Write69_EventArgs(string n, string ns, EventArgs o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(EventArgs)))
			{
				if (type == typeof(GridFormulaParsingEventArgs))
				{
					Write142_GridFormulaParsingEventArgs(n, ns, (GridFormulaParsingEventArgs)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(SyncfusionEventArgs))
				{
					Write70_SyncfusionEventArgs(n, ns, (SyncfusionEventArgs)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridFilterBarTextChangedEventArgs))
				{
					Write135_Item(n, ns, (GridFilterBarTextChangedEventArgs)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridEndUpdateRequestEventArgs))
				{
					Write73_GridEndUpdateRequestEventArgs(n, ns, (GridEndUpdateRequestEventArgs)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(SyncfusionHandledEventArgs))
				{
					Write71_SyncfusionHandledEventArgs(n, ns, (SyncfusionHandledEventArgs)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridValidateFailedEventArgs))
				{
					Write133_GridValidateFailedEventArgs(n, ns, (GridValidateFailedEventArgs)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridRowColCountEventArgs))
				{
					Write72_GridRowColCountEventArgs(n, ns, (GridRowColCountEventArgs)o, isNullable, needType: true);
					return;
				}
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("EventArgs", "");
		}
		WriteEndElement(o);
	}

	private void Write93_CodeDomSerializer(string n, string ns, CodeDomSerializer o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(CodeDomSerializer)))
			{
				if (type == typeof(GridBorderCodeDomSerializer))
				{
					Write107_GridBorderCodeDomSerializer(n, ns, (GridBorderCodeDomSerializer)o, isNullable, needType: true);
					return;
				}
				if (type == typeof(GridRangeInfoCodeDomSerializer))
				{
					Write94_GridRangeInfoCodeDomSerializer(n, ns, (GridRangeInfoCodeDomSerializer)o, isNullable, needType: true);
					return;
				}
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("CodeDomSerializer", "");
		}
		WriteEndElement(o);
	}

	private void Write92_CodeDomSerializerBase(string n, string ns, CodeDomSerializerBase o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
		}
		else
		{
			if (needType)
			{
				return;
			}
			Type type = o.GetType();
			if (type == typeof(CodeDomSerializerBase))
			{
				return;
			}
			if (type == typeof(CodeDomSerializer))
			{
				Write93_CodeDomSerializer(n, ns, (CodeDomSerializer)o, isNullable, needType: true);
				return;
			}
			if (type == typeof(GridBorderCodeDomSerializer))
			{
				Write107_GridBorderCodeDomSerializer(n, ns, (GridBorderCodeDomSerializer)o, isNullable, needType: true);
				return;
			}
			if (!(type == typeof(GridRangeInfoCodeDomSerializer)))
			{
				throw CreateUnknownTypeException(o);
			}
			Write94_GridRangeInfoCodeDomSerializer(n, ns, (GridRangeInfoCodeDomSerializer)o, isNullable, needType: true);
		}
	}

	private void Write113_UITypeEditor(string n, string ns, UITypeEditor o, bool isNullable, bool needType)
	{
		if (o == null)
		{
			if (isNullable)
			{
				WriteNullTagLiteral(n, ns);
			}
			return;
		}
		if (!needType)
		{
			Type type = o.GetType();
			if (!(type == typeof(UITypeEditor)))
			{
				if (type == typeof(GridFontInfoEditor))
				{
					Write114_GridFontInfoEditor(n, ns, (GridFontInfoEditor)o, isNullable, needType: true);
					return;
				}
				throw CreateUnknownTypeException(o);
			}
		}
		WriteStartElement(n, ns, o, writePrefixed: false, null);
		if (needType)
		{
			WriteXsiType("UITypeEditor", "");
		}
		WriteEndElement(o);
	}

	protected override void InitCallbacks()
	{
	}
}
