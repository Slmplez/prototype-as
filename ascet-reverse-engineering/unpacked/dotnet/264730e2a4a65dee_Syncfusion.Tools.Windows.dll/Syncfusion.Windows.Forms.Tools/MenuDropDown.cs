using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Layout;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(MenuDropDownDesigner))]
[ToolboxItem(false)]
public class MenuDropDown : ToolStripOverflow
{
	internal enum PanelType
	{
		Main,
		Auxiliary,
		System
	}

	internal interface IPanel
	{
		ToolStrip Owner { get; }

		PanelType PanelType { get; }

		Size MinimumSize { get; set; }

		void SetItemLocation(ToolStripItem item, Point location);

		ToolStripItemPlacement GetItemPlacement(ToolStripItem item);
	}

	private class PanelSite : ISite, IServiceProvider
	{
		private IComponent m_component;

		private ISite m_parentSite;

		public IComponent Component => m_component;

		public IContainer Container => null;

		public bool DesignMode => m_parentSite.DesignMode;

		public string Name
		{
			get
			{
				IPanel panel = m_component as IPanel;
				return panel.PanelType switch
				{
					PanelType.Auxiliary => "Auxiliary items", 
					PanelType.System => "System items", 
					_ => "Main items", 
				};
			}
			set
			{
			}
		}

		public PanelSite(IComponent component, ISite parentSite)
		{
			m_component = component;
			m_parentSite = parentSite;
		}

		public object GetService(Type serviceType)
		{
			return m_parentSite.GetService(serviceType);
		}
	}

	public class Panel
	{
		protected enum ScrollButtonsArea
		{
			None,
			DownScrollButton,
			UpScrollButton
		}

		internal class PanelStrip : ToolStripDropDown, IPanel
		{
			private class PanelStripLayout : LayoutEngine
			{
				public override bool Layout(object container, LayoutEventArgs layoutEventArgs)
				{
					if (container is PanelStrip panelStrip)
					{
						panelStrip.m_panel.OnLayout(layoutEventArgs);
					}
					return false;
				}
			}

			private Panel m_panel;

			private static PanelStripLayout m_layout;

			private Size m_szMinimum;

			public override LayoutEngine LayoutEngine => m_layout;

			public override Size MinimumSize
			{
				get
				{
					return m_szMinimum;
				}
				set
				{
					if (m_szMinimum != value)
					{
						if (value.Width < 0)
						{
							value.Width = 0;
						}
						if (value.Height < 0)
						{
							value.Height = 0;
						}
						m_szMinimum = value;
						PerformLayout();
					}
				}
			}

			public override RightToLeft RightToLeft
			{
				get
				{
					if (m_panel != null)
					{
						return m_panel.m_parent.RightToLeft;
					}
					return RightToLeft.No;
				}
				set
				{
				}
			}

			ToolStrip IPanel.Owner => m_panel.m_parent;

			PanelType IPanel.PanelType => m_panel.PanelType;

			static PanelStrip()
			{
				m_layout = new PanelStripLayout();
			}

			public PanelStrip(Panel panel)
			{
				m_panel = panel;
				base.Renderer = panel.Renderer;
				base.ImageScalingSize = new Size(16, 16);
			}

			protected override void CreateHandle()
			{
				throw new Exception("Control should not be created.");
			}

			protected override void OnItemAdded(ToolStripItemEventArgs e)
			{
				m_panel.OnItemAdded(e);
			}

			protected override void OnItemRemoved(ToolStripItemEventArgs e)
			{
				m_panel.OnItemRemoved(e);
			}

			protected override void OnItemClicked(ToolStripItemClickedEventArgs e)
			{
				m_panel.OnItemClicked(e);
			}

			protected override void SetDisplayedItems()
			{
			}

			void IPanel.SetItemLocation(ToolStripItem item, Point location)
			{
				SetItemLocation(item, location);
			}

			ToolStripItemPlacement IPanel.GetItemPlacement(ToolStripItem item)
			{
				if (item != null)
				{
					MenuDropDown menuDropDown = m_panel.m_parent;
					if (menuDropDown != null && menuDropDown.DisplayedItems.Contains(item))
					{
						return ToolStripItemPlacement.Main;
					}
				}
				return ToolStripItemPlacement.None;
			}
		}

		private const int IMAGE_WIDTH = 16;

		private const int IMAGE_HEIGHT = 16;

		private const int SEPARATOR_WIDTH = 2;

		private const int TOOLSTRIP_SEPARATOR_WIDTH = 4;

		private const int TIMER_INT = 200;

		private const int SCROLL_BUTTON_HEIGHT = 12;

		private const int MIN_CAPTION_HEIGHT = 21;

		private PanelType m_type;

		private MenuDropDown m_parent;

		private PanelStrip m_panelStrip;

		private int m_separatorIndent = -1;

		private Font m_font;

		private string m_sText;

		private int m_iCaptionHeight = -1;

		private int m_iScrollPosition;

		private bool m_bIsUpScroll;

		private bool m_bIsDownScroll;

		private bool m_bUpScrollSelected;

		private bool m_bDownScrollSelected;

		private Timer m_timer;

		private int m_timerInt = 200;

		private ScrollButtonsArea m_pushedButton;

		private Rectangle m_rcBounds = Rectangle.Empty;

		private int m_iItemIndex;

		private static Font m_DefaultFont = new Font(Control.DefaultFont, FontStyle.Bold);

		[Editor(typeof(MenuDropDownItemsEditor), typeof(UITypeEditor))]
		[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
		[Description("Gets all the items that belong to a panel.")]
		public ToolStripItemCollection Items => m_panelStrip.Items;

		[Description("Gets or sets the size, in pixels, of images used in panel items.")]
		[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
		public Size ImageScalingSize
		{
			get
			{
				return m_panelStrip.ImageScalingSize;
			}
			set
			{
				if (!(m_panelStrip.ImageScalingSize != value))
				{
					return;
				}
				m_panelStrip.SuspendLayout();
				m_panelStrip.ImageScalingSize = value;
				foreach (ToolStripItem item in Items)
				{
					if (item.ImageScaling == ToolStripItemImageScaling.SizeToFit)
					{
						item.ImageScaling = ToolStripItemImageScaling.None;
						item.ImageScaling = ToolStripItemImageScaling.SizeToFit;
					}
				}
				m_panelStrip.ResumeLayout();
			}
		}

		[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
		[Description("Gets or sets the amount of spaces to indent separators in the panel.")]
		public int SeparatorIndent
		{
			get
			{
				if (m_separatorIndent < 0)
				{
					return ImageScalingSize.Width;
				}
				return m_separatorIndent;
			}
			set
			{
				if (m_separatorIndent != value)
				{
					m_parent.SuspendLayout();
					m_separatorIndent = value;
					m_parent.ResumeLayout();
				}
			}
		}

		[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
		[Description("Gets or sets the panel title's text.")]
		[DefaultValue(null)]
		public string Text
		{
			get
			{
				return m_sText;
			}
			set
			{
				m_sText = value;
				OnLayoutChanged();
			}
		}

		[Description("Gets or sets the font of the text displayed in panel items.")]
		[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
		public Font Font
		{
			get
			{
				if (m_font == null)
				{
					return m_DefaultFont;
				}
				return m_font;
			}
			set
			{
				m_font = value;
				OnLayoutChanged();
			}
		}

		internal int CaptionHeight
		{
			get
			{
				if (m_type != PanelType.Auxiliary)
				{
					return 0;
				}
				if (m_iCaptionHeight == -1)
				{
					int num = TextRenderer.MeasureText(Text, Font).Height;
					if (num > 0)
					{
						if (num < 21)
						{
							num = 21;
						}
						num += 2;
					}
					m_iCaptionHeight = num;
				}
				return m_iCaptionHeight;
			}
			set
			{
				m_iCaptionHeight = value;
			}
		}

		[Browsable(false)]
		public Size PreferredSize
		{
			get
			{
				Size empty = Size.Empty;
				foreach (ToolStripItem item in Items)
				{
					if (!item.Available)
					{
						continue;
					}
					Size itemSize = GetItemSize(item);
					if (m_type == PanelType.System)
					{
						empty.Width += itemSize.Width;
						if (empty.Height < itemSize.Height)
						{
							empty.Height = itemSize.Height;
						}
					}
					else
					{
						empty.Height += itemSize.Height;
						if (empty.Width < itemSize.Width)
						{
							empty.Width = itemSize.Width;
						}
					}
				}
				empty.Height += CaptionHeight;
				if (m_type != PanelType.System)
				{
					int width = MinimumSize.Width;
					int height = MinimumSize.Height;
					if (width > 0 && width > empty.Width)
					{
						empty.Width = width;
					}
					if (height > 0 && height > empty.Height)
					{
						empty.Height = height;
					}
				}
				return empty;
			}
		}

		[Description("Gets or sets minimum size of panel.")]
		public Size MinimumSize
		{
			get
			{
				return m_panelStrip.MinimumSize;
			}
			set
			{
				m_panelStrip.MinimumSize = value;
			}
		}

		internal ToolStrip ToolStrip => m_panelStrip;

		internal PanelType PanelType => m_type;

		private ToolStripRenderer Renderer => m_parent.Renderer;

		private ToolStripItem OwnerItem => m_parent.OwnerItem;

		protected Rectangle Bounds
		{
			get
			{
				if (m_type == PanelType.Main)
				{
					return m_parent.MainItemsBounds;
				}
				if (m_type == PanelType.Auxiliary)
				{
					return m_parent.AuxItemsBounds;
				}
				return Rectangle.Empty;
			}
		}

		protected ScrollButtonsArea PushedButton
		{
			get
			{
				return m_pushedButton;
			}
			set
			{
				if (m_pushedButton != value)
				{
					m_pushedButton = value;
				}
			}
		}

		internal Rectangle UpScrollBounds
		{
			get
			{
				Rectangle result = Rectangle.Empty;
				if (m_bIsUpScroll)
				{
					Rectangle bounds = Bounds;
					result = new Rectangle(bounds.X, bounds.Y + CaptionHeight, bounds.Width, 12);
				}
				return result;
			}
		}

		internal Rectangle DownScrollBounds
		{
			get
			{
				Rectangle result = Rectangle.Empty;
				if (m_bIsDownScroll)
				{
					Rectangle bounds = Bounds;
					result = new Rectangle(bounds.X, bounds.Bottom - 12, bounds.Width, 12);
				}
				return result;
			}
		}

		internal int ScrollPositionInternal
		{
			get
			{
				return m_iScrollPosition;
			}
			set
			{
				m_iScrollPosition = value;
				m_parent.PerformLayout();
			}
		}

		internal bool DownScrollSelected
		{
			get
			{
				return m_bDownScrollSelected;
			}
			set
			{
				m_bDownScrollSelected = value;
			}
		}

		internal bool UpScrollSelected
		{
			get
			{
				return m_bUpScrollSelected;
			}
			set
			{
				m_bUpScrollSelected = value;
			}
		}

		internal Panel(MenuDropDown parent, PanelType type)
		{
			m_type = type;
			m_parent = parent;
			m_panelStrip = new PanelStrip(this);
			m_timer = new Timer();
			m_timer.Tick += OnTimerTick;
		}

		public void PerformLayout(Rectangle rc)
		{
			IPanel panelStrip = m_panelStrip;
			PanelType type = m_type;
			if (type == PanelType.System)
			{
				if (m_parent.RightToLeft == RightToLeft.Yes)
				{
					int num = rc.Left;
					int top = rc.Top;
					{
						foreach (ToolStripItem item in m_panelStrip.Items)
						{
							if (!item.Available)
							{
								continue;
							}
							if (item is ToolStripSeparator)
							{
								item.Height = rc.Height;
								item.Width = 2;
								panelStrip.SetItemLocation(item, new Point(num, top));
								num += 2;
								continue;
							}
							if (item.AutoSize)
							{
								item.Size = item.GetPreferredSize(Size.Empty);
							}
							panelStrip.SetItemLocation(item, new Point(num + item.Margin.Left, top + item.Margin.Top));
							num += item.Width + item.Margin.Horizontal;
						}
						return;
					}
				}
				int num2 = rc.Right;
				int top2 = rc.Top;
				{
					foreach (ToolStripItem item2 in m_panelStrip.Items)
					{
						if (!item2.Available)
						{
							continue;
						}
						if (item2 is ToolStripSeparator)
						{
							item2.Height = rc.Height;
							item2.Width = 2;
							panelStrip.SetItemLocation(item2, new Point(num2 - 2, top2));
							num2 -= 2;
							continue;
						}
						if (item2.AutoSize)
						{
							item2.Size = item2.GetPreferredSize(Size.Empty);
						}
						panelStrip.SetItemLocation(item2, new Point(num2 - item2.Margin.Right - item2.Width, top2 + item2.Margin.Top));
						num2 -= item2.Width + item2.Margin.Horizontal;
					}
					return;
				}
			}
			int x = rc.X;
			int num3 = rc.Y + CaptionHeight - ScrollPositionInternal;
			int separatorIndent = SeparatorIndent;
			int x2 = ((m_parent.RightToLeft == RightToLeft.Yes) ? x : (x + separatorIndent));
			foreach (ToolStripItem item3 in m_panelStrip.Items)
			{
				if (!item3.Available)
				{
					continue;
				}
				if (item3 is ToolStripSeparator)
				{
					item3.Height = 2;
					item3.Width = rc.Width - separatorIndent;
					if (num3 > rc.Bottom)
					{
						panelStrip.SetItemLocation(item3, new Point(-item3.Width - 1, num3));
						continue;
					}
					panelStrip.SetItemLocation(item3, new Point(x2, num3));
					num3 += 2;
					continue;
				}
				if (item3.AutoSize)
				{
					item3.Height = item3.GetPreferredSize(Size.Empty).Height;
				}
				item3.Width = rc.Width - item3.Margin.Horizontal;
				if (num3 > rc.Bottom)
				{
					panelStrip.SetItemLocation(item3, new Point(-item3.Width - 1, num3 + item3.Margin.Top));
					continue;
				}
				panelStrip.SetItemLocation(item3, new Point(x + item3.Margin.Left, num3 + item3.Margin.Top));
				num3 += item3.Height + item3.Margin.Vertical;
			}
		}

		private Size GetItemSize(ToolStripItem item)
		{
			Size result;
			if (item is ToolStripSeparator)
			{
				result = ((m_type != PanelType.System) ? new Size(1, 2) : new Size(2, 1));
			}
			else
			{
				result = (item.AutoSize ? item.GetPreferredSize(Size.Empty) : item.Size);
				result.Height += item.Margin.Vertical;
				result.Width += item.Margin.Horizontal;
			}
			return result;
		}

		private void OnLayout(LayoutEventArgs e)
		{
			m_parent.PerformLayout();
		}

		private void OnItemAdded(ToolStripItemEventArgs e)
		{
			ToolStrip.SetItemParent(e.Item, m_parent);
			m_parent.OnItemAdded(e);
		}

		private void OnItemRemoved(ToolStripItemEventArgs e)
		{
			m_parent.OnItemRemoved(e);
		}

		private void OnItemClicked(ToolStripItemClickedEventArgs e)
		{
			m_parent.OnItemClicked(e);
		}

		private void OnLayoutChanged()
		{
			m_iCaptionHeight = -1;
			if (m_parent.IsHandleCreated)
			{
				m_parent.PerformLayout();
			}
		}

		internal int GetItemsHeight()
		{
			int num = 0;
			foreach (ToolStripItem item in Items)
			{
				if (item.Available)
				{
					num += GetItemSize(item).Height;
				}
			}
			return num + CaptionHeight;
		}

		private int GetValidScrollPosition(int position)
		{
			int num = position;
			if (num != 0)
			{
				int itemsHeight = GetItemsHeight();
				int height = Bounds.Height;
				if (num < 0 || itemsHeight < height)
				{
					num = 0;
				}
			}
			return num;
		}

		private void ScrollToDown()
		{
			if (m_iItemIndex + 1 <= Items.Count - 1)
			{
				int num = 0;
				if (!m_bIsUpScroll)
				{
					num = 12;
				}
				ScrollPositionInternal = GetValidScrollPosition(ScrollPositionInternal + Items[m_iItemIndex].Height + Items[m_iItemIndex].Margin.Vertical - num);
				m_iItemIndex++;
			}
		}

		private void ScrollToUp()
		{
			if (m_iItemIndex - 1 >= 0)
			{
				ScrollPositionInternal = GetValidScrollPosition(ScrollPositionInternal - Items[m_iItemIndex - 1].Height - Items[m_iItemIndex - 1].Margin.Vertical);
				m_iItemIndex--;
			}
		}

		private void StartTimer(ScrollButtonsArea mousePushedArea)
		{
			m_timer.Interval = m_timerInt * 4;
			m_timer.Tag = mousePushedArea;
			m_timer.Start();
		}

		private void OnTimerTick(object sender, EventArgs e)
		{
			ScrollButtonsArea scrollButtonsArea = (ScrollButtonsArea)((Timer)sender).Tag;
			Point pt = m_parent.PointToClient(Control.MousePosition);
			switch (scrollButtonsArea)
			{
			case ScrollButtonsArea.DownScrollButton:
				if (DownScrollBounds.IsEmpty)
				{
					m_parent.Capture = false;
				}
				else if (DownScrollBounds.Contains(pt))
				{
					ScrollToDown();
				}
				break;
			case ScrollButtonsArea.UpScrollButton:
				if (UpScrollBounds.IsEmpty)
				{
					m_parent.Capture = false;
				}
				else if (UpScrollBounds.Contains(pt))
				{
					ScrollToUp();
				}
				break;
			}
			m_timer.Interval = m_timerInt;
		}

		internal void OnMouseMove(MouseEventArgs e)
		{
			if (!Bounds.Contains(e.Location))
			{
				if (m_bDownScrollSelected)
				{
					m_bDownScrollSelected = false;
					m_parent.RefreshScroll();
				}
				if (m_bUpScrollSelected)
				{
					m_bUpScrollSelected = false;
					m_parent.RefreshScroll();
				}
				return;
			}
			bool flag = false;
			bool flag2 = false;
			if (m_bIsDownScroll)
			{
				flag = DownScrollBounds.Contains(e.Location);
				if (flag != m_bDownScrollSelected)
				{
					m_bDownScrollSelected = flag;
					m_parent.RefreshScroll();
				}
			}
			if (m_bIsUpScroll && !flag)
			{
				flag2 = UpScrollBounds.Contains(e.Location);
				if (flag2 != m_bUpScrollSelected)
				{
					m_bUpScrollSelected = flag2;
					m_parent.RefreshScroll();
				}
			}
		}

		internal void OnMouseLeave(EventArgs e)
		{
			if (m_bDownScrollSelected)
			{
				m_bDownScrollSelected = false;
				m_parent.RefreshScroll();
			}
			else if (m_bUpScrollSelected)
			{
				m_bUpScrollSelected = false;
				m_parent.RefreshScroll();
			}
		}

		internal void OnMouseDown(MouseEventArgs e)
		{
			if (Bounds.Contains(e.Location) && e.Button == MouseButtons.Left)
			{
				bool flag = false;
				if (m_bIsDownScroll && DownScrollBounds.Contains(e.Location))
				{
					flag = true;
					m_parent.Capture = true;
					PushedButton = ScrollButtonsArea.DownScrollButton;
					ScrollToDown();
					StartTimer(ScrollButtonsArea.DownScrollButton);
				}
				if (!flag && m_bIsUpScroll && UpScrollBounds.Contains(e.Location))
				{
					m_parent.Capture = true;
					PushedButton = ScrollButtonsArea.UpScrollButton;
					ScrollToUp();
					StartTimer(ScrollButtonsArea.UpScrollButton);
				}
			}
		}

		internal void OnMouseCaptureChanged(EventArgs e)
		{
			m_timer.Stop();
			PushedButton = ScrollButtonsArea.None;
		}

		internal void OnPaint(PaintEventArgs e, RibbonControlAdvHeader.RibbonControlAdvHeaderRenderer renderer)
		{
			int itemsHeight = GetItemsHeight();
			int height = Bounds.Height;
			if (itemsHeight > height)
			{
				m_bIsUpScroll = ScrollPositionInternal > 0;
				m_bIsDownScroll = itemsHeight - ScrollPositionInternal > height;
				if (m_bIsDownScroll)
				{
					renderer.DrawUpDownScrollButton(this, e.Graphics, DownScrollBounds, bDown: true);
				}
				else
				{
					m_bDownScrollSelected = false;
				}
				if (m_bIsUpScroll)
				{
					renderer.DrawUpDownScrollButton(this, e.Graphics, UpScrollBounds, bDown: false);
				}
				else
				{
					m_bUpScrollSelected = false;
				}
			}
			else
			{
				m_bIsDownScroll = false;
				m_bIsUpScroll = false;
			}
		}

		private bool ShouldSerializeImageScalingSize()
		{
			if (m_panelStrip.ImageScalingSize.Width == 16)
			{
				return m_panelStrip.ImageScalingSize.Height != 16;
			}
			return true;
		}

		private void ResetImageScalingSize()
		{
			ImageScalingSize = new Size(16, 16);
		}

		private bool ShouldSerializeSeparatorIndent()
		{
			return m_separatorIndent >= 0;
		}

		private void ResetImageSeparatorIndent()
		{
			m_separatorIndent = -1;
		}

		private void ResetFont()
		{
			Font = null;
		}

		private bool ShouldSerializeFont()
		{
			return m_font != null;
		}

		private void ResetMinimumSize()
		{
			MinimumSize = Size.Empty;
		}

		private bool ShouldSerializeMinimumSize()
		{
			return MinimumSize != Size.Empty;
		}
	}

	private class MenuDropDownLayout : LayoutEngine
	{
		public override bool Layout(object container, LayoutEventArgs layoutEventArgs)
		{
			bool result = false;
			if (container is MenuDropDown menuDropDown)
			{
				menuDropDown.MainPanel.PerformLayout(menuDropDown.MainItemsBounds);
				menuDropDown.AuxPanel.PerformLayout(menuDropDown.AuxItemsBounds);
				menuDropDown.SystemPanel.PerformLayout(menuDropDown.SystemItemsBounds);
				result = menuDropDown.AutoSize;
			}
			return result;
		}
	}

	private const int SCROLL_BUTTON_HEIGHT = 12;

	private const int SEPARATOR_WIDTH = 2;

	private Padding m_borders;

	private Padding m_systemPadding;

	private Panel m_pMain;

	private Panel m_pAux;

	private Panel m_pSystem;

	private MenuDropDownLayout m_layoutEngine;

	private Size m_szMainItems = Size.Empty;

	private Size m_szAuxItems = Size.Empty;

	private Size m_szSysItems = Size.Empty;

	private Rectangle m_rcMain = Rectangle.Empty;

	private Rectangle m_rcAux = Rectangle.Empty;

	private Rectangle m_rcSys = Rectangle.Empty;

	private ToolStripItemCollection m_displayedItems;

	public override ISite Site
	{
		get
		{
			return base.Site;
		}
		set
		{
			base.Site = value;
			if (value != null)
			{
				MainPanel.ToolStrip.Site = new PanelSite(MainPanel.ToolStrip, value);
				AuxPanel.ToolStrip.Site = new PanelSite(AuxPanel.ToolStrip, value);
				SystemPanel.ToolStrip.Site = new PanelSite(SystemPanel.ToolStrip, value);
			}
			else
			{
				MainPanel.ToolStrip.Site = null;
				AuxPanel.ToolStrip.Site = null;
				SystemPanel.ToolStrip.Site = null;
			}
		}
	}

	public override LayoutEngine LayoutEngine
	{
		get
		{
			if (m_layoutEngine == null)
			{
				m_layoutEngine = new MenuDropDownLayout();
			}
			return m_layoutEngine;
		}
	}

	public override Size MinimumSize
	{
		get
		{
			return base.MinimumSize;
		}
		set
		{
			base.MinimumSize = value;
			PerformLayout();
		}
	}

	public override Size MaximumSize
	{
		get
		{
			return base.MaximumSize;
		}
		set
		{
			base.MaximumSize = value;
			PerformLayout();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override ToolStripItemCollection Items => MainItems;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ToolStripItemCollection MainItems => MainPanel.Items;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ToolStripItemCollection AuxItems => AuxPanel.Items;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ToolStripItemCollection SystemItems => SystemPanel.Items;

	internal Padding Borders
	{
		get
		{
			int bottom = Math.Max(m_borders.Bottom, SysItemsSize.Height);
			return new Padding(m_borders.Left, m_borders.Top, m_borders.Right, bottom);
		}
	}

	internal Padding SystemPadding => m_systemPadding;

	[TypeConverter(typeof(ExpandableObjectConverter))]
	[Category("Menu panels")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public Panel MainPanel
	{
		get
		{
			if (m_pMain == null)
			{
				m_pMain = new Panel(this, PanelType.Main);
			}
			return m_pMain;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Menu panels")]
	[TypeConverter(typeof(ExpandableObjectConverter))]
	public Panel AuxPanel
	{
		get
		{
			if (m_pAux == null)
			{
				m_pAux = new Panel(this, PanelType.Auxiliary);
			}
			return m_pAux;
		}
	}

	[Category("Menu panels")]
	[TypeConverter(typeof(ExpandableObjectConverter))]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public Panel SystemPanel
	{
		get
		{
			if (m_pSystem == null)
			{
				m_pSystem = new Panel(this, PanelType.System);
			}
			return m_pSystem;
		}
	}

	internal ToolStrip ParentToolStrip
	{
		get
		{
			if (base.OwnerItem != null)
			{
				return base.OwnerItem.GetCurrentParent();
			}
			return null;
		}
	}

	private Size MainItemsSize
	{
		get
		{
			if (m_szMainItems.IsEmpty)
			{
				m_szMainItems = MainPanel.PreferredSize;
			}
			return m_szMainItems;
		}
	}

	private Size AuxItemsSize
	{
		get
		{
			if (m_szAuxItems.IsEmpty)
			{
				m_szAuxItems = AuxPanel.PreferredSize;
			}
			return m_szAuxItems;
		}
	}

	private Size SysItemsSize
	{
		get
		{
			if (m_szSysItems.IsEmpty && SystemItems.Count > 0)
			{
				m_szSysItems = SystemPanel.PreferredSize;
				m_szSysItems.Width += m_systemPadding.Horizontal;
				m_szSysItems.Height += m_systemPadding.Vertical;
			}
			return m_szSysItems;
		}
	}

	internal Rectangle MainItemsBounds
	{
		get
		{
			if (m_rcMain.IsEmpty && MainItemsSize.Width > 0)
			{
				Size clientSize = base.ClientSize;
				Padding borders = Borders;
				if (RightToLeft == RightToLeft.Yes)
				{
					m_rcMain.X = borders.Left;
					int num = AuxItemsSize.Width;
					if (num > 0)
					{
						m_rcMain.X += 2 + num;
					}
					m_rcMain.Width = clientSize.Width - m_rcMain.X - borders.Right;
				}
				else
				{
					m_rcMain.X = borders.Left;
					m_rcMain.Width = MainItemsSize.Width;
				}
				m_rcMain.Y = borders.Top;
				m_rcMain.Height = base.ClientSize.Height - borders.Vertical;
			}
			return m_rcMain;
		}
	}

	internal Rectangle AuxItemsBounds
	{
		get
		{
			if (m_rcAux.IsEmpty && AuxItemsSize.Width > 0)
			{
				Size clientSize = base.ClientSize;
				Padding borders = Borders;
				if (RightToLeft == RightToLeft.Yes)
				{
					m_rcAux.X = borders.Left;
					m_rcAux.Width = AuxItemsSize.Width;
				}
				else
				{
					m_rcAux.X = borders.Left;
					int num = MainItemsSize.Width;
					if (num > 0)
					{
						m_rcAux.X += num + 2;
					}
					m_rcAux.Width = clientSize.Width - m_rcAux.X - borders.Right;
				}
				m_rcAux.Y = borders.Top;
				m_rcAux.Height = clientSize.Height - borders.Vertical;
			}
			return m_rcAux;
		}
	}

	internal Rectangle SystemItemsBounds
	{
		get
		{
			if (m_rcSys.IsEmpty)
			{
				Size clientSize = base.ClientSize;
				Padding systemPadding = SystemPadding;
				m_rcSys.Width = clientSize.Width - systemPadding.Horizontal;
				m_rcSys.Height = Borders.Bottom - systemPadding.Vertical;
				m_rcSys.X = systemPadding.Left;
				m_rcSys.Y = clientSize.Height - systemPadding.Bottom - m_rcSys.Height;
			}
			return m_rcSys;
		}
	}

	protected override ToolStripItemCollection DisplayedItems
	{
		get
		{
			if (m_displayedItems == null)
			{
				m_displayedItems = new ToolStripItemCollection(this, new ToolStripItem[0]);
			}
			return m_displayedItems;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override RightToLeft RightToLeft
	{
		get
		{
			return base.RightToLeft;
		}
		set
		{
			base.RightToLeft = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new ToolStripLayoutStyle LayoutStyle
	{
		get
		{
			return base.LayoutStyle;
		}
		set
		{
			base.LayoutStyle = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new Padding Padding
	{
		get
		{
			return base.Padding;
		}
		set
		{
			base.Padding = value;
		}
	}

	[DefaultValue(false)]
	public new bool ShowItemToolTips
	{
		get
		{
			return base.ShowItemToolTips;
		}
		set
		{
			base.ShowItemToolTips = value;
		}
	}

	public MenuDropDown(ToolStripItem ownerItem)
		: base(ownerItem)
	{
		m_borders = new Padding(6, 18, 6, 27);
		m_systemPadding = new Padding(2, 4, 2, 4);
		base.ShowItemToolTips = false;
	}

	public override Size GetPreferredSize(Size proposedSize)
	{
		Size empty = Size.Empty;
		Size mainItemsSize = MainItemsSize;
		Size auxItemsSize = AuxItemsSize;
		Size sysItemsSize = SysItemsSize;
		int num = auxItemsSize.Width;
		int num2 = mainItemsSize.Width;
		if (num > 0 && num2 > 0)
		{
			empty.Width += 2;
		}
		empty.Width += num + num2;
		empty.Height = Math.Max(mainItemsSize.Height, auxItemsSize.Height);
		if (empty.Height <= Padding.Vertical)
		{
			empty.Height = 20;
		}
		if (empty.Width < sysItemsSize.Width)
		{
			empty.Width = sysItemsSize.Width;
		}
		Padding borders = Borders;
		empty.Width += borders.Horizontal;
		empty.Height += borders.Vertical;
		return empty;
	}

	protected override void SetDisplayedItems()
	{
		DisplayedItems.Clear();
		AddDisplayedItems(MainPanel, MainItems, MainItemsBounds);
		AddDisplayedItems(AuxPanel, AuxItems, AuxItemsBounds);
		AddDisplayedItems(SystemPanel, SystemItems, SystemItemsBounds);
		base.SetDisplayedItems();
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		m_rcAux = Rectangle.Empty;
		m_rcMain = Rectangle.Empty;
		base.OnSizeChanged(e);
		base.Region = RendererUtils.GetRoundedRegion(new Rectangle(Point.Empty, base.Size), 2);
	}

	protected override void OnLayout(LayoutEventArgs e)
	{
		m_szMainItems = Size.Empty;
		m_szAuxItems = Size.Empty;
		m_szSysItems = Size.Empty;
		m_rcMain = Rectangle.Empty;
		m_rcAux = Rectangle.Empty;
		m_rcSys = Rectangle.Empty;
		base.OnLayout(e);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (base.Renderer is RibbonControlAdvHeader.RibbonControlAdvHeaderRenderer ribbonControlAdvHeaderRenderer)
		{
			MainPanel.OnPaint(e, ribbonControlAdvHeaderRenderer);
			AuxPanel.OnPaint(e, ribbonControlAdvHeaderRenderer);
		}
	}

	protected override void OnMouseMove(MouseEventArgs mea)
	{
		base.OnMouseMove(mea);
		MainPanel.OnMouseMove(mea);
		AuxPanel.OnMouseMove(mea);
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		MainPanel.OnMouseLeave(e);
		AuxPanel.OnMouseLeave(e);
	}

	protected override void OnMouseDown(MouseEventArgs mea)
	{
		base.OnMouseDown(mea);
		MainPanel.OnMouseDown(mea);
		AuxPanel.OnMouseDown(mea);
	}

	protected override void OnMouseUp(MouseEventArgs mea)
	{
		base.OnMouseUp(mea);
		base.Capture = false;
	}

	protected override void OnMouseCaptureChanged(EventArgs e)
	{
		base.OnMouseCaptureChanged(e);
		MainPanel.OnMouseCaptureChanged(e);
		AuxPanel.OnMouseCaptureChanged(e);
	}

	protected override void OnRendererChanged(EventArgs e)
	{
		base.OnRendererChanged(e);
		MainPanel.ToolStrip.Renderer = base.Renderer;
		AuxPanel.ToolStrip.Renderer = base.Renderer;
		SystemPanel.ToolStrip.Renderer = base.Renderer;
	}

	protected override void OnItemAdded(ToolStripItemEventArgs e)
	{
		base.OnItemAdded(e);
	}

	private new void ResetMinimumSize()
	{
		MinimumSize = Size.Empty;
	}

	private bool ShouldSerializeMinimumSize()
	{
		return MinimumSize != Size.Empty;
	}

	private void AddDisplayedItems(Panel panel, ICollection items, Rectangle rect)
	{
		int itemsHeight = panel.GetItemsHeight();
		int num = rect.Height;
		bool flag = false;
		if (itemsHeight > num)
		{
			flag = itemsHeight - panel.ScrollPositionInternal > num;
		}
		if (flag && panel.PanelType != PanelType.System)
		{
			rect.Height -= 12;
		}
		foreach (ToolStripItem item in items)
		{
			if (item.Available && rect.Contains(item.Bounds))
			{
				DisplayedItems.Add(item);
			}
		}
	}

	internal void RefreshScroll()
	{
		RedrawWindowFlags flags = (RedrawWindowFlags)1025;
		WindowsAPI.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, flags);
	}
}
