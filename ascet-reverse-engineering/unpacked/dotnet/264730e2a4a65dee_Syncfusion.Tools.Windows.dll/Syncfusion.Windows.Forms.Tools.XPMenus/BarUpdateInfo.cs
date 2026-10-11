using System;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Serializable]
[DocumentationExclude]
public struct BarUpdateInfo
{
	public BarItemID source;

	public BarItemID adjacentItem;

	public object destination;

	public UpdateType updateType;

	public object updateData;

	internal BarUpdateInfo(BarItemID source, BarItemID adjacentItem, object destination, UpdateType updateType, object updateData)
	{
		this.source = source;
		this.adjacentItem = adjacentItem;
		this.destination = destination;
		this.updateType = updateType;
		this.updateData = updateData;
	}
}
