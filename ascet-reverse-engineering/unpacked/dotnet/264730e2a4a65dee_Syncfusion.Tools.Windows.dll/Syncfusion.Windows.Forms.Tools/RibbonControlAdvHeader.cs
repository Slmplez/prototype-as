using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;
using System.Windows.Forms.Layout;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Collections;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
[DesignerSerializer(typeof(RibbonControlAdvHeaderSerializer), typeof(CodeDomSerializer))]
internal class RibbonControlAdvHeader : ToolStrip, IRibbonHeader, ILayoutSupport, IMessageFilter
{
	[Description("Collection of ToolStrip items, which is also supports IRibbonItems interface to manipulate adding and removing operations.")]
	internal class RibbonItemsCollection : ObservableList<ToolStripItem>, IRibbonItems, ICollection, IEnumerable
	{
		ToolStripItem IRibbonItems.this[int index]
		{
			get
			{
				if (index < 0 && index >= base.List.Count)
				{
					throw new ArgumentOutOfRangeException("index");
				}
				return (ToolStripItem)base.List[index];
			}
		}

		event RibbonItemsEventHandler IRibbonItems.BeforeAddItem
		{
			add
			{
				BeforeAddItem += value;
			}
			remove
			{
				BeforeAddItem -= value;
			}
		}

		event RibbonItemsEventHandler IRibbonItems.BeforeRemoveItem
		{
			add
			{
				BeforeRemoveItem += value;
			}
			remove
			{
				BeforeRemoveItem -= value;
			}
		}

		private event RibbonItemsEventHandler BeforeAddItem;

		private event RibbonItemsEventHandler BeforeRemoveItem;

		void IRibbonItems.RemoveAt(int index)
		{
			base.List.RemoveAt(index);
		}

		protected override bool OnInsert(int index, object value)
		{
			if (value is ToolStripItem && OnBeforeAddItem(value as ToolStripItem))
			{
				return base.OnInsert(index, value);
			}
			return false;
		}

		protected override bool OnRemove(int index, object value)
		{
			if (value is ToolStripItem && OnBeforeRemove(value as ToolStripItem))
			{
				return base.OnRemove(index, value);
			}
			return false;
		}

		protected override void OnRemoveComplete(int index, object value)
		{
			if (value is ToolStripItem toolStripItem)
			{
				toolStripItem.Owner = null;
			}
			base.OnRemoveComplete(index, value);
		}

		private bool OnBeforeAddItem(ToolStripItem item)
		{
			bool result = true;
			if (this.BeforeAddItem != null)
			{
				RibbonItemEventArgs e = new RibbonItemEventArgs(item);
				this.BeforeAddItem(this, e);
				result = !e.Cancel;
			}
			return result;
		}

		private bool OnBeforeRemove(ToolStripItem item)
		{
			bool result = true;
			if (this.BeforeRemoveItem != null)
			{
				RibbonItemEventArgs e = new RibbonItemEventArgs(item);
				this.BeforeRemoveItem(this, e);
				result = !e.Cancel;
			}
			return result;
		}
	}

	protected enum ScrollButtonsArea
	{
		None,
		RightScrollButton,
		LeftScrollButton
	}

	private delegate int SendMessageDelegate(IntPtr hWnd, Msg msg, int wParam, int lParam);

	private class RibbonControlAdvLayoutEngine : LayoutEngine
	{
		private class MainItemsList : List<ToolStripItem>
		{
			public MainItemsList()
			{
			}

			public MainItemsList(RibbonControlAdvHeader header, ObservableList<ToolStripItem> list, Size displaySize, int tabItemsWidth)
			{
				int num = 0;
				float num2 = 0f;
				int i = 0;
				for (int count = list.Count; i < count; i++)
				{
					ToolStripItem toolStripItem = list[i];
					if (toolStripItem != null && toolStripItem.Available && toolStripItem.Owner == header && header.IsVisibleGroup(toolStripItem))
					{
						if (toolStripItem.AutoSize)
						{
							toolStripItem.Size = toolStripItem.GetPreferredSize(displaySize);
							num += toolStripItem.Width;
						}
						else
						{
							tabItemsWidth -= toolStripItem.Width;
						}
						tabItemsWidth -= 3;
						Add(toolStripItem);
					}
				}
				if (num <= 0)
				{
					return;
				}
				num2 = (float)tabItemsWidth / (float)num;
				header.m_bDrawSeparators = !(num2 > 1f);
				if (num2 > 1f)
				{
					num2 = 1f;
				}
				else if (num2 < 0.5f)
				{
					num2 = 0.5f;
				}
				float num3 = (float)Math.Round(num2, 1);
				header.m_fFactor = 0.5f + (1f - num3);
				using Enumerator enumerator = GetEnumerator();
				while (enumerator.MoveNext())
				{
					ToolStripItem current = enumerator.Current;
					if (current.AutoSize)
					{
						current.Width = (int)((float)current.Width * num2);
					}
				}
			}
		}

		private class MdiButtonsCollection : List<ToolStripItem>
		{
			private int m_iWidth;

			internal int Width => m_iWidth;

			public MdiButtonsCollection()
			{
			}

			public MdiButtonsCollection(ToolStripItemCollection collection, Size displaySize)
			{
				int i = 0;
				for (int count = collection.Count; i < count; i++)
				{
					if (collection[i] is SystemButton { Available: not false } systemButton)
					{
						systemButton.Size = systemButton.GetPreferredSize(displaySize);
						m_iWidth += systemButton.Width;
						Add(systemButton);
					}
				}
			}
		}

		public Size GetPreferredSize(Size proposedSize, RibbonControlAdvHeader header, bool bMinWidth)
		{
			int num = 0;
			int num2 = 0;
			if (header.m_menuButton.Available)
			{
				num = header.MenuButtonWidth + 4;
				num2 = num + 6;
			}
			Size itemsSizePreferred = header.GetItemsSizePreferred(header.QuickItems, 25);
			Size size = new Size(0, 0);
			if (header.QuickItems.Count > 0)
			{
				size = (header.QuickItems[0].AutoSize ? header.QuickItems[0].GetPreferredSize(Size.Empty) : header.QuickItems[0].Size);
			}
			Size size2 = Size.Empty;
			if (header.m_bDisplayHelpButton)
			{
				size2 = header.HelpButton.Size;
			}
			int num3 = 0;
			num3 = size2.Width;
			Size titleSize = header.GetTitleSize();
			int num4 = ((titleSize.Width < 24) ? 24 : titleSize.Width);
			ToolStripItem quickAccessButton = header.QuickAccessButton;
			ToolStripItem quickOverflowButton = header.QuickOverflowButton;
			int num5 = 0;
			int num6 = 0;
			if (quickAccessButton.GetCurrentParent() == header)
			{
				num5 = quickAccessButton.Width + quickAccessButton.Margin.Horizontal;
			}
			if (quickOverflowButton.Available && !header.ShowQuickPanelBelowRibbon)
			{
				num6 = quickOverflowButton.Width + quickOverflowButton.Margin.Horizontal;
			}
			int num7 = size.Width + itemsSizePreferred.Height / 2;
			int num8 = num7 + num5 + num6;
			int num9 = Math.Max(titleSize.Height, itemsSizePreferred.Height + smQuickItems.Vertical);
			Size itemsSizePreferred2 = header.GetItemsSizePreferred(header.SystemButtons, 25);
			RibbonForm form = header.Form;
			if (form != null && form.CompositionEnabled)
			{
				itemsSizePreferred2.Width = form.DwmButtonBounds.Width;
			}
			int num10 = itemsSizePreferred2.Height + smSystemButtons.Vertical;
			if (num9 < num10)
			{
				num9 = num10;
			}
			Size size3 = Size.Empty;
			if (header.m_bDisplayMdiButtons)
			{
				size3 = header.GetItemsSizePreferred(header.MdiButtons, 22);
			}
			int width = itemsSizePreferred2.Width;
			int num11 = size3.Width + num3;
			num8 = ((width <= num11) ? (num8 + num11) : (num8 + width));
			num8 += num4;
			int num12 = num8;
			int num13 = num9;
			if (header.MainItems.Count > 0)
			{
				Size itemsSizePreferred3 = header.GetItemsSizePreferred(header.MainItems, 22);
				if (num8 < itemsSizePreferred3.Width && !bMinWidth)
				{
					num12 = num8;
				}
				num13 += itemsSizePreferred3.Height;
			}
			num2 += num12;
			if (num < num13)
			{
				num = num13;
			}
			Size borderSize = header.BorderSize;
			num2 += borderSize.Width * 2;
			num += borderSize.Height;
			return new Size(num2, num);
		}

		public override bool Layout(object container, LayoutEventArgs layoutEventArgs)
		{
			RibbonControlAdvHeader ribbonControlAdvHeader = (RibbonControlAdvHeader)container;
			if (ribbonControlAdvHeader.IsHandleCreated)
			{
				if (ribbonControlAdvHeader.RightToLeft == RightToLeft.No)
				{
					return LayoutLeftToRight(ribbonControlAdvHeader, layoutEventArgs);
				}
				return LayoutRightToLeft(ribbonControlAdvHeader, layoutEventArgs);
			}
			return false;
		}

		private bool LayoutLeftToRight(RibbonControlAdvHeader parent, LayoutEventArgs layoutEventArgs)
		{
			Rectangle displayRectangle = parent.DisplayRectangle;
			Size size = displayRectangle.Size;
			int height = size.Height;
			int num = displayRectangle.X;
			ToolStripMenuButton menuButton = parent.m_menuButton;
			if (menuButton.Available && menuButton.GetCurrentParent() == parent)
			{
				int num2 = Math.Min(parent.MenuButtonWidth, height - 4);
				menuButton.Size = new Size(num2, num2);
				parent.SetItemLocation(menuButton, new Point(num + 2, displayRectangle.Y + 2));
				num = menuButton.Bounds.Right + 6;
			}
			int num3 = displayRectangle.X + 4;
			if (menuButton.Available && menuButton.Bounds.Right + 6 > num3)
			{
				num3 = menuButton.Bounds.Right + 6;
			}
			RibbonForm form = parent.Form;
			int num4;
			if (form == null || !form.CompositionEnabled)
			{
				num4 = displayRectangle.Right - smSystemButtons.Right;
				if (parent.m_bDisplaySysButtons)
				{
					int y = displayRectangle.Y + smSystemButtons.Top;
					for (int num5 = parent.SystemButtons.Count - 1; num5 >= 0; num5--)
					{
						if (parent.SystemButtons[num5] is SystemButton { Available: not false } systemButton)
						{
							systemButton.Size = systemButton.GetPreferredSize(size);
							num4 -= systemButton.Width;
							systemButton.Location = new Point(num4, y);
						}
					}
				}
				num4 -= smSystemButtons.Left;
			}
			else
			{
				num4 = form.DwmButtonBounds.Left - smSystemButtons.Left;
			}
			int num6 = 25;
			int height2 = num6;
			int y2 = displayRectangle.Bottom - 25;
			int num7 = displayRectangle.Right - smSystemButtons.Right;
			MdiButtonsCollection mdiButtonsCollection = new MdiButtonsCollection(parent.MdiButtons, size);
			if (parent.m_bDisplayMdiButtons)
			{
				num7 -= mdiButtonsCollection.Width;
			}
			if (parent.m_bDisplayHelpButton && parent.HelpButton is SystemButton { Available: not false } systemButton2)
			{
				systemButton2.Size = systemButton2.GetPreferredSize(size);
				num7 -= systemButton2.Width;
			}
			MainItemsList mainItemsList = new MainItemsList(parent, parent.m_mainItems, size, num7 - num3);
			parent.m_iSepatators.Clear();
			int i = 0;
			int count = mainItemsList.Count;
			int num8 = num3 - parent.ScrollPositionInternal;
			for (; i < count; i++)
			{
				ToolStripItem toolStripItem = mainItemsList[i];
				parent.SetItemLocation(toolStripItem, new Point(num8, displayRectangle.Bottom - toolStripItem.Height));
				parent.m_iSepatators.Add(num8 + toolStripItem.Width + 1);
				if (toolStripItem.Height + toolStripItem.Margin.Vertical > num6)
				{
					num6 = toolStripItem.Height + toolStripItem.Margin.Vertical;
					height2 = toolStripItem.Height;
					y2 = displayRectangle.Bottom - toolStripItem.Height;
				}
				num8 += toolStripItem.Width + 3;
			}
			int y3 = displayRectangle.Y + parent.QuickPanelHeight + smSystemButtons.Top;
			int num9 = displayRectangle.Right - smSystemButtons.Right;
			if (parent.m_bDisplayMdiButtons)
			{
				for (int num10 = mdiButtonsCollection.Count - 1; num10 >= 0; num10--)
				{
					if (mdiButtonsCollection[num10] is SystemButton systemButton3)
					{
						num9 -= systemButton3.Width;
						systemButton3.Location = new Point(num9, y3);
					}
				}
			}
			if (parent.m_bDisplayHelpButton && parent.HelpButton is SystemButton { Available: not false } systemButton4)
			{
				num9 -= systemButton4.Width;
				systemButton4.Size = systemButton4.GetPreferredSize(size);
				systemButton4.Location = new Point(num9, y3);
			}
			parent.TabItemsRectangle = new Rectangle(num3, y2, num7 - num3, height2);
			num6 = num6;
			Rectangle rectangle = Rectangle.Empty;
			if (!parent.ShowQuickPanelBelowRibbon)
			{
				parent.m_quickItems.Owner = parent;
				int quickPanelHeight = parent.QuickPanelHeight;
				int x = num;
				int width = num4 - num - 24;
				int y4 = displayRectangle.Y + smQuickItems.Top;
				rectangle = parent.m_quickItems.Layout(new Rectangle(x, y4, width, quickPanelHeight));
			}
			string title = parent.Title;
			if (title != string.Empty)
			{
				int num11 = 0;
				num11 = ((!parent.QuickPanelVisible || parent.ShowQuickPanelBelowRibbon) ? num : rectangle.Right);
				Rectangle rcTitle = new Rectangle(num11, displayRectangle.Y + 1, num4 - num11, parent.QuickPanelHeight - 1);
				TextFormatFlags flags = TextFormatFlags.EndEllipsis | TextFormatFlags.VerticalCenter;
				Size size2 = TextRenderer.MeasureText(title, parent.TitleFont, rcTitle.Size, flags);
				switch (parent.TitleAlignment)
				{
				case TextAlignment.Center:
					rcTitle.X += (rcTitle.Width - size2.Width) / 2;
					break;
				case TextAlignment.Right:
					rcTitle.X = rcTitle.Right - size2.Width;
					break;
				}
				rcTitle.Width = size2.Width;
				parent.m_rcTitle = rcTitle;
			}
			else
			{
				parent.m_rcTitle = Rectangle.Empty;
			}
			int y5 = displayRectangle.Y + 1;
			int height3 = parent.QuickPanelHeight - 1;
			int num12 = 0;
			num12 = ((!parent.QuickPanelVisible || parent.ShowQuickPanelBelowRibbon) ? num : rectangle.Right);
			int num13 = num4;
			Rectangle rcTitle2 = parent.m_rcTitle;
			ToolStripTabGroup toolStripTabGroup = null;
			int num14 = 0;
			foreach (ToolStripTabGroup group in parent.m_groups)
			{
				group.BoundsList.Clear();
			}
			int j = 0;
			for (int count2 = mainItemsList.Count; j < count2; j++)
			{
				ToolStripItem toolStripItem2 = mainItemsList[j];
				bool flag = toolStripItem2.Bounds.Left >= num12 && toolStripItem2.Bounds.Right <= num13 && (rcTitle2.Left > toolStripItem2.Bounds.Right || rcTitle2.Right < toolStripItem2.Bounds.Left);
				ToolStripTabGroup toolStripTabGroup3 = null;
				if (flag && parent.m_hashGroups.ContainsKey(toolStripItem2))
				{
					toolStripTabGroup3 = parent.m_hashGroups[toolStripItem2];
				}
				if (toolStripTabGroup != toolStripTabGroup3)
				{
					toolStripTabGroup?.BoundsList.Add(new Rectangle(num14, y5, toolStripItem2.Bounds.Left - num14, height3));
					toolStripTabGroup = toolStripTabGroup3;
					if (toolStripTabGroup != null)
					{
						num14 = toolStripItem2.Bounds.Left;
					}
				}
				if (toolStripTabGroup != null && j == count2 - 1)
				{
					toolStripTabGroup.BoundsList.Add(new Rectangle(num14, y5, toolStripItem2.Bounds.Right - num14 + 1, height3));
				}
			}
			return parent.AutoSize;
		}

		private bool LayoutRightToLeft(RibbonControlAdvHeader parent, LayoutEventArgs layoutEventArgs)
		{
			Rectangle displayRectangle = parent.DisplayRectangle;
			Size size = displayRectangle.Size;
			int height = size.Height;
			int num = displayRectangle.Right;
			ToolStripMenuButton menuButton = parent.m_menuButton;
			if (menuButton.Available && menuButton.GetCurrentParent() == parent)
			{
				int num2 = Math.Min(parent.MenuButtonWidth, height - 4);
				menuButton.Size = new Size(num2, num2);
				Point location = new Point(num - 2 - menuButton.Width, displayRectangle.Y + 2);
				parent.SetItemLocation(menuButton, location);
				num = menuButton.Bounds.Left - 6;
			}
			int num3 = displayRectangle.Right - 4;
			if (menuButton.Available && menuButton.Bounds.Left - 6 < num3)
			{
				num3 = menuButton.Bounds.Left - 6;
			}
			RibbonForm form = parent.Form;
			int num4;
			if (form == null || !form.CompositionEnabled)
			{
				num4 = displayRectangle.X + smSystemButtons.Left;
				if (parent.m_bDisplaySysButtons)
				{
					int y = displayRectangle.Y + smSystemButtons.Top;
					for (int num5 = parent.SystemButtons.Count - 1; num5 >= 0; num5--)
					{
						if (parent.SystemButtons[num5] is SystemButton { Available: not false } systemButton)
						{
							systemButton.Size = systemButton.GetPreferredSize(size);
							systemButton.Location = new Point(num4, y);
							num4 += systemButton.Width;
						}
					}
				}
				num4 += smSystemButtons.Right;
			}
			else
			{
				num4 = form.DwmButtonBounds.Right + smSystemButtons.Right;
			}
			int num6 = 25;
			int height2 = num6;
			int y2 = displayRectangle.Bottom - 25;
			int num7 = displayRectangle.X + smSystemButtons.Left;
			MdiButtonsCollection mdiButtonsCollection = new MdiButtonsCollection(parent.MdiButtons, size);
			if (parent.m_bDisplayMdiButtons)
			{
				num7 += mdiButtonsCollection.Width;
			}
			if (parent.m_bDisplayHelpButton && parent.HelpButton is SystemButton { Available: not false } systemButton2)
			{
				systemButton2.Size = systemButton2.GetPreferredSize(size);
				num7 += systemButton2.Width;
			}
			MainItemsList mainItemsList = new MainItemsList(parent, parent.m_mainItems, size, num3 - num7);
			parent.m_iSepatators.Clear();
			int i = 0;
			int count = mainItemsList.Count;
			int num8 = num3 - parent.ScrollPositionInternal;
			for (; i < count; i++)
			{
				ToolStripItem toolStripItem = mainItemsList[i];
				Point location2 = new Point(num8 - toolStripItem.Width, displayRectangle.Bottom - toolStripItem.Height);
				parent.SetItemLocation(toolStripItem, location2);
				parent.m_iSepatators.Add(location2.X - 1);
				if (toolStripItem.Height + toolStripItem.Margin.Vertical > num6)
				{
					num6 = toolStripItem.Height + toolStripItem.Margin.Vertical;
					height2 = toolStripItem.Height;
					y2 = displayRectangle.Bottom - toolStripItem.Height;
				}
				num8 -= toolStripItem.Width + 3;
			}
			int y3 = displayRectangle.Y + parent.QuickPanelHeight + smSystemButtons.Top;
			int num9 = displayRectangle.X + smSystemButtons.Left;
			if (parent.m_bDisplayMdiButtons)
			{
				for (int num10 = mdiButtonsCollection.Count - 1; num10 >= 0; num10--)
				{
					if (mdiButtonsCollection[num10] is SystemButton systemButton3)
					{
						systemButton3.Location = new Point(num9, y3);
						num9 += systemButton3.Width;
					}
				}
			}
			if (parent.m_bDisplayHelpButton && parent.HelpButton is SystemButton { Available: not false } systemButton4)
			{
				systemButton4.Size = systemButton4.GetPreferredSize(size);
				systemButton4.Location = new Point(num9, y3);
			}
			parent.TabItemsRectangle = new Rectangle(num7, y2, num3 - num7, height2);
			num6 = num6;
			Rectangle rectangle = Rectangle.Empty;
			if (!parent.ShowQuickPanelBelowRibbon)
			{
				parent.m_quickItems.Owner = parent;
				int quickPanelHeight = parent.QuickPanelHeight;
				int num11 = num4 + 24;
				int y4 = displayRectangle.Y + smQuickItems.Top;
				int width = num - num11;
				rectangle = parent.m_quickItems.Layout(new Rectangle(num11, y4, width, quickPanelHeight));
			}
			string title = parent.Title;
			if (title != string.Empty)
			{
				int num12 = num4;
				int num13 = 0;
				Rectangle rectangle2 = new Rectangle(width: (!parent.QuickPanelVisible || parent.ShowQuickPanelBelowRibbon) ? (num - num12) : (rectangle.Left - num12), x: num12, y: displayRectangle.Y + 1, height: parent.QuickPanelHeight - 1);
				TextFormatFlags flags = TextFormatFlags.EndEllipsis | TextFormatFlags.VerticalCenter;
				Size size2 = TextRenderer.MeasureText(title, parent.TitleFont, rectangle2.Size, flags);
				Point location3 = Point.Empty;
				int y5 = rectangle2.Top + (rectangle2.Height - size2.Height) / 2;
				switch (parent.TitleAlignment)
				{
				case TextAlignment.Right:
					location3 = new Point(rectangle2.Left, y5);
					break;
				case TextAlignment.Center:
					location3 = new Point(rectangle2.Left + (rectangle2.Width - size2.Width) / 2, y5);
					break;
				case TextAlignment.Left:
					location3 = new Point(rectangle2.Right - size2.Width, y5);
					break;
				}
				parent.m_rcTitle = new Rectangle(location3, size2);
			}
			else
			{
				parent.m_rcTitle = Rectangle.Empty;
			}
			int y6 = displayRectangle.Y + 1;
			int height3 = parent.QuickPanelHeight - 1;
			int num14 = num4;
			int num15 = ((parent.QuickPanelVisible && !parent.ShowQuickPanelBelowRibbon) ? rectangle.Left : num);
			Rectangle rcTitle = parent.m_rcTitle;
			ToolStripTabGroup toolStripTabGroup = null;
			int num16 = 0;
			foreach (ToolStripTabGroup group in parent.m_groups)
			{
				group.BoundsList.Clear();
			}
			int j = 0;
			for (int count2 = mainItemsList.Count; j < count2; j++)
			{
				ToolStripItem toolStripItem2 = mainItemsList[j];
				bool flag = toolStripItem2.Bounds.Left >= num14 && toolStripItem2.Bounds.Right <= num15 && (rcTitle.Left > toolStripItem2.Bounds.Right || rcTitle.Right < toolStripItem2.Bounds.Left);
				ToolStripTabGroup toolStripTabGroup3 = null;
				if (flag && parent.m_hashGroups.ContainsKey(toolStripItem2))
				{
					toolStripTabGroup3 = parent.m_hashGroups[toolStripItem2];
				}
				if (toolStripTabGroup != toolStripTabGroup3)
				{
					toolStripTabGroup?.BoundsList.Add(new Rectangle(toolStripItem2.Bounds.Right, y6, num16 - toolStripItem2.Bounds.Right, height3));
					toolStripTabGroup = toolStripTabGroup3;
					if (toolStripTabGroup != null)
					{
						num16 = toolStripItem2.Bounds.Right;
					}
				}
				if (toolStripTabGroup != null && j == count2 - 1)
				{
					toolStripTabGroup.BoundsList.Add(new Rectangle(toolStripItem2.Bounds.Left, y6, num16 - toolStripItem2.Bounds.Left + 1, height3));
				}
			}
			return parent.AutoSize;
		}
	}

	internal class SystemButton : ToolStripButton, ICustomItem
	{
		private RibbonControlAdvHeader m_header;

		private int m_sysCommand;

		private Hashtable m_images;

		private Hashtable m_imagesSelected;

		ToolStrip ICustomItem.Owner => m_header;

		ToolStripItemPlacement ICustomItem.Placement
		{
			get
			{
				if (!m_header.DisplayedItems.Contains(this))
				{
					return ToolStripItemPlacement.None;
				}
				return ToolStripItemPlacement.Main;
			}
		}

		public override Image Image
		{
			get
			{
				if (base.Image == null)
				{
					return GetImage(SysCommand);
				}
				return base.Image;
			}
			set
			{
				base.Image = value;
			}
		}

		public override string Text
		{
			get
			{
				Form form = m_header.FindForm();
				if (form != null && form.IsHandleCreated)
				{
					IntPtr systemMenu = Syncfusion.Runtime.InteropServices.NativeMethods.GetSystemMenu(form.Handle, bRevert: false);
					if (systemMenu != IntPtr.Zero)
					{
						string text = new string('\0', 64);
						int menuString = Syncfusion.Runtime.InteropServices.NativeMethods.GetMenuString(systemMenu, (uint)SysCommand, text, 64, 0u);
						if (menuString > 0)
						{
							int num = text.IndexOf('\t');
							if (num >= 0)
							{
								text = text.Substring(0, num);
							}
							else
							{
								int num2 = text.IndexOf('\0');
								if (num2 >= 0)
								{
									text = text.Substring(0, num2);
								}
							}
							int num3 = text.IndexOf('&');
							if (num3 >= 0)
							{
								text = text.Remove(num3, 1);
							}
							return text;
						}
					}
				}
				switch (SysCommand)
				{
				case 61472:
					return SR.GetString("ToolTipCaptionButtonMinimize");
				case 61488:
					return SR.GetString("ToolTipCaptionButtonMaximize");
				case 61536:
					return SR.GetString("ToolTipCaptionButtonClose");
				case 61728:
					return SR.GetString("ToolTipCaptionButtonRestore");
				case 61824:
					if (Form is RibbonForm ribbonForm)
					{
						return ribbonForm.HelpButtonToolTip;
					}
					return SR.GetString("ToolStripItemHelpButton");
				default:
					return base.Text;
				}
			}
			set
			{
				base.Text = value;
			}
		}

		public int SysCommand
		{
			get
			{
				if (m_sysCommand == 61488)
				{
					Form form = Form;
					if (form != null && form.WindowState == FormWindowState.Maximized)
					{
						return 61728;
					}
				}
				return m_sysCommand;
			}
		}

		public Point Location
		{
			get
			{
				return Bounds.Location;
			}
			set
			{
				SetBounds(new Rectangle(value, Size));
			}
		}

		protected virtual Form Form => m_header.Form;

		private Color ImageForeground
		{
			get
			{
				if (m_header.Renderer is ToolStripProfessionalRenderer { ColorTable: Office12ColorTable colorTable })
				{
					if (!Selected)
					{
						return colorTable.SystemButtonForeground;
					}
					return colorTable.SystemButtonForegroundSelected;
				}
				return SystemColors.ControlText;
			}
		}

		public SystemButton(RibbonControlAdvHeader header, int sysCommand)
		{
			m_images = new Hashtable();
			m_imagesSelected = new Hashtable();
			m_header = header;
			m_sysCommand = sysCommand;
			base.Parent = header;
			base.AutoToolTip = false;
			base.Margin = new Padding(0);
			Padding = new Padding(6);
			base.ImageScaling = ToolStripItemImageScaling.None;
			m_header.RendererChanged += OnRendererChanged;
		}

		protected override void Dispose(bool disposing)
		{
			if (disposing)
			{
				base.Parent = null;
				if (m_header != null)
				{
					m_header.RendererChanged -= OnRendererChanged;
					m_header = null;
				}
				ClearImages();
			}
			base.Dispose(disposing);
		}

		public override Size GetPreferredSize(Size constrainingSize)
		{
			return new Size(9 + Padding.Horizontal, 9 + Padding.Vertical);
		}

		protected override void OnPaint(PaintEventArgs e)
		{
			if (this is HelpSystemButton && m_header != null && m_header.Form != null)
			{
				Image = m_header.Form.HelpButtonImage;
			}
			m_header.Renderer.DrawButtonBackground(new ToolStripItemRenderEventArgs(e.Graphics, this));
			if (Image != null)
			{
				Rectangle imageRectangle = new Rectangle(new Point(Padding.Left, Padding.Top), Image.Size);
				m_header.Renderer.DrawItemImage(new ToolStripItemImageRenderEventArgs(e.Graphics, this, imageRectangle));
			}
		}

		protected override void OnClick(EventArgs e)
		{
			base.OnClick(e);
			Form form = Form;
			if (form != null)
			{
				switch (SysCommand)
				{
				case 61472:
				case 61488:
				case 61536:
				case 61728:
					form.BeginInvoke(new SendMessageDelegate(WindowsAPI.SendMessage), form.Handle, Msg.WM_SYSCOMMAND, SysCommand, 0);
					break;
				case 61824:
				{
					Point position = Cursor.Position;
					int num = WindowsAPI.MAKELONG(position.X, position.Y);
					WindowsAPI.SendMessage(form.Handle, 274, 61824, num.ToString());
					break;
				}
				}
			}
		}

		private void OnRendererChanged(object sender, EventArgs e)
		{
			ClearImages();
		}

		private void ClearImages()
		{
			foreach (Image value in m_images.Values)
			{
				value.Dispose();
			}
			m_images.Clear();
			foreach (Image value2 in m_imagesSelected.Values)
			{
				value2.Dispose();
			}
			m_imagesSelected.Clear();
		}

		private Image GetImage(int command)
		{
			Hashtable hashtable = (Selected ? m_imagesSelected : m_images);
			Image image = hashtable[command] as Image;
			if (image == null)
			{
				switch (command)
				{
				case 61472:
					image = SystemImages.GetImageMinimize(ImageForeground);
					break;
				case 61488:
					image = SystemImages.GetImageMaximize(ImageForeground);
					break;
				case 61728:
					image = SystemImages.GetImageRestore(ImageForeground);
					break;
				case 61536:
					image = SystemImages.GetImageClose(ImageForeground);
					break;
				case 61824:
					image = SystemImages.GetImageHelp();
					break;
				}
				hashtable[command] = image;
			}
			return image;
		}
	}

	private class MdiSystemButton : SystemButton
	{
		private int m_mdiCommand;

		protected override Form Form
		{
			get
			{
				Form form = base.Form;
				if (form != null && form.IsMdiContainer)
				{
					return form.ActiveMdiChild;
				}
				return null;
			}
		}

		public int MdiCommand => m_mdiCommand;

		public MdiSystemButton(RibbonControlAdvHeader parent, int sysCommand)
			: base(parent, sysCommand)
		{
			m_mdiCommand = sysCommand;
		}
	}

	private class HelpSystemButton : SystemButton
	{
		private int HELP_IMAGE_SIZE = 21;

		public HelpSystemButton(RibbonControlAdvHeader parent, int sysCommand)
			: base(parent, sysCommand)
		{
			base.Margin = new Padding(0);
			Padding = new Padding(0);
		}

		public override Size GetPreferredSize(Size constrainingSize)
		{
			return new Size(HELP_IMAGE_SIZE, HELP_IMAGE_SIZE);
		}
	}

	private class SystemMenuStrip : ContextMenuStrip
	{
		private struct MENUITEMINFO
		{
			public int cbSize;

			public int fMask;

			public int fType;

			public int fState;

			public int wID;

			public IntPtr hSubMenu;

			public IntPtr hbmpChecked;

			public IntPtr hbmpUnchecked;

			public IntPtr dwItemData;

			public IntPtr dwTypeData;

			public int cch;

			public IntPtr hbmpItem;
		}

		private const int MIIM_STATE = 1;

		private const int MIIM_ID = 2;

		private const int MIIM_SUBMENU = 4;

		private const int MIIM_CHECKMARKS = 8;

		private const int MIIM_TYPE = 16;

		private const int MIIM_DATA = 32;

		private const int MIIM_STRING = 64;

		private const int MIIM_BITMAP = 128;

		private const int MIIM_FTYPE = 256;

		private const int MFT_STRING = 0;

		private const int MFT_BITMAP = 4;

		private const int MFT_SEPARATOR = 2048;

		private const int MF_BYCOMMAND = 0;

		private const int MF_BYPOSITION = 1024;

		private const int MFS_DISABLED = 3;

		private const int HBMMENU_POPUP_CLOSE = 8;

		private const int HBMMENU_POPUP_RESTORE = 9;

		private const int HBMMENU_POPUP_MAXIMIZE = 10;

		private const int HBMMENU_POPUP_MINIMIZE = 11;

		private Form m_form;

		public SystemMenuStrip(Form form)
		{
			m_form = form;
		}

		public bool UpdateItems(ToolStripRenderer renderer)
		{
			bool result = false;
			if (m_form != null && m_form.IsHandleCreated)
			{
				IntPtr systemMenu = GetSystemMenu(m_form.Handle, bRevert: false);
				if (systemMenu != IntPtr.Zero)
				{
					Items.Clear();
					int i = 0;
					for (int menuItemCount = GetMenuItemCount(systemMenu); i < menuItemCount; i++)
					{
						MENUITEMINFO mii = default(MENUITEMINFO);
						mii.cbSize = Marshal.SizeOf((object)mii);
						mii.fMask = 19;
						if (!GetMenuItemInfo(systemMenu, i, fByPosition: true, ref mii))
						{
							continue;
						}
						if ((mii.fType & 0x800) == 2048)
						{
							Items.Add(new ToolStripSeparator());
							continue;
						}
						ToolStripMenuItem toolStripMenuItem = new ToolStripMenuItem();
						if (mii.cch > 0)
						{
							StringBuilder stringBuilder = new StringBuilder(mii.cch + 1);
							if (GetMenuString(systemMenu, i, stringBuilder, mii.cch + 1, 1024) > 0)
							{
								string text = stringBuilder.ToString();
								int num = text.IndexOf('\t');
								if (num != -1)
								{
									toolStripMenuItem.ShortcutKeyDisplayString = text.Substring(num + 1);
									text = text.Substring(0, num);
								}
								toolStripMenuItem.Text = text;
							}
						}
						toolStripMenuItem.Tag = mii.wID;
						int num2 = mii.wID & 0xFFF0;
						if (num2 == 61440 || num2 == 61456)
						{
							toolStripMenuItem.Enabled = !IsWindowMaximized(m_form.Handle);
						}
						else
						{
							toolStripMenuItem.Enabled = (mii.fState & 3) == 0;
						}
						toolStripMenuItem.Image = GetImage(ref mii);
						toolStripMenuItem.ImageScaling = ToolStripItemImageScaling.None;
						Items.Add(toolStripMenuItem);
					}
					base.Renderer = renderer;
					result = true;
				}
			}
			return result;
		}

		protected override void Dispose(bool disposing)
		{
			Items.Clear();
			base.Dispose(disposing);
		}

		protected override void OnItemAdded(ToolStripItemEventArgs e)
		{
			base.OnItemAdded(e);
			e.Item.Click += OnClick;
		}

		protected override void OnItemRemoved(ToolStripItemEventArgs e)
		{
			base.OnItemRemoved(e);
			e.Item.Click -= OnClick;
		}

		protected override void WndProc(ref Message m)
		{
			Msg msg = (Msg)m.Msg;
			if (msg == Msg.WM_SYSCOMMAND)
			{
				int num = (int)m.WParam & 0xFFF0;
				if (num == 61696)
				{
					m.Result = IntPtr.Zero;
					return;
				}
			}
			base.WndProc(ref m);
		}

		private void OnClick(object sender, EventArgs e)
		{
			if (sender is ToolStripMenuItem toolStripMenuItem)
			{
				Point position = Cursor.Position;
				int lParam = WindowsAPI.MAKELONG(position.X, position.Y);
				WindowsAPI.PostMessage(m_form.Handle, 274, (int)toolStripMenuItem.Tag, lParam);
			}
		}

		private Image GetImage(ref MENUITEMINFO mii)
		{
			Image result = null;
			if ((mii.fType & 4) != 0)
			{
				int num = WindowsAPI.LOW_ORDER((int)mii.dwTypeData);
				switch (num)
				{
				case 8:
					result = SystemImages.GetImageClose(SystemColors.ControlText);
					break;
				case 9:
					result = SystemImages.GetImageRestore(SystemColors.ControlText);
					break;
				case 10:
					result = SystemImages.GetImageMaximize(SystemColors.ControlText);
					break;
				case 11:
					result = SystemImages.GetImageMinimize(SystemColors.ControlText);
					break;
				default:
					if (GetObjectType((IntPtr)num) != 0)
					{
						result = Image.FromHbitmap((IntPtr)num);
					}
					break;
				}
			}
			return result;
		}

		private static bool IsWindowMaximized(IntPtr hWnd)
		{
			WindowStyles windowLong = (WindowStyles)WindowsAPI.GetWindowLong(hWnd, -16);
			return (windowLong & WindowStyles.WS_MAXIMIZE) != 0;
		}

		[DllImport("User32.dll", CharSet = CharSet.Auto)]
		private static extern IntPtr GetSystemMenu(IntPtr hWnd, bool bRevert);

		[DllImport("User32.dll", CharSet = CharSet.Auto)]
		private static extern int GetMenuItemCount(IntPtr hMenu);

		[DllImport("User32.dll", CharSet = CharSet.Auto)]
		private static extern bool GetMenuItemInfo(IntPtr hMenu, int uItem, bool fByPosition, ref MENUITEMINFO mii);

		[DllImport("User32.dll", CharSet = CharSet.Auto)]
		private static extern int GetMenuString(IntPtr hMenu, int item, StringBuilder lpString, int nMaxCount, int flag);

		[DllImport("gdi32.dll")]
		private static extern int GetObjectType(IntPtr h);

		[DllImport("gdi32.dll")]
		private static extern bool GetBitmapDimensionEx(IntPtr hBitmap, ref WIN32SIZE size);
	}

	private class SystemToolTipInfo : ToolTipInfo
	{
		public SystemToolTipInfo()
		{
			base.Separator = false;
			base.Header.Hidden = true;
			base.Footer.Hidden = true;
			base.Body.TextAlign = ContentAlignment.MiddleCenter;
		}
	}

	internal class ToolStripItemCollectionFiltered : ToolStripItemCollection
	{
		private ILayoutSupport m_hidable;

		private ToolStripItemCollection m_baseCollection;

		public override ToolStripItem this[int index]
		{
			get
			{
				ToolStripItem item = m_baseCollection[index];
				return m_hidable.GetItem(item);
			}
		}

		public override int Count => m_baseCollection.Count;

		public ToolStripItemCollectionFiltered(ToolStrip hidable, ToolStripItemCollection baseCollection)
			: base(hidable, new ToolStripItem[0])
		{
			m_hidable = hidable as ILayoutSupport;
			if (m_hidable == null)
			{
				throw new ArgumentException("hidable");
			}
			m_baseCollection = baseCollection;
		}

		public void Dispose()
		{
			m_hidable = null;
			m_baseCollection = null;
		}
	}

	private class MainItemsCollection : RibbonItemsCollection
	{
		protected override bool OnRemove(int index, object value)
		{
			bool flag = base.OnRemove(index, value);
			if (flag && value is ToolStripTabItem toolStripTabItem)
			{
				toolStripTabItem.Checked = false;
			}
			return flag;
		}
	}

	internal class RibbonControlAdvHeaderRenderer : Office12ToolStripRenderer
	{
		private enum EIMAGE
		{
			eiMenuButtonFlashNormal,
			eiMenuButtonFlashSelected,
			eiMenuButtonFlashPressed,
			eiMenuDropDownBackground,
			eiRightArrow,
			eiLeftArrow,
			MAX
		}

		private class Bitmaps : Hashtable
		{
			public override object this[object key]
			{
				get
				{
					return base[key];
				}
				set
				{
					if (base[key] is IDisposable disposable)
					{
						disposable.Dispose();
					}
					base[key] = value;
				}
			}

			public Bitmaps(int capacity)
				: base(capacity)
			{
			}
		}

		private const int ARROW_WIDTH = 3;

		private const int ARROW_HEIGHT = 5;

		private const int ARROW_UP_DOWN_WIDTH = 5;

		private const int ARROW_UP_DOWN_HEIGHT = 3;

		private const int OFFICE_ARROW_WIDTH = 4;

		private const int OFFICE_ARROW_HEIGHT = 7;

		private const int SCROLL_BUTTON_HEIGHT = 12;

		private const int SEPARATOR_HEIGHT = 2;

		private static double IMAGE_MARGIN_FACTOR;

		private Bitmaps m_hImages;

		private Pen m_pShadow;

		private Pen m_pHighlight;

		private static Blend m_blTabSelected;

		private static Blend m_blTabChecked;

		private static Blend m_blTabFlash;

		private static Blend m_blTitle;

		private static Blend m_blGroupTab;

		private static Blend m_blGroupTop;

		private static Blend m_blGroupRays;

		private static Blend m_blSystemButton;

		private static Blend m_blSystemButtonBorder;

		protected Bitmap RightArrow
		{
			get
			{
				Bitmap bitmap = m_htBitmaps[EBITMAP.ebRightArrow] as Bitmap;
				if (bitmap == null)
				{
					bitmap = new Bitmap(3, 5);
					using (Graphics graphics = Graphics.FromImage(bitmap))
					{
						graphics.Clear(Color.Transparent);
						Rectangle rect = new Rectangle(0, 0, 1, 5);
						using Region region = new Region(rect);
						region.Union(rect);
						rect.Inflate(0, -1);
						rect.X++;
						region.Union(rect);
						rect.Inflate(0, -1);
						rect.X++;
						region.Union(rect);
						using Brush brush = new SolidBrush(base.OfficeColorTable.RibbonText);
						graphics.FillRegion(brush, region);
					}
					m_htBitmaps[EBITMAP.ebRightArrow] = bitmap;
				}
				return bitmap;
			}
		}

		protected Bitmap LeftArrow
		{
			get
			{
				Bitmap bitmap = m_htBitmaps[EBITMAP.ebLeftArrow] as Bitmap;
				if (bitmap == null)
				{
					bitmap = new Bitmap(3, 5);
					using (Graphics graphics = Graphics.FromImage(bitmap))
					{
						graphics.Clear(Color.Transparent);
						Rectangle rect = new Rectangle(0, 2, 1, 1);
						using Region region = new Region(rect);
						region.Union(rect);
						rect.Inflate(0, 1);
						rect.X++;
						region.Union(rect);
						rect.Inflate(0, 1);
						rect.X++;
						region.Union(rect);
						using Brush brush = new SolidBrush(base.OfficeColorTable.RibbonText);
						graphics.FillRegion(brush, region);
					}
					m_htBitmaps[EBITMAP.ebLeftArrow] = bitmap;
				}
				return bitmap;
			}
		}

		protected Bitmap DownArrow
		{
			get
			{
				Bitmap bitmap = m_htBitmaps[EBITMAP.ebDownArrow] as Bitmap;
				if (bitmap == null)
				{
					bitmap = new Bitmap(5, 3);
					using (Graphics graphics = Graphics.FromImage(bitmap))
					{
						graphics.Clear(Color.Transparent);
						Rectangle rect = new Rectangle(0, 0, 5, 1);
						using Region region = new Region(rect);
						region.Union(rect);
						rect.Inflate(-1, 0);
						rect.Y++;
						region.Union(rect);
						rect.Inflate(-1, 0);
						rect.Y++;
						region.Union(rect);
						using Brush brush = new SolidBrush(base.OfficeColorTable.RibbonText);
						graphics.FillRegion(brush, region);
					}
					m_htBitmaps[EBITMAP.ebDownArrow] = bitmap;
				}
				return bitmap;
			}
		}

		protected Bitmap UpArrow
		{
			get
			{
				Bitmap bitmap = m_htBitmaps[EBITMAP.ebUpArrow] as Bitmap;
				if (bitmap == null)
				{
					bitmap = new Bitmap(5, 3);
					using (Graphics graphics = Graphics.FromImage(bitmap))
					{
						graphics.Clear(Color.Transparent);
						Rectangle rect = new Rectangle(0, 2, 5, 1);
						using Region region = new Region(rect);
						region.Union(rect);
						rect.Inflate(-1, 0);
						rect.Y--;
						region.Union(rect);
						rect.Inflate(-1, 0);
						rect.Y--;
						region.Union(rect);
						using Brush brush = new SolidBrush(base.OfficeColorTable.RibbonText);
						graphics.FillRegion(brush, region);
					}
					m_htBitmaps[EBITMAP.ebUpArrow] = bitmap;
				}
				return bitmap;
			}
		}

		protected Color ActiveTitleGradientBegin => base.OfficeColorTable.ActiveTitleGradientBegin;

		protected Color ActiveTitleGradientEnd => base.OfficeColorTable.ActiveTitleGradientEnd;

		protected Color InActiveTitleGradientBegin => base.OfficeColorTable.InActiveTitleGradientBegin;

		protected Color InActiveTitleGradientEnd => base.OfficeColorTable.InActiveTitleGradientEnd;

		protected Color SystemButtonPressedGradientBegin => base.OfficeColorTable.SystemButtonPressedGradientBegin;

		protected Color SystemButtonPressedGradientEnd => base.OfficeColorTable.SystemButtonPressedGradientEnd;

		protected Color SystemButtonPressedHighlight => base.OfficeColorTable.SystemButtonPressedHighlight;

		protected Color SystemButtonSelectedGradientBegin => base.OfficeColorTable.SystemButtonSelectedGradientBegin;

		protected Color SystemButtonSelectedGradientEnd => base.OfficeColorTable.SystemButtonSelectedGradientEnd;

		protected Color SystemButtonSelectedHighlight => base.OfficeColorTable.SystemButtonSelectedHighlight;

		protected Color QuickPanelGradientBegin => base.OfficeColorTable.QuickPanelGradientBegin;

		protected Color QuickPanelGradientEnd => base.OfficeColorTable.QuickPanelGradientEnd;

		protected Color InactiveQuickPanelGradientBegin => base.OfficeColorTable.InactiveQuickPanelGradientBegin;

		protected Color InactiveQuickPanelGradientEnd => base.OfficeColorTable.InactiveQuickPanelGradientEnd;

		protected Color SystemBorderSelected => base.OfficeColorTable.SystemButtonBorderSelected;

		protected Color SystemBorderPressed => base.OfficeColorTable.SystemButtonBorderPressed;

		protected Color RibbonBorder => base.OfficeColorTable.RibbonBorder;

		protected Color RibbonTabText => base.OfficeColorTable.RibbonTabText;

		protected Color RibbonTabInactiveText => base.OfficeColorTable.RibbonTabInactiveText;

		protected Color RibbonTitleText => base.OfficeColorTable.RibbonTitleText;

		protected Color MenuButtonNormal => base.OfficeColorTable.MenuButtonNormal;

		protected Color MenuButtonNormalHighlight => base.OfficeColorTable.MenuButtonNormalHighlight;

		protected Color MenuButtonSelected => base.OfficeColorTable.MenuButtonSelected;

		protected Color MenuButtonSelectedHighlight => base.OfficeColorTable.MenuButtonSelectedHighlight;

		protected Color MenuButtonPressed => base.OfficeColorTable.MenuButtonPressed;

		protected Color MenuButtonPressedHighlight => base.OfficeColorTable.MenuButtonPressedHighlight;

		protected Bitmap SystemButtonSelectedFlashImage
		{
			get
			{
				Bitmap bitmap = m_htBitmaps[EBITMAP.ebSystemButtonSelectedFlash] as Bitmap;
				if (bitmap == null)
				{
					bitmap = GetFlashImage(SystemButtonSelectedHighlight, new Size(20, 20));
					m_htBitmaps[EBITMAP.ebPressedFlash] = bitmap;
				}
				return bitmap;
			}
		}

		protected Bitmap SystemButtonPressedFlashImage
		{
			get
			{
				Bitmap bitmap = m_htBitmaps[EBITMAP.ebSystemButtonPressedFlash] as Bitmap;
				if (bitmap == null)
				{
					bitmap = GetFlashImage(SystemButtonPressedHighlight, new Size(20, 20));
					m_htBitmaps[EBITMAP.ebPressedFlash] = bitmap;
				}
				return bitmap;
			}
		}

		protected Pen ShadowPen
		{
			get
			{
				if (m_pShadow == null)
				{
					m_pShadow = new Pen(Color.FromArgb(30, Color.Black));
				}
				return m_pShadow;
			}
		}

		protected Pen HighlightPen
		{
			get
			{
				if (m_pHighlight == null)
				{
					m_pHighlight = new Pen(Color.FromArgb(70, Color.White));
				}
				return m_pHighlight;
			}
		}

		protected Bitmap OfficeRightArrow
		{
			get
			{
				Bitmap bitmap = m_hImages[EIMAGE.eiRightArrow] as Bitmap;
				if (bitmap == null)
				{
					bitmap = new Bitmap(4, 7);
					using (Graphics graphics = Graphics.FromImage(bitmap))
					{
						graphics.Clear(Color.Transparent);
						Rectangle rect = new Rectangle(0, 0, 1, 7);
						using Region region = new Region(rect);
						region.Union(rect);
						rect.Inflate(0, -1);
						rect.X++;
						region.Union(rect);
						rect.Inflate(0, -1);
						rect.X++;
						region.Union(rect);
						rect.Inflate(0, -1);
						rect.X++;
						region.Union(rect);
						using Brush brush = GetBackgroundBrushForArrow(4);
						graphics.FillRegion(brush, region);
					}
					m_hImages[EIMAGE.eiRightArrow] = bitmap;
				}
				return bitmap;
			}
		}

		protected Bitmap OfficeLeftArrow
		{
			get
			{
				Bitmap bitmap = m_hImages[EIMAGE.eiLeftArrow] as Bitmap;
				if (bitmap == null)
				{
					bitmap = new Bitmap(4, 7);
					using (Graphics graphics = Graphics.FromImage(bitmap))
					{
						graphics.Clear(Color.Transparent);
						Rectangle rect = new Rectangle(0, 3, 1, 1);
						using Region region = new Region(rect);
						region.Union(rect);
						rect.Inflate(0, 1);
						rect.X++;
						region.Union(rect);
						rect.Inflate(0, 1);
						rect.X++;
						region.Union(rect);
						rect.Inflate(0, 1);
						rect.X++;
						region.Union(rect);
						using Brush brush = GetBackgroundBrushForArrow(4);
						graphics.FillRegion(brush, region);
					}
					m_hImages[EIMAGE.eiLeftArrow] = bitmap;
				}
				return bitmap;
			}
		}

		static RibbonControlAdvHeaderRenderer()
		{
			IMAGE_MARGIN_FACTOR = (1.0 - Math.Sin(Math.PI / 4.0)) / 2.0;
			m_blTabSelected = new Blend();
			m_blTabSelected.Positions = new float[4] { 0f, 0.5f, 0.6f, 1f };
			m_blTabSelected.Factors = new float[4] { 0.5f, 0f, 0.5f, 1f };
			m_blTabChecked = new Blend();
			m_blTabChecked.Positions = new float[4] { 0f, 0.6f, 0.8f, 1f };
			m_blTabChecked.Factors = new float[4] { 1f, 0.8f, 0.5f, 0.8f };
			m_blTabFlash = new Blend();
			m_blTabFlash.Positions = new float[3] { 0f, 0.4f, 1f };
			m_blTabFlash.Factors = new float[3] { 0f, 0.6f, 1f };
			m_blTitle = new Blend();
			m_blTitle.Positions = new float[4] { 0f, 0.27f, 0.27f, 1f };
			m_blTitle.Factors = new float[4] { 0f, 0.2f, 1f, 0f };
			m_blGroupTab = new Blend();
			m_blGroupTab.Positions = new float[4] { 0f, 0.2f, 0.2f, 1f };
			m_blGroupTab.Factors = new float[4] { 0.2f, 0f, 0.8f, 0f };
			m_blGroupTop = new Blend();
			m_blGroupTop.Positions = new float[3] { 0f, 0.6f, 1f };
			m_blGroupTop.Factors = new float[3] { 0f, 0.2f, 0.6f };
			m_blGroupRays = new Blend();
			m_blGroupRays.Positions = new float[4] { 0f, 0.3f, 0.85f, 1f };
			m_blGroupRays.Factors = new float[4] { 0f, 0.2f, 0f, 0f };
			m_blSystemButton = new Blend();
			m_blSystemButton.Positions = new float[4] { 0f, 0.5f, 0.5f, 1f };
			m_blSystemButton.Factors = new float[4] { 0.2f, 0f, 1f, 0.5f };
			m_blSystemButtonBorder = new Blend();
			m_blSystemButtonBorder.Positions = new float[3] { 0f, 0.5f, 1f };
			m_blSystemButtonBorder.Factors = new float[3] { 0.5f, 1f, 0.5f };
		}

		public RibbonControlAdvHeaderRenderer(Office12ColorTable colotTable)
			: base(colotTable)
		{
			m_hImages = new Bitmaps(6);
		}

		~RibbonControlAdvHeaderRenderer()
		{
			Clear();
		}

		protected override void OnRenderToolStripBackground(ToolStripRenderEventArgs e)
		{
			if (!SystemInfo.IsVisualStyleEnabled || !PaintToolstripBackground(e))
			{
				base.OnRenderToolStripBackground(e);
			}
		}

		protected override void OnRenderToolStripBorder(ToolStripRenderEventArgs e)
		{
			if (!(e.ToolStrip is MenuDropDown))
			{
				base.OnRenderToolStripBorder(e);
			}
		}

		protected override void OnRenderButtonBackground(ToolStripItemRenderEventArgs e)
		{
			if (!SystemInfo.IsVisualStyleEnabled || !PaintButtonBackground(e))
			{
				base.OnRenderButtonBackground(e);
			}
		}

		protected override void OnRenderDropDownButtonBackground(ToolStripItemRenderEventArgs e)
		{
			if (!SystemInfo.IsVisualStyleEnabled || !PaintDropDownButtonBackground(e))
			{
				base.OnRenderDropDownButtonBackground(e);
			}
		}

		protected override void OnRenderItemImage(ToolStripItemImageRenderEventArgs e)
		{
			if (!SystemInfo.IsVisualStyleEnabled || !PaintItemImage(e))
			{
				base.OnRenderItemImage(e);
			}
		}

		protected override void OnRenderArrow(ToolStripArrowRenderEventArgs e)
		{
			if (!(e.Item is ToolStripMenuButton))
			{
				if (e.Item is OfficeDropDownButton)
				{
					PaintArrow(e);
				}
				else
				{
					base.OnRenderArrow(e);
				}
			}
		}

		protected override void OnRenderItemText(ToolStripItemTextRenderEventArgs e)
		{
			if (!SystemInfo.IsVisualStyleEnabled || !PaintItemText(e))
			{
				base.OnRenderItemText(e);
			}
		}

		protected override void OnRenderSplitButtonBackground(ToolStripItemRenderEventArgs e)
		{
			if (!SystemInfo.IsVisualStyleEnabled || !PaintSplitButtonBackground(e))
			{
				base.OnRenderSplitButtonBackground(e);
			}
		}

		protected override void OnRenderSeparator(ToolStripSeparatorRenderEventArgs e)
		{
			if (!SystemInfo.IsVisualStyleEnabled || !PaintSeparator(e))
			{
				base.OnRenderSeparator(e);
			}
		}

		private bool PaintSeparator(ToolStripSeparatorRenderEventArgs e)
		{
			bool result = false;
			if (e.Item.Owner is MenuDropDown.IPanel panel)
			{
				Graphics graphics = e.Graphics;
				Size size = e.Item.Size;
				MenuDropDown.PanelType panelType = panel.PanelType;
				if (panelType == MenuDropDown.PanelType.System)
				{
					graphics.DrawLine(ShadowPen, 1, 0, 1, size.Height);
					graphics.DrawLine(HighlightPen, 2, 0, 2, size.Height);
				}
				else
				{
					graphics.DrawLine(ShadowPen, 0, 1, size.Width, 1);
					graphics.DrawLine(HighlightPen, 0, 2, size.Width, 2);
				}
				result = true;
			}
			return result;
		}

		private bool PaintItemText(ToolStripItemTextRenderEventArgs e)
		{
			return PaintToolStripTabItemText(e);
		}

		private bool PaintToolStripTabItemText(ToolStripItemTextRenderEventArgs e)
		{
			bool result = false;
			if (e.Item is ToolStripTabItem toolStripTabItem)
			{
				Rectangle textRect = GetTextRect(e);
				TextFormatFlags textFormatFlags = TextFormatFlags.HidePrefix | TextFormatFlags.VerticalCenter;
				if (e.Item.Owner is RibbonControlAdvHeader ribbonControlAdvHeader)
				{
					Rectangle b = new Rectangle(new Point(e.Item.Bounds.Left + textRect.X, e.Item.Bounds.Top + textRect.Y), textRect.Size);
					Rectangle rectangle = Rectangle.Intersect(ribbonControlAdvHeader.TabItemsRectangle, b);
					int num = b.Width - rectangle.Width;
					textRect.Width -= num;
					if (b.Left < ribbonControlAdvHeader.TabItemsRectangle.Left && rectangle.Width > 0)
					{
						int num2 = b.Width - rectangle.Width;
						if (ribbonControlAdvHeader.m_bIsLeftScroll)
						{
							num2 += 13;
							textRect.Width -= 13;
						}
						textRect.X += num2;
						textRect.Width -= 2;
						textFormatFlags |= TextFormatFlags.Right;
					}
					else
					{
						textFormatFlags = textFormatFlags;
						textRect.Width -= 2;
					}
				}
				Color foreColor = ((toolStripTabItem.Checked && !IsPanelHidden(toolStripTabItem)) ? RibbonTabText : RibbonTabInactiveText);
				TextRenderer.DrawText(e.Graphics, e.Text, e.TextFont, textRect, foreColor, textFormatFlags);
				result = true;
			}
			return result;
		}

		private bool PaintItemImage(ToolStripItemImageRenderEventArgs e)
		{
			return PaintToolStripMenuButtonImage(e) || PaintToolStripTabItemImage(e);
		}

		private bool PaintToolStripMenuButtonImage(ToolStripItemImageRenderEventArgs e)
		{
			bool result = false;
			if (e.Item is ToolStripMenuButton toolStripMenuButton)
			{
				if (e.Image != null)
				{
					Rectangle rc = GetMenuButtonRectangle(toolStripMenuButton);
					PaintMenuButtonImage(e.Graphics, ref rc, toolStripMenuButton);
				}
				result = true;
			}
			return result;
		}

		private bool PaintToolStripTabItemImage(ToolStripItemImageRenderEventArgs e)
		{
			bool result = false;
			if (e.Item is ToolStripTabItem)
			{
				Image image = e.Image;
				Rectangle imageRect = GetImageRect(e);
				if (image != null && imageRect.Width > 0 && imageRect.Height > 0)
				{
					if (e.Item.Owner is RibbonControlAdvHeader ribbonControlAdvHeader)
					{
						Rectangle b = new Rectangle(new Point(e.Item.Bounds.Left + imageRect.X, e.Item.Bounds.Top + imageRect.Y), imageRect.Size);
						Rectangle rectangle = Rectangle.Intersect(ribbonControlAdvHeader.TabItemsRectangle, b);
						int num = b.Width - rectangle.Width;
						imageRect.Width -= num;
						if (b.Left < ribbonControlAdvHeader.TabItemsRectangle.Left && rectangle.Width > 0)
						{
							int num2 = b.Width - rectangle.Width;
							if (ribbonControlAdvHeader.m_bIsLeftScroll)
							{
								num2 += 13;
								b.Width -= 13;
							}
							imageRect.X += num2;
						}
					}
					e.Graphics.DrawImage(image, imageRect);
				}
				result = true;
			}
			return result;
		}

		private bool PaintToolstripBackground(ToolStripRenderEventArgs e)
		{
			return PaintHeaderBackground(e) || PaintDropDownBackground(e) || PaintDropDownExBackground(e);
		}

		private bool PaintHeaderBackground(ToolStripRenderEventArgs e)
		{
			bool result = false;
			if (e.ToolStrip is RibbonControlAdvHeader ribbonControlAdvHeader)
			{
				Graphics graphics = e.Graphics;
				int num = ribbonControlAdvHeader.DisplayRectangle.Y + ribbonControlAdvHeader.QuickPanelHeight + 1;
				Rectangle rc = new Rectangle(0, 0, ribbonControlAdvHeader.Width, num);
				RibbonForm form = ribbonControlAdvHeader.Form;
				bool flag = form != null && form.CompositionEnabled && ribbonControlAdvHeader.m_owner.Dock == DockStyleEx.TopMost;
				if (!flag)
				{
					bool flag2 = form?.ActiveState ?? false;
					Color cl = (flag2 ? ActiveTitleGradientBegin : InActiveTitleGradientBegin);
					Color cl2 = (flag2 ? ActiveTitleGradientEnd : InActiveTitleGradientEnd);
					using (LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, cl, cl2))
					{
						linearGradientBrush.Blend = m_blTitle;
						graphics.FillRectangle(linearGradientBrush, rc);
					}
					using Pen pen = (flag2 ? new Pen(base.OfficeColorTable.HeaderSeparatorLight) : new Pen(base.OfficeColorTable.HeaderSeparatorLightInActive));
					using Pen pen2 = (flag2 ? new Pen(base.OfficeColorTable.HeaderSeparatorDark) : new Pen(base.OfficeColorTable.HeaderSeparatorDarkInActive));
					graphics.DrawLine(pen, 0, num - 1, rc.Right, num - 1);
					graphics.DrawLine(pen2, 0, num, rc.Right, num);
				}
				else
				{
					DwmAPI.FillBlackRegion(graphics, rc);
				}
				if (!ribbonControlAdvHeader.ShowQuickPanelBelowRibbon && ribbonControlAdvHeader.QuickItems.Count > 0)
				{
					if (ribbonControlAdvHeader.RightToLeft == RightToLeft.No)
					{
						PaintQuickItemsBackgroundLeftToRight(graphics, ribbonControlAdvHeader);
					}
					else
					{
						PaintQuickItemsBackgroundRightToLeft(graphics, ribbonControlAdvHeader);
					}
				}
				Rectangle rectangle = new Rectangle(0, num, ribbonControlAdvHeader.Width, ribbonControlAdvHeader.Height - num);
				using (Brush brush = new SolidBrush(RibbonBorder))
				{
					Rectangle rect = rectangle;
					if (!flag && form != null && !form.ActiveState)
					{
						using Brush brush2 = new SolidBrush(base.OfficeColorTable.RibbonBorderInactive);
						graphics.FillRectangle(brush2, rect);
						Padding bordersInternal = form.BordersInternal;
						rect.X += bordersInternal.Left;
						rect.Width -= bordersInternal.Horizontal;
					}
					graphics.FillRectangle(brush, rect);
				}
				string title = ribbonControlAdvHeader.Title;
				if (title != string.Empty)
				{
					if (form != null && form.CompositionEnabled)
					{
						if (ribbonControlAdvHeader.Form.WindowState == FormWindowState.Normal)
						{
							DrawThemeText(graphics, ribbonControlAdvHeader.Handle, ribbonControlAdvHeader.TitleRect, title, ribbonControlAdvHeader.TitleFont);
						}
						else
						{
							TextFormatFlags flags = TextFormatFlags.EndEllipsis | TextFormatFlags.VerticalCenter;
							TextRenderer.DrawText(graphics, title, ribbonControlAdvHeader.TitleFont, ribbonControlAdvHeader.TitleRect, Color.White, flags);
						}
					}
					else
					{
						TextFormatFlags flags2 = TextFormatFlags.EndEllipsis | TextFormatFlags.VerticalCenter;
						TextRenderer.DrawText(graphics, title, ribbonControlAdvHeader.TitleFont, ribbonControlAdvHeader.TitleRect, RibbonTitleText, flags2);
					}
				}
				foreach (ToolStripTabGroup group in ribbonControlAdvHeader.Groups)
				{
					if (!group.Visible)
					{
						continue;
					}
					int i = 0;
					for (int count = group.BoundsList.Count; i < count; i++)
					{
						Rectangle rc2 = group.BoundsList[i];
						using (LinearGradientBrush linearGradientBrush2 = GetVerticalBrush(ref rc2, Color.Transparent, group.Color))
						{
							linearGradientBrush2.Blend = m_blGroupTop;
							linearGradientBrush2.WrapMode = WrapMode.TileFlipXY;
							graphics.FillRectangle(linearGradientBrush2, rc2);
						}
						Rectangle rc3 = new Rectangle(rc2.X, rc2.Y, rc2.Width, ribbonControlAdvHeader.Height);
						using (LinearGradientBrush linearGradientBrush3 = GetVerticalBrush(ref rc3, Color.Transparent, Color.Black))
						{
							linearGradientBrush3.Blend = m_blGroupRays;
							graphics.FillRectangle(linearGradientBrush3, rc3.X, rc3.Y, 1, rc3.Height);
							graphics.FillRectangle(linearGradientBrush3, rc3.Right - 1, rc3.Y, 1, rc3.Height);
						}
						if (form != null && form.CompositionEnabled)
						{
							if (form.WindowState == FormWindowState.Normal)
							{
								DrawThemeText(graphics, ribbonControlAdvHeader.Handle, rc2, group.Name, ribbonControlAdvHeader.Font);
							}
							else
							{
								TextRenderer.DrawText(graphics, group.Name, ribbonControlAdvHeader.Font, rc2, Color.White, TextFormatFlags.EndEllipsis | TextFormatFlags.HorizontalCenter | TextFormatFlags.VerticalCenter);
							}
						}
						else
						{
							TextRenderer.DrawText(graphics, group.Name, ribbonControlAdvHeader.Font, rc2, RibbonTabInactiveText, TextFormatFlags.EndEllipsis | TextFormatFlags.HorizontalCenter | TextFormatFlags.VerticalCenter);
						}
					}
				}
				result = true;
			}
			return result;
		}

		private bool PaintDropDownBackground(ToolStripRenderEventArgs e)
		{
			bool result = false;
			if (e.ToolStrip is MenuDropDown menuDropDown)
			{
				Graphics graphics = e.Graphics;
				Point empty = Point.Empty;
				if (e is PanelItemRenderEventArgs e2)
				{
					Point location = e2.PanelStrip.Location;
					empty.X = -location.X;
					empty.Y = -location.Y;
				}
				Rectangle rectangle = new Rectangle(empty, menuDropDown.Size);
				using (Region region = new Region(rectangle))
				{
					Padding borders = menuDropDown.Borders;
					Rectangle rect = new Rectangle(rectangle.X + borders.Left, rectangle.Y + borders.Top, rectangle.Width - borders.Horizontal, rectangle.Height - borders.Vertical);
					region.Exclude(rect);
					Color menuButtomDropDownGradientBegin = base.OfficeColorTable.MenuButtomDropDownGradientBegin;
					Color menuButtomDropDownGradientEnd = base.OfficeColorTable.MenuButtomDropDownGradientEnd;
					using (LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rectangle.Location, new Point(rectangle.X, rectangle.Bottom), menuButtomDropDownGradientBegin, menuButtomDropDownGradientEnd))
					{
						float num = rectangle.Height;
						float num2 = (float)borders.Top * 0.4f / num;
						float num3 = ((float)rectangle.Bottom - (float)borders.Bottom * 0.6f) / num;
						Blend blend = new Blend();
						blend.Positions = new float[6] { 0f, num2, num2, num3, num3, 1f };
						blend.Factors = new float[6] { 0f, 0f, 0.6f, 0.2f, 1f, 0f };
						linearGradientBrush.Blend = blend;
						graphics.FillRectangle(linearGradientBrush, rectangle);
					}
					graphics.FillRectangle(base.ToolStripDropDownBackground, rect);
					SmoothingMode smoothingMode = graphics.SmoothingMode;
					graphics.SmoothingMode = SmoothingMode.AntiAlias;
					using (Pen pen = new Pen(Office12ColorTable.GetAlphaBlendedColor(Color.White, menuButtomDropDownGradientBegin, 32)))
					{
						graphics.DrawRectangle(pen, rect.X - 2, rect.Y - 2, rect.Width + 3, rect.Height + 3);
						graphics.DrawPolygon(pen, RendererUtils.GetRoundedPolygon(Rectangle.Inflate(rectangle, -1, -1), 1));
					}
					using (Pen pen2 = new Pen(base.OfficeColorTable.MenuButtomDropDownBorder))
					{
						graphics.DrawRectangle(pen2, rect.X - 1, rect.Y - 1, rect.Width + 1, rect.Height + 1);
						graphics.DrawPolygon(pen2, RendererUtils.GetRoundedPolygon(rectangle, 2));
					}
					graphics.SmoothingMode = smoothingMode;
					if (menuDropDown.OwnerItem is ToolStripMenuButton toolStripMenuButton)
					{
						Control currentParent = toolStripMenuButton.GetCurrentParent();
						if (currentParent != null)
						{
							Rectangle rc = currentParent.RectangleToScreen(toolStripMenuButton.Bounds);
							if (menuDropDown.Parent != null)
							{
								rc = menuDropDown.Parent.RectangleToClient(rc);
							}
							rc.Offset(empty);
							rc.Inflate(-1, -1);
							rc.X -= menuDropDown.Bounds.X;
							rc.Y -= menuDropDown.Bounds.Y;
							if (rc.IntersectsWith(Rectangle.Ceiling(graphics.ClipBounds)))
							{
								PaintMenuButtonBackground(graphics, ref rc, toolStripMenuButton);
								PaintMenuButtonImage(graphics, ref rc, toolStripMenuButton);
							}
						}
					}
					int width = menuDropDown.AuxItemsBounds.Width;
					int width2 = menuDropDown.MainItemsBounds.Width;
					Rectangle auxItemsBounds = menuDropDown.AuxItemsBounds;
					if (width > 0)
					{
						using (Brush brush = new SolidBrush(base.OfficeColorTable.PanelBackground))
						{
							graphics.FillRectangle(brush, menuDropDown.AuxItemsBounds);
						}
						int captionHeight = menuDropDown.AuxPanel.CaptionHeight;
						if (captionHeight > 0)
						{
							graphics.DrawLine(ShadowPen, auxItemsBounds.X, auxItemsBounds.Y + captionHeight - 2, auxItemsBounds.Right - 1, auxItemsBounds.Y + captionHeight - 2);
							graphics.DrawLine(HighlightPen, auxItemsBounds.X, auxItemsBounds.Y + captionHeight - 1, auxItemsBounds.Right - 1, auxItemsBounds.Y + captionHeight - 1);
							TextFormatFlags textFormatFlags = TextFormatFlags.HidePrefix | TextFormatFlags.VerticalCenter;
							textFormatFlags = (TextFormatFlags)((int)textFormatFlags | ((menuDropDown.RightToLeft == RightToLeft.Yes) ? 2 : 0));
							TextRenderer.DrawText(bounds: new Rectangle(auxItemsBounds.X, auxItemsBounds.Y, auxItemsBounds.Width, captionHeight - 2), dc: e.Graphics, text: menuDropDown.AuxPanel.Text, font: menuDropDown.AuxPanel.Font, foreColor: menuDropDown.ForeColor, flags: textFormatFlags);
						}
					}
					if (width > 0 && width2 > 0)
					{
						if (menuDropDown.RightToLeft == RightToLeft.Yes)
						{
							graphics.DrawLine(ShadowPen, auxItemsBounds.Right + 1, auxItemsBounds.Y, auxItemsBounds.Right + 1, auxItemsBounds.Bottom - 1);
							graphics.DrawLine(HighlightPen, auxItemsBounds.Right + 2, auxItemsBounds.Y, auxItemsBounds.Right + 2, auxItemsBounds.Bottom - 1);
						}
						else
						{
							graphics.DrawLine(ShadowPen, auxItemsBounds.X - 2, auxItemsBounds.Y, auxItemsBounds.X - 2, auxItemsBounds.Bottom - 1);
							graphics.DrawLine(HighlightPen, auxItemsBounds.X - 1, auxItemsBounds.Y, auxItemsBounds.X - 1, auxItemsBounds.Bottom - 1);
						}
					}
				}
				result = true;
			}
			return result;
		}

		private bool PaintDropDownExBackground(ToolStripRenderEventArgs e)
		{
			bool result = false;
			if (e.ToolStrip is OfficeDropDown officeDropDown)
			{
				if (officeDropDown.Width > 0 && officeDropDown.Height > 0)
				{
					Rectangle rectangle = new Rectangle(Point.Empty, officeDropDown.Size);
					if (!IsValidRegion(officeDropDown, e.Graphics))
					{
						officeDropDown.Region = RendererUtils.GetRoundedRegion(rectangle, 2);
					}
					e.Graphics.FillRectangle(base.ToolStripDropDownBackground, rectangle);
					int captionHeight = officeDropDown.CaptionHeight;
					if (captionHeight > 0)
					{
						Rectangle rectangle2 = new Rectangle(rectangle.X, rectangle.Y, rectangle.Width, captionHeight - 2);
						e.Graphics.FillRectangle(new SolidBrush(base.OfficeColorTable.ContextMenuTitle), rectangle2);
						TextFormatFlags textFormatFlags = TextFormatFlags.HidePrefix | TextFormatFlags.VerticalCenter;
						textFormatFlags = (TextFormatFlags)((int)textFormatFlags | ((officeDropDown.RightToLeft == RightToLeft.Yes) ? 2 : 0));
						TextRenderer.DrawText(e.Graphics, officeDropDown.CaptionText, officeDropDown.CaptionFont, rectangle2, officeDropDown.ForeColor, textFormatFlags);
						e.Graphics.DrawLine(ShadowPen, rectangle2.X, rectangle2.Y + captionHeight - 2, rectangle2.Right - 1, rectangle2.Y + captionHeight - 2);
						e.Graphics.DrawLine(HighlightPen, rectangle2.X, rectangle2.Y + captionHeight - 1, rectangle2.Right - 1, rectangle2.Y + captionHeight - 1);
					}
				}
				result = true;
			}
			return result;
		}

		private void PaintQuickItemsBackgroundLeftToRight(Graphics g, RibbonControlAdvHeader header)
		{
			GraphicsState gstate = g.Save();
			ToolStripMenuButton menuButton = header.m_menuButton;
			Rectangle bounds = menuButton.Bounds;
			int num = 0;
			if (menuButton.Available)
			{
				num = bounds.Right + 6;
			}
			else
			{
				bounds.Width = 0;
				num = bounds.Left;
			}
			if (header.QuickPanelVisible)
			{
				int num2 = header.QuickPanelHeight - 1;
				if (num2 > 0)
				{
					Rectangle rc = new Rectangle(num, header.DisplayRectangle.Y, header.QuickPanelWidth, num2);
					Rectangle rect = new Rectangle(rc.X, rc.Y - 1, 1, rc.Height + 2);
					using GraphicsPath path = GetQuickPathLeftToRight(rc);
					using (GraphicsPath graphicsPath = new GraphicsPath())
					{
						if (header.MenuButtonVisible)
						{
							graphicsPath.AddEllipse(Rectangle.Inflate(bounds, 6, 6));
						}
						else
						{
							graphicsPath.AddRectangle(new Rectangle(0, 0, bounds.Left, bounds.Height));
						}
						g.SetClip(graphicsPath, CombineMode.Exclude);
					}
					RibbonForm form = header.Form;
					bool flag = form?.ActiveState ?? false;
					Color color = (flag ? QuickPanelGradientBegin : InactiveQuickPanelGradientBegin);
					Color color2 = (flag ? QuickPanelGradientEnd : InactiveQuickPanelGradientEnd);
					if (form == null || !form.CompositionEnabled || header.m_owner.Dock != DockStyleEx.TopMost)
					{
						using LinearGradientBrush brush = new LinearGradientBrush(rect, color, color2, LinearGradientMode.Vertical);
						g.FillPath(brush, path);
					}
					g.SmoothingMode = SmoothingMode.AntiAlias;
					int num3 = rc.X - num2;
					int num4 = rc.Right - 1;
					int num5 = rc.Bottom - 1;
					using (GraphicsPath graphicsPath2 = new GraphicsPath())
					{
						graphicsPath2.AddArc(rc.Right - num2 / 2, rc.Y, num2, num2, -90f, 180f);
						graphicsPath2.AddLine(num4, num5 + 1, num3, num5 + 1);
						using Pen pen = new Pen(Color.FromArgb(64, Color.White));
						g.DrawPath(pen, graphicsPath2);
					}
					Color alphaBlendedColor = Office12ColorTable.GetAlphaBlendedColor(Color.Black, color, 32);
					Color alphaBlendedColor2 = Office12ColorTable.GetAlphaBlendedColor(Color.Black, color2, 32);
					using Brush brush2 = new LinearGradientBrush(rect, alphaBlendedColor, alphaBlendedColor2, LinearGradientMode.Vertical);
					using Pen pen2 = new Pen(brush2);
					using (GraphicsPath graphicsPath3 = new GraphicsPath())
					{
						graphicsPath3.AddLine(num3, rc.Y, num4, rc.Y);
						graphicsPath3.AddArc(rc.Right - num2 / 2, rc.Y, num2 - 1, num2 - 1, -90f, 180f);
						graphicsPath3.AddLine(num3, num5, num4, num5);
						g.DrawPath(pen2, graphicsPath3);
					}
					g.SetClip(path, CombineMode.Replace);
					if (header.MenuButtonVisible)
					{
						g.DrawEllipse(pen2, Rectangle.Inflate(bounds, 6, 6));
					}
					else
					{
						g.DrawLine(pen2, bounds.Location, new Point(bounds.Left, bounds.Bottom));
					}
				}
			}
			g.Restore(gstate);
		}

		private void PaintQuickItemsBackgroundRightToLeft(Graphics g, RibbonControlAdvHeader header)
		{
			GraphicsState gstate = g.Save();
			ToolStripMenuButton menuButton = header.m_menuButton;
			Rectangle bounds = menuButton.Bounds;
			int num = 0;
			if (menuButton.Available)
			{
				num = bounds.Left - 6;
			}
			else
			{
				bounds.Width = 0;
				num = bounds.Left;
			}
			if (header.QuickPanelVisible)
			{
				int num2 = header.QuickPanelHeight - 1;
				if (num2 > 0)
				{
					Rectangle displayRectangle = header.DisplayRectangle;
					Rectangle rc = new Rectangle(num - header.QuickPanelWidth, displayRectangle.Y, header.QuickPanelWidth, num2);
					Rectangle rect = new Rectangle(rc.X, rc.Y - 1, 1, rc.Height + 2);
					using GraphicsPath path = GetQuickPathRightToLeft(rc);
					using (GraphicsPath graphicsPath = new GraphicsPath())
					{
						if (header.MenuButtonVisible)
						{
							graphicsPath.AddEllipse(Rectangle.Inflate(bounds, 6, 6));
						}
						else
						{
							graphicsPath.AddRectangle(new Rectangle(0, 0, bounds.Left, bounds.Height));
						}
						g.SetClip(graphicsPath, CombineMode.Exclude);
					}
					RibbonForm form = header.Form;
					bool flag = form?.ActiveState ?? false;
					Color color = (flag ? QuickPanelGradientBegin : InactiveQuickPanelGradientBegin);
					Color color2 = (flag ? QuickPanelGradientEnd : InactiveQuickPanelGradientEnd);
					if (form == null || !form.CompositionEnabled || header.m_owner.Dock != DockStyleEx.TopMost)
					{
						using LinearGradientBrush brush = new LinearGradientBrush(rect, color, color2, LinearGradientMode.Vertical);
						g.FillPath(brush, path);
					}
					g.SmoothingMode = SmoothingMode.AntiAlias;
					int x = rc.Right + num2;
					num = rc.Left + 1;
					int num3 = rc.Bottom - 1;
					using (GraphicsPath graphicsPath2 = new GraphicsPath())
					{
						graphicsPath2.AddArc(rc.Left - num2 / 2, rc.Y, num2, num2, -90f, -180f);
						graphicsPath2.AddLine(num, num3 + 1, rc.Right + num2, num3 + 1);
						using Pen pen = new Pen(Color.FromArgb(64, Color.White));
						g.DrawPath(pen, graphicsPath2);
					}
					Color alphaBlendedColor = Office12ColorTable.GetAlphaBlendedColor(Color.Black, color, 32);
					Color alphaBlendedColor2 = Office12ColorTable.GetAlphaBlendedColor(Color.Black, color2, 32);
					using Brush brush2 = new LinearGradientBrush(rect, alphaBlendedColor, alphaBlendedColor2, LinearGradientMode.Vertical);
					using Pen pen2 = new Pen(brush2);
					using (GraphicsPath graphicsPath3 = new GraphicsPath())
					{
						graphicsPath3.AddLine(x, rc.Y, num, rc.Y);
						graphicsPath3.AddArc(rc.X - num2 / 2, rc.Y, num2 - 1, num2 - 1, -90f, -180f);
						graphicsPath3.AddLine(x, num3, num, num3);
						g.DrawPath(pen2, graphicsPath3);
					}
					g.SetClip(path, CombineMode.Replace);
					if (header.MenuButtonVisible)
					{
						g.DrawEllipse(pen2, Rectangle.Inflate(bounds, 6, 6));
					}
					else
					{
						g.DrawLine(pen2, new Point(bounds.Right, bounds.Y), new Point(bounds.Right, bounds.Bottom));
					}
				}
			}
			g.Restore(gstate);
		}

		private bool PaintButtonBackground(ToolStripItemRenderEventArgs e)
		{
			return PaintButtonBackGround(e) || PaintTabItemBackGround(e) || PaintSystemButtonBackground(e) || PaintButtonOnSystemPanelBackGround(e);
		}

		private bool PaintTabItemBackGround(ToolStripItemRenderEventArgs e)
		{
			if (e.Item is ToolStripTabItem)
			{
				GraphicsState gstate = e.Graphics.Save();
				if (e.Item.Owner is RibbonControlAdvHeader ribbonControlAdvHeader)
				{
					Rectangle bounds = e.Item.Bounds;
					Rectangle rectangle = Rectangle.Intersect(ribbonControlAdvHeader.TabItemsRectangle, bounds);
					Point empty = Point.Empty;
					if (bounds.Left < ribbonControlAdvHeader.TabItemsRectangle.Left && rectangle.Width > 0)
					{
						empty.X = ribbonControlAdvHeader.TabItemsRectangle.Left - bounds.Left;
						if (ribbonControlAdvHeader.m_bIsLeftScroll)
						{
							empty.X += 13;
							rectangle.Width -= 13;
						}
					}
					Rectangle clip = new Rectangle(empty, rectangle.Size);
					e.Graphics.SetClip(clip);
				}
				if (!PaintTabItemChecked(e))
				{
					PaintTabItemSelected(e);
				}
				e.Graphics.Restore(gstate);
				return true;
			}
			return false;
		}

		private bool PaintSystemButtonBackground(ToolStripItemRenderEventArgs e)
		{
			if (e.Item is SystemButton)
			{
				if (!PaintSystemButtonPressed(e))
				{
					PaintSystemButtonSelected(e);
				}
				return true;
			}
			return false;
		}

		private bool PaintDropDownButtonBackground(ToolStripItemRenderEventArgs e)
		{
			return PaintDropDownMenuButtonBackground(e) || PaintQuickItemsDropDownButtonBackground(e) || PaintButtonBackGround(e);
		}

		private bool PaintQuickItemsDropDownButtonBackground(ToolStripItemRenderEventArgs e)
		{
			bool result = false;
			if (e.Item is QuickItemsDropDownButton)
			{
				result = PaintOverflowButtonBackground(e);
			}
			return result;
		}

		private bool PaintDropDownMenuButtonBackground(ToolStripItemRenderEventArgs e)
		{
			bool result = false;
			if (e.Item is ToolStripMenuButton toolStripMenuButton)
			{
				Rectangle rc = GetMenuButtonRectangle(toolStripMenuButton);
				PaintMenuButtonBackground(e.Graphics, ref rc, toolStripMenuButton);
				result = true;
			}
			return result;
		}

		private void PaintArrow(ToolStripArrowRenderEventArgs e)
		{
			Graphics graphics = e.Graphics;
			ToolStrip owner = e.Item.Owner;
			Image image;
			Point point;
			if (owner != null && owner.RightToLeft == RightToLeft.Yes)
			{
				Rectangle rectangle = ((!(e.Item is OfficeSplitButton)) ? new Rectangle(0, 0, e.Item.Height / 2, e.Item.Height) : e.ArrowRectangle);
				image = OfficeLeftArrow;
				point = new Point(rectangle.Left + (rectangle.Width - 4) / 2, (rectangle.Height - 7) / 2 + 1);
			}
			else
			{
				Rectangle rectangle = ((!(e.Item is OfficeSplitButton)) ? new Rectangle(e.Item.Width - e.Item.Height / 2, 0, e.Item.Height / 2, e.Item.Height) : e.ArrowRectangle);
				image = OfficeRightArrow;
				point = new Point(rectangle.Left + (rectangle.Width - 4) / 2, (rectangle.Height - 7) / 2 + 1);
			}
			graphics.DrawImage(image, point);
		}

		private bool PaintSplitButtonBackground(ToolStripItemRenderEventArgs e)
		{
			bool result = false;
			if (e.Item is OfficeSplitButton officeSplitButton)
			{
				Rectangle buttonRect = GetButtonRect(e.Item);
				if (buttonRect.Width > 0 && buttonRect.Height > 0)
				{
					Rectangle buttonBackgroundRect = GetButtonBackgroundRect(e.Item, buttonRect);
					if (buttonBackgroundRect.Width > 0 && buttonBackgroundRect.Height > 0)
					{
						Graphics graphics = e.Graphics;
						EBUTTONSTATE state = EBUTTONSTATE.Normal;
						bool flag = officeSplitButton.DropDown.Visible && officeSplitButton.DropDown.OwnerItem == officeSplitButton;
						bool flag2 = officeSplitButton.Selected || flag;
						bool splitButtonSelected = officeSplitButton.SplitButtonSelected;
						Rectangle rectangle = Rectangle.Intersect(officeSplitButton.DropDownButtonBounds, buttonBackgroundRect);
						Rectangle rc = buttonBackgroundRect;
						rc.Width -= rectangle.Width;
						if (rc.Width > 0 && rc.Height > 0)
						{
							if (flag2 && !splitButtonSelected)
							{
								PaintGradientSelected(graphics, rc, base.OfficeColorTable.SelectedButtonInActiveBegin, base.OfficeColorTable.SelectedButtonInActiveEnd);
								graphics.DrawImage(base.SelectedFlashImage, rc.X, rc.Y + rc.Height / 2, rc.Width, rc.Height);
								graphics.DrawLine(base.ButtonSelectedBorder, rc.Right - 1, rc.Y, rc.Right - 1, rc.Bottom - 1);
								state = EBUTTONSTATE.Selected;
							}
							else if (flag2)
							{
								PaintGradientSelected(graphics, rc, base.ColorTable.ButtonSelectedGradientBegin, base.ColorTable.ButtonSelectedGradientEnd);
								graphics.DrawImage(base.SelectedFlashImage, rc.X, rc.Y + rc.Height / 2, rc.Width, rc.Height);
								graphics.DrawLine(base.ButtonSelectedBorder, rc.Right - 1, rc.Y, rc.Right - 1, rc.Bottom - 1);
								state = EBUTTONSTATE.Selected;
							}
						}
						if (rectangle.Width > 0 && rectangle.Height > 0)
						{
							GraphicsState gstate = graphics.Save();
							graphics.SetClip(rectangle);
							if (flag2)
							{
								if (!flag)
								{
									PaintGradientSelected(graphics, rectangle, base.OfficeColorTable.SelectedButtonInActiveBegin, base.OfficeColorTable.SelectedButtonInActiveEnd);
									graphics.DrawImage(base.SelectedFlashImage, rectangle.X, rectangle.Y + rectangle.Height / 2, rectangle.Width, rectangle.Height);
									graphics.DrawLine(base.ButtonHighlightBorder, rectangle.X, rectangle.Y, rectangle.X, rectangle.Bottom - 1);
								}
								else
								{
									PaintGradientSelected(graphics, rectangle, base.ColorTable.ButtonSelectedGradientBegin, base.ColorTable.ButtonSelectedGradientEnd);
									graphics.DrawImage(base.SelectedFlashImage, rectangle.X, rectangle.Y + rectangle.Height / 2, rectangle.Width, rectangle.Height);
									graphics.DrawLine(base.ButtonHighlightBorder, rectangle.X, rectangle.Y, rectangle.X, rectangle.Bottom - 1);
								}
							}
							graphics.Restore(gstate);
						}
						PaintArrow(new ToolStripArrowRenderEventArgs(graphics, e.Item, rectangle, base.OfficeColorTable.CaptionText, ArrowDirection.Right));
						PaintButtonBorder(e.Graphics, buttonRect, state);
					}
				}
				result = true;
			}
			return result;
		}

		private bool PaintButtonBackGround(ToolStripItemRenderEventArgs e)
		{
			bool result = false;
			ToolStripItem item = e.Item;
			MenuDropDown.IPanel panel = e.Item.Owner as MenuDropDown.IPanel;
			if (item is OfficeButton || (panel != null && panel.PanelType != MenuDropDown.PanelType.System))
			{
				Rectangle buttonRect = GetButtonRect(e.Item);
				if (buttonRect.Width > 0 && buttonRect.Height > 0)
				{
					Rectangle buttonBackgroundRect = GetButtonBackgroundRect(e.Item, buttonRect);
					if (buttonBackgroundRect.Width > 0 && buttonBackgroundRect.Height > 0)
					{
						Graphics graphics = e.Graphics;
						EBUTTONSTATE state = EBUTTONSTATE.Normal;
						if (item.Selected)
						{
							PaintGradientSelected(graphics, buttonBackgroundRect, base.ColorTable.ButtonSelectedGradientBegin, base.ColorTable.ButtonSelectedGradientEnd);
							graphics.DrawImage(base.SelectedFlashImage, buttonBackgroundRect.X, buttonBackgroundRect.Y + buttonBackgroundRect.Height / 2, buttonBackgroundRect.Width, buttonBackgroundRect.Height);
							graphics.DrawLine(base.ButtonSelectedBorder, buttonBackgroundRect.Right - 1, buttonBackgroundRect.Y, buttonBackgroundRect.Right - 1, buttonBackgroundRect.Bottom - 1);
							state = EBUTTONSTATE.Selected;
						}
						PaintButtonBorder(e.Graphics, buttonRect, state);
					}
				}
				result = true;
			}
			return result;
		}

		private bool PaintButtonOnSystemPanelBackGround(ToolStripItemRenderEventArgs e)
		{
			bool result = false;
			if (e.Item.Owner is MenuDropDown.IPanel { PanelType: MenuDropDown.PanelType.System } && e.Item is ToolStripButton toolStripButton)
			{
				Rectangle rc = GetButtonRect(e.Item);
				if (rc.Width > 0 && rc.Height > 0)
				{
					Rectangle buttonBackgroundRect = GetButtonBackgroundRect(e.Item, rc);
					if (buttonBackgroundRect.Width > 0 && buttonBackgroundRect.Height > 0)
					{
						Graphics graphics = e.Graphics;
						EBUTTONSTATE eBUTTONSTATE = EBUTTONSTATE.Normal;
						if (!toolStripButton.Selected)
						{
							PaintGradientSelected(graphics, buttonBackgroundRect, base.OfficeColorTable.SystemButtonGradientBegin, base.OfficeColorTable.SystemButtonGradientEnd);
							graphics.DrawImage(SystemButtonSelectedFlashImage, buttonBackgroundRect.X, buttonBackgroundRect.Y + buttonBackgroundRect.Height / 2, buttonBackgroundRect.Width, buttonBackgroundRect.Height);
							PaintSystemButtonBorder(graphics, ref rc, base.OfficeColorTable.SystemButtonBorder);
						}
						else
						{
							PaintGradientSelected(graphics, buttonBackgroundRect, base.ColorTable.ButtonSelectedGradientBegin, base.ColorTable.ButtonSelectedGradientEnd);
							graphics.DrawImage(base.SelectedFlashImage, buttonBackgroundRect.X, buttonBackgroundRect.Y + buttonBackgroundRect.Height / 2, buttonBackgroundRect.Width, buttonBackgroundRect.Height);
							graphics.DrawLine(base.ButtonSelectedBorder, buttonBackgroundRect.Right - 1, buttonBackgroundRect.Y, buttonBackgroundRect.Right - 1, buttonBackgroundRect.Bottom - 1);
							eBUTTONSTATE = EBUTTONSTATE.Selected;
							PaintButtonBorder(e.Graphics, rc, eBUTTONSTATE);
						}
					}
				}
				result = true;
			}
			return result;
		}

		private bool PaintTabItemChecked(ToolStripItemRenderEventArgs e)
		{
			bool result = false;
			if (e.Item is ToolStripTabItem toolStripTabItem && IsChecked(toolStripTabItem))
			{
				Graphics graphics = e.Graphics;
				SmoothingMode smoothingMode = graphics.SmoothingMode;
				graphics.SmoothingMode = SmoothingMode.AntiAlias;
				Rectangle rc = new Rectangle(Point.Empty, e.Item.Size);
				using (Region region = GetTabRegionChecked(ref rc))
				{
					ToolStripTabGroup toolStripTabGroup = null;
					if (toolStripTabItem.Owner is RibbonControlAdvHeader ribbonControlAdvHeader)
					{
						toolStripTabGroup = ribbonControlAdvHeader.GetItemGroup(toolStripTabItem);
					}
					Color color = ((toolStripTabGroup == null) ? base.ColorTable.ToolStripGradientEnd : (toolStripTabItem.Selected ? base.ColorTable.ButtonSelectedGradientEnd : toolStripTabGroup.Color));
					Color cl = ((toolStripTabGroup == null) ? base.ColorTable.ToolStripGradientBegin : Office12ColorTable.GetAlphaBlendedColor(Color.White, color, 160));
					using LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, cl, color);
					linearGradientBrush.Blend = ((toolStripTabGroup == null) ? m_blTabChecked : m_blGroupTab);
					graphics.FillRegion(linearGradientBrush, region);
				}
				PaintTabBorderChecked(graphics, ref rc, toolStripTabItem.Selected);
				graphics.SmoothingMode = smoothingMode;
				result = true;
			}
			return result;
		}

		private bool PaintTabItemSelected(ToolStripItemRenderEventArgs e)
		{
			bool result = false;
			if (e.Item is ToolStripTabItem { Selected: not false } toolStripTabItem)
			{
				Graphics graphics = e.Graphics;
				SmoothingMode smoothingMode = graphics.SmoothingMode;
				graphics.SmoothingMode = SmoothingMode.AntiAlias;
				Rectangle rc = new Rectangle(Point.Empty, e.Item.Size);
				using (Region region = GetTabRegionSelected(ref rc))
				{
					ToolStripTabGroup toolStripTabGroup = null;
					if (toolStripTabItem.Owner is RibbonControlAdvHeader ribbonControlAdvHeader)
					{
						toolStripTabGroup = ribbonControlAdvHeader.GetItemGroup(toolStripTabItem);
					}
					Color color = Color.FromArgb(160, Color.White);
					Color color2 = Color.FromArgb(128, toolStripTabGroup?.Color ?? base.ColorTable.ButtonSelectedGradientEnd);
					using (LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rc, color, color2, 90f))
					{
						linearGradientBrush.Blend = m_blTabSelected;
						graphics.FillRegion(linearGradientBrush, region);
					}
					Rectangle rectangle = new Rectangle(rc.X, rc.Y - rc.Height / 2, rc.Width, rc.Height);
					rectangle.Inflate(rc.Width / 20, rc.Height / 2);
					Bitmap tabFlash = GetTabFlash(rectangle.Size);
					graphics.DrawImageUnscaled(tabFlash, rectangle.Location);
				}
				PaintTabBorderSelected(graphics, ref rc);
				graphics.SmoothingMode = smoothingMode;
				result = true;
			}
			return result;
		}

		private bool PaintSystemButtonPressed(ToolStripItemRenderEventArgs e)
		{
			bool result = false;
			if (e.Item is SystemButton { Pressed: not false })
			{
				Graphics graphics = e.Graphics;
				SmoothingMode smoothingMode = graphics.SmoothingMode;
				graphics.SmoothingMode = SmoothingMode.AntiAlias;
				Rectangle rc = new Rectangle(Point.Empty, e.Item.Size);
				PaintSystemButtonGradient(graphics, ref rc, SystemButtonPressedGradientBegin, SystemButtonPressedGradientEnd, m_blSystemButton);
				graphics.DrawImage(SystemButtonPressedFlashImage, rc.X, rc.Y + rc.Height * 3 / 5, rc.Width, rc.Height);
				PaintSystemButtonBorder(graphics, ref rc, SystemBorderPressed);
				graphics.SmoothingMode = smoothingMode;
				result = true;
			}
			return result;
		}

		private bool PaintSystemButtonSelected(ToolStripItemRenderEventArgs e)
		{
			bool result = false;
			if (e.Item is SystemButton { Selected: not false })
			{
				Graphics graphics = e.Graphics;
				SmoothingMode smoothingMode = graphics.SmoothingMode;
				graphics.SmoothingMode = SmoothingMode.AntiAlias;
				Rectangle rc = new Rectangle(Point.Empty, e.Item.Size);
				PaintSystemButtonGradient(graphics, ref rc, SystemButtonSelectedGradientBegin, SystemButtonSelectedGradientEnd, m_blSystemButton);
				graphics.DrawImage(SystemButtonSelectedFlashImage, rc.X, rc.Y + rc.Height * 3 / 5, rc.Width, rc.Height);
				PaintSystemButtonBorder(graphics, ref rc, SystemBorderSelected);
				graphics.SmoothingMode = smoothingMode;
				result = true;
			}
			return result;
		}

		private void PaintSystemButtonGradient(Graphics g, ref Rectangle rc, Color clBegin, Color clEnd, Blend bl)
		{
			if (rc.Width <= 0 || rc.Height <= 0)
			{
				return;
			}
			using Region region = RendererUtils.GetRoundedRegion(rc, 1);
			using LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, clBegin, clEnd);
			linearGradientBrush.Blend = bl;
			linearGradientBrush.WrapMode = WrapMode.TileFlipY;
			g.FillRegion(linearGradientBrush, region);
		}

		private void PaintSystemButtonBorder(Graphics g, ref Rectangle rc, Color color)
		{
			using (LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, Color.White, Color.Transparent))
			{
				linearGradientBrush.Blend = m_blSystemButtonBorder;
				using Pen pen = new Pen(linearGradientBrush);
				g.DrawRectangle(pen, rc.X + 1, rc.Y + 1, rc.Width - 3, rc.Height - 3);
			}
			using Pen pen2 = new Pen(color);
			g.DrawPolygon(pen2, RendererUtils.GetRoundedPolygon(rc, 1));
		}

		private void PaintTabBorderSelected(Graphics g, ref Rectangle rc)
		{
			Color ribbonPanelBorderBegin = base.OfficeColorTable.RibbonPanelBorderBegin;
			Color ribbonPanelBorderEnd = base.OfficeColorTable.RibbonPanelBorderEnd;
			using (Pen pen = new Pen(ribbonPanelBorderBegin))
			{
				Point[] points = new Point[6]
				{
					new Point(rc.X + 2, rc.Bottom - 1),
					new Point(rc.X + 2, rc.Y + 2),
					new Point(rc.X + 3, rc.Y + 1),
					new Point(rc.Right - 4, rc.Y + 1),
					new Point(rc.Right - 3, rc.Y + 2),
					new Point(rc.Right - 3, rc.Bottom - 1)
				};
				g.DrawLines(pen, points);
			}
			using Pen pen2 = new Pen(ribbonPanelBorderEnd);
			Point[] points2 = new Point[6]
			{
				new Point(rc.X + 1, rc.Bottom - 1),
				new Point(rc.X + 1, rc.Y + 2),
				new Point(rc.X + 3, rc.Y),
				new Point(rc.Right - 4, rc.Y),
				new Point(rc.Right - 2, rc.Y + 2),
				new Point(rc.Right - 2, rc.Bottom - 1)
			};
			g.DrawLines(pen2, points2);
		}

		private void PaintTabBorderChecked(Graphics g, ref Rectangle rc, bool bHighlight)
		{
			Color color = (bHighlight ? base.ColorTable.ButtonSelectedGradientBegin : base.OfficeColorTable.RibbonPanelBorderBegin);
			Color color2 = (bHighlight ? base.ColorTable.ButtonSelectedGradientEnd : base.OfficeColorTable.RibbonPanelBorderEnd);
			using (Pen pen = new Pen(color))
			{
				Point[] points = new Point[8]
				{
					new Point(rc.X + 1, rc.Bottom - 1),
					new Point(rc.X + 2, rc.Bottom - 2),
					new Point(rc.X + 2, rc.Y + 2),
					new Point(rc.X + 3, rc.Y + 1),
					new Point(rc.Right - 4, rc.Y + 1),
					new Point(rc.Right - 3, rc.Y + 2),
					new Point(rc.Right - 3, rc.Bottom - 2),
					new Point(rc.Right - 2, rc.Bottom - 1)
				};
				g.DrawLines(pen, points);
			}
			using Pen pen2 = new Pen(color2);
			Point[] points2 = new Point[8]
			{
				new Point(rc.X, rc.Bottom - 1),
				new Point(rc.X + 1, rc.Bottom - 2),
				new Point(rc.X + 1, rc.Y + 2),
				new Point(rc.X + 3, rc.Y),
				new Point(rc.Right - 4, rc.Y),
				new Point(rc.Right - 2, rc.Y + 2),
				new Point(rc.Right - 2, rc.Bottom - 2),
				new Point(rc.Right - 1, rc.Bottom - 1)
			};
			g.DrawLines(pen2, points2);
		}

		private void PaintMenuButtonImage(Graphics g, ref Rectangle rc, ToolStripMenuButton button)
		{
			Image image = button.Image;
			if (image != null)
			{
				int num = (int)((double)rc.Width * IMAGE_MARGIN_FACTOR) + 2;
				RibbonControlAdv ribbonControlAdv = button.Owner.Parent as RibbonControlAdv;
				Rectangle empty = Rectangle.Empty;
				empty = ((!ribbonControlAdv.ScaleMenuButtonImage) ? new Rectangle(rc.X + rc.Width / 2 - button.Image.Width / 2, rc.Y + rc.Height / 2 - button.Image.Height / 2, button.Image.Width, button.Image.Height) : new Rectangle(rc.X + num, rc.Y + num, rc.Width - num * 2 + 1, rc.Height - num * 2 + 1));
				if (empty.Width > 0 && empty.Height > 0)
				{
					g.DrawImage(button.Image, empty);
				}
			}
		}

		private void PaintMenuButtonBackground(Graphics g, ref Rectangle rc, ToolStripMenuButton button)
		{
			GraphicsState gstate = g.Save();
			g.SmoothingMode = SmoothingMode.AntiAlias;
			if (!PaintMenuButtonBackgroundPressed(g, ref rc, button) && !PaintMenuButtonBackgroundSelected(g, ref rc, button))
			{
				PaintMenuButtonBackgroundNormal(g, ref rc, button);
			}
			g.Restore(gstate);
		}

		private bool PaintMenuButtonBackgroundPressed(Graphics g, ref Rectangle rc, ToolStripMenuButton button)
		{
			bool result = false;
			if (button.Pressed)
			{
				g.DrawImage(GetMenuButtonPressed(rc.Size), rc);
				PaintMenuButtonBorder(g, ref rc, bPressed: true);
				result = true;
			}
			return result;
		}

		private bool PaintMenuButtonBackgroundSelected(Graphics g, ref Rectangle rc, ToolStripMenuButton button)
		{
			bool result = false;
			if (button.Selected)
			{
				g.DrawImage(GetMenuButtonSelected(rc.Size), rc);
				PaintMenuButtonBorder(g, ref rc, bPressed: false);
				result = true;
			}
			return result;
		}

		private void PaintMenuButtonBackgroundNormal(Graphics g, ref Rectangle rc, ToolStripMenuButton button)
		{
			Image menuButtonImage = GetMenuButtonImage(rc.Size, MenuButtonNormal, MenuButtonNormalHighlight);
			g.DrawImageUnscaled(menuButtonImage, rc.Location);
			PaintMenuButtonBorder(g, ref rc, bPressed: false);
		}

		private void PaintMenuButtonBorder(Graphics g, ref Rectangle rc, bool bPressed)
		{
			GraphicsState gstate = g.Save();
			g.SmoothingMode = SmoothingMode.AntiAlias;
			Color alphaBlendedColor = Office12ColorTable.GetAlphaBlendedColor(Color.Black, base.ColorTable.ToolStripGradientBegin, 32);
			Color color = (bPressed ? Color.FromArgb(32, Color.Black) : Color.FromArgb(160, Color.White));
			using (Pen pen = new Pen(alphaBlendedColor, 2f))
			{
				g.DrawEllipse(pen, rc);
			}
			using (new Pen(color, 1f))
			{
			}
			g.Restore(gstate);
		}

		public void DrawTabScrollButton(RibbonControlAdvHeader header, Graphics g, Rectangle rc, bool bRight)
		{
			if (rc.Width > 0 && rc.Height > 0)
			{
				Rectangle rect = new Rectangle(rc.Left, rc.Top + 2, rc.Width - 2, rc.Height - 4);
				bool bSelected = (bRight ? header.RightScrollSelected : header.LeftScrollSelected);
				using (Brush brush = GetBackgroundBrush(rc.Top, rc.Height, bSelected))
				{
					g.FillRectangle(brush, rect);
				}
				g.SmoothingMode = SmoothingMode.AntiAlias;
				g.DrawPolygon(Pens.White, bRight ? RendererUtils.GetSquareRoundedToRightPolygon(Rectangle.Inflate(rc, -1, -1), 1) : RendererUtils.GetSquareRoundedToLeftPolygon(Rectangle.Inflate(rc, -1, -1), 1));
				using (Pen pen = GetBorderPen())
				{
					g.DrawPolygon(pen, bRight ? RendererUtils.GetSquareRoundedToRightPolygon(rc, 2) : RendererUtils.GetSquareRoundedToLeftPolygon(rc, 2));
				}
				Image image = (bRight ? RightArrow : LeftArrow);
				int x = rc.Left + (rc.Width - 3) / 2;
				int y = rc.Top + (rc.Height - 5) / 2;
				g.DrawImage(image, x, y);
			}
		}

		public void DrawSeparators(RibbonControlAdvHeader header, Graphics g, Rectangle rc)
		{
			int num = header.QuickPanelHeight + 2;
			Color transparent = Color.Transparent;
			Color tabItemSeparator = base.OfficeColorTable.TabItemSeparator;
			Brush verticalBrush = GetVerticalBrush(num, header.Height, header.m_fFactor, transparent, tabItemSeparator);
			Pen pen = new Pen(verticalBrush);
			Point pt = new Point(0, num);
			Point pt2 = new Point(0, header.Height);
			int i = 0;
			for (int count = header.m_iSepatators.Count; i < count; i++)
			{
				int x = (pt.X = header.m_iSepatators[i]);
				pt2.X = x;
				if (header.m_iSepatators[i] < rc.Right - (header.m_bIsRightScroll ? 13 : 0) && header.m_iSepatators[i] > rc.Left + (header.m_bIsLeftScroll ? 13 : 0))
				{
					g.DrawLine(pen, pt, pt2);
				}
			}
		}

		public void DrawUpDownScrollButton(MenuDropDown.Panel panel, Graphics g, Rectangle rc, bool bDown)
		{
			bool flag = (bDown ? panel.DownScrollSelected : panel.UpScrollSelected);
			using (LinearGradientBrush brush = GetVerticalBrush(ref rc, flag ? base.OfficeColorTable.ButtonSelectedGradientBegin : base.OfficeColorTable.ToolStripGradientBegin, flag ? base.OfficeColorTable.ButtonSelectedGradientEnd : base.OfficeColorTable.ToolStripGradientEnd))
			{
				Rectangle rect = new Rectangle(rc.Left, rc.Top + 2, rc.Width - 2, rc.Height - 4);
				g.FillRectangle(brush, rect);
			}
			g.SmoothingMode = SmoothingMode.AntiAlias;
			g.DrawPolygon(Pens.White, bDown ? RendererUtils.GetSquareRoundedToDownPolygon(Rectangle.Inflate(rc, -1, -1), 1) : RendererUtils.GetSquareRoundedToUpPolygon(Rectangle.Inflate(rc, -1, -1), 1));
			using (Pen pen = GetBorderPen())
			{
				g.DrawPolygon(pen, bDown ? RendererUtils.GetSquareRoundedToDownPolygon(rc, 2) : RendererUtils.GetSquareRoundedToUpPolygon(rc, 2));
			}
			Image image = (bDown ? DownArrow : UpArrow);
			int x = rc.Left + (rc.Width - 5) / 2;
			int y = rc.Top + (rc.Height - 3) / 2;
			g.DrawImage(image, x, y);
		}

		public void DrawScrollButtonOnDropDown(OfficeDropDown dropDown, Graphics g, Rectangle rc, bool bDown)
		{
			bool flag = (bDown ? dropDown.DownScrollSelected : dropDown.UpScrollSelected);
			using (LinearGradientBrush brush = GetVerticalBrush(ref rc, flag ? base.OfficeColorTable.ButtonSelectedGradientBegin : base.OfficeColorTable.ToolStripGradientBegin, flag ? base.OfficeColorTable.ButtonSelectedGradientEnd : base.OfficeColorTable.ToolStripGradientEnd))
			{
				Rectangle rect = new Rectangle(rc.Left, rc.Top + 1, rc.Width - 2, rc.Height - 2);
				g.FillRectangle(brush, rect);
			}
			g.SmoothingMode = SmoothingMode.AntiAlias;
			g.DrawPolygon(Pens.White, bDown ? RendererUtils.GetSquareRoundedToDownPolygon(Rectangle.Inflate(rc, -1, -1), 1) : RendererUtils.GetSquareRoundedToUpPolygon(Rectangle.Inflate(rc, -1, -1), 1));
			using (Pen pen = GetBorderPen())
			{
				g.DrawPolygon(pen, bDown ? RendererUtils.GetSquareRoundedToDownPolygon(rc, 2) : RendererUtils.GetSquareRoundedToUpPolygon(rc, 2));
			}
			Image image = (bDown ? DownArrow : UpArrow);
			int x = rc.Left + (rc.Width - 5) / 2;
			int y = rc.Top + (rc.Height - 3) / 2;
			g.DrawImage(image, x, y);
		}

		private Region GetTabRegionChecked(ref Rectangle rc)
		{
			Region region = new Region(rc);
			region.Exclude(new Rectangle(rc.X, rc.Y, 1, rc.Height - 1));
			region.Exclude(new Rectangle(rc.X + 1, rc.Y, 1, 2));
			region.Exclude(new Rectangle(rc.X + 2, rc.Y, 1, 1));
			region.Exclude(new Rectangle(rc.Right - 3, rc.Y, 1, 1));
			region.Exclude(new Rectangle(rc.Right - 2, rc.Y, 1, 2));
			region.Exclude(new Rectangle(rc.Right - 1, rc.Y, 1, rc.Height - 1));
			return region;
		}

		private Region GetTabRegionSelected(ref Rectangle rc)
		{
			Region region = new Region(rc);
			region.Exclude(new Rectangle(rc.X, rc.Y, 1, rc.Height));
			region.Exclude(new Rectangle(rc.X + 1, rc.Y, 1, 2));
			region.Exclude(new Rectangle(rc.X + 2, rc.Y, 1, 1));
			region.Exclude(new Rectangle(rc.Right - 3, rc.Y, 1, 1));
			region.Exclude(new Rectangle(rc.Right - 2, rc.Y, 1, 2));
			region.Exclude(new Rectangle(rc.Right - 1, rc.Y, 1, rc.Height));
			return region;
		}

		private GraphicsPath GetQuickPathLeftToRight(Rectangle rc)
		{
			GraphicsPath graphicsPath = new GraphicsPath();
			int height = rc.Height;
			int num = rc.X - height;
			graphicsPath.AddLine(num, rc.Y, num, rc.Bottom);
			graphicsPath.AddLine(num, rc.Bottom, rc.Right, rc.Bottom);
			graphicsPath.AddArc(rc.Right - height / 2, rc.Y, height - 1, height - 1, 90f, -180f);
			graphicsPath.AddLine(rc.Right, rc.Y, num, rc.Y);
			return graphicsPath;
		}

		private GraphicsPath GetQuickPathRightToLeft(Rectangle rc)
		{
			GraphicsPath graphicsPath = new GraphicsPath();
			int height = rc.Height;
			int num = rc.Right + height;
			graphicsPath.AddLine(num, rc.Y, num, rc.Bottom);
			graphicsPath.AddLine(num, rc.Bottom, rc.X, rc.Bottom);
			graphicsPath.AddArc(rc.X - height / 2, rc.Y, height - 1, height - 1, 90f, 180f);
			graphicsPath.AddLine(rc.X, rc.Y, num, rc.Y);
			return graphicsPath;
		}

		private Rectangle GetMenuButtonRectangle(ToolStripItem item)
		{
			Rectangle result = new Rectangle(Point.Empty, item.Size);
			result.Inflate(-1, -1);
			return result;
		}

		private Bitmap GetMenuButtonNormal(Size szImage)
		{
			Bitmap bitmap = m_hImages[EIMAGE.eiMenuButtonFlashNormal] as Bitmap;
			if (bitmap == null || bitmap.Size != szImage)
			{
				bitmap = GetMenuButtonImage(szImage, MenuButtonNormal, MenuButtonNormalHighlight);
				m_hImages[EIMAGE.eiMenuButtonFlashNormal] = bitmap;
			}
			return bitmap;
		}

		private Bitmap GetMenuButtonSelected(Size szImage)
		{
			Bitmap bitmap = m_hImages[EIMAGE.eiMenuButtonFlashSelected] as Bitmap;
			if (bitmap == null || bitmap.Size != szImage)
			{
				bitmap = GetMenuButtonImage(szImage, MenuButtonSelected, MenuButtonSelectedHighlight);
				m_hImages[EIMAGE.eiMenuButtonFlashSelected] = bitmap;
			}
			return bitmap;
		}

		private Bitmap GetMenuButtonPressed(Size szImage)
		{
			Bitmap bitmap = m_hImages[EIMAGE.eiMenuButtonFlashPressed] as Bitmap;
			if (bitmap == null || bitmap.Size != szImage)
			{
				bitmap = GetMenuButtonImage(szImage, MenuButtonPressed, MenuButtonPressedHighlight);
				m_hImages[EIMAGE.eiMenuButtonFlashPressed] = bitmap;
			}
			return bitmap;
		}

		private Bitmap GetMenuButtonImage(Size szImage, Color backColor, Color highlightColor)
		{
			Rectangle rect = new Rectangle(Point.Empty, szImage);
			Bitmap bitmap = new Bitmap(rect.Width, rect.Height);
			using Graphics graphics = Graphics.FromImage(bitmap);
			graphics.Clear(Color.Transparent);
			using (LinearGradientBrush linearGradientBrush = new LinearGradientBrush(Point.Empty, new Point(0, szImage.Height), Color.White, backColor))
			{
				Blend blend = new Blend();
				blend.Positions = new float[4] { 0f, 0.45f, 0.45f, 1f };
				blend.Factors = new float[4] { 0f, 0.6f, 1f, 0.8f };
				linearGradientBrush.Blend = blend;
				graphics.FillEllipse(linearGradientBrush, rect);
			}
			using (GraphicsPath graphicsPath = new GraphicsPath())
			{
				graphicsPath.AddEllipse(Rectangle.Inflate(rect, rect.Width / 8, 0));
				using PathGradientBrush pathGradientBrush = new PathGradientBrush(graphicsPath);
				pathGradientBrush.CenterColor = Color.Transparent;
				pathGradientBrush.SurroundColors = new Color[1] { Color.White };
				Blend blend2 = new Blend();
				blend2.Positions = new float[3] { 0f, 0.2f, 1f };
				blend2.Factors = new float[3] { 0f, 0.8f, 1f };
				pathGradientBrush.Blend = blend2;
				graphics.FillEllipse(pathGradientBrush, rect);
			}
			using GraphicsPath graphicsPath2 = new GraphicsPath();
			graphicsPath2.AddEllipse(rect);
			using PathGradientBrush pathGradientBrush2 = new PathGradientBrush(graphicsPath2);
			pathGradientBrush2.CenterPoint = new Point(rect.Width / 2, rect.Bottom);
			pathGradientBrush2.CenterColor = highlightColor;
			pathGradientBrush2.SurroundColors = new Color[1] { Color.Transparent };
			Blend blend3 = new Blend();
			blend3.Positions = new float[4] { 0f, 0.2f, 0.8f, 1f };
			blend3.Factors = new float[4] { 0f, 0.1f, 0.9f, 1f };
			pathGradientBrush2.Blend = blend3;
			graphics.FillEllipse(pathGradientBrush2, rect);
			return bitmap;
		}

		private Bitmap GetTabFlash(Size size)
		{
			Rectangle rect = new Rectangle(Point.Empty, size);
			Bitmap bitmap = new Bitmap(rect.Width, rect.Height);
			using Graphics graphics = Graphics.FromImage(bitmap);
			GraphicsPath graphicsPath = new GraphicsPath();
			graphicsPath.AddEllipse(rect);
			using PathGradientBrush pathGradientBrush = new PathGradientBrush(graphicsPath);
			pathGradientBrush.Blend = m_blTabFlash;
			pathGradientBrush.CenterColor = base.ColorTable.ToolStripGradientBegin;
			pathGradientBrush.SurroundColors = new Color[1] { Color.Transparent };
			graphics.FillRectangle(pathGradientBrush, rect);
			return bitmap;
		}

		private void Clear()
		{
			Clear(m_hImages);
		}

		private void Clear(Hashtable items)
		{
			foreach (IDisposable value in items.Values)
			{
				value?.Dispose();
			}
			items.Clear();
		}

		private bool IsChecked(ToolStripTabItem item)
		{
			bool result = false;
			if (item != null && item.Checked)
			{
				result = !IsPanelHidden(item);
			}
			return result;
		}

		private bool IsPanelHidden(ToolStripItem item)
		{
			bool result = false;
			if (item.Owner is RibbonControlAdvHeader { Parent: RibbonControlAdv parent })
			{
				result = !parent.VisiblePanel;
			}
			return result;
		}

		private LinearGradientBrush GetBackgroundBrush(int top, int nHeight, bool bSelected)
		{
			Color color = (bSelected ? base.OfficeColorTable.ButtonSelectedGradientBegin : base.OfficeColorTable.ToolStripGradientBegin);
			Color color2 = (bSelected ? base.OfficeColorTable.ButtonSelectedGradientEnd : base.OfficeColorTable.ToolStripGradientEnd);
			return new LinearGradientBrush(new Rectangle(0, top, 1, nHeight), color, color2, LinearGradientMode.Vertical);
		}

		private Pen GetBorderPen()
		{
			return new Pen(base.OfficeColorTable.ToolStripBorder);
		}

		private Brush GetBackgroundBrushForArrow(int width)
		{
			Color officeArrowGradientBegin = base.OfficeColorTable.OfficeArrowGradientBegin;
			Color officeArrowGradientEnd = base.OfficeColorTable.OfficeArrowGradientEnd;
			return new LinearGradientBrush(new Rectangle(0, 0, width, 1), officeArrowGradientBegin, officeArrowGradientEnd, LinearGradientMode.Horizontal);
		}

		private LinearGradientBrush GetVerticalBrush(int top, int height, float factor, Color cl1, Color cl2)
		{
			Rectangle rect = new Rectangle(0, top, 1, height);
			LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, cl1, cl2, 90f);
			if (factor > 0f && factor <= 1f)
			{
				Blend blend = new Blend();
				blend.Positions = new float[3] { 0f, 0.3f, 1f };
				blend.Factors = new float[3] { 0f, factor, factor };
				linearGradientBrush.Blend = blend;
			}
			return linearGradientBrush;
		}

		private void DrawThemeText(Graphics g, IntPtr hWnd, Rectangle rcText, string sText, Font font)
		{
			IntPtr intPtr = DwmAPI.OpenThemeData(hWnd, "CompositedWindow::Window");
			if (!(intPtr != IntPtr.Zero))
			{
				return;
			}
			IntPtr hdc = g.GetHdc();
			if (hdc != IntPtr.Zero)
			{
				IntPtr intPtr2 = WindowsAPI.CreateCompatibleDC(hdc);
				if (intPtr2 != IntPtr.Zero)
				{
					int width = rcText.Width;
					int height = rcText.Height;
					BITMAPINFO_FLAT bmi = new BITMAPINFO_FLAT
					{
						bmiHeader_biSize = Marshal.SizeOf(typeof(BITMAPINFOHEADER)),
						bmiHeader_biHeight = -height,
						bmiHeader_biWidth = width,
						bmiHeader_biPlanes = 1,
						bmiHeader_biBitCount = 32,
						bmiHeader_biCompression = 0
					};
					IntPtr ppvBits = IntPtr.Zero;
					IntPtr intPtr3 = WindowsAPI.CreateDIBSection(intPtr2, ref bmi, 0, ref ppvBits, IntPtr.Zero, 0);
					if (intPtr3 != IntPtr.Zero)
					{
						IntPtr hObject = font.ToHfont();
						IntPtr hObject2 = WindowsAPI.SelectObject(intPtr2, hObject);
						IntPtr hObject3 = WindowsAPI.SelectObject(intPtr2, intPtr3);
						DwmAPI.DTTOPTS pOptions = default(DwmAPI.DTTOPTS);
						pOptions.dwSize = Marshal.SizeOf((object)pOptions);
						pOptions.dwFlags = (DwmAPI.DttFlags)10240;
						pOptions.iGlowSize = 0;
						WindowsAPI.BitBlt(intPtr2, 0, 0, width, height, hdc, rcText.X, rcText.Y, 13369376u);
						RECT pRect = new RECT(0, 0, width, height);
						DwmAPI.DrawThemeTextEx(intPtr, intPtr2, 0, 0, sText, -1, (DrawTextFormatFlags)262149, ref pRect, ref pOptions);
						WindowsAPI.BitBlt(hdc, rcText.X, rcText.Y, width, height, intPtr2, 0, 0, 13369376u);
						WindowsAPI.SelectObject(intPtr2, hObject2);
						WindowsAPI.SelectObject(intPtr2, hObject3);
						WindowsAPI.DeleteObject(hObject);
						WindowsAPI.DeleteObject(intPtr3);
					}
					WindowsAPI.DeleteDC(intPtr2);
				}
				g.ReleaseHdc(hdc);
			}
			DwmAPI.CloseThemeData(intPtr);
		}
	}

	internal class QuickItemsCollection : RibbonItemsCollection
	{
		private ToolStrip m_owner;

		private RibbonControlAdvHeader m_header;

		public bool DestroyItemsOnRemove = true;

		public ToolStrip Owner
		{
			get
			{
				return m_owner;
			}
			set
			{
				if (m_owner != value)
				{
					m_owner = value;
					DestroyItemsOnRemove = false;
					int i = 0;
					for (int count = base.Count; i < count; i++)
					{
						base[i].Owner = m_owner;
					}
					DestroyItemsOnRemove = true;
				}
			}
		}

		public event ToolStripItemEventHandler _ItemAdded;

		public event ToolStripItemEventHandler _ItemRemoved;

		public QuickItemsCollection(RibbonControlAdvHeader header)
		{
			m_header = header;
		}

		public Rectangle Layout(Rectangle bounds)
		{
			Rectangle result = Rectangle.Empty;
			if (m_owner != null)
			{
				result = ((m_owner.RightToLeft == RightToLeft.No) ? LayoutLTR(bounds) : LayoutRTL(bounds));
			}
			return result;
		}

		private Rectangle LayoutLTR(Rectangle bounds)
		{
			Rectangle result = bounds;
			QuickItemsDropDownButton quickAccessButton = m_header.QuickAccessButton;
			QuickItemsOverflowButton quickOverflowButton = m_header.QuickOverflowButton;
			m_header.OverflowsItems.Clear();
			bool flag = false;
			int num = bounds.Left;
			if (m_header.QuickPanelVisible)
			{
				int i = 0;
				for (int count = base.Count; i < count; i++)
				{
					ToolStripItem toolStripItem = base[i];
					if (toolStripItem != null && toolStripItem.Available)
					{
						if (toolStripItem.AutoSize)
						{
							int width = toolStripItem.GetPreferredSize(bounds.Size).Width;
							toolStripItem.Size = new Size(width, bounds.Height - toolStripItem.Margin.Vertical);
						}
						int num2 = bounds.Right - toolStripItem.Width - toolStripItem.Margin.Horizontal - quickAccessButton.Margin.Horizontal - quickAccessButton.Width;
						if (num >= num2 || flag)
						{
							ToolStrip.SetItemParent(toolStripItem, quickOverflowButton.DropDown);
							m_header.OverflowsItems.Add(toolStripItem);
							flag = true;
						}
						else
						{
							ToolStrip.SetItemParent(toolStripItem, m_owner);
							((ILayoutSupport)m_owner).SetItemLocation(toolStripItem, new Point(num, bounds.Top + toolStripItem.Margin.Top));
							num += toolStripItem.Bounds.Width + toolStripItem.Margin.Horizontal;
						}
					}
				}
				if (!m_header.ShowQuickPanelBelowRibbon && base.Count > 0)
				{
					num += bounds.Height / 2;
				}
				if (quickAccessButton != null)
				{
					Padding margin = quickAccessButton.Margin;
					quickAccessButton.Size = new Size(quickAccessButton.GetPreferredSize(bounds.Size).Width, bounds.Height - margin.Vertical);
					if (m_header.HasOverflowItems)
					{
						ToolStrip.SetItemParent(quickAccessButton, quickOverflowButton.DropDown);
						ToolStrip.SetItemParent(quickOverflowButton, m_owner);
						m_header.OverflowsItems.Add(quickAccessButton);
					}
					else
					{
						ToolStrip.SetItemParent(quickAccessButton, m_owner);
						ToolStrip.SetItemParent(quickOverflowButton, null);
						quickAccessButton.Location = new Point(num + margin.Left, bounds.Top + margin.Top);
						result.Width = quickAccessButton.Bounds.Right - bounds.Left;
					}
				}
				if (quickOverflowButton != null)
				{
					Padding margin2 = quickOverflowButton.Margin;
					quickOverflowButton.Size = new Size(quickOverflowButton.GetPreferredSize(bounds.Size).Width, bounds.Height - margin2.Vertical);
					quickOverflowButton.Location = new Point(num + margin2.Left, bounds.Top + margin2.Top);
					result.Width = quickOverflowButton.Bounds.Right - bounds.Left;
				}
			}
			return result;
		}

		private Rectangle LayoutRTL(Rectangle bounds)
		{
			Rectangle result = bounds;
			QuickItemsDropDownButton quickAccessButton = m_header.QuickAccessButton;
			QuickItemsOverflowButton quickOverflowButton = m_header.QuickOverflowButton;
			m_header.OverflowsItems.Clear();
			bool flag = false;
			int num = bounds.Right;
			if (m_header.QuickPanelVisible)
			{
				int i = 0;
				for (int count = base.Count; i < count; i++)
				{
					ToolStripItem toolStripItem = base[i];
					if (toolStripItem != null && toolStripItem.Available)
					{
						if (toolStripItem.AutoSize)
						{
							int width = toolStripItem.GetPreferredSize(bounds.Size).Width;
							toolStripItem.Size = new Size(width, bounds.Height - toolStripItem.Margin.Vertical);
						}
						int num2 = toolStripItem.Width + toolStripItem.Margin.Horizontal + quickAccessButton.Margin.Horizontal + quickAccessButton.Width;
						if (num <= num2 + bounds.Left || flag)
						{
							ToolStrip.SetItemParent(toolStripItem, quickOverflowButton.DropDown);
							m_header.OverflowsItems.Add(toolStripItem);
							flag = true;
						}
						else
						{
							ToolStrip.SetItemParent(toolStripItem, m_owner);
							((ILayoutSupport)m_owner).SetItemLocation(toolStripItem, new Point(num - toolStripItem.Width - toolStripItem.Margin.Right, bounds.Top + toolStripItem.Margin.Top));
							num -= toolStripItem.Bounds.Width + toolStripItem.Margin.Horizontal;
						}
					}
				}
				if (!m_header.ShowQuickPanelBelowRibbon && base.Count > 0)
				{
					num -= bounds.Height / 2;
				}
				if (quickAccessButton != null)
				{
					Padding margin = quickAccessButton.Margin;
					quickAccessButton.Size = new Size(quickAccessButton.GetPreferredSize(bounds.Size).Width, bounds.Height - margin.Vertical);
					if (m_header.HasOverflowItems)
					{
						ToolStrip.SetItemParent(quickAccessButton, quickOverflowButton.DropDown);
						ToolStrip.SetItemParent(quickOverflowButton, m_owner);
						m_header.OverflowsItems.Add(quickAccessButton);
					}
					else
					{
						ToolStrip.SetItemParent(quickAccessButton, m_owner);
						ToolStrip.SetItemParent(quickOverflowButton, null);
						quickAccessButton.Location = new Point(num - quickAccessButton.Width - margin.Right, bounds.Top + margin.Top);
						result.Width = bounds.Right - quickAccessButton.Bounds.Left;
						result.X = quickAccessButton.Bounds.Left;
					}
				}
				if (quickOverflowButton != null)
				{
					Padding margin2 = quickOverflowButton.Margin;
					quickOverflowButton.Size = new Size(quickOverflowButton.GetPreferredSize(bounds.Size).Width, bounds.Height - margin2.Vertical);
					quickOverflowButton.Location = new Point(num - quickOverflowButton.Width - margin2.Right, bounds.Top + margin2.Top);
					result.Width = bounds.Right - quickOverflowButton.Bounds.Left;
					result.X = quickOverflowButton.Bounds.Left;
				}
			}
			return result;
		}

		private string GetQatAccelerator(int idx)
		{
			if (idx >= 10)
			{
				StringBuilder stringBuilder = new StringBuilder(255);
				int num = Convert.ToInt32('A');
				for (int num2 = idx; num2 > 0; num2 /= 36)
				{
					int num3 = num2 % 36;
					if (num3 >= 10)
					{
						stringBuilder.Insert(0, Convert.ToChar(num + (num3 - 10)));
					}
					else
					{
						stringBuilder.Insert(0, num3.ToString());
					}
				}
				stringBuilder.Insert(0, "0");
				return stringBuilder.ToString();
			}
			return idx.ToString();
		}

		internal void UpdateAccelerators(object removed)
		{
			if (!(Owner is RibbonControlAdvHeader { SuperAccelerator: { } superAccelerator }))
			{
				return;
			}
			superAccelerator.SetAccelerator(removed as ToolStripItem, null);
			int num = 1;
			foreach (object item in base.List)
			{
				if (item is ToolStripItem component)
				{
					superAccelerator.SetAccelerator(component, GetQatAccelerator(num));
					num++;
				}
			}
		}

		protected override bool OnRemove(int index, object value)
		{
			return base.OnRemove(index, value);
		}

		protected override bool OnInsert(int index, object value)
		{
			bool flag = base.OnInsert(index, value);
			if (flag && value is ToolStripItem toolStripItem)
			{
				toolStripItem.Owner = m_owner;
			}
			return flag;
		}

		protected override void OnInsertComplete(int index, object value)
		{
			base.OnInsertComplete(index, value);
			if (value is ToolStripItem toolStripItem)
			{
				if (toolStripItem is IQuickItem quickItem)
				{
					SuperToolTip.SetToolTips(toolStripItem, quickItem.ReflectedComponent);
				}
				UpdateAccelerators(null);
				if (this._ItemAdded != null)
				{
					this._ItemAdded(m_header, new ToolStripItemEventArgs(toolStripItem));
				}
			}
		}

		protected override void OnRemoveComplete(int index, object value)
		{
			base.OnRemoveComplete(index, value);
			if (value is ToolStripItem toolStripItem)
			{
				if (toolStripItem is IQuickItem)
				{
					SuperToolTip.RemoveToolTips(toolStripItem);
				}
				UpdateAccelerators(value);
				if (this._ItemRemoved != null)
				{
					this._ItemRemoved(m_header, new ToolStripItemEventArgs(toolStripItem));
				}
			}
		}
	}

	internal class QuickItemsDropDownButton : ToolStripDropDownButton, ICustomItem
	{
		private class QuickItemsDropDownMenu : ContextMenuStripEx
		{
			private RibbonControlAdvHeader m_header;

			public QuickItemsDropDownMenu(RibbonControlAdvHeader header)
			{
				m_header = header;
				base.Renderer = m_header.Renderer;
			}

			protected override void Dispose(bool disposing)
			{
				m_header = null;
				base.Renderer = null;
				base.Dispose(disposing);
			}

			protected override void OnOpening(CancelEventArgs e)
			{
				if (m_header != null && base.Renderer != m_header.Renderer)
				{
					base.Renderer = m_header.Renderer;
				}
				base.OnOpening(e);
			}
		}

		private RibbonControlAdvHeader m_header;

		public Point Location
		{
			get
			{
				return Bounds.Location;
			}
			set
			{
				SetBounds(new Rectangle(value, Size));
			}
		}

		private RibbonControlAdvHeader ParentHeader => m_header;

		ToolStrip ICustomItem.Owner
		{
			get
			{
				if (base.Parent != null)
				{
					return base.Parent;
				}
				return m_header;
			}
		}

		ToolStripItemPlacement ICustomItem.Placement => ToolStripItemPlacement.Main;

		public QuickItemsDropDownButton(RibbonControlAdvHeader header)
		{
			m_header = header;
			DisplayStyle = ToolStripItemDisplayStyle.None;
			base.ShowDropDownArrow = true;
			Padding = new Padding(0, 4, 1, 4);
			base.Margin = new Padding(1);
		}

		private void OnCustomizeMenuItemClick(object sender, EventArgs e)
		{
			CustomizeQuickItemsDialog.Execute(ParentHeader);
		}

		private void OnQuickMenuItemClick(object sender, EventArgs e)
		{
			ToolStripMenuItem toolStripMenuItem = (ToolStripMenuItem)sender;
			if (toolStripMenuItem.Tag is Component component)
			{
				if (toolStripMenuItem.Checked)
				{
					ParentHeader.Items.Remove(component as ToolStripItem);
				}
				else
				{
					ParentHeader.AddQuickItem(QuickToolstripReflectable.GetItemToReflect(component));
				}
			}
		}

		private void OnPlaceBelowRibbonMenuItemClick(object sender, EventArgs e)
		{
			if (m_header.Parent is RibbonControlAdv ribbonControlAdv)
			{
				ribbonControlAdv.ShowQuickPanelBelowRibbon = !ribbonControlAdv.ShowQuickPanelBelowRibbon;
			}
		}

		private void OnMinimizeRibbonMenuCheckedChanged(object sender, EventArgs e)
		{
			if (sender is ToolStripMenuItem toolStripMenuItem && m_header.Parent is RibbonControlAdv ribbonControlAdv)
			{
				ribbonControlAdv.MinimizePanel = toolStripMenuItem.Checked;
			}
		}

		protected override void Dispose(bool disposing)
		{
			m_header = null;
			base.Dispose(disposing);
		}

		protected override void OnPaint(PaintEventArgs e)
		{
			if (m_header != null)
			{
				m_header.Renderer.DrawDropDownButtonBackground(new ToolStripItemRenderEventArgs(e.Graphics, this));
			}
		}

		protected override void OnDropDownShow(EventArgs e)
		{
			ToolStripDropDown toolStripDropDown = base.DropDown;
			toolStripDropDown.Items.Clear();
			if (m_header.Parent is RibbonControlAdv { ItemsToShowInQuickMenu: var itemsToShowInQuickMenu } ribbonControlAdv)
			{
				if (itemsToShowInQuickMenu.Count > 0)
				{
					Dictionary<Component, IQuickItem> reflectedItems = GetReflectedItems();
					foreach (Component item in itemsToShowInQuickMenu)
					{
						ToolStripMenuItem toolStripMenuItem = new ToolStripMenuItem(ParentHeader.GetText(item), null, OnQuickMenuItemClick);
						if (reflectedItems.ContainsKey(item))
						{
							toolStripMenuItem.Checked = true;
							toolStripMenuItem.Tag = reflectedItems[item];
						}
						else
						{
							toolStripMenuItem.Checked = false;
							toolStripMenuItem.Tag = item;
						}
						toolStripDropDown.Items.Add(toolStripMenuItem);
					}
					toolStripDropDown.Items.Add(new ToolStripSeparator());
				}
				toolStripDropDown.Items.Add(new ToolStripMenuItem(ribbonControlAdv.SystemText.QuickAccessCustomizeMenuText, null, OnCustomizeMenuItemClick));
				string text = (ribbonControlAdv.ShowQuickPanelBelowRibbon ? ribbonControlAdv.SystemText.QuickAccessPlaceAboveText : ribbonControlAdv.SystemText.QuickAccessPlaceBelowText);
				toolStripDropDown.Items.Add(new ToolStripMenuItem(text, null, OnPlaceBelowRibbonMenuItemClick));
				toolStripDropDown.Items.Add(new ToolStripSeparator());
				ToolStripMenuItem toolStripMenuItem2 = new ToolStripMenuItem(ribbonControlAdv.SystemText.QuickAccessMinimizeRibbon);
				toolStripMenuItem2.Enabled = ribbonControlAdv.AllowCollapse;
				toolStripMenuItem2.Checked = ribbonControlAdv.MinimizePanel;
				toolStripMenuItem2.CheckOnClick = true;
				toolStripMenuItem2.CheckedChanged += OnMinimizeRibbonMenuCheckedChanged;
				toolStripDropDown.Items.Add(toolStripMenuItem2);
				toolStripDropDown.Text = ribbonControlAdv.SystemText.QuickAccessCustomizeCaptionText;
			}
			base.OnDropDownShow(e);
		}

		protected override ToolStripDropDown CreateDefaultDropDown()
		{
			return new QuickItemsDropDownMenu(m_header);
		}

		protected override void OnMouseDown(MouseEventArgs e)
		{
			base.OnMouseDown(e);
			if (e.Button == MouseButtons.Right)
			{
				ShowDropDown();
			}
		}

		private Dictionary<Component, IQuickItem> GetReflectedItems()
		{
			Dictionary<Component, IQuickItem> dictionary = new Dictionary<Component, IQuickItem>();
			foreach (ToolStripItem quickItem2 in ParentHeader.QuickItems)
			{
				if (quickItem2 is IQuickItem quickItem)
				{
					dictionary.Add(quickItem.ReflectedComponent, quickItem);
				}
			}
			return dictionary;
		}
	}

	public class QuickItemsOverflow : ToolStripOverflow
	{
		private class QuickItemsOverflowLayoutEngine : LayoutEngine
		{
			public Size GetPreferredSize(Size proposedSize, QuickItemsOverflow parent, bool bMinWidth)
			{
				Size result = new Size(0, 0);
				result.Width += parent.Padding.Horizontal;
				foreach (ToolStripItem overflowsItem in parent.Header.OverflowsItems)
				{
					Size size = overflowsItem.Size;
					int num = size.Height + overflowsItem.Margin.Vertical;
					if (overflowsItem is QuickItemsDropDownButton)
					{
						result.Width += overflowsItem.Margin.Horizontal;
					}
					result.Width += size.Width;
					if (result.Height < num)
					{
						result.Height = num;
					}
				}
				result.Height += parent.Padding.Vertical;
				return result;
			}

			public override bool Layout(object container, LayoutEventArgs layoutEventArgs)
			{
				QuickItemsOverflow quickItemsOverflow = (QuickItemsOverflow)container;
				_ = quickItemsOverflow.DisplayRectangle.Size;
				int num = quickItemsOverflow.Padding.Left;
				if (quickItemsOverflow.Header.RightToLeft == RightToLeft.Yes)
				{
					for (int num2 = quickItemsOverflow.DisplayedItems.Count - 1; num2 >= 0; num2--)
					{
						ToolStripItem toolStripItem = quickItemsOverflow.DisplayedItems[num2];
						if (!(toolStripItem is QuickItemsDropDownButton))
						{
							((ILayoutSupport)toolStripItem.Owner)?.SetItemLocation(toolStripItem, new Point(num, toolStripItem.Margin.Top + quickItemsOverflow.Padding.Top));
						}
						else if (toolStripItem is QuickItemsDropDownButton quickItemsDropDownButton)
						{
							quickItemsDropDownButton.Location = new Point(num, toolStripItem.Margin.Top + quickItemsOverflow.Padding.Top);
						}
						num += toolStripItem.Width;
					}
				}
				else
				{
					for (int i = 0; i < quickItemsOverflow.DisplayedItems.Count; i++)
					{
						ToolStripItem toolStripItem2 = quickItemsOverflow.DisplayedItems[i];
						if (!(toolStripItem2 is QuickItemsDropDownButton))
						{
							((ILayoutSupport)toolStripItem2.Owner)?.SetItemLocation(toolStripItem2, new Point(num, toolStripItem2.Margin.Top + quickItemsOverflow.Padding.Top));
						}
						else if (toolStripItem2 is QuickItemsDropDownButton quickItemsDropDownButton2)
						{
							quickItemsDropDownButton2.Location = new Point(num, toolStripItem2.Margin.Top + quickItemsOverflow.Padding.Top);
						}
						num += toolStripItem2.Width;
					}
				}
				return quickItemsOverflow.AutoSize;
			}
		}

		private QuickItemsOverflowLayoutEngine m_layoutEngine;

		private RibbonControlAdvHeader m_parent;

		protected override ToolStripItemCollection DisplayedItems => Header.OverflowsItems;

		public override LayoutEngine LayoutEngine
		{
			get
			{
				if (m_layoutEngine == null)
				{
					m_layoutEngine = new QuickItemsOverflowLayoutEngine();
				}
				return m_layoutEngine;
			}
		}

		public RibbonControlAdvHeader Header
		{
			get
			{
				return m_parent;
			}
			set
			{
				m_parent = value;
			}
		}

		public QuickItemsOverflow(ToolStripItem ownerItem, RibbonControlAdvHeader parent)
			: base(ownerItem)
		{
			Header = parent;
			DefaultDropDownDirection = ToolStripDropDownDirection.BelowRight;
		}

		protected override void Dispose(bool disposing)
		{
			if (disposing)
			{
				Header = null;
			}
			base.Dispose(disposing);
		}

		public override Size GetPreferredSize(Size proposedSize)
		{
			return m_layoutEngine.GetPreferredSize(proposedSize, this, bMinWidth: false);
		}
	}

	internal class QuickItemsOverflowButton : ToolStripDropDownButton, ICustomItem
	{
		public override bool HasDropDownItems => true;

		public Point Location
		{
			get
			{
				return Bounds.Location;
			}
			set
			{
				SetBounds(new Rectangle(value, Size));
			}
		}

		private RibbonControlAdvHeader ParentHeader
		{
			get
			{
				if (!(base.Parent is RibbonControlAdvHeader result))
				{
					throw new Exception("QuickItemsOverflowButton can be owned by RibbonControlAdvHeader only.");
				}
				return result;
			}
		}

		ToolStrip ICustomItem.Owner => base.Parent;

		ToolStripItemPlacement ICustomItem.Placement
		{
			get
			{
				if (base.Parent == null)
				{
					return ToolStripItemPlacement.None;
				}
				return ToolStripItemPlacement.Main;
			}
		}

		protected override void Dispose(bool disposing)
		{
			if (disposing)
			{
				base.DropDown.Dispose();
				base.DropDown = null;
			}
			base.Dispose(disposing);
		}

		protected override void OnPaint(PaintEventArgs e)
		{
			if (base.Parent != null)
			{
				base.Parent.Renderer.DrawOverflowButtonBackground(new ToolStripItemRenderEventArgs(e.Graphics, this));
			}
		}

		protected override void OnDropDownShow(EventArgs e)
		{
			base.DropDown.PerformLayout();
			base.OnDropDownShow(e);
		}

		public QuickItemsOverflowButton(RibbonControlAdvHeader parent)
		{
			base.DropDown = new QuickItemsOverflow(this, parent);
			base.Parent = parent;
			DisplayStyle = ToolStripItemDisplayStyle.None;
			base.ShowDropDownArrow = true;
			Padding = new Padding(0, 4, 0, 4);
			base.Margin = new Padding(1);
		}
	}

	private const int DEF_PANEL_HEIGHT = 25;

	private const int DEF_QUICK_HEIGHT = 22;

	private const int MIN_TABS_HEIGHT = 22;

	private const int SEPARATOR_WIDTH = 0;

	private const int MENUBUTTON_MARGIN = 2;

	private const int MENUBUTTON_PADDING = 1;

	private const int MENUBUTTON_GAP = 6;

	private const int TAB_OFFSET = 4;

	private const int IMAGE_PADDING = 6;

	private const int MIN_TITLE_TEXT_LENGTH = 24;

	private const int SCROLL_BUTTON_WIDTH = 13;

	private const int TIMER_INT = 200;

	private const int TAB_ITEMS_SEPARATOR_WIDTH = 3;

	private const int WMSZ_LEFT = 1;

	private const int WMSZ_RIGHT = 2;

	private const int WMSZ_TOP = 3;

	private const int WMSZ_TOPLEFT = 4;

	private const int WMSZ_TOPRIGHT = 5;

	private const int WMSZ_BOTTOM = 6;

	private const int WMSZ_BOTTOMLEFT = 7;

	private const int WMSZ_BOTTOMRIGHT = 8;

	internal const int WMU_UPDATESYSBUTTONS = 1025;

	private RedrawWindowFlags RDW_UPDATEFRAME = (RedrawWindowFlags)1281;

	internal static Padding smSystemButtons;

	internal static Padding smQuickItems;

	private static readonly string OVERFLOW_ACCELERATOR;

	private bool m_ShowQuickItemsDropDownButton = true;

	private RibbonControlAdv m_owner;

	private RibbonForm m_form;

	private QuickItemsCollection m_quickItems;

	private MainItemsCollection m_mainItems;

	private ToolStripMenuButton m_menuButton;

	private ToolStripItemCollection m_systemButtons;

	private ToolStripItemCollection m_mdiButtons;

	private ToolStripItem m_helpButton;

	private QuickItemsDropDownButton m_quickDropDownButton;

	private QuickItemsOverflowButton m_quickOverflowButton;

	private RibbonControlAdvLayoutEngine m_layoutEngine;

	private int m_menuButtonWidth = 40;

	private int m_quickPanelHeight = -1;

	private int m_quickPanelWidth = -1;

	private int m_systemButtonsWidth = -1;

	private bool m_bReadyForLayout;

	private ToolStripTabItem m_checkedItem;

	private SuperToolTip m_toolTip;

	private SystemMenuStrip m_systemMenu;

	private TextAlignment m_titleAlignment = TextAlignment.Left;

	private Font m_titleFont;

	private bool m_bDisplaySysButtons;

	private bool m_bDisplayMdiButtons;

	private bool m_bDisplayHelpButton;

	private Color m_foreColor = Color.Empty;

	private TabGroupCollection m_groups;

	private Dictionary<ToolStripItem, ToolStripTabGroup> m_hashGroups;

	private Rectangle m_rcTitle = Rectangle.Empty;

	private bool m_bQuickPanelVisible = true;

	private bool m_bShowQuickPanelBelowRibbon;

	private ToolStripItem m_fakeHiddenItem;

	private bool m_bHideItems;

	private ToolStripItemCollectionFiltered m_filteredItems;

	private ToolStripItemCollection m_overflowItems;

	private Rectangle m_rcTabItems = Rectangle.Empty;

	private bool m_bShowContextMenu = true;

	private SuperAccelerator m_accelerator;

	private static int[] sysCommands;

	private static int helpCommand;

	private int m_iScrollPosition;

	private bool m_bIsRightScroll;

	private bool m_bIsLeftScroll;

	private bool m_bRightScrollSelected;

	private bool m_bLeftScrollSelected;

	private Timer m_timer;

	private int m_timerInt = 200;

	private ScrollButtonsArea m_pushedButton;

	private ToolStripTabItem m_SelectedTabItem;

	private List<int> m_iSepatators = new List<int>();

	private float m_fFactor;

	private bool m_bDrawSeparators;

	IRibbonItems IRibbonHeader.QuickItems => (IRibbonItems)QuickItems;

	IRibbonItems IRibbonHeader.MainItems => (IRibbonItems)MainItems;

	public override LayoutEngine LayoutEngine
	{
		get
		{
			if (m_layoutEngine == null)
			{
				m_layoutEngine = new RibbonControlAdvLayoutEngine();
			}
			return m_layoutEngine;
		}
	}

	public override ToolStripItemCollection Items
	{
		get
		{
			ToolStripItemCollection toolStripItemCollection = base.Items;
			if (m_bHideItems && !base.Disposing)
			{
				if (m_filteredItems == null)
				{
					m_filteredItems = new ToolStripItemCollectionFiltered(this, toolStripItemCollection);
				}
				toolStripItemCollection = m_filteredItems;
			}
			return toolStripItemCollection;
		}
	}

	public ToolStripItemCollection OverflowsItems
	{
		get
		{
			if (m_overflowItems == null)
			{
				m_overflowItems = new ToolStripItemCollection(this, new ToolStripItem[0]);
			}
			return m_overflowItems;
		}
	}

	[DefaultValue(true)]
	internal bool ShowQuickItemsDropDownButton
	{
		get
		{
			return m_ShowQuickItemsDropDownButton;
		}
		set
		{
			if (m_ShowQuickItemsDropDownButton != value)
			{
				m_ShowQuickItemsDropDownButton = value;
				SetDisplayedItems();
			}
		}
	}

	[Description("The font used to display tesxt in control")]
	public override Font Font
	{
		get
		{
			return base.Font;
		}
		set
		{
			base.Font = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ToolStripTabItem SelectedTab => m_checkedItem;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Gets or sets the dropdown shown when menu button is clicked.")]
	public ToolStripDropDown MenuButtonDropDown
	{
		get
		{
			return m_menuButton.DropDown;
		}
		set
		{
			m_menuButton.DropDown = value;
		}
	}

	[Description("Gets or sets width of menu button.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public int MenuButtonWidth
	{
		get
		{
			return m_menuButtonWidth;
		}
		set
		{
			m_menuButtonWidth = value;
			PerformLayout();
		}
	}

	[Description("Gets or sets the image of the menu button.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Image MenuButtonImage
	{
		get
		{
			return m_menuButton.Image;
		}
		set
		{
			m_menuButton.Image = value;
		}
	}

	[Description("Gets or sets visibility of menu button.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool MenuButtonVisible
	{
		get
		{
			return m_menuButton.Available;
		}
		set
		{
			m_menuButton.Available = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ObservableList<ToolStripItem> QuickItems => m_quickItems;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ObservableList<ToolStripItem> MainItems => m_mainItems;

	[Description("Specifies the title of the form in the RibbonControlAdv header.")]
	public string Title
	{
		get
		{
			if (m_form != null && m_form.Appearance == RibbonForm.AppearanceType.Office2007)
			{
				return m_form.Text;
			}
			return string.Empty;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Gets or sets the form title alignment in RibbonControlAdv header.")]
	public TextAlignment TitleAlignment
	{
		get
		{
			return m_titleAlignment;
		}
		set
		{
			if (m_titleAlignment != value)
			{
				m_titleAlignment = value;
				PerformLayout();
				Invalidate();
			}
		}
	}

	[Description("Gets or sets the font settings of the form title in RibbonControlAdv header.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Font TitleFont
	{
		get
		{
			if (m_titleFont == null)
			{
				return Font;
			}
			return m_titleFont;
		}
		set
		{
			if (m_titleFont != value)
			{
				m_titleFont = value;
				PerformLayout();
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets control fore color.")]
	public new virtual Color ForeColor
	{
		get
		{
			return base.ForeColor;
		}
		set
		{
			if (m_foreColor != value)
			{
				m_foreColor = value;
				base.ForeColor = (m_foreColor.IsEmpty ? DefForeColor : m_foreColor);
			}
		}
	}

	private Color DefForeColor
	{
		get
		{
			if (base.Renderer is ToolStripProfessionalRenderer { ColorTable: Office12ColorTable colorTable })
			{
				return colorTable.RibbonTabText;
			}
			return Color.Empty;
		}
	}

	internal QuickItemsDropDownButton QuickAccessButton
	{
		get
		{
			if (m_quickDropDownButton == null)
			{
				m_quickDropDownButton = new QuickItemsDropDownButton(this);
				ToolTipInfo toolTipInfo = new ToolTipInfo();
				toolTipInfo.Header.Hidden = true;
				toolTipInfo.Footer.Hidden = true;
				toolTipInfo.Body.Text = "Customize Quick Access Toolbar";
				ToolTip.SetToolTip(m_quickDropDownButton, toolTipInfo);
			}
			return m_quickDropDownButton;
		}
	}

	internal QuickItemsOverflowButton QuickOverflowButton
	{
		get
		{
			if (m_quickOverflowButton == null)
			{
				m_quickOverflowButton = new QuickItemsOverflowButton(this);
				ToolTipInfo toolTipInfo = new ToolTipInfo();
				toolTipInfo.Header.Hidden = true;
				toolTipInfo.Footer.Hidden = true;
				toolTipInfo.Body.Text = "More controls";
				ToolTip.SetToolTip(m_quickOverflowButton, toolTipInfo);
				if (m_accelerator != null)
				{
					m_accelerator.SetAccelerator(m_quickOverflowButton, OVERFLOW_ACCELERATOR);
				}
			}
			return m_quickOverflowButton;
		}
	}

	internal ToolStripMenuButton MenuButton => m_menuButton;

	internal RibbonForm Form
	{
		get
		{
			return m_form;
		}
		set
		{
			if (m_form == value)
			{
				return;
			}
			if (m_form != null)
			{
				m_form.TextChanged -= OnFormTextChanged;
				m_form.HandleCreated -= OnFormHandleCreated;
				m_form.HandleDestroyed -= OnFormHandleDestroyed;
			}
			m_form = value;
			if (m_form != null)
			{
				m_form.TextChanged += OnFormTextChanged;
				if (m_form.TopLevel)
				{
					m_form.HandleCreated += OnFormHandleCreated;
					m_form.HandleDestroyed += OnFormHandleDestroyed;
					if (m_form.IsHandleCreated)
					{
						OnFormHandleCreated(m_form, EventArgs.Empty);
					}
				}
			}
			UpdateSystemButtons();
		}
	}

	internal int QuickPanelHeight
	{
		get
		{
			if (m_quickPanelHeight < 0)
			{
				m_quickPanelHeight = 22;
				int num = GetItemsSize(m_quickItems, 22, bWithMargins: false).Height - 2;
				if (m_bDisplaySysButtons)
				{
					int num2 = GetItemsSize(SystemButtons).Height;
					if (num < num2)
					{
						num = num2;
					}
				}
				if (m_quickPanelHeight < num)
				{
					m_quickPanelHeight = num;
				}
			}
			return m_quickPanelHeight;
		}
	}

	internal int QuickPanelWidth
	{
		get
		{
			if (m_quickPanelWidth < 0)
			{
				m_quickPanelWidth = 0;
				int i = 0;
				for (int count = m_quickItems.Count; i < count; i++)
				{
					ToolStripItem toolStripItem = m_quickItems[i];
					if (toolStripItem != null && toolStripItem.Available && toolStripItem.GetCurrentParent() == this)
					{
						m_quickPanelWidth += toolStripItem.Width;
					}
				}
			}
			return m_quickPanelWidth;
		}
	}

	internal int SystemButtonsWidth
	{
		get
		{
			if (m_systemButtonsWidth < 0)
			{
				m_systemButtonsWidth = 0;
				if (m_bDisplaySysButtons)
				{
					int i = 0;
					for (int count = SystemButtons.Count; i < count; i++)
					{
						ToolStripItem toolStripItem = SystemButtons[i];
						if (toolStripItem != null && toolStripItem.Available)
						{
							m_systemButtonsWidth += toolStripItem.Width;
						}
					}
				}
			}
			return m_systemButtonsWidth;
		}
	}

	internal SuperAccelerator SuperAccelerator
	{
		get
		{
			return m_accelerator;
		}
		set
		{
			if (m_accelerator == value)
			{
				return;
			}
			if (m_quickOverflowButton != null)
			{
				if (m_accelerator != null)
				{
					m_accelerator.SetAccelerator(m_quickOverflowButton, null);
				}
				value?.SetAccelerator(m_quickOverflowButton, OVERFLOW_ACCELERATOR);
			}
			m_accelerator = value;
		}
	}

	private ToolStripItemCollection SystemButtons
	{
		get
		{
			if (m_systemButtons == null)
			{
				SuspendLayout();
				m_systemButtons = new ToolStripItemCollection(this, new ToolStripItem[0]);
				int[] array = sysCommands;
				foreach (int sysCommand in array)
				{
					SystemButton systemButton = new SystemButton(this, sysCommand);
					ToolTip.SetToolTip(systemButton, new SystemToolTipInfo());
					m_systemButtons.Add(systemButton);
				}
				ResumeLayout(performLayout: false);
			}
			return m_systemButtons;
		}
	}

	private ToolStripItemCollection MdiButtons
	{
		get
		{
			if (m_mdiButtons == null)
			{
				m_mdiButtons = new ToolStripItemCollection(this, new ToolStripItem[0]);
				int[] array = sysCommands;
				foreach (int sysCommand in array)
				{
					SystemButton systemButton = new MdiSystemButton(this, sysCommand);
					ToolTip.SetToolTip(systemButton, new SystemToolTipInfo());
					m_mdiButtons.Add(systemButton);
				}
			}
			return m_mdiButtons;
		}
	}

	private ToolStripItem HelpButton
	{
		get
		{
			if (m_helpButton == null)
			{
				SystemButton systemButton = new HelpSystemButton(this, helpCommand);
				if (Form != null)
				{
					systemButton.Image = Form.HelpButtonImage;
					systemButton.Text = Form.HelpButtonToolTip;
				}
				ToolTip.SetToolTip(systemButton, new SystemToolTipInfo());
				m_helpButton = systemButton;
			}
			return m_helpButton;
		}
	}

	private SuperToolTip ToolTip
	{
		get
		{
			if (m_toolTip == null)
			{
				m_toolTip = new SuperToolTip(base.TopLevelControl as Form);
				m_toolTip.UpdateToolTip += OnUpdateToolTip;
			}
			return m_toolTip;
		}
	}

	private SystemMenuStrip SystemMenu
	{
		get
		{
			if (m_systemMenu == null)
			{
				m_systemMenu = new SystemMenuStrip(Form);
			}
			return m_systemMenu;
		}
	}

	public TabGroupCollection Groups => m_groups;

	internal Dictionary<ToolStripItem, ToolStripTabGroup> TabGroupsHash => m_hashGroups;

	internal Rectangle TitleRect => m_rcTitle;

	internal bool HasOverflowItems => OverflowsItems.Count > 0;

	public bool QuickPanelVisible
	{
		get
		{
			return m_bQuickPanelVisible;
		}
		set
		{
			if (m_bQuickPanelVisible != value)
			{
				m_bQuickPanelVisible = value;
				PerformLayout();
			}
		}
	}

	public bool ShowQuickPanelBelowRibbon
	{
		get
		{
			return m_bShowQuickPanelBelowRibbon;
		}
		set
		{
			if (m_bShowQuickPanelBelowRibbon != value)
			{
				m_bShowQuickPanelBelowRibbon = value;
				PerformLayout();
			}
		}
	}

	public Rectangle TabItemsRectangle
	{
		get
		{
			return m_rcTabItems;
		}
		set
		{
			m_rcTabItems = value;
		}
	}

	public bool ShowContextMenu
	{
		get
		{
			return m_bShowContextMenu;
		}
		set
		{
			m_bShowContextMenu = value;
		}
	}

	protected Rectangle RightScrollBounds
	{
		get
		{
			Rectangle result = Rectangle.Empty;
			if (m_bIsRightScroll)
			{
				result = new Rectangle(TabItemsRectangle.Right - 13, TabItemsRectangle.Top, 13, TabItemsRectangle.Height);
			}
			return result;
		}
	}

	protected Rectangle LeftScrollBounds
	{
		get
		{
			Rectangle result = Rectangle.Empty;
			if (m_bIsLeftScroll)
			{
				result = new Rectangle(TabItemsRectangle.Left, TabItemsRectangle.Top, 13, TabItemsRectangle.Height);
			}
			return result;
		}
	}

	internal bool RightScrollSelected => m_bRightScrollSelected;

	internal bool LeftScrollSelected => m_bLeftScrollSelected;

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

	internal int ScrollPositionInternal
	{
		get
		{
			return m_iScrollPosition;
		}
		set
		{
			m_iScrollPosition = value;
			PerformLayout();
		}
	}

	[Browsable(false)]
	public int ScrollPosition
	{
		get
		{
			return m_iScrollPosition;
		}
		set
		{
			ScrollPositionInternal = GetValidScrollPosition(value);
		}
	}

	public override Rectangle DisplayRectangle
	{
		get
		{
			Rectangle displayRectangle = base.DisplayRectangle;
			Size borderSize = BorderSize;
			displayRectangle.X += borderSize.Width;
			displayRectangle.Y += borderSize.Height;
			displayRectangle.Width -= 2 * borderSize.Width;
			displayRectangle.Height -= borderSize.Height;
			return displayRectangle;
		}
	}

	private Size BorderSize
	{
		get
		{
			if (m_owner.IsFormManager)
			{
				return new Size(6, 6);
			}
			return Size.Empty;
		}
	}

	public event SelectedTabChangedEventHandler SelectedTabChanged;

	public event ToolStripItemEventHandler QuickItemAdded
	{
		add
		{
			m_quickItems._ItemAdded += value;
		}
		remove
		{
			m_quickItems._ItemAdded -= value;
		}
	}

	public event ToolStripItemEventHandler QuickItemRemoved
	{
		add
		{
			m_quickItems._ItemRemoved += value;
		}
		remove
		{
			m_quickItems._ItemRemoved -= value;
		}
	}

	private void OnSelectedTabChanged(ToolStripTabItem prevSelectedTab, ToolStripTabItem newSelectedTab)
	{
		if (this.SelectedTabChanged != null)
		{
			SelectedTabChangedEventArgs e = new SelectedTabChangedEventArgs(prevSelectedTab, newSelectedTab);
			this.SelectedTabChanged(this, e);
		}
	}

	static RibbonControlAdvHeader()
	{
		OVERFLOW_ACCELERATOR = "00";
		sysCommands = new int[3] { 61472, 61488, 61536 };
		helpCommand = 61824;
		smSystemButtons = new Padding(2, 2, 2, 0);
		smQuickItems = new Padding(0, 0, 0, 1);
	}

	protected internal RibbonControlAdvHeader(RibbonControlAdv owner)
	{
		m_owner = owner;
		m_fakeHiddenItem = new ToolStripButton();
		m_fakeHiddenItem.Available = false;
		m_quickItems = new QuickItemsCollection(this);
		m_quickItems.ItemAdded += OnQuickItemsItemAdded;
		m_quickItems.ItemRemoved += OnRibbonItemRemoved;
		m_mainItems = new MainItemsCollection();
		m_mainItems.ItemAdded += OnMainItemsItemAdded;
		m_mainItems.ItemRemoved += OnRibbonItemRemoved;
		m_groups = new TabGroupCollection(this);
		m_groups.ItemRemoved += OnGroupRemoved;
		m_groups.ItemAdded += OnGroupAdded;
		m_hashGroups = new Dictionary<ToolStripItem, ToolStripTabGroup>();
		m_menuButton = new ToolStripMenuButton(this);
		m_menuButton.AutoSize = false;
		m_menuButton.DoubleClickEnabled = true;
		m_menuButton.ImageScaling = ToolStripItemImageScaling.SizeToFit;
		m_timer = new Timer();
		m_timer.Tick += OnTimerTick;
		Items.Add(m_menuButton);
		base.DefaultDropDownDirection = ToolStripDropDownDirection.BelowRight;
		base.Font = Control.DefaultFont;
		m_bReadyForLayout = true;
	}

	internal void UpdateRenderer()
	{
		if (m_owner != null)
		{
			switch (m_owner.OfficeColorScheme)
			{
			case ToolStripEx.ColorScheme.Managed:
				base.Renderer = new RibbonControlAdvHeaderRenderer(Office12ColorTable.ManagedColors);
				break;
			case ToolStripEx.ColorScheme.Silver:
				base.Renderer = new RibbonControlAdvHeaderRenderer(new Office12ColorTable());
				break;
			case ToolStripEx.ColorScheme.Blue:
				base.Renderer = new RibbonControlAdvHeaderRenderer(new OfficeBlue());
				break;
			case ToolStripEx.ColorScheme.Black:
				base.Renderer = new RibbonControlAdvHeaderRenderer(new OfficeBlack());
				break;
			}
		}
	}

	internal void UpdateSystemButtons()
	{
		m_bDisplaySysButtons = false;
		m_bDisplayMdiButtons = false;
		m_bDisplayHelpButton = false;
		RibbonForm form = Form;
		if (form != null && form.Appearance == RibbonForm.AppearanceType.Office2007)
		{
			m_bDisplaySysButtons = !form.CompositionEnabled && form.ControlBox;
			if (m_bDisplaySysButtons)
			{
				bool flag = form.MaximizeBox || form.MinimizeBox;
				foreach (SystemButton systemButton in SystemButtons)
				{
					switch (systemButton.SysCommand)
					{
					case 61488:
					case 61728:
						systemButton.Available = flag;
						if (flag)
						{
							systemButton.Enabled = form.MaximizeBox;
						}
						break;
					case 61472:
						systemButton.Available = flag;
						if (flag)
						{
							systemButton.Enabled = form.MinimizeBox;
						}
						break;
					case 61536:
						systemButton.Enabled = form.CloseBox;
						break;
					}
				}
			}
			if (form.IsMdiContainer)
			{
				Form activeMdiChild = form.ActiveMdiChild;
				if (activeMdiChild != null && activeMdiChild.WindowState == FormWindowState.Maximized)
				{
					Control control = activeMdiChild.Parent;
					if (control != null && WindowsAPI.SendMessage(control.Handle, 564, 0, IntPtr.Zero) != IntPtr.Zero)
					{
						m_bDisplayMdiButtons = true;
					}
				}
			}
			if (form.HelpButton)
			{
				m_bDisplayHelpButton = true;
			}
		}
		if (base.IsHandleCreated)
		{
			PerformLayout();
			Invalidate();
		}
	}

	internal Size GetMinimumSize()
	{
		return m_layoutEngine.GetPreferredSize(Size.Empty, this, bMinWidth: true);
	}

	public string GetText(Component comp)
	{
		if (comp is ToolStripEx)
		{
			return GetToolstripText((ToolStripEx)comp);
		}
		if (comp is ToolStripItem)
		{
			return GetItemText((ToolStripItem)comp);
		}
		return string.Empty;
	}

	public Image GetImage(Component comp)
	{
		if (comp is ToolStripEx)
		{
			return GetToolstripImage((ToolStripEx)comp);
		}
		if (comp is ToolStripItem)
		{
			return GetItemImage((ToolStripItem)comp);
		}
		return new Bitmap(typeof(ToolStripButton), "blank.bmp");
	}

	public void AddQuickItem(ToolStripItem item)
	{
		if (item != null)
		{
			m_quickItems.Add(item);
		}
	}

	public void AddMainItem(ToolStripItem item)
	{
		if (item != null)
		{
			SuspendLayout();
			RemoveInfo(m_mainItems, item);
			m_mainItems.Add(item);
			ResumeLayout();
		}
		if (item is ToolStripTabItem && m_owner != null && m_owner.SortTabItems)
		{
			SortTabs();
		}
	}

	protected internal void InsertMainItem(ToolStripTabItem item, int position)
	{
		if (item != null && position != -1)
		{
			SuspendLayout();
			RemoveInfo(m_mainItems, item);
			if (position == MainItems.Count)
			{
				MainItems.Add(item);
			}
			else
			{
				MainItems.Insert(position, item);
			}
			ResumeLayout();
		}
	}

	public void SortTabs()
	{
		try
		{
			SuspendLayout();
			m_mainItems.Sort(new ToolStripTabItemsComparer());
			(m_mainItems[0] as ToolStripTabItem).Checked = true;
			ResumeLayout(performLayout: true);
			PerformLayout();
		}
		catch
		{
		}
	}

	public override Size GetPreferredSize(Size proposedSize)
	{
		return m_layoutEngine.GetPreferredSize(proposedSize, this, bMinWidth: false);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			SuspendLayout();
			if (m_timer != null)
			{
				m_timer.Stop();
				m_timer.Tick -= OnTimerTick;
				m_timer.Dispose();
				m_timer = null;
			}
			if (m_toolTip != null)
			{
				m_toolTip.UpdateToolTip -= OnUpdateToolTip;
				m_toolTip.Dispose();
				m_toolTip = null;
			}
			if (m_quickDropDownButton != null)
			{
				m_quickDropDownButton.Dispose();
				m_quickDropDownButton = null;
			}
			if (m_quickOverflowButton != null)
			{
				m_quickOverflowButton.Dispose();
				m_quickOverflowButton = null;
			}
			if (m_systemButtons != null)
			{
				Dispose(m_systemButtons);
				m_systemButtons = null;
			}
			if (m_mdiButtons != null)
			{
				Dispose(m_mdiButtons);
				m_mdiButtons = null;
			}
			if (m_filteredItems != null)
			{
				m_filteredItems.Dispose();
				m_filteredItems = null;
			}
			if (m_systemMenu != null)
			{
				m_systemMenu.Dispose();
				m_systemMenu = null;
			}
			m_quickItems.ItemAdded -= OnQuickItemsItemAdded;
			m_quickItems.ItemRemoved -= OnRibbonItemRemoved;
			m_mainItems.ItemAdded -= OnMainItemsItemAdded;
			m_mainItems.ItemRemoved -= OnRibbonItemRemoved;
			m_groups.ItemRemoved -= OnGroupRemoved;
			m_groups.ItemAdded -= OnGroupAdded;
			m_owner = null;
			base.Renderer = null;
			ResumeLayout(performLayout: false);
		}
		base.Dispose(disposing);
	}

	protected override void OnLayout(LayoutEventArgs e)
	{
		if (m_bReadyForLayout)
		{
			m_quickPanelHeight = -1;
			m_quickPanelWidth = -1;
			m_systemButtonsWidth = -1;
			base.OnLayout(e);
		}
	}

	protected override void OnItemRemoved(ToolStripItemEventArgs e)
	{
		if (e.Item.Name != null)
		{
			bool flag = true;
			foreach (ToolStripItem quickItem in m_quickItems)
			{
				if (quickItem == e.Item)
				{
					flag = m_quickItems.DestroyItemsOnRemove;
					break;
				}
			}
			if (flag)
			{
				RemoveInfoAboutItem(e.Item);
			}
			if (e.Item is IQuickItem && flag)
			{
				e.Item.Dispose();
			}
		}
		if (e.Item is ToolStripTabItem)
		{
			ToolStripTabItem toolStripTabItem = e.Item as ToolStripTabItem;
			toolStripTabItem.CheckStateChanged -= OnTabCheckStateChanged;
			toolStripTabItem.VisibleChanged -= OnTabVisibleChanged;
			toolStripTabItem.TextChanged -= tabItem_TextChanged;
		}
		base.OnItemRemoved(e);
	}

	protected override void OnItemAdded(ToolStripItemEventArgs e)
	{
		base.OnItemAdded(e);
		if (e.Item is ToolStripTabItem)
		{
			ToolStripTabItem toolStripTabItem = (ToolStripTabItem)e.Item;
			if (m_checkedItem == null)
			{
				toolStripTabItem.Checked = true;
				m_checkedItem = toolStripTabItem;
			}
			else if (toolStripTabItem.Checked)
			{
				OnTabCheckStateChanged(toolStripTabItem, EventArgs.Empty);
			}
			Invalidate();
			toolStripTabItem.CheckStateChanged += OnTabCheckStateChanged;
			toolStripTabItem.VisibleChanged += OnTabVisibleChanged;
			toolStripTabItem.TextChanged += tabItem_TextChanged;
		}
	}

	private void tabItem_TextChanged(object sender, EventArgs e)
	{
		if (sender is ToolStripTabItem && m_owner != null && m_owner.SortTabItems)
		{
			SortTabs();
		}
	}

	protected override void OnItemClicked(ToolStripItemClickedEventArgs e)
	{
		base.OnItemClicked(e);
		ToolStripItem clickedItem = e.ClickedItem;
		if (QuickOverflowButton.DropDown.Equals(clickedItem.GetCurrentParent()) && (!(clickedItem is ToolStripDropDownItem toolStripDropDownItem) || !toolStripDropDownItem.DropDown.Visible))
		{
			QuickOverflowButton.HideDropDown();
		}
	}

	protected override void OnParentChanged(EventArgs e)
	{
		base.OnParentChanged(e);
		UpdateRenderer();
	}

	protected override void OnLayoutCompleted(EventArgs e)
	{
		base.OnLayoutCompleted(e);
		if (m_checkedItem != null && m_checkedItem.Panel.IsHandleCreated)
		{
			WindowsAPI.RedrawWindow(m_checkedItem.Panel.Handle, IntPtr.Zero, IntPtr.Zero, RDW_UPDATEFRAME);
		}
	}

	protected override void SetDisplayedItems()
	{
		m_bHideItems = true;
		base.SetDisplayedItems();
		m_bHideItems = false;
		if (QuickPanelVisible && !ShowQuickPanelBelowRibbon)
		{
			if (HasOverflowItems)
			{
				DisplayedItems.Add(QuickOverflowButton);
			}
			else if (ShowQuickItemsDropDownButton)
			{
				DisplayedItems.Add(QuickAccessButton);
			}
		}
		if (m_bDisplaySysButtons)
		{
			foreach (ToolStripItem systemButton in SystemButtons)
			{
				if (systemButton.Available)
				{
					DisplayedItems.Add(systemButton);
				}
			}
		}
		if (m_bDisplayMdiButtons)
		{
			int i = 0;
			for (int count = MdiButtons.Count; i < count; i++)
			{
				DisplayedItems.Insert(0, MdiButtons[i]);
			}
		}
		if (m_bDisplayHelpButton)
		{
			DisplayedItems.Insert(0, HelpButton);
		}
	}

	protected override void WndProc(ref Message m)
	{
		switch ((Msg)m.Msg)
		{
		case Msg.WM_MOUSEMOVE:
			if (OnMouseMoveMsg(ref m))
			{
				m.Result = (IntPtr)0;
				return;
			}
			break;
		case Msg.WM_MOUSELEAVE:
			OnMouseLeaveMsg();
			break;
		case Msg.WM_LBUTTONDOWN:
			if (OnLeftMouseDownMsg(ref m))
			{
				m.Result = (IntPtr)0;
				return;
			}
			break;
		case Msg.WM_LBUTTONDBLCLK:
			if (OnLeftMouseDoubleClickMsg(ref m))
			{
				m.Result = (IntPtr)0;
				return;
			}
			break;
		case Msg.WM_LBUTTONUP:
			if (OnLeftMouseUpMsg(ref m))
			{
				m.Result = (IntPtr)0;
				return;
			}
			break;
		case Msg.WM_NCHITTEST:
			if (OnWmNcHitTest(ref m))
			{
				return;
			}
			break;
		case Msg.WM_NCLBUTTONDOWN:
			if (OnWmNcLButtonDown(ref m))
			{
				return;
			}
			break;
		case Msg.WM_NCRBUTTONDOWN:
			if (OnWmNcRButtonDown(ref m))
			{
				return;
			}
			break;
		case Msg.WM_NCLBUTTONDBLCLK:
			if (OnWmNcLButtonDblClk(ref m))
			{
				return;
			}
			break;
		case Msg.WM_MOUSEACTIVATE:
			if (OnMouseActivate(ref m))
			{
				return;
			}
			break;
		case Msg.WM_CONTEXTMENU:
			if (OnWmContextMenu(ref m))
			{
				return;
			}
			break;
		case Msg.TBM_GETRANGEMIN:
			UpdateSystemButtons();
			return;
		}
		base.WndProc(ref m);
	}

	protected virtual void OnTitleFontChanged()
	{
		PerformLayout();
		Update();
	}

	protected override void OnRendererChanged(EventArgs e)
	{
		base.OnRendererChanged(e);
		if (m_foreColor == Color.Empty)
		{
			base.ForeColor = DefForeColor;
		}
	}

	protected override void OnMouseDown(MouseEventArgs mea)
	{
		base.OnMouseDown(mea);
		if (m_owner == null || m_owner.MinimizePanel)
		{
			return;
		}
		ToolStripTabGroup groupUnderPoint = GetGroupUnderPoint(mea.Location);
		if (groupUnderPoint == null)
		{
			return;
		}
		foreach (ToolStripItem mainItem in m_mainItems)
		{
			ToolStripTabItem toolStripTabItem = mainItem as ToolStripTabItem;
			if (m_hashGroups.ContainsKey(toolStripTabItem) && m_hashGroups[toolStripTabItem] == groupUnderPoint)
			{
				toolStripTabItem.Checked = true;
				break;
			}
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (!(base.Renderer is RibbonControlAdvHeaderRenderer ribbonControlAdvHeaderRenderer))
		{
			return;
		}
		Rectangle tabItemsRectangle = TabItemsRectangle;
		int tabItemsWidth = GetTabItemsWidth();
		int num = tabItemsRectangle.Width;
		if (tabItemsWidth > num)
		{
			int num2 = tabItemsRectangle.Height;
			int top = tabItemsRectangle.Top;
			if (RightToLeft == RightToLeft.Yes)
			{
				m_bIsLeftScroll = tabItemsWidth + m_iScrollPosition > num;
				m_bIsRightScroll = m_iScrollPosition < 0;
			}
			else
			{
				m_bIsLeftScroll = m_iScrollPosition > 0;
				m_bIsRightScroll = tabItemsWidth - m_iScrollPosition > num;
			}
			if (m_bIsRightScroll)
			{
				ribbonControlAdvHeaderRenderer.DrawTabScrollButton(rc: new Rectangle(tabItemsRectangle.Right - 13, top, 13, num2), header: this, g: e.Graphics, bRight: true);
			}
			else
			{
				m_bRightScrollSelected = false;
			}
			if (m_bIsLeftScroll)
			{
				ribbonControlAdvHeaderRenderer.DrawTabScrollButton(rc: new Rectangle(tabItemsRectangle.Left, top, 13, num2), header: this, g: e.Graphics, bRight: false);
			}
			else
			{
				m_bLeftScrollSelected = false;
			}
		}
		else
		{
			m_bIsLeftScroll = false;
			m_bIsRightScroll = false;
		}
		if (m_bDrawSeparators && m_iSepatators.Count > 0)
		{
			ribbonControlAdvHeaderRenderer.DrawSeparators(this, e.Graphics, tabItemsRectangle);
		}
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
		ScrollPositionInternal = GetValidScrollPosition(ScrollPositionInternal);
	}

	protected override void OnMouseCaptureChanged(EventArgs e)
	{
		if (!base.Capture)
		{
			m_timer.Stop();
			PushedButton = ScrollButtonsArea.None;
		}
	}

	protected override void OnMouseUp(MouseEventArgs mea)
	{
		base.OnMouseUp(mea);
		base.Capture = false;
	}

	private bool OnWmNcHitTest(ref Message m)
	{
		if (m_owner.IsFormManager)
		{
			Point ptScr = WindowsAPI.GetPointFromLPARAM((int)m.LParam);
			if (GetHitTest(ref ptScr))
			{
				HitTest hitTest = HitTest.HTNOWHERE;
				IntPtr plResult = IntPtr.Zero;
				if (Form.CompositionEnabled)
				{
					DwmAPI.DwmDefWindowProc(Form.Handle, m.Msg, m.WParam, m.LParam, ref plResult);
					switch ((HitTest)(int)plResult)
					{
					case HitTest.HTMINBUTTON:
					case HitTest.HTMAXBUTTON:
					case HitTest.HTCLOSE:
					case HitTest.HTHELP:
						hitTest = HitTest.HTTRANSPARENT;
						break;
					}
				}
				if (hitTest == HitTest.HTNOWHERE)
				{
					hitTest = Form.GetHitTest(ptScr);
					if (hitTest == HitTest.HTNOWHERE)
					{
						hitTest = HitTest.HTCAPTION;
					}
				}
				m.Result = (IntPtr)(long)hitTest;
				return true;
			}
		}
		return false;
	}

	private bool OnWmNcLButtonDown(ref Message m)
	{
		if (m_owner.IsFormManager)
		{
			if (m_owner.Form != null && m_owner.Form.CompositionEnabled && m_owner.Form.IsMaximized() && (int)m.WParam == 2)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(m_owner.Form.Handle, 274, 61458, Syncfusion.Runtime.InteropServices.NativeMethods.MAKELPARAM(Cursor.Position.X, Cursor.Position.Y));
			}
			else
			{
				switch ((HitTest)(int)m.WParam)
				{
				case HitTest.HTCAPTION:
					MoveForm(m.LParam);
					break;
				case HitTest.HTTOP:
					ResizeForm(3, m.LParam);
					break;
				case HitTest.HTBOTTOM:
					ResizeForm(6, m.LParam);
					break;
				case HitTest.HTLEFT:
					ResizeForm(1, m.LParam);
					break;
				case HitTest.HTRIGHT:
					ResizeForm(2, m.LParam);
					break;
				case HitTest.HTTOPLEFT:
					ResizeForm(4, m.LParam);
					break;
				case HitTest.HTTOPRIGHT:
					ResizeForm(5, m.LParam);
					break;
				case HitTest.HTBOTTOMLEFT:
					ResizeForm(7, m.LParam);
					break;
				case HitTest.HTBOTTOMRIGHT:
					ResizeForm(8, m.LParam);
					break;
				default:
					return false;
				}
			}
		}
		m.Result = IntPtr.Zero;
		return true;
	}

	private bool OnWmNcRButtonDown(ref Message m)
	{
		bool result = false;
		if ((int)m.WParam == 2)
		{
			WindowsAPI.PostMessage(m.HWnd, 123, (int)base.Handle, (int)m.LParam);
			m.Result = IntPtr.Zero;
			result = true;
		}
		return result;
	}

	private bool OnWmNcLButtonDblClk(ref Message m)
	{
		if (m_owner.IsFormManager && Form.MaximizeBox && (int)m.WParam == 2)
		{
			SystemCommand systemCommand = ((Form.WindowState == FormWindowState.Maximized) ? SystemCommand.SC_RESTORE : SystemCommand.SC_MAXIMIZE);
			BeginInvoke(new SendMessageDelegate(WindowsAPI.SendMessage), Form.Handle, 274, systemCommand, (int)m.LParam);
		}
		return false;
	}

	private bool OnWmContextMenu(ref Message m)
	{
		bool result = false;
		if (m.WParam == base.Handle && (Form == null || !Form.IsMdiChild))
		{
			Point ptScr = WindowsAPI.GetPointFromLPARAM((int)m.LParam);
			if (GetHitTest(ref ptScr))
			{
				ShowSystemMenu(ptScr);
				result = true;
			}
		}
		return result;
	}

	private void OnTabCheckStateChanged(object sender, EventArgs e)
	{
		ToolStripTabItem toolStripTabItem = (ToolStripTabItem)sender;
		if (toolStripTabItem.Checked && toolStripTabItem != m_checkedItem)
		{
			ToolStripTabItem checkedItem = m_checkedItem;
			m_checkedItem = toolStripTabItem;
			if (checkedItem != null)
			{
				checkedItem.Checked = false;
			}
			ScrollTabItem(toolStripTabItem);
			OnSelectedTabChanged(checkedItem, toolStripTabItem);
		}
		else if (!toolStripTabItem.Checked && toolStripTabItem == m_checkedItem)
		{
			m_checkedItem = null;
			TryCheckNextTabItem(toolStripTabItem);
		}
	}

	private void OnTabVisibleChanged(object sender, EventArgs e)
	{
		ToolStripTabItem toolStripTabItem = (ToolStripTabItem)sender;
		if (toolStripTabItem.Visible)
		{
			if (m_checkedItem == null)
			{
				toolStripTabItem.Checked = true;
			}
		}
		else
		{
			toolStripTabItem.Checked = false;
		}
	}

	private void OnUpdateToolTip(Component component, ref ToolTipInfo info)
	{
		if (component is SystemButton)
		{
			info.Body.Text = ((SystemButton)component).Text;
		}
		if (component == m_quickDropDownButton && m_owner != null)
		{
			info.Body.Text = m_owner.SystemText.QuickAccessCustomizeCaptionText;
		}
		if (base.Renderer is ToolStripProfessionalRenderer)
		{
			info.BackColor = ((ToolStripProfessionalRenderer)base.Renderer).ColorTable.ToolStripGradientBegin;
		}
	}

	private void OnQuickItemsItemAdded(object sender, ListItemEventArgs<ToolStripItem> e)
	{
		SuspendLayout();
		if (m_bShowQuickPanelBelowRibbon)
		{
			if (m_owner != null)
			{
				e.Item.Owner = m_owner.BottomToolstrip;
			}
		}
		else
		{
			e.Item.Owner = this;
		}
		if (e.Item is IQuickItem { ReflectedComponent: not null } quickItem)
		{
			quickItem.ReflectedComponent.Disposed += OnReflectedComponentDisposed;
		}
		ResumeLayout();
		PerformLayout();
	}

	private void OnMainItemsItemAdded(object sender, ListItemEventArgs<ToolStripItem> e)
	{
		e.Item.Owner = this;
	}

	private void OnRibbonItemRemoved(object sender, ListItemEventArgs<ToolStripItem> e)
	{
		SuspendLayout();
		if (e.Item is IQuickItem { ReflectedComponent: not null } quickItem)
		{
			quickItem.ReflectedComponent.Disposed -= OnReflectedComponentDisposed;
		}
		e.Item.Owner = null;
		ResumeLayout();
		PerformLayout();
	}

	private void OnReflectedComponentDisposed(object sender, EventArgs e)
	{
		foreach (ToolStripItem quickItem2 in QuickItems)
		{
			if (quickItem2 is IQuickItem quickItem && quickItem.Reflects(sender as IComponent))
			{
				QuickItems.Remove(quickItem2);
				break;
			}
		}
	}

	private void OnGroupRemoved(object sender, ListItemEventArgs<ToolStripTabGroup> args)
	{
		args.Item.NameChanged -= OnGroupVisualParameterChanged;
		args.Item.ColorChanged -= OnGroupVisualParameterChanged;
		args.Item.VisibilityChanged -= OnGroupVisibilityChanged;
		List<ToolStripTabItem> list = new List<ToolStripTabItem>();
		foreach (ToolStripTabItem key in m_hashGroups.Keys)
		{
			if (m_hashGroups[key] == args.Item)
			{
				list.Add(key);
			}
		}
		foreach (ToolStripTabItem item in list)
		{
			m_hashGroups.Remove(item);
		}
	}

	private void OnGroupAdded(object sender, ListItemEventArgs<ToolStripTabGroup> e)
	{
		e.Item.NameChanged += OnGroupVisualParameterChanged;
		e.Item.ColorChanged += OnGroupVisualParameterChanged;
		e.Item.VisibilityChanged += OnGroupVisibilityChanged;
	}

	private void OnGroupVisualParameterChanged(object sender, EventArgs e)
	{
		Invalidate();
	}

	private void OnGroupVisibilityChanged(object sender, EventArgs e)
	{
		if (sender is ToolStripTabGroup { Visible: false } toolStripTabGroup && m_hashGroups.ContainsKey(m_checkedItem) && m_hashGroups[m_checkedItem] == toolStripTabGroup)
		{
			m_checkedItem.Checked = false;
			CheckNextItem(m_checkedItem);
		}
		PerformLayout();
	}

	private void OnFormHandleCreated(object sender, EventArgs e)
	{
		Application.AddMessageFilter(this);
	}

	private void OnFormHandleDestroyed(object sender, EventArgs e)
	{
		Application.RemoveMessageFilter(this);
	}

	private void OnFormTextChanged(object sender, EventArgs e)
	{
		PerformLayout();
	}

	protected internal void RemoveInfoAboutItem(ToolStripItem item)
	{
		if (m_checkedItem == item)
		{
			CheckNextItem(item);
		}
		if (!RemoveInfo(m_quickItems, item))
		{
			RemoveInfo(m_mainItems, item);
		}
		PerformLayout();
	}

	private void CheckNextItem(ToolStripItem item)
	{
		ToolStripTabItem toolStripTabItem = null;
		for (int i = 0; i < m_mainItems.Count; i++)
		{
			if (m_mainItems[i] is ToolStripTabItem toolStripTabItem2 && toolStripTabItem2 != item && IsVisibleGroup(toolStripTabItem2))
			{
				toolStripTabItem = toolStripTabItem2;
				break;
			}
		}
		if (toolStripTabItem != null)
		{
			toolStripTabItem.Checked = true;
		}
		else
		{
			m_checkedItem = null;
		}
	}

	private bool RemoveInfo(ObservableList<ToolStripItem> itemsData, ToolStripItem item)
	{
		int i = 0;
		for (int count = itemsData.Count; i < count; i++)
		{
			if (itemsData[i] == item)
			{
				itemsData.RemoveAt(i);
				return true;
			}
		}
		return false;
	}

	private Size GetItemsSizePreferred(IList items, int minHeight)
	{
		Size result = new Size(0, minHeight);
		foreach (object item in items)
		{
			if (item is ToolStripItem { Available: not false } toolStripItem)
			{
				Size size = (toolStripItem.AutoSize ? toolStripItem.GetPreferredSize(Size.Empty) : toolStripItem.Size);
				int num = size.Height + toolStripItem.Margin.Top;
				result.Width += size.Width;
				if (result.Height < num)
				{
					result.Height = num;
				}
			}
		}
		return result;
	}

	internal static Size GetItemsSize(IList items)
	{
		return GetItemsSize(items, 25, bWithMargins: true);
	}

	internal static Size GetItemsSize(IList items, int initialHeight, bool bWithMargins)
	{
		Size result = new Size(0, initialHeight);
		foreach (object item in items)
		{
			if (item is ToolStripItem { Available: not false, Size: { Height: var num } size } toolStripItem)
			{
				if (bWithMargins)
				{
					num += toolStripItem.Margin.Vertical;
				}
				result.Width += size.Width;
				if (result.Height < num)
				{
					result.Height = num;
				}
			}
		}
		return result;
	}

	private Size GetTitleSize()
	{
		Size result = Size.Empty;
		if (m_form != null && m_form.Appearance == RibbonForm.AppearanceType.Office2007)
		{
			result = TextRenderer.MeasureText(m_form.Text, TitleFont);
		}
		return result;
	}

	private bool GetHitTest(ref Point ptScr)
	{
		Rectangle rectangle = new Rectangle(0, 0, base.ClientSize.Width, base.Top + DisplayRectangle.Top + QuickPanelHeight);
		Point point = PointToClient(ptScr);
		if (rectangle.Contains(point) && GetItemAt(point) == null)
		{
			return GetGroupUnderPoint(point) == null;
		}
		return false;
	}

	private Image GetItemImage(ToolStripItem item)
	{
		Image image = item.Image;
		if (image == null)
		{
			Bitmap bitmap = null;
			bitmap = ((item is ToolStripTextBox) ? new Bitmap(typeof(ToolStripButton), "TextBox.bmp") : ((!(item is ToolStripComboBox)) ? new Bitmap(typeof(ToolStripButton), "blank.bmp") : new Bitmap(typeof(ToolStripButton), "ComboBox.bmp")));
			if (bitmap != null)
			{
				bitmap.MakeTransparent(Color.Magenta);
				image = bitmap;
			}
		}
		return image;
	}

	private Image GetToolstripImage(ToolStripEx toolStrip)
	{
		if (toolStrip.Image == null)
		{
			return new Bitmap(typeof(ToolStripButton), "blank.bmp");
		}
		return toolStrip.Image;
	}

	private string GetItemText(ToolStripItem item)
	{
		string text = GetQuickText(item);
		if (string.IsNullOrEmpty(text))
		{
			text = ((!(item is ToolStripTextBox) && !(item is ToolStripComboBox) && !string.IsNullOrEmpty(item.Text)) ? item.Text : item.Name);
		}
		return text;
	}

	private string GetToolstripText(ToolStripEx toolStrip)
	{
		string text = GetQuickText(toolStrip);
		if (string.IsNullOrEmpty(text))
		{
			text = (string.IsNullOrEmpty(toolStrip.Text) ? toolStrip.Name : toolStrip.Text);
		}
		return text;
	}

	private string GetQuickText(Component comp)
	{
		if (m_owner != null)
		{
			return m_owner.GetDescription(comp);
		}
		return string.Empty;
	}

	internal ToolStripTabGroup GetItemGroup(ToolStripItem item)
	{
		ToolStripTabGroup result = null;
		if (m_hashGroups.ContainsKey(item))
		{
			result = m_hashGroups[item];
		}
		return result;
	}

	internal void SetItemGroup(ToolStripItem item, ToolStripTabGroup group)
	{
		if (group != null)
		{
			m_hashGroups[item] = group;
		}
		else
		{
			m_hashGroups.Remove(item);
		}
		PerformLayout();
		Invalidate();
	}

	private ToolStripTabGroup GetGroupUnderPoint(Point p)
	{
		foreach (ToolStripTabGroup group in m_groups)
		{
			foreach (Rectangle bounds in group.BoundsList)
			{
				if (bounds.Contains(p))
				{
					return group;
				}
			}
		}
		return null;
	}

	private bool IsVisibleGroup(ToolStripItem item)
	{
		if (m_hashGroups.ContainsKey(item))
		{
			return m_hashGroups[item].Visible;
		}
		return true;
	}

	internal static ToolStrip GetItemParent(ToolStripItem item)
	{
		ToolStrip toolStrip = item.GetCurrentParent();
		if (toolStrip == null)
		{
			toolStrip = item.Owner;
		}
		return toolStrip;
	}

	private int GetTabItemsWidth()
	{
		int num = 0;
		foreach (ToolStripItem mainItem in m_mainItems)
		{
			if (mainItem is ToolStripTabItem && mainItem.Visible)
			{
				num += mainItem.Width + 3;
			}
		}
		return num;
	}

	internal void RefreshScroll()
	{
		RedrawWindowFlags flags = (RedrawWindowFlags)1025;
		WindowsAPI.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, flags);
	}

	private int GetValidScrollPosition(int position)
	{
		int num = position;
		if (num != 0)
		{
			int tabItemsWidth = GetTabItemsWidth();
			int num2 = TabItemsRectangle.Width;
			if (RightToLeft == RightToLeft.Yes)
			{
				if (num > 0 || tabItemsWidth < num2)
				{
					num = 0;
				}
				else if (tabItemsWidth > num2)
				{
					int num3 = num2 - tabItemsWidth;
					if (num < num3)
					{
						num = num3;
					}
				}
			}
			else if (num < 0 || tabItemsWidth < num2)
			{
				num = 0;
			}
			else if (tabItemsWidth > num2)
			{
				int num4 = tabItemsWidth - num2;
				if (num > num4)
				{
					num = num4;
				}
			}
		}
		return num;
	}

	private void ScrollToRight(bool bRightToLeft)
	{
		int left = TabItemsRectangle.Left;
		int num = TabItemsRectangle.Right - 13;
		if (bRightToLeft)
		{
			for (int num2 = m_mainItems.Count - 1; num2 >= 0; num2--)
			{
				ToolStripItem toolStripItem = m_mainItems[num2];
				if (toolStripItem != null && toolStripItem.Visible && toolStripItem.Bounds.Right >= num)
				{
					int num3 = toolStripItem.Bounds.Left - left - 13;
					if (num2 == 0)
					{
						num3 += 13;
					}
					if (num3 != 0)
					{
						ScrollPositionInternal = GetValidScrollPosition(ScrollPositionInternal + num3);
						break;
					}
				}
			}
			return;
		}
		int i = 0;
		for (int count = m_mainItems.Count; i < count; i++)
		{
			ToolStripItem toolStripItem2 = m_mainItems[i];
			if (toolStripItem2 != null && toolStripItem2.Visible && toolStripItem2.Bounds.Right >= num)
			{
				int num4 = toolStripItem2.Bounds.Left - left - 13;
				if (i == 0)
				{
					num4 += 13;
				}
				if (num4 != 0)
				{
					ScrollPositionInternal = GetValidScrollPosition(ScrollPositionInternal + num4);
					break;
				}
			}
		}
	}

	private void ScrollToLeft(bool bRightToLeft)
	{
		int num = TabItemsRectangle.Left + 13;
		int num2 = TabItemsRectangle.Width - 13;
		if (bRightToLeft)
		{
			int i = 0;
			for (int count = m_mainItems.Count; i < count; i++)
			{
				ToolStripItem toolStripItem = m_mainItems[i];
				if (toolStripItem != null && toolStripItem.Visible && toolStripItem.Bounds.Left <= num)
				{
					int num3 = toolStripItem.Bounds.Right - num + 13 - num2;
					if (i == 0)
					{
						num3 -= 13;
					}
					if (num3 != 0)
					{
						ScrollPositionInternal = GetValidScrollPosition(ScrollPositionInternal + num3);
						break;
					}
				}
			}
			return;
		}
		int num4 = m_mainItems.Count - 1;
		for (int num5 = num4; num5 >= 0; num5--)
		{
			ToolStripItem toolStripItem2 = m_mainItems[num5];
			if (toolStripItem2 != null && toolStripItem2.Visible && toolStripItem2.Bounds.Left <= num)
			{
				int num6 = toolStripItem2.Bounds.Right - num + 13 - num2;
				if (num5 == num4)
				{
					num6 -= 13;
				}
				if (num6 != 0)
				{
					ScrollPositionInternal = GetValidScrollPosition(ScrollPositionInternal + num6);
					break;
				}
			}
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
		Point pt = PointToClient(Control.MousePosition);
		switch (scrollButtonsArea)
		{
		case ScrollButtonsArea.RightScrollButton:
			if (RightScrollBounds.IsEmpty)
			{
				base.Capture = false;
			}
			else if (RightScrollBounds.Contains(pt))
			{
				ScrollToRight(RightToLeft == RightToLeft.Yes);
			}
			break;
		case ScrollButtonsArea.LeftScrollButton:
			if (LeftScrollBounds.IsEmpty)
			{
				base.Capture = false;
			}
			else if (LeftScrollBounds.Contains(pt))
			{
				ScrollToLeft(RightToLeft == RightToLeft.Yes);
			}
			break;
		}
		m_timer.Interval = m_timerInt;
	}

	private bool OnMouseMoveMsg(ref Message m)
	{
		bool result = false;
		bool flag = false;
		Point pointFromLPARAM = WindowsAPI.GetPointFromLPARAM((int)m.LParam);
		if (m_bIsRightScroll)
		{
			flag = RightScrollBounds.Contains(pointFromLPARAM);
			if (flag != m_bRightScrollSelected)
			{
				m_bRightScrollSelected = flag;
				RefreshScroll();
			}
		}
		if (m_bIsLeftScroll && !flag)
		{
			bool flag2 = LeftScrollBounds.Contains(pointFromLPARAM);
			if (flag2 != m_bLeftScrollSelected)
			{
				m_bLeftScrollSelected = flag2;
				RefreshScroll();
			}
		}
		ToolStripItem itemAt = GetItemAt(pointFromLPARAM);
		if (itemAt is ToolStripTabItem)
		{
			ToolStripTabItem toolStripTabItem = itemAt as ToolStripTabItem;
			if (m_SelectedTabItem == null)
			{
				m_SelectedTabItem = toolStripTabItem;
			}
			if (m_bRightScrollSelected || m_bLeftScrollSelected)
			{
				m_SelectedTabItem.SelectedInternal = false;
			}
			else
			{
				Rectangle bounds = itemAt.Bounds;
				if (Rectangle.Intersect(TabItemsRectangle, bounds).Contains(pointFromLPARAM))
				{
					toolStripTabItem.SelectedInternal = true;
					if (m_SelectedTabItem != toolStripTabItem)
					{
						m_SelectedTabItem.SelectedInternal = false;
						m_SelectedTabItem = toolStripTabItem;
					}
				}
			}
			result = true;
		}
		else if (m_SelectedTabItem != null)
		{
			m_SelectedTabItem.SelectedInternal = false;
			m_SelectedTabItem = null;
		}
		return result;
	}

	private bool OnLeftMouseDownMsg(ref Message m)
	{
		bool flag = false;
		Point pointFromLPARAM = WindowsAPI.GetPointFromLPARAM((int)m.LParam);
		if (m_bIsRightScroll && RightScrollBounds.Contains(pointFromLPARAM))
		{
			flag = true;
			base.Capture = true;
			PushedButton = ScrollButtonsArea.RightScrollButton;
			ScrollToRight(RightToLeft == RightToLeft.Yes);
			StartTimer(ScrollButtonsArea.RightScrollButton);
		}
		if (!flag && m_bIsLeftScroll && LeftScrollBounds.Contains(pointFromLPARAM))
		{
			flag = true;
			base.Capture = true;
			PushedButton = ScrollButtonsArea.LeftScrollButton;
			ScrollToLeft(RightToLeft == RightToLeft.Yes);
			StartTimer(ScrollButtonsArea.LeftScrollButton);
		}
		if (!flag)
		{
			ToolStripItem itemAt = GetItemAt(pointFromLPARAM);
			if (itemAt is ToolStripTabItem)
			{
				Rectangle bounds = itemAt.Bounds;
				if (!Rectangle.Intersect(TabItemsRectangle, bounds).Contains(pointFromLPARAM))
				{
					flag = true;
				}
			}
		}
		return flag;
	}

	private bool OnLeftMouseDoubleClickMsg(ref Message m)
	{
		bool result = false;
		Point pointFromLPARAM = WindowsAPI.GetPointFromLPARAM((int)m.LParam);
		if ((m_bIsRightScroll && RightScrollBounds.Contains(pointFromLPARAM)) || (m_bIsLeftScroll && LeftScrollBounds.Contains(pointFromLPARAM)))
		{
			result = true;
		}
		return result;
	}

	private bool OnLeftMouseUpMsg(ref Message m)
	{
		Point pointFromLPARAM = WindowsAPI.GetPointFromLPARAM((int)m.LParam);
		if ((m_bIsRightScroll && RightScrollBounds.Contains(pointFromLPARAM)) || (m_bIsLeftScroll && LeftScrollBounds.Contains(pointFromLPARAM)) || PushedButton != ScrollButtonsArea.None)
		{
			base.Capture = false;
			return true;
		}
		return false;
	}

	private void OnMouseLeaveMsg()
	{
		if (m_SelectedTabItem != null)
		{
			m_SelectedTabItem.SelectedInternal = false;
		}
		if (m_bRightScrollSelected)
		{
			m_bRightScrollSelected = false;
			RefreshScroll();
		}
		else if (m_bLeftScrollSelected)
		{
			m_bLeftScrollSelected = false;
			RefreshScroll();
		}
	}

	private bool OnMouseActivate(ref Message m)
	{
		bool result = false;
		if (WindowsAPI.HIGH_ORDER((int)m.LParam) == 513)
		{
			m.Result = (IntPtr)1L;
			result = true;
		}
		return result;
	}

	internal void CheckNextTab(int delta)
	{
		bool bForward = ((RightToLeft == RightToLeft.Yes) ? (delta > 0) : (delta < 0));
		ToolStripTabItem nextTab = GetNextTab(m_checkedItem, bForward);
		if (nextTab != null)
		{
			nextTab.Checked = true;
		}
	}

	internal ToolStripTabItem GetNextTab(ToolStripTabItem itemFrom, bool bForward)
	{
		ToolStripTabItem toolStripTabItem = null;
		int i = 0;
		for (int count = m_mainItems.Count; i < count; i++)
		{
			if (!(m_mainItems[i] is ToolStripTabItem toolStripTabItem2) || !IsVisible(toolStripTabItem2))
			{
				continue;
			}
			if (bForward)
			{
				if (toolStripTabItem == itemFrom)
				{
					return toolStripTabItem2;
				}
			}
			else if (toolStripTabItem2 == itemFrom)
			{
				return toolStripTabItem;
			}
			toolStripTabItem = toolStripTabItem2;
		}
		return null;
	}

	private bool IsVisible(ToolStripTabItem item)
	{
		bool flag = item.Available;
		if (flag)
		{
			ToolStripTabGroup itemGroup = GetItemGroup(item);
			if (itemGroup != null && !itemGroup.Visible)
			{
				flag = false;
			}
		}
		return flag;
	}

	private void ScrollTabItem(ToolStripTabItem tabItem)
	{
		Rectangle tabItemsRectangle = TabItemsRectangle;
		if (m_bIsLeftScroll)
		{
			tabItemsRectangle.X += 13;
			tabItemsRectangle.Width -= 13;
		}
		if (m_bIsRightScroll)
		{
			tabItemsRectangle.Width -= 13;
		}
		Rectangle bounds = tabItem.Bounds;
		if (bounds.X < tabItemsRectangle.X)
		{
			int num = bounds.Left - tabItemsRectangle.X;
			ScrollPositionInternal = GetValidScrollPosition(ScrollPositionInternal + num);
		}
		else if (bounds.Right > tabItemsRectangle.Right)
		{
			int num2 = bounds.Right - tabItemsRectangle.X - tabItemsRectangle.Width;
			ScrollPositionInternal = GetValidScrollPosition(ScrollPositionInternal + num2);
		}
	}

	private void ResizeForm(int szFlag, IntPtr lParam)
	{
		if (Form.WindowState == FormWindowState.Normal)
		{
			WindowStyles windowLong = (WindowStyles)WindowsAPI.GetWindowLong(Form.Handle, -16);
			if ((windowLong & WindowStyles.WS_THICKFRAME) == WindowStyles.WS_THICKFRAME)
			{
				WindowsAPI.PostMessage(Form.Handle, 274, 0xF000 | szFlag, (int)lParam);
			}
		}
	}

	private void MoveForm(IntPtr lParam)
	{
		if (Form.WindowState == FormWindowState.Normal)
		{
			WindowsAPI.PostMessage(Form.Handle, 274, 61458, (int)lParam);
		}
	}

	private void TryCheckNextTabItem(ToolStripTabItem pTabItem)
	{
		int num = MainItems.IndexOf(pTabItem);
		if (num == -1)
		{
			return;
		}
		int i = num + 1;
		for (int count = MainItems.Count; i < count; i++)
		{
			if (TryCheckNextTabItem(i))
			{
				return;
			}
		}
		for (int num2 = num - 1; num2 >= 0; num2--)
		{
			if (TryCheckNextTabItem(num2))
			{
				return;
			}
		}
		if (pTabItem.Visible)
		{
			pTabItem.Checked = true;
		}
	}

	private bool TryCheckNextTabItem(int iIndex)
	{
		bool result = false;
		if (MainItems[iIndex] is ToolStripTabItem { Visible: not false } toolStripTabItem)
		{
			toolStripTabItem.Checked = true;
			result = true;
		}
		return result;
	}

	private void Dispose(ToolStripItemCollection items)
	{
		for (int num = items.Count - 1; num >= 0; num--)
		{
			items[num].Dispose();
		}
		items.Clear();
	}

	internal void ShowSystemMenu()
	{
		Rectangle displayRectangle = DisplayRectangle;
		int num = displayRectangle.Y + QuickPanelHeight;
		int num2;
		if (RightToLeft == RightToLeft.Yes)
		{
			Size preferredSize = SystemMenu.GetPreferredSize(Size.Empty);
			num2 = displayRectangle.Right - preferredSize.Width;
		}
		else
		{
			num2 = displayRectangle.X;
		}
		ShowSystemMenu(PointToScreen(new Point(num2, num)));
		if (SystemMenu.Items.Count > 0)
		{
			SystemMenu.Items[0].Select();
		}
	}

	internal void ShowSystemMenu(Point pt)
	{
		if (m_bShowContextMenu)
		{
			SystemMenu.UpdateItems(base.Renderer);
			SystemMenu.Show(pt);
		}
	}

	private bool ShouldSerializeFont()
	{
		return base.Font == Control.DefaultFont;
	}

	public override void ResetFont()
	{
		base.Font = Control.DefaultFont;
	}

	internal bool ShouldSerializeTitleFont()
	{
		return m_titleFont != null;
	}

	internal void ResetTitleFont()
	{
		TitleFont = null;
	}

	public new void SetItemLocation(ToolStripItem item, Point location)
	{
		if (item.Owner == this)
		{
			base.SetItemLocation(item, location);
		}
	}

	public ToolStripItem GetItem(ToolStripItem item)
	{
		bool flag = !IsVisibleGroup(item) || GetItemParent(item) != this;
		if (!flag && !QuickPanelVisible)
		{
			foreach (ToolStripItem quickItem in QuickItems)
			{
				if (quickItem == item)
				{
					flag = true;
					break;
				}
			}
		}
		if (!flag)
		{
			return item;
		}
		return m_fakeHiddenItem;
	}

	bool IMessageFilter.PreFilterMessage(ref Message m)
	{
		bool result = false;
		if (m_owner != null && m_owner.IsFormManager && !base.Enabled && IsParent(m.HWnd))
		{
			switch ((Msg)m.Msg)
			{
			case Msg.WM_MOUSEMOVE:
			{
				POINT lpPoints4 = new POINT
				{
					x = WindowsAPI.LOW_ORDER((int)m.LParam),
					y = WindowsAPI.HIGH_ORDER((int)m.LParam)
				};
				WindowsAPI.MapWindowPoints(m.HWnd, base.Handle, ref lpPoints4, 1u);
				if (base.ClientRectangle.Contains(lpPoints4.x, lpPoints4.y))
				{
					OnMouseMove(new MouseEventArgs(MouseButtons.None, 0, lpPoints4.x, lpPoints4.y, 0));
				}
				break;
			}
			case Msg.WM_MOUSELEAVE:
				OnMouseLeave(EventArgs.Empty);
				break;
			case Msg.WM_LBUTTONDOWN:
			{
				POINT lpPoints2 = new POINT
				{
					x = WindowsAPI.LOW_ORDER((int)m.LParam),
					y = WindowsAPI.HIGH_ORDER((int)m.LParam)
				};
				WindowsAPI.MapWindowPoints(m.HWnd, IntPtr.Zero, ref lpPoints2, 1u);
				Point ptScr2 = lpPoints2;
				if (GetHitTest(ref ptScr2))
				{
					MoveForm((IntPtr)WindowsAPI.MAKELONG(ptScr2.X, ptScr2.Y));
					result = true;
					break;
				}
				WindowsAPI.MapWindowPoints(IntPtr.Zero, base.Handle, ref lpPoints2, 1u);
				if (GetItemAt(lpPoints2.x, lpPoints2.y) is SystemButton)
				{
					base.OnMouseDown(new MouseEventArgs(MouseButtons.Left, 0, lpPoints2.x, lpPoints2.y, 0));
					result = true;
				}
				break;
			}
			case Msg.WM_LBUTTONUP:
			{
				POINT lpPoints3 = new POINT
				{
					x = WindowsAPI.LOW_ORDER((int)m.LParam),
					y = WindowsAPI.HIGH_ORDER((int)m.LParam)
				};
				WindowsAPI.MapWindowPoints(m.HWnd, base.Handle, ref lpPoints3, 1u);
				base.OnMouseUp(new MouseEventArgs(MouseButtons.Left, 0, lpPoints3.x, lpPoints3.y, 0));
				break;
			}
			case Msg.WM_LBUTTONDBLCLK:
			{
				POINT lpPoints = new POINT
				{
					x = WindowsAPI.LOW_ORDER((int)m.LParam),
					y = WindowsAPI.HIGH_ORDER((int)m.LParam)
				};
				WindowsAPI.MapWindowPoints(m.HWnd, IntPtr.Zero, ref lpPoints, 1u);
				Point ptScr = lpPoints;
				if (GetHitTest(ref ptScr))
				{
					WindowStyles windowLong = (WindowStyles)WindowsAPI.GetWindowLong(Form.Handle, -16);
					if ((windowLong & WindowStyles.WS_THICKFRAME) == WindowStyles.WS_THICKFRAME)
					{
						SystemCommand systemCommand = (((windowLong & WindowStyles.WS_MAXIMIZE) == WindowStyles.WS_MAXIMIZE) ? SystemCommand.SC_RESTORE : SystemCommand.SC_MAXIMIZE);
						BeginInvoke(new SendMessageDelegate(WindowsAPI.SendMessage), Form.Handle, 274, systemCommand, (int)m.LParam);
					}
					result = true;
				}
				break;
			}
			}
		}
		return result;
	}

	private bool IsParent(IntPtr hWnd)
	{
		if (Form.IsHandleCreated && WindowsAPI.IsChild(hWnd, base.Handle))
		{
			if (!(Form.Handle == hWnd))
			{
				return WindowsAPI.IsChild(Form.Handle, hWnd);
			}
			return true;
		}
		return false;
	}
}
