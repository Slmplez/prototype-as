using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class QueryAllowedPositionsEventArgs : EventArgs
{
	private TreeNodeAdv highLightNode;

	private TreeViewDropPositions highlightPosition;

	private TreeViewDropPositions allowedPositions;

	private bool showSelectionHighlight = true;

	[DefaultValue(true)]
	public bool ShowSelectionHighlight
	{
		get
		{
			return showSelectionHighlight;
		}
		set
		{
			showSelectionHighlight = value;
		}
	}

	public TreeNodeAdv HighlightNode => highLightNode;

	public TreeViewDropPositions NewDropPosition => highlightPosition;

	public TreeViewDropPositions AllowedPositions
	{
		get
		{
			return allowedPositions;
		}
		set
		{
			allowedPositions = value;
		}
	}

	public QueryAllowedPositionsEventArgs(TreeNodeAdv highLightNode, TreeViewDropPositions highlightPosition, TreeViewDropPositions allowedPositions)
	{
		this.highLightNode = highLightNode;
		this.highlightPosition = highlightPosition;
		this.allowedPositions = allowedPositions;
		showSelectionHighlight = true;
	}
}
