using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Navigation.Layouting;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Rendering;

internal class VistaRender : RendrerBase
{
	protected override void RenderBackground()
	{
		base.RenderBackground();
		LayoutInfo layout = m_layouter.GetLayout(HitTestAreas.BarImage);
		if (layout != null)
		{
			LayoutInfo layout2 = m_layouter.GetLayout(HitTestAreas.DropDownButton);
			Rectangle bounds = layout.Bounds;
			Rectangle bounds2 = layout2.Bounds;
			m_g.FillRectangle(Brushes.White, bounds.Left, bounds2.Top, bounds.Width + 1, bounds2.Height);
		}
	}

	protected override void RenderBorders()
	{
		if (m_navView.ShowBorder)
		{
			Color topColor = Color.FromArgb(228, 240, 252);
			Color bottomColor = Color.FromArgb(231, 241, 252);
			Color topColor2 = Color.FromArgb(90, 94, 98);
			Color bottomColor2 = Color.FromArgb(170, 177, 186);
			Rectangle borderBounds = m_layouter.BorderBounds;
			RenderBorder(topColor, bottomColor, borderBounds);
			borderBounds.Inflate(-1, -1);
			RenderBorder(topColor2, bottomColor2, borderBounds);
			RenderCornerRect(borderBounds.Left, borderBounds.Top);
			RenderCornerRect(borderBounds.Right, borderBounds.Top);
			RenderCornerRect(borderBounds.Right, borderBounds.Bottom);
			RenderCornerRect(borderBounds.Left, borderBounds.Bottom);
		}
	}

	protected override void RenderBarsArea()
	{
		LayoutInfo layout = m_layouter.GetLayout(HitTestAreas.Space);
		Rectangle bounds = layout.Bounds;
		if (bounds.Width > 0 && bounds.Height > 0)
		{
			m_g.FillRectangle(Brushes.White, bounds);
		}
		base.RenderBarsArea();
	}

	protected override void RenderEditorArea()
	{
		LayoutInfo layout = m_layouter.GetLayout(HitTestAreas.Space);
		Rectangle bounds = layout.Bounds;
		if (bounds.Width > 0 && bounds.Height > 0)
		{
			SetTextBoxBackColor(Color.White);
			m_g.FillRectangle(Brushes.White, bounds);
		}
	}

	protected override void RenderBarBackground(Bar bar, BarLayoutInfo layout)
	{
		AreaStates areaState = m_states.GetAreaState(layout);
		RenderAreaBackground(areaState, layout.Bounds);
	}

	protected override void RenderBorder(AreaStates state, Rectangle bounds)
	{
		if (bounds.Width > 0 && bounds.Height > 0)
		{
			Color color;
			switch (state)
			{
			default:
				return;
			case AreaStates.Hot:
			case AreaStates.Active:
				color = Color.FromArgb(57, 125, 181);
				break;
			case AreaStates.Pressed:
				color = Color.FromArgb(41, 97, 140);
				break;
			}
			bounds.Height--;
			bounds.Width--;
			using Pen pen = new Pen(color);
			m_g.DrawRectangle(pen, bounds);
		}
	}

	protected override void RenderBar(Bar bar, BarLayoutInfo layout)
	{
		base.RenderBar(bar, layout);
		AreaStates areaState = m_states.GetAreaState(layout);
		if (areaState != AreaStates.Default && areaState != AreaStates.Pressed)
		{
			Rectangle bounds = layout.Bounds;
			Rectangle bounds2 = layout.DropDown.Bounds;
			bounds.Width -= bounds2.Width;
			if (m_navView.RightToLeft == RightToLeft.Yes)
			{
				bounds.X = bounds2.Right - 1;
			}
			bounds.Inflate(-2, -2);
			m_g.DrawRectangle(Pens.White, bounds);
		}
	}

	protected override void RenderBarText(Bar bar, AreaStates state, Rectangle textBounds)
	{
		if (state == AreaStates.Pressed)
		{
			textBounds.Offset(PressedOffset, PressedOffset);
		}
		base.RenderBarText(bar, state, textBounds);
	}

	protected override void RenderBarBorder(AreaStates barState, bool drawBarBorder, Rectangle bounds)
	{
		if (barState == AreaStates.Active)
		{
			bounds.Height--;
			bounds.Width--;
			using Pen pen = new Pen(Color.FromArgb(140, 142, 140));
			m_g.DrawRectangle(pen, bounds);
			return;
		}
		if (drawBarBorder || barState == AreaStates.Hot)
		{
			base.RenderBarBorder(barState, drawBarBorder: true, bounds);
		}
	}

	protected override void RenderBarDropDown(Bar bar, BarLayoutInfo layout)
	{
		LayoutInfo dropDown = layout.DropDown;
		AreaStates areaState = m_states.GetAreaState(layout);
		if (areaState != AreaStates.Hot && areaState != AreaStates.Pressed)
		{
			areaState = m_states.GetAreaState(dropDown);
		}
		RenderAreaBackground(areaState, dropDown.Bounds);
		base.RenderBarDropDown(bar, layout);
	}

	protected override Rectangle GetBarDropDownArrowBounds(BarLayoutInfo layout, Image image)
	{
		Rectangle barDropDownArrowBounds = base.GetBarDropDownArrowBounds(layout, image);
		barDropDownArrowBounds.Offset(1, 1);
		return barDropDownArrowBounds;
	}

	protected override void RenderBarDropDownBorder(AreaStates barState, bool bDrawBarBorder, BarLayoutInfo layout)
	{
		base.RenderBarDropDownBorder(barState, bDrawBarBorder, layout);
		Rectangle bounds = layout.DropDown.Bounds;
		switch (barState)
		{
		case AreaStates.Pressed:
		{
			Rectangle bounds2 = layout.Bounds;
			bounds2.Width -= bounds.Width;
			if (m_navView.RightToLeft == RightToLeft.Yes)
			{
				bounds2.X = bounds.Right - 1;
			}
			RenderInnerBorder(bounds2);
			RenderInnerBorder(bounds);
			break;
		}
		default:
			bounds.Inflate(-2, -2);
			m_g.DrawRectangle(Pens.White, bounds);
			break;
		case AreaStates.Default:
			break;
		}
	}

	protected override void RenderDropDown(LayoutInfo layout)
	{
		Rectangle bounds = layout.Bounds;
		AreaStates areaState = m_states.GetAreaState(layout);
		RenderAreaBackground(areaState, bounds);
		RenderBorder(areaState, bounds);
		if (areaState == AreaStates.Pressed)
		{
			RenderInnerBorder(bounds);
		}
		Image arrowD = Resources.arrowD;
		bounds = new Rectangle(bounds.Left + (bounds.Width - arrowD.Width) / 2, bounds.Top + (bounds.Height - arrowD.Height) / 2, arrowD.Width, arrowD.Height);
		if (areaState == AreaStates.Pressed)
		{
			bounds.Offset(1, 1);
		}
		ImageAttributes imageAttributes = new ImageAttributes();
		ColorMap colorMap = new ColorMap();
		Rectangle destRect = bounds;
		colorMap.OldColor = Color.Black;
		colorMap.NewColor = Color.White;
		imageAttributes.SetRemapTable(new ColorMap[1] { colorMap }, ColorAdjustType.Bitmap);
		destRect.Inflate(1, 1);
		using (Bitmap image = new Bitmap(arrowD))
		{
			m_g.DrawImage(image, destRect, 0, 0, arrowD.Width, arrowD.Height, GraphicsUnit.Pixel, imageAttributes);
		}
		m_g.DrawImage(arrowD, bounds);
	}

	private void RenderCornerRect(int x, int y)
	{
		Rectangle rect = new Rectangle(x - 1, y - 1, 3, 3);
		using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, Color.FromArgb(31, Color.White), Color.FromArgb(63, Color.White), LinearGradientMode.ForwardDiagonal);
		linearGradientBrush.WrapMode = WrapMode.TileFlipXY;
		m_g.FillRectangle(linearGradientBrush, rect);
	}

	private void RenderBorder(Color topColor, Color bottomColor, Rectangle bounds)
	{
		using Brush brush = new LinearGradientBrush(bounds, topColor, bottomColor, LinearGradientMode.Vertical);
		using Pen pen = new Pen(topColor);
		using Pen pen2 = new Pen(bottomColor);
		using Pen pen3 = new Pen(brush);
		using Pen pen4 = new Pen(brush);
		m_g.DrawLine(pen, bounds.Left, bounds.Top, bounds.Right, bounds.Top);
		m_g.DrawLine(pen3, bounds.Right, bounds.Top, bounds.Right, bounds.Bottom);
		m_g.DrawLine(pen4, bounds.Left, bounds.Top, bounds.Left, bounds.Bottom);
		m_g.DrawLine(pen2, bounds.Right, bounds.Bottom, bounds.Left, bounds.Bottom);
	}

	private void RenderAreaBackground(AreaStates state, Rectangle bounds)
	{
		Brush brush = state switch
		{
			AreaStates.Hot => GetActiveBackgroundBrush(bounds, Color.White, Color.FromArgb(165, 219, 247)), 
			AreaStates.Active => GetActiveBackgroundBrush(bounds, Color.FromArgb(247, 243, 247), Color.FromArgb(206, 207, 206)), 
			AreaStates.Pressed => GetPressedBackgroundBrush(bounds, Color.FromArgb(198, 231, 247), Color.FromArgb(148, 207, 239)), 
			_ => (Brush)Brushes.White.Clone(), 
		};
		m_g.FillRectangle(brush, bounds);
		brush.Dispose();
	}

	private static Brush GetActiveBackgroundBrush(Rectangle bounds, Color cl1, Color cl2)
	{
		Blend blend = new Blend();
		blend.Positions = new float[4] { 0f, 0.5f, 0.5f, 1f };
		blend.Factors = new float[4] { 0f, 0.5f, 0.7f, 1f };
		return RendrerBase.GetBarBackgroundBrush(bounds, cl1, cl2, blend);
	}

	private static Brush GetPressedBackgroundBrush(Rectangle bounds, Color cl1, Color cl2)
	{
		Blend blend = new Blend();
		blend.Positions = new float[4] { 0f, 0.5f, 0.5f, 1f };
		blend.Factors = new float[4] { 0f, 0f, 1f, 1f };
		return RendrerBase.GetBarBackgroundBrush(bounds, cl1, cl2, blend);
	}

	private void RenderInnerBorder(Rectangle bounds)
	{
		Color color = Color.FromArgb(107, 142, 156);
		bounds.Inflate(-1, -1);
		bounds.Height--;
		using Pen pen = new Pen(color);
		m_g.DrawLine(pen, bounds.Left, bounds.Bottom, bounds.Left, bounds.Top);
		m_g.DrawLine(pen, bounds.Left, bounds.Top, bounds.Right, bounds.Top);
	}
}
