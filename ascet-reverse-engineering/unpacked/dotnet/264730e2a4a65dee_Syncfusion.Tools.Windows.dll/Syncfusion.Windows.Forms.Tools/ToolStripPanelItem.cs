using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using System.Windows.Forms.Layout;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(ToolStripPanelItem), "ToolboxIcons.ToolStripPanelItem.bmp")]
[Designer(typeof(ToolStripPanelItemDesigner))]
[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.ToolStrip | ToolStripItemDesignerAvailability.StatusStrip)]
public class ToolStripPanelItem : ToolStripControlHost
{
	private class ToolStripInternal : ToolStripEx, INativeMessageFilter
	{
		private class LayoutData
		{
			private int m_nRows;

			private int m_nCols;

			private int[] m_aRows;

			private int[] m_aCols;

			private int m_Width = -1;

			private int m_Height = -1;

			public Size Size => new Size(Width, Height);

			public int Width
			{
				get
				{
					if (m_Width < 0)
					{
						m_Width = 0;
						for (int i = 0; i < m_nCols; i++)
						{
							m_Width += m_aCols[i];
						}
					}
					return m_Width;
				}
			}

			public int Height
			{
				get
				{
					if (m_Height < 0)
					{
						m_Height = 0;
						for (int i = 0; i < m_nRows; i++)
						{
							m_Height += m_aRows[i];
						}
					}
					return m_Height;
				}
			}

			public int Rows => m_nRows;

			public int Columns => m_nCols;

			public int[] RowsData => m_aRows;

			public int[] ColumnsData => m_aCols;

			public LayoutData(ToolStripInternal ts)
			{
				ToolStripItemCollection items = ts.Items;
				int count = items.Count;
				if (count <= 0)
				{
					return;
				}
				int rowCount = ts.RowCount;
				int num = Math.Min(rowCount, count);
				int num2 = (count + rowCount - 1) / rowCount;
				m_aRows = new int[num];
				m_aCols = new int[num2];
				m_nRows = 0;
				m_nCols = 0;
				int num3 = 0;
				int num4 = 0;
				int num5 = 0;
				while (num5 < count)
				{
					ToolStripItem toolStripItem = items[num5++];
					if (toolStripItem != null && toolStripItem.Available)
					{
						if (m_nRows < num4 + 1)
						{
							m_nRows = num4 + 1;
						}
						if (m_nCols < num3 + 1)
						{
							m_nCols = num3 + 1;
						}
						Size size = (toolStripItem.AutoSize ? toolStripItem.GetPreferredSize(Size.Empty) : toolStripItem.Size);
						int num6 = size.Height + toolStripItem.Margin.Vertical;
						int num7 = size.Width + toolStripItem.Margin.Horizontal;
						if (m_aRows[num4] < num6)
						{
							m_aRows[num4] = num6;
						}
						if (m_aCols[num3] < num7)
						{
							m_aCols[num3] = num7;
						}
						if (++num4 >= num)
						{
							num3++;
							num4 = 0;
						}
					}
				}
			}
		}

		private class PanelItemLayout : LayoutEngine
		{
			public static PanelItemLayout Instance = new PanelItemLayout();

			public override void InitLayout(object child, BoundsSpecified specified)
			{
			}

			public override bool Layout(object container, LayoutEventArgs layoutEventArgs)
			{
				bool result = false;
				ToolStripInternal toolStripInternal = container as ToolStripInternal;
				RightToLeft rightToLeft = toolStripInternal.RightToLeft;
				if (toolStripInternal != null)
				{
					LayoutData layoutData = new LayoutData(toolStripInternal);
					ToolStripItemCollection items = toolStripInternal.Items;
					int count = items.Count;
					if (count > 0)
					{
						int rows = layoutData.Rows;
						_ = layoutData.Columns;
						int[] rowsData = layoutData.RowsData;
						int[] columnsData = layoutData.ColumnsData;
						Point location = new Point(0, toolStripInternal.Padding.Top);
						int i = 0;
						int num = 0;
						int num2 = 0;
						for (; i < count; i++)
						{
							ToolStripItem toolStripItem = items[i];
							if (toolStripItem != null && toolStripItem.Available)
							{
								if (toolStripItem.AutoSize)
								{
									toolStripItem.Size = toolStripItem.GetPreferredSize(Size.Empty);
								}
								SetItemLocationRTL(toolStripInternal, toolStripItem, rightToLeft, location);
								if (num < rows - 1)
								{
									location.Y += rowsData[num++];
									continue;
								}
								location.X += columnsData[num2++];
								location.Y = toolStripInternal.Padding.Top;
								num = 0;
							}
						}
					}
					toolStripInternal.m_layoutData = layoutData;
					result = toolStripInternal.AutoSize;
				}
				return result;
			}

			private void SetItemLocationRTL(ToolStripInternal ts, ToolStripItem item, RightToLeft rtl, Point location)
			{
				if (rtl == RightToLeft.Yes)
				{
					location.X = ts.DisplayRectangle.Right - location.X - item.Width - item.Margin.Right;
				}
				else
				{
					location.X = ts.DisplayRectangle.X + location.X + item.Margin.Left;
				}
				location.Y += item.Margin.Top;
				ts.SetItemLocation(item, location);
			}

			public Size GetPrefferedSize(ToolStripInternal ts)
			{
				if (ts.m_layoutData == null)
				{
					ts.m_layoutData = new LayoutData(ts);
				}
				return ts.m_layoutData.Size + ts.Padding.Size;
			}
		}

		private const SetWindowPosFlags SWP_MOVEFLAGS = SetWindowPosFlags.SWP_NOSIZE | SetWindowPosFlags.SWP_NOZORDER;

		private NativeMessageHandler m_dropDown;

		private LayoutData m_layoutData;

		private int m_rowCount = 3;

		private bool m_bTransparent = true;

		private bool m_bUseStandardLayout;

		public override LayoutEngine LayoutEngine
		{
			get
			{
				if (m_bUseStandardLayout)
				{
					return base.LayoutEngine;
				}
				return PanelItemLayout.Instance;
			}
		}

		protected override CreateParams CreateParams
		{
			[SecurityPermission(SecurityAction.LinkDemand, Flags = SecurityPermissionFlag.UnmanagedCode)]
			get
			{
				return base.CreateParams;
			}
		}

		private NativeMessageHandler DropDownWindow
		{
			get
			{
				if (m_dropDown == null)
				{
					m_dropDown = new NativeMessageHandler();
				}
				return m_dropDown;
			}
		}

		public bool Transparent
		{
			get
			{
				return m_bTransparent;
			}
			set
			{
				m_bTransparent = value;
			}
		}

		public bool UseStandardLayout
		{
			get
			{
				return m_bUseStandardLayout;
			}
			set
			{
				if (m_bUseStandardLayout != value)
				{
					m_bUseStandardLayout = value;
					PerformLayout();
				}
			}
		}

		public int RowCount
		{
			get
			{
				return m_rowCount;
			}
			set
			{
				if (m_rowCount != value)
				{
					m_rowCount = value;
					PerformLayout(this, "RowCount");
				}
			}
		}

		public ToolStripInternal(bool bUseStandardLayout)
		{
			m_bUseStandardLayout = bUseStandardLayout;
			ShowCaption = false;
			base.Padding = new Padding(2);
			base.GripStyle = ToolStripGripStyle.Hidden;
			base.LayoutStyle = ToolStripLayoutStyle.HorizontalStackWithOverflow;
		}

		public override Size GetPreferredSize(Size szProposed)
		{
			if (LayoutEngine is PanelItemLayout panelItemLayout)
			{
				Size prefferedSize = panelItemLayout.GetPrefferedSize(this);
				int num = 2 * base.BorderWidth;
				prefferedSize.Width += num;
				prefferedSize.Height += num + CaptionHeight;
				return prefferedSize;
			}
			return base.GetPreferredSize(szProposed);
		}

		protected override void OnHandleCreated(EventArgs e)
		{
			base.OnHandleCreated(e);
			PerformLayout();
		}

		protected override void OnVisibleChanged(EventArgs e)
		{
			SuspendLayout();
			base.OnVisibleChanged(e);
			ResumeLayout(m_bUseStandardLayout);
		}

		protected override void OnItemClicked(ToolStripItemClickedEventArgs e)
		{
			base.OnItemClicked(e);
			if (GetParent() is ToolStripDropDown { AutoClose: not false } toolStripDropDown && (!(e.ClickedItem is ToolStripDropDownItem { HasDropDownItems: not false } toolStripDropDownItem) || (toolStripDropDownItem is ToolStripSplitButton && !toolStripDropDownItem.DropDown.Visible)))
			{
				toolStripDropDown.Close(ToolStripDropDownCloseReason.ItemClicked);
			}
		}

		protected override void OnItemAdded(ToolStripItemEventArgs e)
		{
			base.OnItemAdded(e);
			if (e.Item is ToolStripDropDownItem { Site: null } toolStripDropDownItem)
			{
				toolStripDropDownItem.DropDownOpening += OnItemDropDownOpening;
				toolStripDropDownItem.DropDownClosed += OnItemDropDownClosed;
			}
			if (e.Item is ToolStripGallery toolStripGallery)
			{
				toolStripGallery.DropDownOpening += OnGalleryDropDownOpening;
				toolStripGallery.DropDownClosed += OnGalleryDropDownClosed;
			}
		}

		protected override void OnItemRemoved(ToolStripItemEventArgs e)
		{
			if (e.Item is ToolStripDropDownItem { Site: null } toolStripDropDownItem)
			{
				toolStripDropDownItem.DropDownOpening -= OnItemDropDownOpening;
				toolStripDropDownItem.DropDownClosed -= OnItemDropDownClosed;
			}
			if (e.Item is ToolStripGallery toolStripGallery)
			{
				toolStripGallery.DropDownOpening -= OnGalleryDropDownOpening;
				toolStripGallery.DropDownClosed -= OnGalleryDropDownClosed;
			}
			base.OnItemRemoved(e);
		}

		protected override void OnPaintBackground(PaintEventArgs e)
		{
			ToolStrip backgroundParent = GetBackgroundParent();
			if (backgroundParent != null)
			{
				backgroundParent.Renderer.DrawToolStripBackground(new PanelItemRenderEventArgs(e.Graphics, backgroundParent, this));
			}
			else
			{
				base.OnPaintBackground(e);
			}
		}

		protected override void WndProc(ref Message m)
		{
			switch ((Msg)m.Msg)
			{
			case Msg.WM_MOUSEACTIVATE:
				m.Result = new IntPtr(3);
				return;
			case Msg.WM_MOUSEMOVE:
				if (base.Parent != null)
				{
					WindowsAPI.PostMessage(base.Parent.Handle, 5120, 0, 0);
				}
				break;
			case Msg.WM_MOUSELEAVE:
				if (base.Parent != null)
				{
					WindowsAPI.PostMessage(base.Parent.Handle, 5121, 0, 0);
				}
				break;
			}
			base.WndProc(ref m);
		}

		public bool ProcessMessage(ref Message m)
		{
			bool result = false;
			Msg msg = (Msg)m.Msg;
			if (msg == Msg.WM_WINDOWPOSCHANGING)
			{
				WINDOWPOS wINDOWPOS = (WINDOWPOS)Marshal.PtrToStructure(m.LParam, typeof(WINDOWPOS));
				wINDOWPOS.flags |= SetWindowPosFlags.SWP_NOMOVE;
				Marshal.StructureToPtr((object)wINDOWPOS, m.LParam, fDeleteOld: false);
				m.Result = IntPtr.Zero;
				result = true;
			}
			return result;
		}

		private ToolStrip GetParent()
		{
			ToolStrip toolStrip = base.Parent as ToolStrip;
			while (toolStrip is ToolStripInternal)
			{
				toolStrip = toolStrip.Parent as ToolStrip;
			}
			return toolStrip;
		}

		private ToolStrip GetBackgroundParent()
		{
			ToolStrip toolStrip = this;
			while (toolStrip is ToolStripInternal && ((ToolStripInternal)toolStrip).Transparent)
			{
				toolStrip = toolStrip.Parent as ToolStrip;
			}
			return toolStrip;
		}

		private void OnItemDropDownOpening(object sender, EventArgs e)
		{
			if (sender is ToolStripDropDownItem toolStripDropDownItem)
			{
				toolStripDropDownItem.DropDown.Opening += OnDropDownOpening;
			}
		}

		private void OnDropDownOpening(object sender, CancelEventArgs e)
		{
			ToolStrip toolStrip = GetParent();
			if (toolStrip is ToolStripDropDown && sender is ToolStripDropDown { OwnerItem: not null } toolStripDropDown)
			{
				System.Windows.Forms.ToolStrip.SetItemParent(toolStripDropDown.OwnerItem, toolStrip);
				Invalidate(toolStripDropDown.OwnerItem.Bounds);
				DropDownWindow.MessageFilter = this;
				if (!DropDownWindow.IsAssigned)
				{
					DropDownWindow.Assign(toolStripDropDown.Handle);
				}
				toolStripDropDown.Opening -= OnDropDownOpening;
			}
		}

		private void OnItemDropDownClosed(object sender, EventArgs e)
		{
			if (DropDownWindow.MessageFilter != null)
			{
				if (sender is ToolStripDropDownItem { DropDown: { OwnerItem: { } ownerItem } })
				{
					System.Windows.Forms.ToolStrip.SetItemParent(ownerItem, this);
					ownerItem.Invalidate();
				}
				DropDownWindow.MessageFilter = null;
			}
		}

		private void OnGalleryDropDownOpening(object sender, CancelEventArgs e)
		{
			ToolStrip toolStrip = GetParent();
			if (toolStrip is ToolStripDropDown && sender is ToolStripDropDown { OwnerItem: not null } toolStripDropDown)
			{
				System.Windows.Forms.ToolStrip.SetItemParent(toolStripDropDown.OwnerItem, toolStrip);
				Invalidate(toolStripDropDown.OwnerItem.Bounds);
			}
		}

		private void OnGalleryDropDownClosed(object sender, ToolStripDropDownClosedEventArgs e)
		{
			if (sender is ToolStripDropDown { OwnerItem: { } ownerItem })
			{
				System.Windows.Forms.ToolStrip.SetItemParent(ownerItem, this);
				ownerItem.Invalidate();
			}
		}
	}

	private const int DEF_ROWCOUNT = 3;

	private const int DEF_PADDING = 2;

	private ToolStrip m_tsOwner;

	[MergableProperty(false)]
	[Category("Data")]
	[Description("Collection of items to display on the ToolStripPanelItem")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Editor(typeof(ToolStripItemsEditor), typeof(UITypeEditor))]
	public ToolStripItemCollection Items => (base.Control as ToolStrip).Items;

	[Category("Layout")]
	[DefaultValue(3)]
	[Description("Specifies the maximum number of rows")]
	public int RowCount
	{
		get
		{
			return InternalToolStrip.RowCount;
		}
		set
		{
			InternalToolStrip.RowCount = value;
		}
	}

	[Description("Gets/sets whether the buttons should be grouped.")]
	[Category("Layout")]
	[DefaultValue(false)]
	public bool GroupedButtons
	{
		get
		{
			return ToolStrip.GroupedButtons;
		}
		set
		{
			ToolStrip.GroupedButtons = value;
		}
	}

	[Description("Gets or sets whether to use Standard Layout.")]
	[DefaultValue(false)]
	[Category("Layout")]
	public bool UseStandardLayout
	{
		get
		{
			return InternalToolStrip.UseStandardLayout;
		}
		set
		{
			InternalToolStrip.UseStandardLayout = value;
		}
	}

	[Category("Layout")]
	[DefaultValue(typeof(ToolStripLayoutStyle), "HorizontalStackWithOverflow")]
	public ToolStripLayoutStyle LayoutStyle
	{
		get
		{
			return ToolStrip.LayoutStyle;
		}
		set
		{
			ToolStrip.LayoutStyle = value;
		}
	}

	[Description("Specifies whether to display ToolTips on items.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public bool ShowItemToolTips
	{
		get
		{
			return ToolStrip.ShowItemToolTips;
		}
		set
		{
			ToolStrip.ShowItemToolTips = value;
		}
	}

	[DefaultValue(typeof(ToolStripBorderStyle), "None")]
	[Category("Office mode")]
	public ToolStripBorderStyle BorderStyle
	{
		get
		{
			return ToolStrip.BorderStyle;
		}
		set
		{
			ToolStrip.BorderStyle = value;
		}
	}

	public override Padding Padding
	{
		get
		{
			return ToolStrip.Padding;
		}
		set
		{
			ToolStrip.Padding = value;
		}
	}

	protected override Padding DefaultMargin => new Padding(1, 0, 1, 0);

	[Browsable(false)]
	public ToolStripEx ToolStrip => base.Control as ToolStripEx;

	private ToolStripInternal InternalToolStrip => base.Control as ToolStripInternal;

	public bool Transparent
	{
		get
		{
			return InternalToolStrip.Transparent;
		}
		set
		{
			InternalToolStrip.Transparent = value;
		}
	}

	public ToolStripPanelItem()
		: this(bUseStandardLayout: false)
	{
	}

	public ToolStripPanelItem(bool bUseStandardLayout)
		: base(new ToolStripInternal(bUseStandardLayout))
	{
	}

	public override Size GetPreferredSize(Size proposedSize)
	{
		if (Items.Count > 0)
		{
			return ToolStrip.GetPreferredSize(proposedSize);
		}
		return new Size(23, 23);
	}

	protected override void OnBoundsChanged()
	{
		ToolStrip.SetBounds(Bounds.X, Bounds.Y, base.Width, base.Height);
	}

	protected override void OnOwnerChanged(EventArgs e)
	{
		base.OnOwnerChanged(e);
		SetOwner(base.Owner);
	}

	private void OnOwnerRendererChanged(object sender, EventArgs e)
	{
		if (!base.IsDisposed && sender is ToolStrip toolStrip)
		{
			if (toolStrip.RenderMode == ToolStripRenderMode.ManagerRenderMode)
			{
				ToolStrip.Renderer = null;
			}
			else
			{
				ToolStrip.Renderer = toolStrip.Renderer;
			}
		}
	}

	private void SetOwner(ToolStrip newOwner)
	{
		if (m_tsOwner != null)
		{
			m_tsOwner.RendererChanged -= OnOwnerRendererChanged;
		}
		if (newOwner != null)
		{
			newOwner.RendererChanged += OnOwnerRendererChanged;
			OnOwnerRendererChanged(newOwner, EventArgs.Empty);
		}
		m_tsOwner = newOwner;
	}

	private bool ShouldSerializePadding()
	{
		return Padding != new Padding(2);
	}

	private new void ResetPadding()
	{
		Padding = new Padding(2);
	}
}
