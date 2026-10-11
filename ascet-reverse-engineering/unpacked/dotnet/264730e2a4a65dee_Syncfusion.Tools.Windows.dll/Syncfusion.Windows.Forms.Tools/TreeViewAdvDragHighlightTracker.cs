using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class TreeViewAdvDragHighlightTracker : IDisposable, ITreeNodeAdvPaintFilter
{
	private TreeViewAdv tree;

	private TreeNodeAdv highlightNode;

	private TreeViewDropPositions dropPosition;

	private int waitIntervalBeforeExpand = 750;

	private Timer currentExpandTimer;

	private int edgeSensitivity;

	private int edgeSensitivityTop = -1;

	private int edgeSensitivityBottom = -1;

	private bool hotTrackDragOverNode = true;

	[DefaultValue(0)]
	[Obsolete("This property will soon be replaced by the EdgeSensitiviyOnTop and EdgeSensitiviyAtBottom properties, please use them instead.")]
	public int EdgeSensitivity
	{
		get
		{
			return edgeSensitivity;
		}
		set
		{
			EdgeSensitivityOnTop = value;
			EdgeSensitivityAtBottom = value;
		}
	}

	[DefaultValue(-1)]
	public int EdgeSensitivityOnTop
	{
		get
		{
			return edgeSensitivityTop;
		}
		set
		{
			edgeSensitivityTop = value;
		}
	}

	[DefaultValue(-1)]
	public int EdgeSensitivityAtBottom
	{
		get
		{
			return edgeSensitivityBottom;
		}
		set
		{
			edgeSensitivityBottom = value;
		}
	}

	private bool HotTrackDragOverNode
	{
		get
		{
			return hotTrackDragOverNode;
		}
		set
		{
			hotTrackDragOverNode = value;
		}
	}

	public TreeNodeAdv HighlightNode => highlightNode;

	public TreeViewDropPositions DropPosition => dropPosition;

	[Description("Specifies the time interval after which a node will be expanded on mouse hover during drag and drop.")]
	[DefaultValue(750)]
	public int WaitTimeBeforeExpand
	{
		get
		{
			return waitIntervalBeforeExpand;
		}
		set
		{
			waitIntervalBeforeExpand = value;
		}
	}

	internal Timer CurrentExpandTimer
	{
		get
		{
			return currentExpandTimer;
		}
		set
		{
			if (currentExpandTimer != value)
			{
				if (currentExpandTimer != null)
				{
					currentExpandTimer.Tick -= ExpandTimer_Tick;
					currentExpandTimer.Stop();
					currentExpandTimer.Dispose();
				}
				currentExpandTimer = value;
				if (currentExpandTimer != null)
				{
					currentExpandTimer.Interval = waitIntervalBeforeExpand;
					currentExpandTimer.Tick += ExpandTimer_Tick;
					currentExpandTimer.Start();
				}
			}
		}
	}

	public event QueryAllowedPositionsEventHandler QueryAllowedPositionsForNode;

	public event QueryDragInsertInfoEventHandler QueryDragInsertInfo;

	public TreeViewAdvDragHighlightTracker(TreeViewAdv tree)
	{
		this.tree = tree;
		this.tree.paintFilter = this;
	}

	void IDisposable.Dispose()
	{
		if (currentExpandTimer != null)
		{
			CurrentExpandTimer = null;
		}
	}

	public void ClearHighlightNode()
	{
		if (highlightNode != null)
		{
			tree.Invalidate(highlightNode.Bounds);
		}
		highlightNode = null;
		dropPosition = TreeViewDropPositions.None;
	}

	public void SetHighlightNode(TreeNodeAdv highlightNode, Point ptInTree)
	{
		if (highlightNode == null)
		{
			ClearHighlightNode();
			return;
		}
		TreeViewDropPositions treeViewDropPositions = TreeViewDropPositions.OnNode;
		Rectangle bounds = highlightNode.Bounds;
		int num = EdgeSensitivityOnTop;
		if (num == -1)
		{
			num = bounds.Height / 3;
		}
		if (ptInTree.Y >= bounds.Top && ptInTree.Y <= bounds.Top + num)
		{
			treeViewDropPositions = TreeViewDropPositions.AboveNode;
		}
		else
		{
			int num2 = EdgeSensitivityAtBottom;
			if (num2 == -1)
			{
				num2 = bounds.Height / 3;
			}
			if (ptInTree.Y >= bounds.Bottom - num2 && ptInTree.Y < bounds.Bottom)
			{
				treeViewDropPositions = TreeViewDropPositions.BelowNode;
			}
		}
		if (this.highlightNode == highlightNode && dropPosition == treeViewDropPositions)
		{
			return;
		}
		if (this.highlightNode != null)
		{
			Rectangle bounds2 = this.highlightNode.Bounds;
			bounds2.Inflate(0, 5);
			tree.Invalidate(bounds2);
		}
		this.highlightNode = highlightNode;
		dropPosition = treeViewDropPositions;
		hotTrackDragOverNode = true;
		if (this.highlightNode != null)
		{
			QueryAllowedPositionsEventArgs e = new QueryAllowedPositionsEventArgs(this.highlightNode, dropPosition, TreeViewDropPositions.All);
			if (this.QueryAllowedPositionsForNode != null)
			{
				this.QueryAllowedPositionsForNode(this, e);
			}
			dropPosition &= e.AllowedPositions;
			hotTrackDragOverNode = e.ShowSelectionHighlight;
		}
		if (WaitTimeBeforeExpand >= 0)
		{
			CurrentExpandTimer = new Timer();
		}
		if (this.highlightNode != null)
		{
			Rectangle bounds3 = this.highlightNode.Bounds;
			bounds3.Inflate(0, 5);
			tree.Invalidate(bounds3);
		}
		if (tree.SelectedNodes.Count > 0)
		{
			tree.Invalidate(tree.SelectedNodesBounds);
		}
	}

	private void ExpandTimer_Tick(object sender, EventArgs e)
	{
		if (highlightNode != null)
		{
			highlightNode.Expand();
		}
		CurrentExpandTimer = null;
	}

	bool ITreeNodeAdvPaintFilter.OnBeforeNodePaint(TreeNodeAdvPaintEventArgs e)
	{
		if (HighlightNode == null)
		{
			return false;
		}
		if (e.Node == HighlightNode && HotTrackDragOverNode)
		{
			e.ForeColor = tree.SelectedNodeForeColor;
		}
		else if (tree.SelectedNodes.Contains(e.Node))
		{
			e.Selected = false;
			e.HotTracked = false;
			e.ForeColor = e.Node.GetForeColor(selected: false, hotTracked: false);
		}
		return false;
	}

	bool ITreeNodeAdvPaintFilter.OnNodeBackgroundPaint(TreeNodeAdvPaintBackgroundEventArgs e)
	{
		if (HighlightNode == null)
		{
			return false;
		}
		if (e.Node == HighlightNode && HotTrackDragOverNode)
		{
			e.BrushInfo = tree.SelectedNodeBackground;
			return true;
		}
		if (tree.SelectedNodes.Contains(e.Node))
		{
			e.Selected = false;
			e.BrushInfo = BrushInfo.Empty;
		}
		return false;
	}

	void ITreeNodeAdvPaintFilter.OnAfterNodePaint(TreeNodeAdvPaintEventArgs e)
	{
		if (HighlightNode == null || e.Node != HighlightNode || (dropPosition != TreeViewDropPositions.AboveNode && dropPosition != TreeViewDropPositions.BelowNode))
		{
			return;
		}
		TreeNodeAdv node = e.Node;
		if (node != null)
		{
			int num = 2;
			int num3;
			int width;
			if (node.GetIsMirrored())
			{
				int num2 = ((node.TreeView.BorderStyle != BorderStyle.Fixed3D) ? 1 : 2);
				num3 = num + 2 * num2;
				int num4 = node.NodeX - num;
				width = num4 - num3;
			}
			else
			{
				num3 = node.NodeX + num;
				width = tree.Width - num3 - 10 - num - (tree.VScrollBar.Enabled ? SystemInformation.VerticalScrollBarWidth : 0);
			}
			int y = ((dropPosition == TreeViewDropPositions.AboveNode) ? node.Bounds.Top : node.Bounds.Bottom);
			Color drawInsertColor = GetDrawInsertColor(e.Node);
			DrawDragInsert(e.Graphics, num3, y, width, drawInsertColor);
		}
	}

	private void DrawDragInsert(Graphics g, int x, int y, int width, Color clrDragInsertPen)
	{
		Pen pen = new Pen(clrDragInsertPen, 2f);
		g.DrawLines(pen, new Point[9]
		{
			new Point(x, y),
			new Point(width + x, y),
			new Point(width + x + 2, y - 2),
			new Point(width + x + 2, y + 2),
			new Point(width + x, y),
			new Point(x, y),
			new Point(x - 1, y - 1),
			new Point(x - 1, y + 1),
			new Point(x, y)
		});
	}

	private Color GetDrawInsertColor(TreeNodeAdv node)
	{
		QueryDragInsertInfoEventArgs e = new QueryDragInsertInfoEventArgs(node);
		if (this.QueryDragInsertInfo != null)
		{
			this.QueryDragInsertInfo(this, e);
		}
		return e.DragInsertColor;
	}
}
