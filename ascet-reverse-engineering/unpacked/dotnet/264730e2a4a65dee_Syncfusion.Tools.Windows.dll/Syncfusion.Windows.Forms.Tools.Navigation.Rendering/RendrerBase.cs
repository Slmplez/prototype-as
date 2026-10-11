using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Windows.Forms.Tools.Navigation.Layouting;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Rendering;

public abstract class RendrerBase : IRenderer, IDisposable
{
	public readonly int PressedOffset = 1;

	protected NavigationView m_navView;

	protected Graphics m_g;

	protected ILayouter m_layouter;

	protected IAreasStateCache m_states;

	public virtual void RenderControl(NavigationView navView, Graphics g, ILayouter layouter, IAreasStateCache states)
	{
		InitRenderer(navView, g, layouter, states);
		RenderBackground();
		LayoutInfo layout = layouter.GetLayout(HitTestAreas.BarImage);
		if (layout != null)
		{
			RenderBarImage(layout);
		}
		RenderHistoryButtonsArea();
		RenderBarsArea();
		LayoutInfo layout2 = m_layouter.GetLayout(HitTestAreas.DropDownButton);
		if (layout2 != null)
		{
			RenderDropDown(layout2);
		}
		LayoutInfo layout3 = m_layouter.GetLayout(HitTestAreas.CustomButtons);
		if (layout3 != null)
		{
			RenderCustomButtonsArea();
		}
		RenderBorders();
		ClearReferences();
	}

	protected virtual void InitRenderer(NavigationView navView, Graphics g, ILayouter layouter, IAreasStateCache states)
	{
		m_navView = navView;
		m_g = g;
		m_layouter = layouter;
		m_states = states;
	}

	protected virtual void RenderBackground()
	{
		using Brush brush = new SolidBrush(Office2007Colors.Default.TabBarSplitterTabEndColor);
		m_g.FillRectangle(brush, m_navView.ClientRectangle);
	}

	protected virtual void RenderBorders()
	{
		if (m_navView.ShowBorder)
		{
			Rectangle borderBounds = m_layouter.BorderBounds;
			using Pen pen = new Pen(m_navView.BorderColor);
			m_g.DrawRectangle(pen, borderBounds);
		}
	}

	protected virtual void RenderHistoryButtonsArea()
	{
		RenderHistoryButtonsBackground();
		LayoutInfo layout = m_layouter.GetLayout(HitTestAreas.HistoryBackButton);
		if (layout != null)
		{
			RenderHistoryBackButton(layout);
		}
		LayoutInfo layout2 = m_layouter.GetLayout(HitTestAreas.HistoryForwardButton);
		if (layout2 != null)
		{
			RenderHistoryForwardButton(layout2);
		}
		LayoutInfo layout3 = m_layouter.GetLayout(HitTestAreas.HistoryDropDownButton);
		if (layout3 != null)
		{
			RenderHistoryDropDownButton(layout3);
		}
	}

	protected virtual void RenderHistoryButtonsBackground()
	{
	}

	protected virtual void RenderBarImage(LayoutInfo layout)
	{
		Bar selectedBar = m_navView.SelectedBar;
		Image barImage = Bar.Helper.GetBarImage(selectedBar, m_navView);
		AreaStates areaState = m_states.GetAreaState(layout);
		if (barImage != null)
		{
			Rectangle barImageBounds = GetBarImageBounds(areaState, layout.Bounds);
			Rectangle srcRect = new Rectangle(Point.Empty, barImage.Size);
			m_g.DrawImage(barImage, barImageBounds, srcRect, GraphicsUnit.Pixel);
		}
		else if (!selectedBar.Enabled)
		{
			barImage = Bar.Helper.GetBarImage(selectedBar, m_navView, bBarEnabled: true);
			if (barImage != null)
			{
				Rectangle barImageBounds2 = GetBarImageBounds(areaState, layout.Bounds);
				DrawingUtils.DrawGrayedImage(srcRect: new Rectangle(Point.Empty, barImage.Size), g: m_g, image: barImage, destRect: barImageBounds2, transparency: 1f);
			}
		}
	}

	private Rectangle GetBarImageBounds(AreaStates state, Rectangle bounds)
	{
		if (state == AreaStates.Pressed && !m_navView.InEditingMode)
		{
			bounds.Offset(1, 1);
		}
		return bounds;
	}

	protected virtual void RenderHistoryButtonsImage(Image image, Rectangle bounds)
	{
		using (new CMirroredDrawer(m_g, bounds, m_navView.RightToLeft == RightToLeft.Yes))
		{
			m_g.DrawImage(image, bounds);
		}
	}

	protected virtual void RenderHistoryBackButton(LayoutInfo layout)
	{
		Image image = Resources.hbDefault;
		switch (m_states.GetAreaState(layout))
		{
		case AreaStates.Hot:
			image = Resources.hbHot;
			break;
		case AreaStates.Disabled:
			image = Resources.hbDisabled;
			break;
		case AreaStates.Pressed:
			image = Resources.hbPressed;
			break;
		}
		RenderHistoryButtonsImage(image, layout.Bounds);
	}

	protected virtual void RenderHistoryForwardButton(LayoutInfo layout)
	{
		Image image = Resources.hfDefault;
		switch (m_states.GetAreaState(layout))
		{
		case AreaStates.Hot:
			image = Resources.hfHot;
			break;
		case AreaStates.Disabled:
			image = Resources.hfDisabled;
			break;
		case AreaStates.Pressed:
			image = Resources.hfPressed;
			break;
		}
		RenderHistoryButtonsImage(image, layout.Bounds);
	}

	protected virtual void RenderHistoryDropDownButton(LayoutInfo layout)
	{
		Image image = Resources.hddDefault;
		switch (m_states.GetAreaState(layout))
		{
		case AreaStates.Hot:
			image = Resources.hddHot;
			break;
		case AreaStates.Disabled:
			image = Resources.hddDisabled;
			break;
		case AreaStates.Pressed:
			image = Resources.hddPressed;
			break;
		}
		RenderHistoryButtonsImage(image, layout.Bounds);
	}

	protected abstract void RenderEditorArea();

	protected void SetTextBoxBackColor(Color clrBack)
	{
		TextBox textBox = m_navView.TextBox;
		textBox.BackColor = clrBack;
	}

	protected virtual void RenderBarsArea()
	{
		if (m_navView.AllowEditMode && m_navView.InEditingMode)
		{
			RenderEditorArea();
		}
		else
		{
			RenderBars();
		}
	}

	protected virtual void RenderBars()
	{
		BarLayoutInfoCollection barLayoutInfos = m_layouter.BarLayoutInfos;
		List<Bar> selectedBars = m_navView.SelectedBars;
		foreach (BarLayoutInfo item in barLayoutInfos)
		{
			Bar bar = selectedBars[item.Index];
			RenderBar(bar, item);
		}
	}

	protected virtual void RenderBar(Bar bar, BarLayoutInfo layout)
	{
		RenderBarBackground(bar, layout);
		if (!layout.Text.Bounds.IsEmpty)
		{
			RenderBarTextArea(bar, layout);
		}
		if (!layout.DropDown.Bounds.IsEmpty)
		{
			RenderBarDropDown(bar, layout);
		}
		RenderBarBorders(bar, layout);
	}

	protected abstract void RenderBarBackground(Bar bar, BarLayoutInfo layout);

	protected abstract void RenderBorder(AreaStates state, Rectangle bounds);

	protected virtual void RenderBarTextArea(Bar bar, BarLayoutInfo layout)
	{
		AreaStates areaState = m_states.GetAreaState(layout);
		RenderBarText(bar, areaState, layout.Text.Bounds);
	}

	protected virtual void RenderBarText(Bar bar, AreaStates state, Rectangle textBounds)
	{
		if (!textBounds.IsEmpty)
		{
			TextFormatFlags textFormat = m_layouter.TextFormat;
			textFormat = ((m_navView.RightToLeft == RightToLeft.Yes) ? (textFormat | TextFormatFlags.RightToLeft) : (textFormat & ~TextFormatFlags.RightToLeft));
			if (m_navView.VisualStyle == VisualStyles.Office2007 && m_navView.Office2007ColorTheme == Office2007Theme.Black && state == AreaStates.Default)
			{
				TextRenderer.DrawText(m_g, bar.Text, m_navView.Font, textBounds, Color.White, textFormat);
			}
			else
			{
				TextRenderer.DrawText(m_g, bar.Text, m_navView.Font, textBounds, m_navView.ForeColor, textFormat);
			}
		}
	}

	protected virtual void RenderBarDropDown(Bar bar, BarLayoutInfo layout)
	{
		RenderBarDropDownArrow(bar, layout);
	}

	protected virtual void RenderBarDropDownArrow(Bar bar, BarLayoutInfo layout)
	{
		AreaStates areaState = m_states.GetAreaState(layout);
		Image image = ((!layout.ShowShevron) ? ((areaState == AreaStates.Pressed) ? Resources.arrowD : Resources.arrowR) : Resources.chevron);
		Rectangle barDropDownArrowBounds = GetBarDropDownArrowBounds(layout, image);
		using (new CMirroredDrawer(m_g, barDropDownArrowBounds, m_navView.RightToLeft == RightToLeft.Yes))
		{
			m_g.DrawImage(image, barDropDownArrowBounds);
		}
	}

	protected virtual Rectangle GetBarDropDownArrowBounds(BarLayoutInfo layout, Image image)
	{
		Rectangle bounds = layout.DropDown.Bounds;
		Point location = new Point(bounds.Left + (bounds.Width - image.Width) / 2, bounds.Top + (bounds.Height - image.Height) / 2);
		return new Rectangle(location, image.Size);
	}

	protected virtual void RenderBarBorders(Bar bar, BarLayoutInfo layout)
	{
		AreaStates areaState = m_states.GetAreaState(layout);
		bool flag = areaState != AreaStates.Default;
		RenderBarBorder(areaState, flag, layout.Bounds);
		RenderBarDropDownBorder(areaState, flag, layout);
	}

	protected virtual void RenderBarBorder(AreaStates barState, bool drawBarBorder, Rectangle bounds)
	{
		if (drawBarBorder)
		{
			RenderBorder(barState, bounds);
		}
	}

	protected virtual void RenderBarDropDownBorder(AreaStates barState, bool bDrawBarBorder, BarLayoutInfo layout)
	{
		LayoutInfo dropDown = layout.DropDown;
		Rectangle bounds = dropDown.Bounds;
		if (bounds.Width > 0 && bounds.Height > 0)
		{
			AreaStates areaState = m_states.GetAreaState(layout);
			if (bDrawBarBorder || areaState != AreaStates.Default)
			{
				RenderBorder(barState, bounds);
			}
		}
	}

	protected static Brush GetBarBackgroundBrush(Rectangle bounds, Color cl1, Color cl2, Blend blend)
	{
		LinearGradientBrush linearGradientBrush = new LinearGradientBrush(bounds, cl1, cl2, 90f);
		linearGradientBrush.Blend = blend;
		linearGradientBrush.WrapMode = WrapMode.TileFlipXY;
		return linearGradientBrush;
	}

	protected abstract void RenderDropDown(LayoutInfo layout);

	protected virtual void RenderCustomButtonsArea()
	{
	}

	public void Dispose()
	{
		GC.SuppressFinalize(this);
		Dispose(disposing: true);
	}

	~RendrerBase()
	{
		Dispose(disposing: false);
	}

	protected void Dispose(bool disposing)
	{
		if (disposing)
		{
			ClearReferences();
		}
	}

	private void ClearReferences()
	{
		m_navView = null;
		m_g = null;
		m_layouter = null;
	}
}
