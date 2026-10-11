using System;
using System.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[DebuggerStepThrough]
[DocumentationExclude]
internal class GridBoundColumnStyleInfoIdentity : StyleInfoIdentityBase
{
	private GridBoundColumn boundColumn;

	protected IStyleInfo[] savedBaseStyles;

	public GridBoundColumnStyleInfoIdentity(GridBoundColumn col)
	{
		boundColumn = col;
	}

	public override void Dispose()
	{
		savedBaseStyles = null;
		boundColumn = null;
		base.Dispose();
	}

	public override IStyleInfo[] GetBaseStyles(IStyleInfo thisStyleInfo)
	{
		if (savedBaseStyles == null && boundColumn != null)
		{
			GridStyleInfo gridStyleInfo = thisStyleInfo as GridStyleInfo;
			string name = (gridStyleInfo.HasBaseStyle ? gridStyleInfo.BaseStyle : string.Empty);
			if (boundColumn.Owner == null || boundColumn.Owner.gridModel == null)
			{
				savedBaseStyles = new GridStyleInfo[0];
			}
			else
			{
				int level;
				GridStyleInfo[] baseStylesMapStyles = boundColumn.Owner.gridModel.BaseStylesMap.GetBaseStylesMapStyles(name, out level);
				savedBaseStyles = new GridStyleInfo[level];
				if (baseStylesMapStyles != null)
				{
					Array.Copy(baseStylesMapStyles, 0, savedBaseStyles, 0, level);
				}
			}
		}
		return savedBaseStyles;
	}

	public override void OnStyleChanged(StyleInfoBase style, StyleInfoProperty sip)
	{
		savedBaseStyles = null;
	}
}
