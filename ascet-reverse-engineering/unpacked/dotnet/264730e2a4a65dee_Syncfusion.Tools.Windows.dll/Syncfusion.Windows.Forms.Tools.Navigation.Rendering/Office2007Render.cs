using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using Syncfusion.Windows.Forms.Tools.Navigation.Layouting;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Rendering;

internal class Office2007Render : RendrerBase
{
	protected class NavigationViewDropDownButton : DropDownButton
	{
		public NavigationView NavView => control as NavigationView;

		protected override bool IsControlActive => false;

		public NavigationViewDropDownButton(NavigationView navView)
			: base(navView)
		{
		}
	}

	protected NavigationViewDropDownButton m_dropDownButton;

	protected Office2007Colors ColorTable => Office2007Colors.GetColorTable(m_navView.Office2007ColorTheme);

	private Color BackgroundColor
	{
		get
		{
			Office2007Colors colorTable = Office2007Colors.GetColorTable(m_navView.Office2007ColorTheme);
			return colorTable.TabBarSplitterTabEndColor;
		}
	}

	protected override void InitRenderer(NavigationView navView, Graphics g, ILayouter layouter, IAreasStateCache states)
	{
		base.InitRenderer(navView, g, layouter, states);
		if (m_dropDownButton != null && m_dropDownButton.NavView != navView)
		{
			((IDisposable)m_dropDownButton).Dispose();
			m_dropDownButton = null;
		}
		if (m_dropDownButton == null)
		{
			m_dropDownButton = new NavigationViewDropDownButton(m_navView);
			m_dropDownButton.Style = VisualStyle.Office2007;
		}
	}

	protected override void RenderEditorArea()
	{
		LayoutInfo layout = m_layouter.GetLayout(HitTestAreas.Space);
		Rectangle bounds = layout.Bounds;
		if (bounds.Width > 0 && bounds.Height > 0)
		{
			Office2007Colors colorTable = ColorTable;
			SetTextBoxBackColor(colorTable.MenuTextBoxBackColor);
			bounds.Width++;
			using (Brush brush = new SolidBrush(colorTable.MenuTextBoxBackColor))
			{
				m_g.FillRectangle(brush, bounds);
			}
			using Pen pen = new Pen(colorTable.MenuTextBoxBorderColor);
			bounds.Height--;
			m_g.DrawRectangle(pen, bounds);
		}
	}

	protected override void RenderBars()
	{
		base.RenderBars();
		LayoutInfo layout = m_layouter.GetLayout(HitTestAreas.Space);
		if (layout != null)
		{
			using (Brush brush = new SolidBrush(BackgroundColor))
			{
				m_g.FillRectangle(brush, layout.Bounds);
			}
		}
	}

	protected override void RenderBarBackground(Bar bar, BarLayoutInfo layout)
	{
		RenderArea(layout);
	}

	protected override void RenderBorder(AreaStates state, Rectangle bounds)
	{
		if (bounds.Width > 0 && bounds.Height > 0)
		{
			Office2007Colors colorTable = ColorTable;
			Color color;
			switch (state)
			{
			case AreaStates.Hot:
			case AreaStates.Active:
				color = colorTable.ButtonSelectedBorderColor;
				break;
			case AreaStates.Pressed:
				color = colorTable.ButtonPressedBorderColor;
				break;
			default:
				color = colorTable.ButtonDefaultBorderColor;
				break;
			}
			using Pen pen = new Pen(color);
			bounds.Height--;
			bounds.Width--;
			m_g.DrawRectangle(pen, bounds);
		}
	}

	protected override void RenderBarDropDown(Bar bar, BarLayoutInfo layout)
	{
		LayoutInfo dropDown = layout.DropDown;
		AreaStates areaState = m_states.GetAreaState(dropDown);
		Rectangle bounds = layout.DropDown.Bounds;
		if (areaState == AreaStates.Hot || areaState == AreaStates.Pressed)
		{
			RenderBackgroundRect(areaState, bounds);
		}
		if (areaState != AreaStates.Default)
		{
			RenderBorder(areaState, bounds);
		}
		base.RenderBarDropDown(bar, layout);
	}

	protected override void RenderBarBorders(Bar bar, BarLayoutInfo info)
	{
		AreaStates areaState = m_states.GetAreaState(info);
		bool flag = areaState == AreaStates.Active || areaState == AreaStates.Pressed;
		if (flag)
		{
			RenderBorder(areaState, info.Bounds);
		}
		LayoutInfo dropDown = info.DropDown;
		if (!dropDown.Bounds.IsEmpty)
		{
			AreaStates areaState2 = m_states.GetAreaState(dropDown);
			if (flag || areaState2 == AreaStates.Hot || areaState2 == AreaStates.Pressed)
			{
				RenderBorder(areaState, dropDown.Bounds);
			}
		}
	}

	protected override void RenderDropDown(LayoutInfo layout)
	{
		Rectangle bounds = layout.Bounds;
		m_dropDownButton.SuspendInvalidates = true;
		m_dropDownButton.Office2007ColorTheme = m_navView.Office2007ColorTheme;
		ResetDropDownState();
		m_dropDownButton.IsActive = true;
		switch (m_states.GetAreaState(layout))
		{
		case AreaStates.Hot:
		case AreaStates.Active:
			m_dropDownButton.Hot = true;
			break;
		case AreaStates.Pressed:
			m_dropDownButton.Pushed = true;
			break;
		case AreaStates.Disabled:
			m_dropDownButton.Enabled = false;
			break;
		}
		m_dropDownButton.Bounds = bounds;
		m_dropDownButton.OnPaint(m_g);
		m_dropDownButton.SuspendInvalidates = false;
	}

	private void RenderArea(LayoutInfo layout)
	{
		Rectangle bounds = layout.Bounds;
		AreaStates areaState = m_states.GetAreaState(layout);
		RenderBackgroundRect(areaState, bounds);
	}

	private void RenderBackgroundRect(AreaStates state, Rectangle bounds)
	{
		if (bounds.Width > 0 && bounds.Height > 0)
		{
			_ = ColorTable;
			Brush brush;
			switch (state)
			{
			case AreaStates.Hot:
			case AreaStates.Active:
				brush = GetBarBackgroundBrushHot(bounds);
				break;
			case AreaStates.Pressed:
				brush = GetBarBackgroundBrushPressed(bounds);
				break;
			default:
				brush = GetBarBackgroundBrushDefault(bounds);
				break;
			}
			m_g.FillRectangle(brush, bounds);
			brush.Dispose();
		}
	}

	private Brush GetBarBackgroundBrushDefault(Rectangle bounds)
	{
		Office2007Colors colorTable = ColorTable;
		Color buttonDefaultTopColor = colorTable.ButtonDefaultTopColor;
		Color buttonDefaultBottomColor = colorTable.ButtonDefaultBottomColor;
		Blend blend = new Blend();
		blend.Positions = new float[4] { 0f, 0.45f, 0.45f, 1f };
		blend.Factors = new float[4] { 0f, 0.5f, 1.1f, 0.5f };
		return RendrerBase.GetBarBackgroundBrush(bounds, buttonDefaultTopColor, buttonDefaultBottomColor, blend);
	}

	private Brush GetBarBackgroundBrushHot(Rectangle bounds)
	{
		Office2007Colors colorTable = ColorTable;
		Color buttonSelectedTopColor = colorTable.ButtonSelectedTopColor;
		Color buttonSelectedBottomColor = colorTable.ButtonSelectedBottomColor;
		Blend blend = new Blend();
		blend.Positions = new float[4] { 0f, 0.45f, 0.5f, 1f };
		blend.Factors = new float[4] { 0f, 0.4f, 0.8f, 0.2f };
		return RendrerBase.GetBarBackgroundBrush(bounds, buttonSelectedTopColor, buttonSelectedBottomColor, blend);
	}

	private Brush GetBarBackgroundBrushPressed(Rectangle bounds)
	{
		Office2007Colors colorTable = ColorTable;
		Color buttonPressedTopColor = colorTable.ButtonPressedTopColor;
		Color buttonSelectedBottomColor = colorTable.ButtonSelectedBottomColor;
		Blend blend = new Blend();
		blend.Positions = new float[4] { 0f, 0.5f, 0.55f, 1f };
		blend.Factors = new float[4] { 0f, 0.6f, 1f, 0.4f };
		return RendrerBase.GetBarBackgroundBrush(bounds, buttonPressedTopColor, buttonSelectedBottomColor, blend);
	}

	private void ResetDropDownState()
	{
		m_dropDownButton.Hot = false;
		m_dropDownButton.IsActive = false;
		m_dropDownButton.Pushed = false;
		m_dropDownButton.Enabled = true;
		m_dropDownButton.IsDroppedDown = false;
	}
}
