using System;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Serializable]
[DocumentationExclude]
public enum UpdateType
{
	InsertBefore,
	InsertAfter,
	Remove,
	CustomParentItem,
	ModifiedPaintStyle,
	ModifiedGrouping,
	ModifiedText,
	RecentlyUsedItemClicked,
	CustomBarAdded,
	UsePartialMenus,
	LargeIcons,
	CustomBarInfoAdded,
	ChangedImage
}
