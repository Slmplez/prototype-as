using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class TreeViewAdvEditorForm : Form
{
	private Button addNode;

	private Button addChild;

	private TreeViewAdvEditorPropertyGrid propertyGrid1;

	private Button OK;

	private Button Cancel;

	private TreeViewAdvEditor tree;

	private TreeViewAdv originalTree;

	private Button Remove;

	private GradientPanel gradientPanel1;

	private CheckBox select;

	private Splitter splitter1;

	private Button button1;

	private PropertyGridContextMenu pgMenu;

	private Container components;

	private IServiceProvider m_provider;

	private TreeViewAdvDragHighlightTracker treeViewDragHighlightTracker;

	private TreeNodeAdv currentSourceNode;

	internal TreeViewAdv Tree => originalTree;

	public TreeViewAdvEditorForm(TreeViewAdv Tree, IServiceProvider provider)
	{
		m_provider = provider;
		InitializeComponent();
		pgMenu = new PropertyGridContextMenu(propertyGrid1);
		base.ShowIcon = false;
		base.AcceptButton = OK;
		base.CancelButton = Cancel;
		originalTree = Tree;
		tree.Root = Tree.Root.Clone();
		tree.InteractiveCheckBoxes = Tree.InteractiveCheckBoxes;
		tree.ItemHeight = Tree.ItemHeight;
		tree.ShowCheckBoxes = Tree.ShowCheckBoxes;
		tree.ShowOptionButtons = Tree.ShowOptionButtons;
		tree.ShowPlusMinus = Tree.ShowPlusMinus;
		tree.HideSelection = false;
		tree.ThemesEnabled = Tree.ThemesEnabled;
		tree.NodeCount = Tree.NodeCount;
		tree.AllowDrop = true;
		tree.Font = Tree.Font;
		tree.ForeColor = Tree.ForeColor;
		foreach (string key in Tree.BaseStyles.Keys)
		{
			tree.BaseStyles[key] = Tree.BaseStyles[key];
		}
		tree.NodeStateImageList = Tree.NodeStateImageList;
		tree.DefaultCollapseImageIndex = Tree.DefaultCollapseImageIndex;
		tree.DefaultExpandImageIndex = Tree.DefaultExpandImageIndex;
		treeViewDragHighlightTracker = new TreeViewAdvDragHighlightTracker(tree);
		treeViewDragHighlightTracker.EdgeSensitivityOnTop = tree.ItemHeight / 4;
		treeViewDragHighlightTracker.EdgeSensitivityAtBottom = tree.ItemHeight / 4;
		treeViewDragHighlightTracker.QueryAllowedPositionsForNode += TreeDragDrop_QueryAllowedPositionsForNode;
		tree.DragOver += treeViewAdv_DragOver;
		tree.QueryContinueDrag += treeViewAdv_QueryContinueDrag;
		tree.DragLeave += treeViewAdv_DragLeave;
		tree.DragDrop += treeViewAdv_DragDrop;
		tree.ItemDrag += treeViewAdv_ItemDrag;
		tree.SelectedNodes.CollectionChanged += SelectedNodes_CollectionChanged;
		if (tree.SelectedNodes.Count == 0)
		{
			addChild.Enabled = false;
		}
	}

	public TreeViewAdvEditorForm()
	{
		InitializeComponent();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			pgMenu.Dispose();
			if (components != null)
			{
				components.Dispose();
			}
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.addNode = new System.Windows.Forms.Button();
		this.addChild = new System.Windows.Forms.Button();
		this.propertyGrid1 = new Syncfusion.Windows.Forms.Tools.TreeViewAdvEditorPropertyGrid(this.m_provider);
		this.OK = new System.Windows.Forms.Button();
		this.Cancel = new System.Windows.Forms.Button();
		this.tree = new Syncfusion.Windows.Forms.Tools.TreeViewAdvEditor();
		this.Remove = new System.Windows.Forms.Button();
		this.gradientPanel1 = new Syncfusion.Windows.Forms.Tools.GradientPanel();
		this.button1 = new System.Windows.Forms.Button();
		this.select = new System.Windows.Forms.CheckBox();
		this.splitter1 = new System.Windows.Forms.Splitter();
		((System.ComponentModel.ISupportInitialize)this.tree).BeginInit();
		this.gradientPanel1.SuspendLayout();
		base.SuspendLayout();
		this.addNode.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.addNode.Location = new System.Drawing.Point(8, 12);
		this.addNode.Name = "addNode";
		this.addNode.Size = new System.Drawing.Size(96, 23);
		this.addNode.TabIndex = 1;
		this.addNode.Text = "Add Node";
		this.addNode.Click += new System.EventHandler(addNode_Click);
		this.addChild.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.addChild.Location = new System.Drawing.Point(112, 12);
		this.addChild.Name = "addChild";
		this.addChild.Size = new System.Drawing.Size(88, 23);
		this.addChild.TabIndex = 2;
		this.addChild.Text = "Add Child";
		this.addChild.Click += new System.EventHandler(addChild_Click);
		this.propertyGrid1.CommandsVisibleIfAvailable = true;
		this.propertyGrid1.Dock = System.Windows.Forms.DockStyle.Fill;
		this.propertyGrid1.LargeButtons = false;
		this.propertyGrid1.LineColor = System.Drawing.SystemColors.ScrollBar;
		this.propertyGrid1.Location = new System.Drawing.Point(208, 0);
		this.propertyGrid1.Name = "propertyGrid1";
		this.propertyGrid1.Size = new System.Drawing.Size(232, 422);
		this.propertyGrid1.TabIndex = 3;
		this.propertyGrid1.Text = "propertyGrid1";
		this.propertyGrid1.ViewBackColor = System.Drawing.SystemColors.Window;
		this.propertyGrid1.ViewForeColor = System.Drawing.SystemColors.WindowText;
		this.OK.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.OK.Location = new System.Drawing.Point(220, 52);
		this.OK.Name = "OK";
		this.OK.Size = new System.Drawing.Size(112, 23);
		this.OK.TabIndex = 4;
		this.OK.Text = "OK";
		this.OK.Click += new System.EventHandler(OK_Click);
		this.Cancel.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.Cancel.Location = new System.Drawing.Point(340, 52);
		this.Cancel.Name = "Cancel";
		this.Cancel.Size = new System.Drawing.Size(96, 23);
		this.Cancel.TabIndex = 5;
		this.Cancel.Text = "Cancel";
		this.Cancel.Click += new System.EventHandler(Cancel_Click);
		this.tree.AllowDrop = true;
		this.tree.BackColor = System.Drawing.SystemColors.Window;
		this.tree.BorderColor = System.Drawing.Color.Black;
		this.tree.Dock = System.Windows.Forms.DockStyle.Left;
		this.tree.Font = new System.Drawing.Font("Verdana", 8f);
		this.tree.HelpTextControl.Border3DStyle = System.Windows.Forms.Border3DStyle.Sunken;
		this.tree.HelpTextControl.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Solid;
		this.tree.HelpTextControl.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
		this.tree.HelpTextControl.Location = new System.Drawing.Point(732, 0);
		this.tree.HelpTextControl.Name = "helpText";
		this.tree.HelpTextControl.RestrictWidth = 0;
		this.tree.HelpTextControl.Size = new System.Drawing.Size(50, 17);
		this.tree.HelpTextControl.TabIndex = 0;
		this.tree.HelpTextControl.Text = "help text";
		this.tree.HorizontalThumbTrack = true;
		this.tree.HScrollPos = 0;
		this.tree.Indent = 20;
		this.tree.Name = "tree";
		this.tree.PathSeparator = "/";
		this.tree.Size = new System.Drawing.Size(200, 422);
		this.tree.TabIndex = 6;
		this.tree.ThemesEnabled = true;
		this.tree.ToolTipControl.BackColor = System.Drawing.SystemColors.Info;
		this.tree.ToolTipControl.Border3DStyle = System.Windows.Forms.Border3DStyle.Sunken;
		this.tree.ToolTipControl.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Solid;
		this.tree.ToolTipControl.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
		this.tree.ToolTipControl.Location = new System.Drawing.Point(642, 0);
		this.tree.ToolTipControl.Name = "toolTip";
		this.tree.ToolTipControl.RestrictWidth = 0;
		this.tree.ToolTipControl.Size = new System.Drawing.Size(41, 17);
		this.tree.ToolTipControl.TabIndex = 1;
		this.tree.ToolTipControl.Text = "toolTip";
		this.tree.ToolTipControl.Visible = false;
		this.tree.VerticalThumbTrack = true;
		this.tree.VScrollPos = 1;
		this.tree.AfterSelect += new System.EventHandler(tree_AfterSelect);
		this.Remove.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.Remove.Location = new System.Drawing.Point(8, 52);
		this.Remove.Name = "Remove";
		this.Remove.Size = new System.Drawing.Size(192, 23);
		this.Remove.TabIndex = 7;
		this.Remove.Text = "Remove";
		this.Remove.Click += new System.EventHandler(Remove_Click);
		this.gradientPanel1.BorderColor = System.Drawing.Color.Black;
		this.gradientPanel1.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.gradientPanel1.Controls.AddRange(new System.Windows.Forms.Control[7] { this.button1, this.addChild, this.OK, this.addNode, this.Cancel, this.Remove, this.select });
		this.gradientPanel1.Dock = System.Windows.Forms.DockStyle.Bottom;
		this.gradientPanel1.Location = new System.Drawing.Point(0, 422);
		this.gradientPanel1.Name = "gradientPanel1";
		this.gradientPanel1.Size = new System.Drawing.Size(440, 80);
		this.gradientPanel1.TabIndex = 8;
		this.button1.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.button1.Location = new System.Drawing.Point(356, 12);
		this.button1.Name = "button1";
		this.button1.TabIndex = 9;
		this.button1.Text = "Sort";
		this.button1.Click += new System.EventHandler(button1_Click);
		this.select.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right;
		this.select.BackColor = System.Drawing.Color.Transparent;
		this.select.Checked = true;
		this.select.CheckState = System.Windows.Forms.CheckState.Checked;
		this.select.Location = new System.Drawing.Point(220, 8);
		this.select.Name = "select";
		this.select.Size = new System.Drawing.Size(128, 24);
		this.select.TabIndex = 8;
		this.select.Text = "Select added node";
		this.select.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
		this.splitter1.Location = new System.Drawing.Point(200, 0);
		this.splitter1.Name = "splitter1";
		this.splitter1.Size = new System.Drawing.Size(8, 422);
		this.splitter1.TabIndex = 9;
		this.splitter1.TabStop = false;
		this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
		base.ClientSize = new System.Drawing.Size(440, 502);
		base.Controls.AddRange(new System.Windows.Forms.Control[4] { this.propertyGrid1, this.splitter1, this.tree, this.gradientPanel1 });
		this.MinimumSize = new System.Drawing.Size(448, 100);
		base.Name = "TreeViewAdvEditorForm";
		base.ShowInTaskbar = false;
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
		this.Text = "TreeViewAdv NodeCollection Editor";
		base.Load += new System.EventHandler(TreeViewAdvEditorForm_Load);
		((System.ComponentModel.ISupportInitialize)this.tree).EndInit();
		this.gradientPanel1.ResumeLayout(false);
		base.ResumeLayout(false);
	}

	private void addNode_Click(object sender, EventArgs e)
	{
		TreeNodeAdv treeNodeAdv = new TreeNodeAdv("Node" + tree.NodeCount);
		if (tree.SelectedNode != null && tree.SelectedNode.Parent != null)
		{
			tree.SelectedNode.Parent.Nodes.Add(treeNodeAdv);
		}
		else
		{
			tree.Nodes.Add(treeNodeAdv);
		}
		tree.NodeCount++;
		if (select.Checked)
		{
			tree.SelectedNode = treeNodeAdv;
		}
		tree.Invalidate();
	}

	private void addChild_Click(object sender, EventArgs e)
	{
		TreeNodeAdv treeNodeAdv = new TreeNodeAdv("Node" + tree.NodeCount);
		if (tree.SelectedNode != null)
		{
			tree.SelectedNode.Nodes.Add(treeNodeAdv);
			tree.NodeCount++;
			tree.SelectedNode.Expand();
		}
		if (select.Checked)
		{
			tree.SelectedNode = treeNodeAdv;
		}
		tree.Invalidate();
	}

	private void OK_Click(object sender, EventArgs e)
	{
		originalTree.Root = tree.Root.Clone();
		UpdateCustomControls();
		originalTree.MakeDirty();
		originalTree.Root.Visible = true;
		originalTree.NodeCount = tree.NodeCount;
		originalTree.Root.TreeView.NeedUpdateCustomControls = true;
		Close();
	}

	private void UpdateCustomControls()
	{
		if (originalTree.m_RemovedCustomControls.Count <= 0)
		{
			return;
		}
		ArrayList arrayList = new ArrayList();
		arrayList.AddRange(originalTree.m_RemovedCustomControls);
		foreach (Control item in arrayList)
		{
			Hashtable hashtable = new Hashtable();
			foreach (DictionaryEntry controlBound in originalTree.m_ControlBounds)
			{
				if (controlBound.Key == item)
				{
					Rectangle? rectangle = (controlBound.Value as Rectangle?) ?? item.Bounds;
					item.Bounds = rectangle.Value;
					hashtable.Add(controlBound.Key, controlBound.Value);
					break;
				}
			}
			if (hashtable.Count > 0)
			{
				foreach (DictionaryEntry item2 in hashtable)
				{
					if (originalTree.m_ControlBounds.ContainsKey(item2.Key))
					{
						originalTree.m_ControlBounds.Remove(item2.Key);
					}
				}
				hashtable.Clear();
			}
			foreach (DictionaryEntry item3 in originalTree.m_ControlParent)
			{
				if (item3.Key == item)
				{
					item.Parent = item3.Value as Control;
					originalTree.m_RemovedCustomControls.Remove(item);
					hashtable.Add(item3.Key, item3.Value);
					if (item.Parent != null)
					{
						item.Parent.Update();
					}
					else
					{
						item.Parent = originalTree.Parent;
					}
					break;
				}
			}
			if (hashtable.Count <= 0)
			{
				continue;
			}
			foreach (DictionaryEntry item4 in hashtable)
			{
				if (originalTree.m_ControlParent.ContainsKey(item4.Key))
				{
					originalTree.m_ControlParent.Remove(item4.Key);
				}
			}
			hashtable.Clear();
		}
		originalTree.m_RemovedCustomControls.Clear();
		arrayList.Clear();
		if (originalTree.Parent != null)
		{
			originalTree.Parent.Update();
		}
	}

	private void Cancel_Click(object sender, EventArgs e)
	{
		Close();
	}

	private void tree_AfterSelect(object sender, EventArgs e)
	{
		propertyGrid1.SelectedObject = tree.SelectedNode;
	}

	private void Remove_Click(object sender, EventArgs e)
	{
		if (tree.SelectedNode != null && tree.SelectedNode.Parent != null)
		{
			_ = tree.SelectedNode.Parent;
			tree.SelectedNode.Parent.Nodes.Remove(tree.SelectedNode);
		}
	}

	private void button1_Click(object sender, EventArgs e)
	{
		if (tree.SelectedNode != null)
		{
			tree.SelectedNode.Sort();
		}
	}

	private void TreeViewAdvEditorForm_Load(object sender, EventArgs e)
	{
	}

	private void SelectedNodes_CollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		if (tree.SelectedNodes.Count > 0)
		{
			addChild.Enabled = true;
		}
		else
		{
			addChild.Enabled = false;
		}
	}

	private void treeViewAdv_ItemDrag(object sender, ItemDragEventArgs e)
	{
		TreeViewAdv treeViewAdv = sender as TreeViewAdv;
		TreeNodeAdv[] array = e.Item as TreeNodeAdv[];
		TreeNodeAdv data = array[0];
		treeViewAdv.DoDragDrop(data, DragDropEffects.Move);
	}

	private void treeViewAdv_QueryContinueDrag(object sender, QueryContinueDragEventArgs e)
	{
		if (e.EscapePressed)
		{
			e.Action = DragAction.Cancel;
		}
	}

	private void treeViewAdv_DragOver(object sender, DragEventArgs e)
	{
		bool flag = true;
		TreeNodeAdv treeNodeAdv = null;
		TreeViewAdv treeViewAdv = sender as TreeViewAdv;
		Point point = treeViewAdv.PointToClient(new Point(e.X, e.Y));
		currentSourceNode = null;
		if (e.Data.GetDataPresent(typeof(TreeNodeAdv)))
		{
			treeNodeAdv = treeViewAdv.GetNodeAtPoint(point);
			if (treeNodeAdv == null)
			{
				treeNodeAdv = treeViewAdv.Root;
			}
			flag = CanDrop(currentSourceNode = (TreeNodeAdv)e.Data.GetData(typeof(TreeNodeAdv)), treeNodeAdv);
		}
		else
		{
			flag = false;
		}
		if (flag)
		{
			e.Effect = DragDropEffects.Move;
		}
		else
		{
			e.Effect = DragDropEffects.None;
		}
		treeViewDragHighlightTracker.SetHighlightNode(treeNodeAdv, point);
	}

	private bool CanDrop(TreeNodeAdv sourceNode, TreeNodeAdv destinationNode)
	{
		if (sourceNode.TreeView != tree || destinationNode == null || destinationNode == sourceNode.Parent || destinationNode == sourceNode)
		{
			return false;
		}
		return true;
	}

	private void treeViewAdv_DragLeave(object sender, EventArgs e)
	{
		treeViewDragHighlightTracker.ClearHighlightNode();
	}

	private void treeViewAdv_DragDrop(object sender, DragEventArgs e)
	{
		TreeViewAdv treeViewAdv = sender as TreeViewAdv;
		TreeNodeAdv treeNodeAdv = (TreeNodeAdv)e.Data.GetData(typeof(TreeNodeAdv));
		TreeNodeAdv highlightNode = treeViewDragHighlightTracker.HighlightNode;
		if (IsChildNode(treeNodeAdv, highlightNode))
		{
			treeViewDragHighlightTracker.ClearHighlightNode();
			return;
		}
		TreeViewDropPositions dropPosition = treeViewDragHighlightTracker.DropPosition;
		treeViewDragHighlightTracker.ClearHighlightNode();
		currentSourceNode = null;
		if (highlightNode != null)
		{
			switch (dropPosition)
			{
			case TreeViewDropPositions.AboveNode:
				treeNodeAdv.Move(highlightNode, NodePositions.Previous);
				break;
			case TreeViewDropPositions.BelowNode:
				treeNodeAdv.Move(highlightNode, NodePositions.Next);
				break;
			case TreeViewDropPositions.OnNode:
				treeNodeAdv.Move(highlightNode.Nodes);
				highlightNode.Expand();
				break;
			}
		}
		treeViewAdv.SelectedNode = treeNodeAdv;
	}

	private void TreeDragDrop_QueryAllowedPositionsForNode(object sender, QueryAllowedPositionsEventArgs e)
	{
		if (e.HighlightNode != currentSourceNode)
		{
			e.AllowedPositions = TreeViewDropPositions.All;
		}
		else
		{
			e.AllowedPositions = TreeViewDropPositions.None;
		}
		e.ShowSelectionHighlight = CanDrop(currentSourceNode, e.HighlightNode) && e.NewDropPosition == TreeViewDropPositions.OnNode;
	}

	private bool IsChildNode(TreeNodeAdv sourceNode, TreeNodeAdv destinatioNode)
	{
		bool flag = false;
		for (int i = 0; i < sourceNode.Nodes.Count; i++)
		{
			flag = sourceNode.Nodes[i] == destinatioNode || IsChildNode(sourceNode.Nodes[i], destinatioNode);
			if (flag)
			{
				break;
			}
		}
		return flag;
	}
}
