using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class SingleLineTabPanelRenderer : TabPanelRenderer
{
	private const int TAB_PAGE_OFFSET = 10;

	private float m_fScrollOffsetX;

	private float m_fLastKnownPreferredWidth = -1f;

	private float padX;

	private float padY;

	public float PadX
	{
		get
		{
			return padX;
		}
		set
		{
			padX = value;
		}
	}

	public float PadY
	{
		get
		{
			return padY;
		}
		set
		{
			padY = value;
		}
	}

	protected float ScrollOffsetX => m_fScrollOffsetX;

	protected float LastKnownPreferredWidth
	{
		get
		{
			if (-1f == m_fLastKnownPreferredWidth)
			{
				GetPreferredSize(parent.GetGraphics());
			}
			return m_fLastKnownPreferredWidth;
		}
		set
		{
			m_fLastKnownPreferredWidth = value;
		}
	}

	public override bool ScrollingSupported => true;

	public override bool CanScrollLeft
	{
		get
		{
			if (GetIsMirroredForVerticalAlignment())
			{
				return m_fScrollOffsetX + tdbounds.Width < LastKnownPreferredWidth;
			}
			return m_fScrollOffsetX > 0f;
		}
	}

	public override bool CanScrollRight
	{
		get
		{
			if (GetIsMirroredForVerticalAlignment())
			{
				return m_fScrollOffsetX > 0f;
			}
			return m_fScrollOffsetX + tdbounds.Width < LastKnownPreferredWidth;
		}
	}

	public bool NeedRotateTextWhenVertical
	{
		get
		{
			if (base.TabPanelData != null && (base.TabPanelData.Alignment == TabAlignment.Left || base.TabPanelData.Alignment == TabAlignment.Right))
			{
				return base.TabPanelData.RotateTextWhenVertical;
			}
			return false;
		}
	}

	public SingleLineTabPanelRenderer(ITabControl parent)
	{
		base.parent = parent;
	}

	protected override void TabPanel_PropertyChanged(ITabPanelData sender, TabPanelPropertyChangedEventArgs e)
	{
		if (e.PropertyName == "SizeMode" && base.TabPanelData.SizeMode == TabSizeMode.ShrinkToFit)
		{
			m_fScrollOffsetX = 0f;
		}
		base.TabPanel_PropertyChanged(sender, e);
	}

	public override void Scroll(ScrollIncrement siIncrement, ScrollDirection sdPhysicalDirection)
	{
		Control control = parent.GetControl();
		if (!control.IsHandleCreated || !control.Visible)
		{
			return;
		}
		ITabPanelData tabPanelData = base.TabPanelData;
		TabDataCollection tabsData = tabPanelData.TabsData;
		int count = tabsData.Count;
		if (count == 0)
		{
			return;
		}
		float fScrollOffsetX = m_fScrollOffsetX;
		Graphics graphics = parent.GetGraphics();
		ITabDefaultProperties registeredExtender = TabRendererFactory.GetRegisteredExtender(tabPanelData.TabStyle);
		SizeF overlapSize = registeredExtender.GetOverlapSize(tabPanelData.TabSize);
		bool flag = false;
		bool flag2 = false;
		bool isMirroredForVerticalAlignment = GetIsMirroredForVerticalAlignment();
		ScrollDirection scrollDirection = sdPhysicalDirection;
		if (isMirroredForVerticalAlignment)
		{
			scrollDirection = ((sdPhysicalDirection == ScrollDirection.Left) ? ScrollDirection.Right : ScrollDirection.Left);
		}
		if (1 == count)
		{
			if (scrollDirection == ScrollDirection.Left)
			{
				flag2 = true;
			}
			else
			{
				flag = true;
			}
		}
		float x = (isMirroredForVerticalAlignment ? (tdbounds.Right - overlapSize.Width) : (tdbounds.Left + overlapSize.Width));
		PointF mousePosition = new PointF(x, tdbounds.Y + (tdbounds.Bottom - tdbounds.Y) / 2f);
		if (isMirroredForVerticalAlignment && tabRenderers[0] is TabRendererWorkbookMode)
		{
			mousePosition.X -= 1f;
		}
		int num = HitTestTabs(mousePosition, inTransformedCoOrds: true);
		if (num == -1)
		{
			num = 0;
		}
		if (!flag && !flag2)
		{
			if (scrollDirection == ScrollDirection.Left && num == 0)
			{
				flag2 = true;
			}
			if (ScrollDirection.Right == scrollDirection && count - 1 == num)
			{
				flag = true;
			}
		}
		if (!flag && !flag2)
		{
			if (siIncrement == ScrollIncrement.Tab)
			{
				int num2 = num;
				ITabRenderer tabRenderer = null;
				RectangleF rectangleF = RectangleF.Empty;
				do
				{
					num2 = ((scrollDirection == ScrollDirection.Left) ? (num2 - 1) : (num2 + 1));
					if (num2 >= 0 && num2 < tabRenderers.Count)
					{
						tabRenderer = tabRenderers[num2] as ITabRenderer;
						rectangleF = tabRenderer.GetBoundsForScrolling();
					}
					else
					{
						tabRenderer = null;
					}
				}
				while (tabRenderer != null && !tabRenderer.TabData.TabVisible && rectangleF == RectangleF.Empty);
				float num3 = (isMirroredForVerticalAlignment ? (tdbounds.Right - rectangleF.Right) : (rectangleF.Left - tdbounds.Left));
				m_fScrollOffsetX += num3;
			}
			else if (ScrollIncrement.Page == siIncrement)
			{
				if (scrollDirection == ScrollDirection.Left)
				{
					if (tdbounds.Width < m_fScrollOffsetX)
					{
						m_fScrollOffsetX -= tdbounds.Width;
					}
					else
					{
						flag2 = true;
					}
				}
				else
				{
					int num4 = HitTestTabs(new PointF(isMirroredForVerticalAlignment ? (tdbounds.Left + 1f) : (tdbounds.Right - 1f), tdbounds.Y + (tdbounds.Bottom - tdbounds.Y) / 2f), inTransformedCoOrds: true);
					if (num4 == -1)
					{
						num4 = base.TabPanelData.TabsData.Count - 1;
					}
					num4++;
					if (num4 >= tabRenderers.Count)
					{
						num4 = tabRenderers.Count - 1;
					}
					RectangleF currentBounds = ((ITabRenderer)tabRenderers[num4]).GetCurrentBounds();
					float num5 = (isMirroredForVerticalAlignment ? (tdbounds.Right - currentBounds.Right) : (currentBounds.Left - tdbounds.Left));
					m_fScrollOffsetX += num5;
				}
			}
		}
		if (flag)
		{
			m_fScrollOffsetX = LastKnownPreferredWidth - tdbounds.Width;
		}
		else if (flag2)
		{
			m_fScrollOffsetX = 0f;
		}
		if (m_fScrollOffsetX < 0f)
		{
			m_fScrollOffsetX = 0f;
		}
		ComputeTabPositions(graphics);
		ValidateScrollOffset(makeSelectedTabVisible: false, invalidate: false);
		graphics.Dispose();
		graphics = null;
		if (fScrollOffsetX != m_fScrollOffsetX)
		{
			parent.OnScrollPositionChanged();
		}
		parent.OnRepaint(base.Bounds);
	}

	public override void ValidateScrollOffset(bool makeSelectedTabVisible, bool invalidate)
	{
		if (!parent.GetControl().IsHandleCreated || base.TabPanelData.SizeMode == TabSizeMode.ShrinkToFit)
		{
			if (!parent.GetControl().IsHandleCreated)
			{
				SetNeedLayout(needLayout: true);
			}
			return;
		}
		float fScrollOffsetX = m_fScrollOffsetX;
		bool flag = false;
		Graphics graphics = parent.GetGraphics();
		if (m_fScrollOffsetX + tdbounds.Width > LastKnownPreferredWidth)
		{
			float num = m_fScrollOffsetX + tdbounds.Width - LastKnownPreferredWidth;
			m_fScrollOffsetX -= num;
			if (m_fScrollOffsetX < 0f)
			{
				m_fScrollOffsetX = 0f;
			}
			ComputeTabPositions(graphics);
			flag = true;
		}
		if (makeSelectedTabVisible && base.TabPanelData.SelectedIndex != -1)
		{
			ComputeTabPositions(graphics);
			RectangleF currentBounds = ((ITabRenderer)tabRenderers[base.TabPanelData.SelectedIndex]).GetCurrentBounds();
			float x = 0f;
			float y = 0f;
			if (tabRenderers.Count > base.TabPanelData.SelectedIndex + 1)
			{
				x = ((ITabRenderer)tabRenderers[base.TabPanelData.SelectedIndex + 1]).GetCurrentBounds().Width;
				x = ((x < 10f) ? x : 10f);
			}
			else if (base.TabPanelData.SelectedIndex == tabRenderers.Count - 1)
			{
				x = 10f;
			}
			if (base.TabPanelData.SelectedIndex - 1 >= 0)
			{
				y = ((ITabRenderer)tabRenderers[base.TabPanelData.SelectedIndex - 1]).GetCurrentBounds().Width;
				y = ((y < 10f) ? y : 10f);
			}
			bool isMirroredForVerticalAlignment = GetIsMirroredForVerticalAlignment();
			if (isMirroredForVerticalAlignment)
			{
				ExchangeFloats(ref x, ref y);
			}
			if (!tdbounds.Contains(currentBounds))
			{
				float x2 = currentBounds.Right - tdbounds.Right;
				float y2 = tdbounds.Left - currentBounds.Left;
				if (isMirroredForVerticalAlignment)
				{
					ExchangeFloats(ref x2, ref y2);
				}
				bool flag2 = true;
				if (Math.Abs(y2) < Math.Abs(x2) || currentBounds.Width >= tdbounds.Width)
				{
					flag2 = false;
				}
				if (flag2)
				{
					m_fScrollOffsetX += x2 + x;
				}
				else
				{
					m_fScrollOffsetX -= y2 + y;
				}
				if (m_fScrollOffsetX < 0f || base.TabPanelData.SelectedIndex == 0)
				{
					m_fScrollOffsetX = 0f;
				}
				ComputeTabPositions(graphics);
				flag = true;
			}
		}
		graphics.Dispose();
		if (fScrollOffsetX != m_fScrollOffsetX)
		{
			parent.OnScrollPositionChanged();
		}
		if (invalidate && flag)
		{
			parent.OnRepaint(base.Bounds);
		}
	}

	private static void ExchangeFloats(ref float x, ref float y)
	{
		float num = y;
		y = x;
		x = num;
	}

	protected override void OnBoundsAffected()
	{
		SetNeedLayout(needLayout: true);
		LastKnownPreferredWidth = -1f;
		base.OnBoundsAffected();
	}

	protected override void OnSelectionChanged(int previousIndex, int currentIndex)
	{
		base.OnSelectionChanged(previousIndex, currentIndex);
		if (base.NeedLayout)
		{
			bringSelectedTabToFront = true;
		}
		else
		{
			ValidateScrollOffset(makeSelectedTabVisible: true, invalidate: true);
		}
	}

	public override void ComputeTabPositions(Graphics g)
	{
		if (tabRenderers.Count <= 0)
		{
			return;
		}
		ITabPanelData tabPanelData = base.TabPanelData;
		bool flag = false;
		int hiddenTabsCount = GetHiddenTabsCount();
		ITabDefaultProperties registeredExtender = TabRendererFactory.GetRegisteredExtender(tabPanelData.TabStyle);
		SizeF sizeF = registeredExtender.GetOverlapSize(tabPanelData.TabSize);
		if (registeredExtender.GetType() == typeof(OneNoteStyleRendererProperty) && parent != null && parent.Renderer != null)
		{
			ITabPanelData tabPanelData2 = parent.Renderer.TabPanelData;
			if (tabPanelData2 != null && (tabPanelData2.Alignment == TabAlignment.Left || tabPanelData2.Alignment == TabAlignment.Right) && tabPanelData2.RotateTextWhenVertical)
			{
				sizeF = new SizeF(sizeF.Height, sizeF.Width);
			}
		}
		bool isMirroredForVerticalAlignment = GetIsMirroredForVerticalAlignment();
		float num = 0f;
		num = ((!isMirroredForVerticalAlignment) ? (tdbounds.X + (padX + (float)Math.Ceiling(sizeF.Width / 2f) - m_fScrollOffsetX)) : (tdbounds.Right - (padX + (float)Math.Ceiling(sizeF.Width / 2f) - m_fScrollOffsetX)));
		float num2 = padX + (float)Math.Ceiling(sizeF.Width / 2f) - m_fScrollOffsetX;
		if (tabPanelData.SizeMode == TabSizeMode.ShrinkToFit)
		{
			SizeF preferredSize = GetPreferredSize(g);
			preferredSize.Width -= sizeF.Width;
			if (tdbounds.Width - num2 < preferredSize.Width)
			{
				flag = true;
			}
		}
		float num3 = (float)Math.Round(num);
		float num4 = tdbounds.Bottom - 1f;
		float num5 = 0f;
		num5 = (((base.TabPanelData.SizeMode == TabSizeMode.Normal || base.TabPanelData.SizeMode == TabSizeMode.FillToRight || base.TabPanelData.SizeMode == TabSizeMode.ShrinkToFit) && base.TabPanelData.TabSize == Size.Empty) ? (num5 + GetLargestHeight(g)) : ((NeedRotateTextWhenVertical && base.TabPanelData.SizeMode != TabSizeMode.Fixed) ? (num5 + base.TabPanelData.TabSize.Width) : (num5 + base.TabPanelData.TabSize.Height)));
		foreach (ITabRenderer tabRenderer in tabRenderers)
		{
			if (ShouldDrawVisible(tabRenderer.TabData))
			{
				SizeF sizeF2 = new SizeF(0f, 0f);
				if (base.TabPanelData.SizeMode == TabSizeMode.Normal || base.TabPanelData.SizeMode == TabSizeMode.FillToRight || base.TabPanelData.SizeMode == TabSizeMode.ShrinkToFit)
				{
					sizeF2 = tabRenderer.GetPreferredSize(g);
				}
				else if (base.TabPanelData.SizeMode == TabSizeMode.Fixed)
				{
					sizeF2 = base.TabPanelData.TabSize;
				}
				float num6 = base.TabPanelData.TabGap;
				if (flag)
				{
					int num7 = base.TabPanelData.TabsData.Count - hiddenTabsCount;
					float num8 = (tdbounds.Width - padX) / (float)num7;
					float num9 = num8 / 10f;
					if (num9 < num6)
					{
						num6 = num9;
					}
					float width = (tdbounds.Width - num2 - padX - (float)(num7 - 1) * num6) / (float)num7;
					sizeF2.Width = width;
				}
				tabRenderer.Visible = true;
				if (isMirroredForVerticalAlignment)
				{
					num3 -= sizeF2.Width;
				}
				RectangleF bounds = new RectangleF(num3, num4 - num5 + 1f, sizeF2.Width, num5);
				tabRenderer.Bounds = bounds;
				tabRenderer.TabAlignment = base.TabPanelData.Alignment;
				num3 = ((!isMirroredForVerticalAlignment) ? (num3 + (sizeF2.Width + num6)) : (num3 - num6));
			}
			else
			{
				tabRenderer.Visible = false;
				tabRenderer.Bounds = RectangleF.Empty;
			}
		}
	}

	protected SizeF GetPreferredSize(Graphics g)
	{
		SizeF preferredSize = SizeF.Empty;
		GetPreferredSize(g, ref preferredSize);
		return preferredSize;
	}

	public override void GetPreferredSize(Graphics g, ref SizeF preferredSize)
	{
		preferredSize = new SizeF(0f, 0f);
		if (!base.TabPanelData.Multiline && tabRenderers.Count > 0)
		{
			if (base.TabPanelData.SizeMode == TabSizeMode.Fixed)
			{
				preferredSize.Width = base.TabPanelData.TabSize.Width * (float)(base.TabPanelData.TabsData.Count - GetHiddenTabsCount());
				preferredSize.Height = base.TabPanelData.TabSize.Height;
			}
			else
			{
				foreach (ITabRenderer tabRenderer in tabRenderers)
				{
					if (ShouldDrawVisible(tabRenderer.TabData))
					{
						SizeF preferredSize2 = tabRenderer.GetPreferredSize(g);
						preferredSize.Width += preferredSize2.Width;
						if (preferredSize.Height < preferredSize2.Height)
						{
							preferredSize.Height = preferredSize2.Height;
						}
					}
				}
				if (base.TabPanelData.TabSize != Size.Empty)
				{
					if (!NeedRotateTextWhenVertical)
					{
						preferredSize.Height = base.TabPanelData.TabSize.Height;
					}
					else
					{
						preferredSize.Height = base.TabPanelData.TabSize.Width;
					}
				}
			}
			ITabPanelData tabPanelData = base.TabPanelData;
			SizeF overlapSize = TabRendererFactory.GetRegisteredExtender(tabPanelData.TabStyle).GetOverlapSize(tabPanelData.TabSize);
			overlapSize.Height += base.TabPanelData.AdjustTopGap;
			preferredSize.Width += overlapSize.Width + padX;
			preferredSize.Height += overlapSize.Height + padY;
			preferredSize.Width += base.TabPanelData.TabGap * (base.TabPanelData.TabsData.Count - 1);
		}
		if (parent is MDITabPanel && parent is MDITabPanel mDITabPanel && mDITabPanel.Parent is TabHost && preferredSize == Size.Empty)
		{
			preferredSize = base.Bounds.Size;
		}
		LastKnownPreferredWidth = preferredSize.Width;
	}
}
