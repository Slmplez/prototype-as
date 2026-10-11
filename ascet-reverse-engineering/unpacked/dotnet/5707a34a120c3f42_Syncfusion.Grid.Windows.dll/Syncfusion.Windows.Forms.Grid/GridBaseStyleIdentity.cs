using System;
using System.ComponentModel;
using System.Xml.Serialization;
using Syncfusion.Documentation;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal class GridBaseStyleIdentity : StyleInfoIdentityBase
{
	private GridBaseStylesMap styleInfoMap;

	public GridBaseStylesMap BaseStylesMap => styleInfoMap;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[XmlIgnore]
	public string Info => ToString();

	public override void Dispose()
	{
		styleInfoMap = null;
		GC.SuppressFinalize(this);
	}

	public GridBaseStyleIdentity(GridBaseStylesMap styleInfoMap)
	{
		this.styleInfoMap = styleInfoMap;
	}

	public override IStyleInfo[] GetBaseStyles(IStyleInfo thisStyleInfo)
	{
		if (styleInfoMap != null)
		{
			GridStyleInfo gridStyleInfo = (GridStyleInfo)thisStyleInfo;
			string name = (gridStyleInfo.HasBaseStyle ? gridStyleInfo.BaseStyle : string.Empty);
			int level;
			GridStyleInfo[] baseStylesMapStyles = styleInfoMap.GetBaseStylesMapStyles(name, out level);
			IStyleInfo[] array = new IStyleInfo[level];
			Array.Copy(baseStylesMapStyles, array, level);
			return array;
		}
		return null;
	}

	public override string ToString()
	{
		return string.Empty;
	}

	public override void OnStyleChanged(StyleInfoBase style, StyleInfoProperty sip)
	{
	}
}
