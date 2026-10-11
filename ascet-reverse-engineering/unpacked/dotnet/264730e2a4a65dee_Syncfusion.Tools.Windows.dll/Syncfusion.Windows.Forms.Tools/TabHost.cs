using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

public class TabHost : Form, ITabHost
{
	private const int c_cornerCut = 3;

	private TabbedMDIManager m_MDIManager;

	private SplitterHost m_SplitterHost;

	private MDITabPanel mdiTabPanel;

	private int m_borderHeight = 2;

	private int m_iScaleBaseSize;

	private Rectangle m_rcSplitterBounds;

	private LayoutPanel m_layoutPanel;

	private ArrayList m_arrNextTabHost = new ArrayList();

	private ArrayList m_arrPreviousTabHost = new ArrayList();

	public TabAlignment Alignment
	{
		get
		{
			return MDITabPanel.Alignment;
		}
		set
		{
			if (value != MDITabPanel.Alignment)
			{
				MDITabPanel.Alignment = value;
				PerformLayoutInternal(LayoutPanel.GetTabHostSize(this));
			}
		}
	}

	public MDITabPanel MDITabPanel => mdiTabPanel;

	[DefaultValue(2)]
	public int BottomBorderHeight
	{
		get
		{
			return m_borderHeight;
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentException("Border height shouldn't be negative");
			}
			if (m_borderHeight != value)
			{
				m_borderHeight = value;
			}
		}
	}

	[DefaultValue(KnownColor.Control)]
	public Color BottomBorderColor
	{
		get
		{
			return BackColor;
		}
		set
		{
			if (BackColor != value)
			{
				BackColor = value;
			}
		}
	}

	internal SplitterHost SplitterHost
	{
		get
		{
			return m_SplitterHost;
		}
		set
		{
			m_SplitterHost = value;
		}
	}

	internal Rectangle SplitterBounds
	{
		get
		{
			return m_rcSplitterBounds;
		}
		set
		{
			m_rcSplitterBounds = value;
		}
	}

	internal LayoutPanel LayoutPanel
	{
		get
		{
			return m_layoutPanel;
		}
		set
		{
			m_layoutPanel = value;
		}
	}

	internal ArrayList NextTabHost
	{
		get
		{
			return m_arrNextTabHost;
		}
		set
		{
			m_arrNextTabHost = value;
		}
	}

	internal ArrayList PreviousTabHost
	{
		get
		{
			return m_arrPreviousTabHost;
		}
		set
		{
			m_arrPreviousTabHost = value;
		}
	}

	public int MdiChildAutoScaleBaseDim => m_iScaleBaseSize;

	internal bool IsVistaOS => Environment.OSVersion.Version.Major >= 6;

	protected bool IsVS2008
	{
		get
		{
			if (MDITabPanel != null)
			{
				return MDITabPanel.TabStyle == typeof(TabRendererVS2008);
			}
			return false;
		}
	}

	protected bool IsDockingWhidbeyStyle
	{
		get
		{
			if (MDITabPanel != null)
			{
				return MDITabPanel.TabStyle == typeof(TabRendererDockingWhidbey);
			}
			return false;
		}
	}

	protected bool IsOffice2007Style
	{
		get
		{
			if (MDITabPanel != null)
			{
				return MDITabPanel.TabStyle == typeof(TabRendererOffice2007);
			}
			return false;
		}
	}

	public TabHost(TabbedMDIManager manager)
	{
		m_MDIManager = manager;
		mdiTabPanel = CreateMDITabPanel();
		base.FormBorderStyle = FormBorderStyle.None;
		base.ControlBox = false;
		base.HelpButton = false;
		base.MaximizeBox = false;
		base.MinimizeBox = false;
		base.ShowInTaskbar = false;
		base.SizeGripStyle = SizeGripStyle.Hide;
		base.Controls.Add(mdiTabPanel);
		base.Size = new Size(10, mdiTabPanel.Size.Height + 2);
		mdiTabPanel.Location = new Point(0, 0);
		SetStyle(ControlStyles.Selectable, value: false);
		string text = "TabHost_1";
		while (!m_MDIManager.IsValidTabHostsName(text))
		{
			text = IDGenerator.GetNextID(text);
		}
		base.Name = text;
		mdiTabPanel.Name = base.Name + "_Tab";
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (m_SplitterHost != null)
			{
				m_SplitterHost.SplitterMoved -= Splitter_Moved;
				m_SplitterHost = null;
			}
			if (mdiTabPanel != null)
			{
				SuspendChildActivation();
				mdiTabPanel.DetachMdiChildren();
				ResumeChildActivation();
				mdiTabPanel = null;
			}
		}
		base.Dispose(disposing);
	}

	[DocumentationExclude]
	protected internal virtual void SuspendChildActivation()
	{
		if (MDITabPanel != null)
		{
			MDITabPanel.SuspendChildActivation();
		}
	}

	[DocumentationExclude]
	protected internal virtual void ResumeChildActivation()
	{
		if (MDITabPanel != null)
		{
			MDITabPanel.ResumeChildActivation();
		}
	}

	protected virtual MDITabPanel CreateMDITabPanel()
	{
		return m_MDIManager.CreateMDITabPanelInternal();
	}

	protected internal virtual void AddMdiChild(Form mdiChild, ITabData prevTabData)
	{
		MDIChildTabData prevTabData2 = prevTabData as MDIChildTabData;
		SuspendChildActivation();
		MDITabPanel.AddMdiChild(mdiChild, prevTabData2);
		m_MDIManager.keyboardActivationHelper.AddMdiChild(mdiChild);
		if (mdiChild is ITabbedMDIChildForm)
		{
			ITabbedMDIChildForm tabbedMDIChildForm = mdiChild as ITabbedMDIChildForm;
			tabbedMDIChildForm.OnMdiChildAddedToTabHost(this, MDITabPanel.TabPages.Count - 1);
		}
		ResumeChildActivation();
		m_MDIManager.UpdateActiveTabHost();
	}

	protected internal virtual void SetTooltip(Form mdiChild, string tooltip)
	{
		TabPageAdv tabPageAdvFromForm = MDITabPanel.GetTabPageAdvFromForm(mdiChild);
		if (tabPageAdvFromForm != null)
		{
			tabPageAdvFromForm.ToolTipText = tooltip;
		}
	}

	protected internal virtual bool RemoveMdiChild(Form mdiChild, bool removeFromHashtable)
	{
		SuspendChildActivation();
		if (MDITabPanel.RemoveMdiChild(mdiChild, removeFromHashtable))
		{
			ResumeChildActivation();
			m_MDIManager.keyboardActivationHelper.RemoveMdiChild(mdiChild);
			if (MDITabPanel.TabPages.Count == 0)
			{
				m_MDIManager.RemoveTabHost(this);
			}
			m_MDIManager.UpdateActiveTabHost();
			return true;
		}
		ResumeChildActivation();
		return false;
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg != 7)
		{
			if (m.Msg == 34)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowPos(base.Handle, (IntPtr)1, 0, 0, 0, 0, 19);
			}
			else
			{
				base.WndProc(ref m);
			}
		}
	}

	[DocumentationExclude]
	protected void Splitter_Moved(object sender, SplitterHostEventArgs e)
	{
		if (sender is SplitterHost { LayoutPanel: var layoutPanel })
		{
			if (layoutPanel != null)
			{
				layoutPanel.SplitterMoved(e.Delta);
				layoutPanel.DividePanelOnTwoParts();
			}
			base.Parent.PerformLayout();
		}
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		base.OnVisibleChanged(e);
		if (SplitterHost != null && m_MDIManager != null && m_MDIManager.ShouldRaiseBeforeMDIChildEvent)
		{
			if (base.Visible)
			{
				Rectangle splitterBounds = SplitterBounds;
				Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowPos(SplitterHost.Handle, IntPtr.Zero, splitterBounds.X, splitterBounds.Y, splitterBounds.Width, splitterBounds.Height, 84);
			}
			else
			{
				SplitterHost.Hide();
			}
		}
	}

	protected override void OnPaintBackground(PaintEventArgs e)
	{
		base.OnPaintBackground(e);
		if (!base.Visible || MDITabPanel == null || !MDITabPanel.BorderVisible)
		{
			return;
		}
		Graphics graphics = e.Graphics;
		Rectangle bounds = new Rectangle(0, 0, base.Bounds.Width, base.Bounds.Height);
		int borderWidth = MDITabPanel.BorderWidth;
		Color color = SystemColors.ControlDark;
		if (MDITabPanel.Renderer != null && MDITabPanel.Renderer.Renderers != null && MDITabPanel.SelectedIndex >= 0 && MDITabPanel.SelectedIndex < MDITabPanel.Renderer.Renderers.Count)
		{
			TabRendererBase tabRendererBase = MDITabPanel.Renderer.Renderers[MDITabPanel.SelectedIndex] as TabRendererBase;
			if (MDITabPanel.BorderColor != MDITabPanel.BackColor)
			{
				color = MDITabPanel.BorderColor;
			}
			else if (tabRendererBase != null)
			{
				color = tabRendererBase.TabBorderColor;
			}
		}
		Rectangle rect = new Rectangle(new Point(bounds.X, bounds.Y), new Size(bounds.Right, borderWidth));
		Rectangle rect2 = new Rectangle(bounds.Left, bounds.Bottom - borderWidth, bounds.Right, borderWidth);
		Rectangle rect3 = new Rectangle(new Point(bounds.X, bounds.Y), new Size(borderWidth, bounds.Bottom - 1));
		Rectangle rect4 = new Rectangle(bounds.Right - borderWidth, bounds.Top, borderWidth, bounds.Bottom - 1);
		using (SolidBrush brush = new SolidBrush(MDITabPanel.ActiveTabColor))
		{
			graphics.FillRectangle(brush, rect3);
			graphics.FillRectangle(brush, rect2);
			graphics.FillRectangle(brush, rect4);
			graphics.FillRectangle(brush, rect);
		}
		Color lightBorderColor = WindowsXPThemeColors.TabControlAdvLightBorderColor;
		if (IsVistaOS)
		{
			lightBorderColor = Color.White;
		}
		Point[] points = new Point[3]
		{
			new Point(bounds.Left, bounds.Bottom - 3),
			new Point(bounds.Left, bounds.Bottom),
			new Point(bounds.Left + 3, bounds.Bottom)
		};
		Point[] points2 = new Point[3]
		{
			new Point(bounds.Right, bounds.Bottom - 3),
			new Point(bounds.Right, bounds.Bottom),
			new Point(bounds.Right - 3, bounds.Bottom)
		};
		Point[] points3 = new Point[3]
		{
			new Point(bounds.Right, bounds.Top + 3 - 1),
			new Point(bounds.Right, bounds.Top),
			new Point(bounds.Right - 3 + 1, bounds.Top)
		};
		Point[] points4 = new Point[3]
		{
			new Point(bounds.Left, bounds.Top + 3 - 1),
			new Point(bounds.Left, bounds.Top),
			new Point(bounds.Left + 3 - 1, bounds.Top)
		};
		GraphicsPath graphicsPath = new GraphicsPath();
		switch (Alignment)
		{
		case TabAlignment.Top:
		{
			DrawTopAlignmentBorders(graphics, bounds, color, lightBorderColor);
			using (SolidBrush brush5 = new SolidBrush(Color.White))
			{
				graphicsPath.AddLines(points);
				graphics.FillPath(brush5, graphicsPath);
				graphicsPath.Reset();
				graphicsPath.AddLines(points2);
				graphics.FillPath(brush5, graphicsPath);
			}
			break;
		}
		case TabAlignment.Left:
		{
			DrawLeftAlignmentBorders(graphics, bounds, color, lightBorderColor);
			using (SolidBrush brush4 = new SolidBrush(Color.White))
			{
				graphicsPath.AddLines(points2);
				graphics.FillPath(brush4, graphicsPath);
				graphicsPath.Reset();
				graphicsPath.AddLines(points3);
				graphics.FillPath(brush4, graphicsPath);
			}
			break;
		}
		case TabAlignment.Bottom:
		{
			bounds.Y++;
			DrawBottomAlignmentBorders(graphics, bounds, color, lightBorderColor);
			using (SolidBrush brush3 = new SolidBrush(Color.White))
			{
				graphicsPath.AddLines(points4);
				graphics.FillPath(brush3, graphicsPath);
				graphicsPath.Reset();
				graphicsPath.AddLines(points3);
				graphics.FillPath(brush3, graphicsPath);
			}
			break;
		}
		case TabAlignment.Right:
		{
			bounds.X++;
			DrawRightAlignmentBorders(graphics, bounds, color, lightBorderColor);
			using (SolidBrush brush2 = new SolidBrush(Color.White))
			{
				graphicsPath.AddLines(points);
				graphics.FillPath(brush2, graphicsPath);
				graphicsPath.Reset();
				graphicsPath.AddLines(points4);
				graphics.FillPath(brush2, graphicsPath);
			}
			break;
		}
		}
		graphicsPath.Dispose();
		using Pen pen = new Pen(color);
		Point pt = Point.Empty;
		Point pt2 = Point.Empty;
		if (Alignment == TabAlignment.Top)
		{
			pt = new Point(bounds.Left, bounds.Top + MDITabPanel.Height);
			pt2 = new Point(bounds.Right, bounds.Top + MDITabPanel.Height);
			if (IsVS2008)
			{
				pt.X += MDITabPanel.BorderWidth;
				pt2.X -= MDITabPanel.BorderWidth;
			}
		}
		else if (Alignment == TabAlignment.Bottom)
		{
			pt = new Point(bounds.Left, bounds.Bottom - MDITabPanel.Height - 2);
			pt2 = new Point(bounds.Right, bounds.Bottom - MDITabPanel.Height - 2);
			if (IsVS2008)
			{
				pt.X += MDITabPanel.BorderWidth;
				pt2.X -= MDITabPanel.BorderWidth;
			}
		}
		graphics.DrawLine(pen, pt, pt2);
	}

	[DocumentationExclude]
	public void ListenToSplitterHost(SplitterHost splitterHost)
	{
		if (splitterHost == null)
		{
			throw new ArgumentNullException("splitterHost");
		}
		m_SplitterHost = splitterHost;
		m_SplitterHost.SplitterMoved += Splitter_Moved;
	}

	internal void PerformLayoutInternal(Size pSize)
	{
		if (mdiTabPanel == null)
		{
			return;
		}
		Size size = mdiTabPanel.GetMDITabPanelPreferredSize().ToSize();
		if (mdiTabPanel.IsVerticalAlignment)
		{
			size = new Size(size.Height, size.Width);
			if (pSize.Width > size.Width + m_borderHeight)
			{
				base.Width = size.Width + m_borderHeight - 1;
				mdiTabPanel.Width = size.Width;
			}
			else
			{
				base.Width = pSize.Width;
				mdiTabPanel.Width = pSize.Width - m_borderHeight - 1;
			}
			mdiTabPanel.Height = pSize.Height;
		}
		else
		{
			if (pSize.Height > size.Height + m_borderHeight)
			{
				base.Height = size.Height + m_borderHeight;
				mdiTabPanel.Height = size.Height - 1;
			}
			else
			{
				base.Height = pSize.Height;
				mdiTabPanel.Height = pSize.Height - m_borderHeight - 1;
			}
			mdiTabPanel.Width = pSize.Width;
		}
	}

	private void DrawTopAlignmentBorders(Graphics g, Rectangle bounds, Color borderColor, Color lightBorderColor)
	{
		if (IsVS2008)
		{
			using Pen pen = new Pen(lightBorderColor);
			using GraphicsPath path = GetOuterTopAlignmentBordersPath(new Rectangle(bounds.X + 1, bounds.Y, bounds.Width - 2, bounds.Height - 1));
			g.DrawPath(pen, path);
		}
		using Pen pen2 = new Pen(borderColor);
		using (GraphicsPath path2 = GetOuterTopAlignmentBordersPath(bounds))
		{
			g.DrawPath(pen2, path2);
		}
		using GraphicsPath path3 = GetInnerTopAlignmentBordersPath(bounds);
		g.DrawPath(pen2, path3);
	}

	private void DrawLeftAlignmentBorders(Graphics g, Rectangle bounds, Color borderColor, Color lightBorderColor)
	{
		if (IsVS2008)
		{
			using Pen pen = new Pen(lightBorderColor);
			using GraphicsPath path = GetOuterLeftAlignmentBordersPath(new Rectangle(bounds.X, bounds.Y + 1, bounds.Width - 1, bounds.Height - 2));
			g.DrawPath(pen, path);
		}
		using Pen pen2 = new Pen(borderColor);
		using (GraphicsPath path2 = GetOuterLeftAlignmentBordersPath(bounds))
		{
			g.DrawPath(pen2, path2);
		}
		using GraphicsPath path3 = GetInnerLeftAlignmentBordersPath(bounds);
		g.DrawPath(pen2, path3);
	}

	private void DrawBottomAlignmentBorders(Graphics g, Rectangle bounds, Color borderColor, Color lightBorderColor)
	{
		if (IsVS2008)
		{
			using Pen pen = new Pen(lightBorderColor);
			using GraphicsPath path = GetOuterBottomAlignmentBordersPath(new Rectangle(bounds.X + 1, bounds.Y + 1, bounds.Width - 2, bounds.Height - 1));
			g.DrawPath(pen, path);
		}
		using Pen pen2 = new Pen(borderColor);
		using (GraphicsPath path2 = GetOuterBottomAlignmentBordersPath(bounds))
		{
			g.DrawPath(pen2, path2);
		}
		using GraphicsPath path3 = GetInnerBottomAlignmentBordersPath(bounds);
		g.DrawPath(pen2, path3);
	}

	private void DrawRightAlignmentBorders(Graphics g, Rectangle bounds, Color borderColor, Color lightBorderColor)
	{
		if (IsVS2008)
		{
			using Pen pen = new Pen(lightBorderColor);
			using GraphicsPath path = GetOuterRightAlignmentBordersPath(new Rectangle(bounds.X + 1, bounds.Y + 1, bounds.Width - 1, bounds.Height - 2));
			g.DrawPath(pen, path);
		}
		using Pen pen2 = new Pen(borderColor);
		using (GraphicsPath path2 = GetOuterRightAlignmentBordersPath(bounds))
		{
			g.DrawPath(pen2, path2);
		}
		using GraphicsPath path3 = GetInnerRightAlignmentBordersPath(bounds);
		g.DrawPath(pen2, path3);
	}

	private GraphicsPath GetOuterTopAlignmentBordersPath(Rectangle bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		if (!IsOffice2007Style && !IsDockingWhidbeyStyle)
		{
			graphicsPath.AddLine(bounds.Left, bounds.Top, bounds.Right, bounds.Top);
		}
		graphicsPath.AddLine(bounds.Left, bounds.Top, bounds.Left, bounds.Bottom);
		graphicsPath.AddLine(bounds.Left, bounds.Bottom - 3, bounds.Left + 3, bounds.Bottom);
		graphicsPath.AddLine(bounds.Left, bounds.Bottom - 1, bounds.Right, bounds.Bottom - 1);
		graphicsPath.AddLine(bounds.Right - 3, bounds.Bottom - 1, bounds.Right, bounds.Bottom - 3 - 1);
		graphicsPath.AddLine(bounds.Right - 1, bounds.Top, bounds.Right - 1, bounds.Bottom);
		return graphicsPath;
	}

	private GraphicsPath GetInnerTopAlignmentBordersPath(Rectangle bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		int borderWidth = MDITabPanel.BorderWidth;
		graphicsPath.AddLine(bounds.Left + borderWidth - 1, bounds.Top, bounds.Left + borderWidth - 1, bounds.Bottom - borderWidth);
		graphicsPath.AddLine(bounds.Left + borderWidth - 1, bounds.Bottom - borderWidth, bounds.Right - borderWidth, bounds.Bottom - borderWidth);
		graphicsPath.AddLine(bounds.Right - borderWidth, bounds.Top, bounds.Right - borderWidth, bounds.Bottom - borderWidth);
		return graphicsPath;
	}

	private GraphicsPath GetOuterLeftAlignmentBordersPath(Rectangle bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		if (!IsOffice2007Style && !IsDockingWhidbeyStyle)
		{
			graphicsPath.AddLine(bounds.Left, bounds.Top, bounds.Left, bounds.Bottom);
		}
		graphicsPath.AddLine(bounds.Left, bounds.Top, bounds.Right, bounds.Top);
		graphicsPath.AddLine(bounds.Right - 3, bounds.Top, bounds.Right, bounds.Top + 3);
		graphicsPath.AddLine(bounds.Right - 1, bounds.Top, bounds.Right - 1, bounds.Bottom);
		graphicsPath.AddLine(bounds.Right, bounds.Bottom - 3 - 1, bounds.Right - 3, bounds.Bottom - 1);
		graphicsPath.AddLine(bounds.Left, bounds.Bottom - 1, bounds.Right, bounds.Bottom - 1);
		return graphicsPath;
	}

	private GraphicsPath GetInnerLeftAlignmentBordersPath(Rectangle bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		int borderWidth = MDITabPanel.BorderWidth;
		graphicsPath.AddLine(bounds.Left, bounds.Top + borderWidth - 1, bounds.Right - borderWidth, bounds.Top + borderWidth - 1);
		graphicsPath.AddLine(bounds.Right - borderWidth, bounds.Top + borderWidth - 1, bounds.Right - borderWidth, bounds.Bottom - borderWidth);
		graphicsPath.AddLine(bounds.Left, bounds.Bottom - borderWidth, bounds.Right - borderWidth, bounds.Bottom - borderWidth);
		return graphicsPath;
	}

	private GraphicsPath GetOuterBottomAlignmentBordersPath(Rectangle bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		if (!IsOffice2007Style && !IsDockingWhidbeyStyle)
		{
			graphicsPath.AddLine(bounds.Right, bounds.Bottom - 2, bounds.Left, bounds.Bottom - 2);
		}
		graphicsPath.AddLine(bounds.Left, bounds.Top, bounds.Left, bounds.Bottom - 2);
		graphicsPath.AddLine(bounds.Left - 1, bounds.Top + 3 - 1, bounds.Left + 3 - 1, bounds.Top - 1);
		graphicsPath.AddLine(bounds.Left, bounds.Top - 1, bounds.Right, bounds.Top - 1);
		graphicsPath.AddLine(bounds.Right - 3, bounds.Top - 1, bounds.Right, bounds.Top + 3 - 1);
		graphicsPath.AddLine(bounds.Right - 1, bounds.Top, bounds.Right - 1, bounds.Bottom - 2);
		return graphicsPath;
	}

	private GraphicsPath GetInnerBottomAlignmentBordersPath(Rectangle bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		int borderWidth = MDITabPanel.BorderWidth;
		graphicsPath.AddLine(bounds.Left + borderWidth - 1, bounds.Top + borderWidth - 1, bounds.Left + borderWidth - 1, bounds.Bottom - 2);
		graphicsPath.AddLine(bounds.Left + borderWidth - 1, bounds.Top + borderWidth - 2, bounds.Right - borderWidth, bounds.Top + borderWidth - 2);
		graphicsPath.AddLine(bounds.Right - borderWidth, bounds.Top + borderWidth - 1, bounds.Right - borderWidth, bounds.Bottom - 2);
		return graphicsPath;
	}

	private GraphicsPath GetOuterRightAlignmentBordersPath(Rectangle bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		if (!IsOffice2007Style && !IsDockingWhidbeyStyle)
		{
			graphicsPath.AddLine(bounds.Right - 2, bounds.Top, bounds.Right - 2, bounds.Bottom);
		}
		graphicsPath.AddLine(bounds.Left, bounds.Bottom - 1, bounds.Right - 2, bounds.Bottom - 1);
		graphicsPath.AddLine(bounds.Left + 3 - 1, bounds.Bottom, bounds.Left - 1, bounds.Bottom - 3);
		graphicsPath.AddLine(bounds.Left - 1, bounds.Bottom, bounds.Left - 1, bounds.Top);
		graphicsPath.AddLine(bounds.Left - 2, bounds.Top + 3, bounds.Left + 3 - 2, bounds.Top);
		graphicsPath.AddLine(bounds.Left, bounds.Top, bounds.Right - 2, bounds.Top);
		return graphicsPath;
	}

	private GraphicsPath GetInnerRightAlignmentBordersPath(Rectangle bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		int borderWidth = MDITabPanel.BorderWidth;
		graphicsPath.AddLine(bounds.Right - 2, bounds.Bottom - borderWidth, bounds.Left + borderWidth - 1, bounds.Bottom - borderWidth);
		graphicsPath.AddLine(bounds.Left + borderWidth - 2, bounds.Bottom - borderWidth, bounds.Left + borderWidth - 2, bounds.Top + borderWidth - 1);
		graphicsPath.AddLine(bounds.Left + borderWidth - 1, bounds.Top + borderWidth - 1, bounds.Right - 2, bounds.Top + borderWidth - 1);
		return graphicsPath;
	}
}
