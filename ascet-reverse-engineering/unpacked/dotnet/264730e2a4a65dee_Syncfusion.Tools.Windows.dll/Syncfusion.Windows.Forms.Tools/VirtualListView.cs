using System;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

public class VirtualListView : DataListView
{
	private const int DEF_TEXTSPAN = 2;

	private DataView m_view;

	public int SelectedItemsCount => Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(base.Handle, 4146, IntPtr.Zero, IntPtr.Zero).ToInt32();

	[DefaultValue(0)]
	[Category("Behavior")]
	public int ItemsCount
	{
		get
		{
			return base.VirtualListSize;
		}
		set
		{
			base.VirtualListSize = value;
		}
	}

	protected bool IsHorizontalScrollBarVisible
	{
		get
		{
			if (!base.IsHandleCreated)
			{
				return false;
			}
			return (Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowLong(base.Handle, -16) & 0x100000) != 0;
		}
	}

	protected bool IsVerticalScrollBarVisible
	{
		get
		{
			if (!base.IsHandleCreated)
			{
				return false;
			}
			return (Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowLong(base.Handle, -16) & 0x200000) != 0;
		}
	}

	public event QueryItemTextHandler QueryItemText;

	public VirtualListView()
	{
		SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		base.OwnerDraw = true;
		base.VirtualMode = true;
		base.View = View.Details;
		base.Sorting = SortOrder.None;
	}

	public virtual string GetSelectedItemText()
	{
		string result = string.Empty;
		if (m_view != null && m_view.Count > 0 && m_view.Table.Columns.Count > 0)
		{
			int selectedIndex = GetSelectedIndex();
			if (selectedIndex >= 0)
			{
				result = m_view[selectedIndex].Row[0].ToString();
			}
		}
		return result;
	}

	public virtual int GetSelectedIndex()
	{
		return (int)Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(base.Handle, 4108, -1, new IntPtr(2));
	}

	public virtual void SetSelectedIndex(int index)
	{
		if (!base.IsHandleCreated)
		{
			return;
		}
		if (index >= 0)
		{
			SetSelectedIndex(index, select: true);
			return;
		}
		index = GetSelectedIndex();
		if (index >= 0)
		{
			SetSelectedIndex(index, select: false);
		}
	}

	private void SetSelectedIndex(int index, bool select)
	{
		Syncfusion.Runtime.InteropServices.NativeMethods.LVITEM lVITEM = new Syncfusion.Runtime.InteropServices.NativeMethods.LVITEM
		{
			mask = 8u,
			state = (select ? 2u : 0u),
			stateMask = 2u
		};
		IntPtr intPtr = IntPtr.Zero;
		try
		{
			intPtr = Marshal.AllocHGlobal(Marshal.SizeOf((object)lVITEM));
			Marshal.StructureToPtr((object)lVITEM, intPtr, fDeleteOld: true);
			Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(base.Handle, 4139, index, intPtr);
		}
		finally
		{
			Marshal.FreeHGlobal(intPtr);
		}
	}

	public int GetHotIndex()
	{
		return (int)Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(base.Handle, 4157, 0, 0);
	}

	public bool IsItemSelected(int index)
	{
		IntPtr intPtr = Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(base.Handle, 4108, new IntPtr(index), new IntPtr(2));
		return intPtr != IntPtr.Zero;
	}

	public void SelectItem(int index, bool selected)
	{
		if (index >= 0 && index < base.Items.Count)
		{
			ListViewItem listViewItem = base.Items[index];
			if (listViewItem != null)
			{
				listViewItem.Selected = selected;
				listViewItem.EnsureVisible();
			}
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && m_view != null)
		{
			m_view.Dispose();
			m_view = null;
		}
		base.Dispose(disposing);
	}

	protected override void OnDataSourceChanged(object oldDataSource, object newDataSource)
	{
		m_view = newDataSource as DataView;
		if (m_view != null)
		{
			ItemsCount = m_view.Count;
		}
	}

	public override void PopulateList()
	{
	}

	public override void AdjustHeight(int maxHeight)
	{
		if (base.Items.Count > 0 || ItemsCount > 0)
		{
			int adjustedMaxHeight = GetAdjustedMaxHeight(maxHeight);
			int itemHeight = GetItemHeight();
			int num = ((base.Items.Count <= 0) ? (itemHeight * (ItemsCount + 1)) : (GetItemRect(0).Height * (base.Items.Count + 1)));
			if (base.HeaderStyle != ColumnHeaderStyle.None)
			{
				num += GetHeaderHeight();
			}
			if (num < adjustedMaxHeight)
			{
				base.Height = num;
			}
			else
			{
				base.Height = adjustedMaxHeight;
			}
			if (IsHorizontalScrollBarVisible)
			{
				base.Height += SystemInformation.HorizontalScrollBarHeight;
			}
			if (base.Parent is SizablePopupControlContainer sizablePopupControlContainer)
			{
				sizablePopupControlContainer.FitToChildControlSize = true;
			}
		}
	}

	protected override int GetAdjustedMaxHeight(int actualMaxHeight)
	{
		int num = 0;
		int itemHeight = GetItemHeight();
		if (base.Items.Count > 0)
		{
			num = actualMaxHeight / GetItemRect(0).Height;
		}
		else if (ItemsCount > 0)
		{
			num = actualMaxHeight / itemHeight;
		}
		if (base.Items.Count > 0)
		{
			return num * GetItemRect(0).Height;
		}
		return num * itemHeight;
	}

	private int GetHeaderHeight()
	{
		int num = 0;
		IntPtr intPtr = Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(base.Handle, 4127, 0, 0);
		if (intPtr != IntPtr.Zero)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.RECT lpRect = default(Syncfusion.Runtime.InteropServices.NativeMethods.RECT);
			Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowRect(intPtr.ToInt32(), ref lpRect);
			num += lpRect.Height;
		}
		return num;
	}

	private int GetItemHeight()
	{
		int num = Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(base.Handle, 4147, 1, 0));
		if (base.SmallImageList != null && base.SmallImageList.ImageSize.Height > num)
		{
			num = base.SmallImageList.ImageSize.Height + 1;
		}
		return num;
	}

	private new int HitTest(Point pt)
	{
		Syncfusion.Runtime.InteropServices.NativeMethods.LV_HITTESTINFO lV_HITTESTINFO = new Syncfusion.Runtime.InteropServices.NativeMethods.LV_HITTESTINFO();
		lV_HITTESTINFO.pt = new Syncfusion.Runtime.InteropServices.NativeMethods.POINT(pt.X, pt.Y);
		IntPtr intPtr = Marshal.AllocHGlobal(Marshal.SizeOf(typeof(Syncfusion.Runtime.InteropServices.NativeMethods.LV_HITTESTINFO)));
		Marshal.StructureToPtr((object)lV_HITTESTINFO, intPtr, fDeleteOld: true);
		IntPtr intPtr2 = Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(base.Handle, 4114, 0, intPtr);
		Marshal.FreeHGlobal(intPtr);
		return intPtr2.ToInt32();
	}

	private Point GetItemPosition(int index)
	{
		IntPtr intPtr = Marshal.AllocHGlobal(Marshal.SizeOf(typeof(Syncfusion.Runtime.InteropServices.NativeMethods.POINT)));
		Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(base.Handle, 4112, index, intPtr);
		Syncfusion.Runtime.InteropServices.NativeMethods.POINT pOINT = (Syncfusion.Runtime.InteropServices.NativeMethods.POINT)Marshal.PtrToStructure(intPtr, typeof(Syncfusion.Runtime.InteropServices.NativeMethods.POINT));
		Marshal.FreeHGlobal(intPtr);
		return new Point(pOINT.X, pOINT.Y);
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 7)
		{
			base.DefWndProc(ref m);
		}
		else
		{
			base.WndProc(ref m);
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		if (base.Parent is PopupControlContainer)
		{
			PopupControlContainer popupControlContainer = base.Parent as PopupControlContainer;
			popupControlContainer.HidePopup(PopupCloseType.Done);
			popupControlContainer.FocusParent();
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		int num = HitTest(new Point(e.X, e.Y));
		if (num != -1)
		{
			SelectItem(num, selected: true);
		}
		base.OnMouseMove(e);
	}

	protected override void OnDrawColumnHeader(DrawListViewColumnHeaderEventArgs e)
	{
		e.DrawDefault = true;
	}

	protected override void OnDrawItem(DrawListViewItemEventArgs e)
	{
		if (e.State == (ListViewItemStates)0)
		{
			return;
		}
		ListViewItem item = e.Item;
		if (item.Selected)
		{
			int num = GetItemPosition(item.Index).X;
			ImageList imageList = item.ImageList;
			int num2 = 0;
			if (imageList != null)
			{
				num2 = imageList.ImageSize.Width + 2;
				num += num2;
			}
			int num3 = e.Bounds.Right - num;
			if (RightToLeft == RightToLeft.Yes)
			{
				num = base.ClientRectangle.Width - e.Bounds.Right;
			}
			e.Graphics.FillRectangle(SystemBrushes.Highlight, num - 2, e.Bounds.Top, num3, e.Bounds.Height);
		}
		else
		{
			e.DrawBackground();
		}
	}

	protected override void OnDrawSubItem(DrawListViewSubItemEventArgs e)
	{
		if (e.ItemState == (ListViewItemStates)0)
		{
			return;
		}
		ListViewItem item = e.Item;
		Rectangle bounds = e.Bounds;
		if (e.ColumnIndex == 0)
		{
			ImageList imageList = item.ImageList;
			if (imageList != null)
			{
				int num = GetItemPosition(item.Index).X;
				int imageIndex = item.ImageIndex;
				if (imageIndex >= 0 && imageIndex < imageList.Images.Count)
				{
					imageList.Draw(e.Graphics, num, bounds.Top, imageIndex);
				}
				int num2 = imageList.ImageSize.Width + 2;
				num += num2;
				bounds.X = num;
				bounds.Width -= num2;
			}
		}
		TextFormatFlags flags = TextFormatFlags.EndEllipsis | TextFormatFlags.NoPrefix;
		Color foreColor = (item.Selected ? SystemColors.HighlightText : item.ForeColor);
		Font font = item.Font;
		string text = e.SubItem.Text;
		if (base.ListOwner is AutoComplete autoComplete && autoComplete.GetAutoComplete() == AutoCompleteModes.MultiSuggestExtended)
		{
			Control activeEditControl = autoComplete.GetActiveEditControl();
			if (activeEditControl != null)
			{
				string text2 = activeEditControl.Text;
				int length = text2.Length;
				if (length > 0)
				{
					StringComparison comparisonType = ((!autoComplete.CaseSensitive) ? StringComparison.CurrentCultureIgnoreCase : StringComparison.CurrentCulture);
					int num3 = text.IndexOf(text2, comparisonType);
					if (num3 >= 0)
					{
						TextFormatFlags flags2 = TextFormatFlags.NoClipping | TextFormatFlags.NoPrefix;
						int num4 = TextRenderer.MeasureText(" ", font, Size.Empty, flags2).Width;
						int num5 = TextRenderer.MeasureText("  ", font, Size.Empty, flags2).Width;
						int num6 = num4 - (num5 - num4);
						int num7 = bounds.X;
						if (num3 > 0)
						{
							string text3 = text.Substring(0, num3);
							TextRenderer.DrawText(e.Graphics, text3, font, bounds, foreColor, flags);
							num7 += TextRenderer.MeasureText(text3, font, Size.Empty, flags2).Width;
						}
						if (num7 >= bounds.Right)
						{
							return;
						}
						if (num7 > bounds.X)
						{
							num7 -= num6;
							bounds.Width = bounds.Right - num7;
							bounds.X = num7;
						}
						Font font2 = new Font(font, FontStyle.Bold);
						string text4 = text.Substring(num3, length);
						TextRenderer.DrawText(e.Graphics, text4, font2, bounds, foreColor, flags);
						num7 += TextRenderer.MeasureText(text4, font2, Size.Empty, flags2).Width;
						if (num7 < bounds.Right)
						{
							num3 += length;
							if (num3 < text.Length)
							{
								num7 -= num6;
								bounds.Width = bounds.Right - num7;
								bounds.X = num7;
								string text5 = text.Substring(num3);
								TextRenderer.DrawText(e.Graphics, text5, font, bounds, foreColor, flags);
							}
						}
						return;
					}
				}
			}
		}
		TextRenderer.DrawText(e.Graphics, text, font, bounds, foreColor, flags);
	}

	protected override void OnRetrieveVirtualItem(RetrieveVirtualItemEventArgs e)
	{
		if (m_view != null)
		{
			int itemIndex = e.ItemIndex;
			if (itemIndex >= 0 && itemIndex < ItemsCount)
			{
				string[] array = new string[base.Columns.Count];
				object[] itemArray = m_view[itemIndex].Row.ItemArray;
				int num = Math.Min(itemArray.Length, array.Length);
				int imageIndex = -1;
				int num2 = base.ImageColumnIndex;
				for (int i = 0; i < num; i++)
				{
					string text = itemArray[i].ToString();
					if (i == num2)
					{
						imageIndex = Convert.ToInt16(text);
						continue;
					}
					if (this.QueryItemText != null)
					{
						QueryItemTextEventArgs e2 = new QueryItemTextEventArgs(itemIndex, i);
						e2.Text = text;
						this.QueryItemText(this, e2);
						text = e2.Text;
					}
					array[i] = text;
				}
				e.Item = new ListViewItem(array, imageIndex);
			}
		}
		base.OnRetrieveVirtualItem(e);
	}

	public override void ResizeListColumns(int totalWidth)
	{
		try
		{
			int num = 0;
			int num2 = 0;
			int num3 = base.ImageColumnIndex;
			int num4 = 0;
			int num5 = base.Columns.Count;
			if (num5 > 0)
			{
				for (int i = 0; i < num5; i++)
				{
					if (i != num3)
					{
						num = ((base.ListOwner == null) ? (num + AutoComplete.MinColumnWidth) : (num + base.ListOwner.GetColumnWidth(i)));
					}
				}
			}
			if (num3 >= 0 && num3 < num5)
			{
				num5--;
				totalWidth -= 20;
			}
			if (IsVerticalScrollBarVisible)
			{
				totalWidth -= SystemInformation.VerticalScrollBarWidth;
			}
			if (num >= totalWidth)
			{
				return;
			}
			num2 = ((num5 <= 1) ? (totalWidth - num) : ((totalWidth - num) / num5));
			for (int j = 0; j < num5; j++)
			{
				if (j != num3)
				{
					num4 = ((base.ListOwner == null) ? AutoComplete.MinColumnWidth : base.ListOwner.GetColumnWidth(j));
					base.Columns[j].Width = num4 + num2;
				}
			}
		}
		catch
		{
		}
	}
}
