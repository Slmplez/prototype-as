using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Design;

public class BarCollectionEditorForm : Form
{
	private IServiceProvider _provider;

	private NavigationView _navigationView;

	private bool _isDirty;

	private IContainer components;

	private TreeView _tvBars;

	private Button _btnClose;

	private Label _lblTree;

	private Label _lblProperties;

	private PropertyGrid _propertyGrid;

	private Button _btnAddRoot;

	private Button _btnAddChild;

	private Button _btnUp;

	private Button _btnRemove;

	private Button _btnDown;

	private ImageList _imageList;

	private Button _btnSelect;

	public bool IsDirty => _isDirty;

	private BarCollection SelectedNodeParentBars
	{
		get
		{
			TreeNode selectedNode = _tvBars.SelectedNode;
			return GetNodeParentBars(selectedNode);
		}
	}

	private BarCollection SelectedNodeBars
	{
		get
		{
			TreeNode selectedNode = _tvBars.SelectedNode;
			Bar bar = (Bar)selectedNode.Tag;
			return bar.Bars;
		}
	}

	public BarCollectionEditorForm(IServiceProvider provider, NavigationView navigationView)
	{
		InitializeComponent();
		_provider = provider;
		_navigationView = navigationView;
		_isDirty = false;
	}

	protected override void OnLoad(EventArgs e)
	{
		base.OnLoad(e);
		_propertyGrid.Site = _navigationView.Site;
		if (_navigationView.ImageList != null)
		{
			ImageList.ImageCollection images = _imageList.Images;
			ImageList imageList = _navigationView.ImageList;
			ImageList.ImageCollection images2 = imageList.Images;
			Size imageSize = imageList.ImageSize;
			_imageList.ColorDepth = imageList.ColorDepth;
			_imageList.ImageSize = imageSize;
			foreach (Image item in images2)
			{
				images.Add(item);
			}
			Bitmap bitmap = new Bitmap(imageSize.Width, imageSize.Height);
			using (Graphics graphics = Graphics.FromImage(bitmap))
			{
				graphics.FillRectangle(Brushes.Transparent, 0, 0, imageSize.Width, imageSize.Height);
			}
			images.Add(bitmap);
			_tvBars.ImageList = _imageList;
			_tvBars.ImageIndex = images2.Count;
		}
		_navigationView.BarPropertyChanged += OnBarPropertyChanged;
		PopulateBarsTree();
	}

	private void PopulateBarsTree()
	{
		_tvBars.BeginUpdate();
		PopulateBarTreeNodes(_navigationView.Bars, _tvBars.Nodes);
		Bar selectedBar = _navigationView.SelectedBar;
		if (selectedBar != null)
		{
			TreeNode selectedNode = (TreeNode)selectedBar.Tag;
			_tvBars.SelectedNode = selectedNode;
		}
		_tvBars.EndUpdate();
	}

	private void PopulateBarTreeNodes(BarCollection bars, TreeNodeCollection nodes)
	{
		foreach (Bar bar in bars)
		{
			TreeNode treeNode = CreateNode(bar);
			PopulateBarTreeNodes(bar.Bars, treeNode.Nodes);
			nodes.Add(treeNode);
		}
	}

	private TreeNode CreateNode(Bar bar)
	{
		TreeNode treeNode = new TreeNode(bar.Text);
		treeNode.ImageIndex = bar.ImageIndex;
		treeNode.Tag = bar;
		bar.Tag = treeNode;
		return treeNode;
	}

	private Bar CreateBar()
	{
		return new Bar("bar");
	}

	private void OnAfterTreeNodeSelect(object sender, TreeViewEventArgs e)
	{
		Bar bar = null;
		if (e.Node != null)
		{
			bar = (Bar)e.Node.Tag;
		}
		_propertyGrid.SelectedObject = bar;
		_btnAddChild.Enabled = bar != null;
	}

	private void AddBarNode(BarCollection bars, TreeNodeCollection nodes, bool selectNode)
	{
		Bar bar = CreateBar();
		TreeNode treeNode = CreateNode(bar);
		bars.Add(bar);
		nodes.Add(treeNode);
		if (selectNode)
		{
			_tvBars.SelectedNode = treeNode;
		}
		_isDirty = true;
	}

	private void OnAddChildClick(object sender, EventArgs e)
	{
		TreeNode selectedNode = _tvBars.SelectedNode;
		if (selectedNode != null)
		{
			BarCollection selectedNodeBars = SelectedNodeBars;
			AddBarNode(selectedNodeBars, selectedNode.Nodes, selectNode: false);
			selectedNode.Expand();
		}
		else
		{
			OnAddRootClick(sender, e);
		}
	}

	private void OnAddRootClick(object sender, EventArgs e)
	{
		AddBarNode(_navigationView.Bars, _tvBars.Nodes, selectNode: true);
	}

	private void OnUpClick(object sender, EventArgs e)
	{
		TreeNode selectedNode = _tvBars.SelectedNode;
		if (selectedNode == null)
		{
			return;
		}
		TreeNode prevNode = selectedNode.PrevNode;
		TreeNode treeNode = selectedNode.Parent;
		Bar item = (Bar)selectedNode.Tag;
		BarCollection nodeParentBars = GetNodeParentBars(selectedNode);
		nodeParentBars.Remove(item);
		selectedNode.Remove();
		if (prevNode != null)
		{
			Bar bar = (Bar)prevNode.Tag;
			bar.Bars.Add(item);
			prevNode.Nodes.Add(selectedNode);
			prevNode.Expand();
		}
		else if (treeNode != null)
		{
			BarCollection nodeParentBars2 = GetNodeParentBars(treeNode);
			TreeNodeCollection nodeParentNodes = GetNodeParentNodes(treeNode);
			int num = treeNode.Index - 1;
			if (num < 0)
			{
				num = 0;
			}
			nodeParentBars2.Insert(num, item);
			nodeParentNodes.Insert(num, selectedNode);
		}
		else
		{
			_navigationView.Bars.Insert(0, item);
			_tvBars.Nodes.Insert(0, selectedNode);
		}
		_tvBars.SelectedNode = selectedNode;
		_isDirty = true;
	}

	private void OnDownClick(object sender, EventArgs e)
	{
		TreeNode selectedNode = _tvBars.SelectedNode;
		if (selectedNode == null)
		{
			return;
		}
		TreeNode nextNode = selectedNode.NextNode;
		TreeNode treeNode = selectedNode.Parent;
		Bar item = (Bar)selectedNode.Tag;
		BarCollection nodeParentBars = GetNodeParentBars(selectedNode);
		nodeParentBars.Remove(item);
		selectedNode.Remove();
		if (nextNode != null)
		{
			Bar bar = (Bar)nextNode.Tag;
			bar.Bars.Insert(0, item);
			nextNode.Nodes.Insert(0, selectedNode);
			nextNode.Expand();
		}
		else if (treeNode != null)
		{
			BarCollection nodeParentBars2 = GetNodeParentBars(treeNode);
			TreeNodeCollection nodeParentNodes = GetNodeParentNodes(treeNode);
			int num = treeNode.Index + 1;
			if (num < nodeParentNodes.Count)
			{
				nodeParentBars2.Insert(num, item);
				nodeParentNodes.Insert(num, selectedNode);
			}
			else
			{
				nodeParentBars2.Add(item);
				nodeParentNodes.Add(selectedNode);
			}
		}
		else
		{
			_navigationView.Bars.Add(item);
			_tvBars.Nodes.Add(selectedNode);
		}
		_tvBars.SelectedNode = selectedNode;
		_isDirty = true;
	}

	private void OnRemoveClick(object sender, EventArgs e)
	{
		TreeNode selectedNode = _tvBars.SelectedNode;
		if (selectedNode == null)
		{
			return;
		}
		TreeNode treeNode = selectedNode.Parent;
		TreeNodeCollection treeNodeCollection = ((treeNode != null) ? treeNode.Nodes : _tvBars.Nodes);
		TreeNode treeNode2 = selectedNode.NextVisibleNode;
		if (treeNode2 == null)
		{
			treeNode2 = selectedNode.PrevVisibleNode;
			if (treeNode2 == null)
			{
				treeNode2 = treeNode;
			}
		}
		BarCollection selectedNodeParentBars = SelectedNodeParentBars;
		Bar bar = (Bar)selectedNode.Tag;
		selectedNode.Tag = null;
		Bar selectedBar = null;
		if (treeNode2 != null)
		{
			_tvBars.SelectedNode = treeNode2;
			selectedBar = (Bar)treeNode2.Tag;
		}
		if (bar.IsSelected(_navigationView))
		{
			_navigationView.SelectedBar = selectedBar;
		}
		treeNodeCollection.Remove(selectedNode);
		selectedNodeParentBars.Remove(bar);
		_isDirty = true;
	}

	private BarCollection GetNodeParentBars(TreeNode node)
	{
		BarCollection bars = _navigationView.Bars;
		TreeNode treeNode = node.Parent;
		if (treeNode != null)
		{
			Bar bar = (Bar)treeNode.Tag;
			bars = bar.Bars;
		}
		return bars;
	}

	private TreeNodeCollection GetNodeParentNodes(TreeNode node)
	{
		TreeNodeCollection nodes = _tvBars.Nodes;
		TreeNode treeNode = node.Parent;
		if (treeNode != null)
		{
			nodes = treeNode.Nodes;
		}
		return nodes;
	}

	private void OnBarPropertyChanged(object sender, PropertyChangedEventArgs e)
	{
		Bar.Properties properties = Bar.Helper.ParsePropertyEnumString(e.PropertyName);
		Bar bar = (Bar)sender;
		TreeNode treeNode = (TreeNode)bar.Tag;
		switch (properties)
		{
		case Bar.Properties.Text:
			treeNode.Text = bar.Text;
			break;
		case Bar.Properties.ImageIndex:
		{
			int imageIndex = bar.ImageIndex;
			SetNodeImageIndex(imageIndex, treeNode);
			break;
		}
		case Bar.Properties.Image:
		case Bar.Properties.DisabledImage:
			SetNodeImageIndex(-1, treeNode);
			break;
		}
		_tvBars.Invalidate(treeNode.Bounds);
		_isDirty = true;
	}

	private void SetNodeImageIndex(int idx, TreeNode node)
	{
		if (idx < 0)
		{
			ImageList imageList = _navigationView.ImageList;
			if (imageList != null)
			{
				idx = imageList.Images.Count;
			}
		}
		node.ImageIndex = idx;
		node.SelectedImageIndex = idx;
	}

	private void OnBeforeTreeNodeSelect(object sender, TreeViewCancelEventArgs e)
	{
		TreeNode node = e.Node;
		if (node != null)
		{
			Bar bar = (Bar)node.Tag;
			int num = bar.ImageIndex;
			if (num < 0)
			{
				num = _imageList.Images.Count - 1;
			}
			node.SelectedImageIndex = num;
		}
	}

	private void OnSelectClick(object sender, EventArgs e)
	{
		TreeNode selectedNode = _tvBars.SelectedNode;
		if (selectedNode != null)
		{
			Bar selectedBar = (Bar)selectedNode.Tag;
			_navigationView.SelectedBar = selectedBar;
			_isDirty = true;
		}
	}

	private void OnNodeMouseDoubleClick(object sender, TreeNodeMouseClickEventArgs e)
	{
		OnSelectClick(sender, e);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
			_provider = null;
			_navigationView = null;
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
		System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Syncfusion.Windows.Forms.Tools.Navigation.Design.BarCollectionEditorForm));
		this._tvBars = new System.Windows.Forms.TreeView();
		this._btnClose = new System.Windows.Forms.Button();
		this._lblTree = new System.Windows.Forms.Label();
		this._lblProperties = new System.Windows.Forms.Label();
		this._propertyGrid = new System.Windows.Forms.PropertyGrid();
		this._btnAddRoot = new System.Windows.Forms.Button();
		this._btnAddChild = new System.Windows.Forms.Button();
		this._btnUp = new System.Windows.Forms.Button();
		this._btnRemove = new System.Windows.Forms.Button();
		this._btnDown = new System.Windows.Forms.Button();
		this._imageList = new System.Windows.Forms.ImageList(this.components);
		this._btnSelect = new System.Windows.Forms.Button();
		base.SuspendLayout();
		resources.ApplyResources(this._tvBars, "_tvBars");
		this._tvBars.HideSelection = false;
		this._tvBars.Name = "_tvBars";
		this._tvBars.NodeMouseDoubleClick += new System.Windows.Forms.TreeNodeMouseClickEventHandler(OnNodeMouseDoubleClick);
		this._tvBars.AfterSelect += new System.Windows.Forms.TreeViewEventHandler(OnAfterTreeNodeSelect);
		this._tvBars.BeforeSelect += new System.Windows.Forms.TreeViewCancelEventHandler(OnBeforeTreeNodeSelect);
		resources.ApplyResources(this._btnClose, "_btnClose");
		this._btnClose.DialogResult = System.Windows.Forms.DialogResult.OK;
		this._btnClose.Name = "_btnClose";
		this._btnClose.UseVisualStyleBackColor = true;
		resources.ApplyResources(this._lblTree, "_lblTree");
		this._lblTree.Name = "_lblTree";
		resources.ApplyResources(this._lblProperties, "_lblProperties");
		this._lblProperties.Name = "_lblProperties";
		resources.ApplyResources(this._propertyGrid, "_propertyGrid");
		this._propertyGrid.Name = "_propertyGrid";
		resources.ApplyResources(this._btnAddRoot, "_btnAddRoot");
		this._btnAddRoot.Name = "_btnAddRoot";
		this._btnAddRoot.UseVisualStyleBackColor = true;
		this._btnAddRoot.Click += new System.EventHandler(OnAddRootClick);
		resources.ApplyResources(this._btnAddChild, "_btnAddChild");
		this._btnAddChild.Name = "_btnAddChild";
		this._btnAddChild.UseVisualStyleBackColor = true;
		this._btnAddChild.Click += new System.EventHandler(OnAddChildClick);
		resources.ApplyResources(this._btnUp, "_btnUp");
		this._btnUp.Name = "_btnUp";
		this._btnUp.UseVisualStyleBackColor = true;
		this._btnUp.Click += new System.EventHandler(OnUpClick);
		resources.ApplyResources(this._btnRemove, "_btnRemove");
		this._btnRemove.Name = "_btnRemove";
		this._btnRemove.UseVisualStyleBackColor = true;
		this._btnRemove.Click += new System.EventHandler(OnRemoveClick);
		resources.ApplyResources(this._btnDown, "_btnDown");
		this._btnDown.Name = "_btnDown";
		this._btnDown.UseVisualStyleBackColor = true;
		this._btnDown.Click += new System.EventHandler(OnDownClick);
		this._imageList.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit;
		resources.ApplyResources(this._imageList, "_imageList");
		this._imageList.TransparentColor = System.Drawing.Color.Transparent;
		resources.ApplyResources(this._btnSelect, "_btnSelect");
		this._btnSelect.Name = "_btnSelect";
		this._btnSelect.UseVisualStyleBackColor = true;
		this._btnSelect.Click += new System.EventHandler(OnSelectClick);
		base.AcceptButton = this._btnClose;
		resources.ApplyResources(this, "$this");
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
		base.Controls.Add(this._btnSelect);
		base.Controls.Add(this._btnRemove);
		base.Controls.Add(this._btnDown);
		base.Controls.Add(this._btnUp);
		base.Controls.Add(this._btnAddChild);
		base.Controls.Add(this._btnAddRoot);
		base.Controls.Add(this._propertyGrid);
		base.Controls.Add(this._lblProperties);
		base.Controls.Add(this._lblTree);
		base.Controls.Add(this._btnClose);
		base.Controls.Add(this._tvBars);
		this.DoubleBuffered = true;
		base.MinimizeBox = false;
		base.Name = "BarCollectionEditorForm";
		base.ShowIcon = false;
		base.ShowInTaskbar = false;
		base.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Show;
		base.ResumeLayout(false);
		base.PerformLayout();
	}
}
