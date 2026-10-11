using System;
using System.Collections;
using System.ComponentModel;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

internal class ToolStripItemsToolTipService : Hashtable, IToolTipService, IDisposable
{
	private class ToolStripData : ArrayList, INativeMessageFilter, IDisposable
	{
		private struct MSG
		{
			public IntPtr hwnd;

			public int message;

			public int wParam;

			public int lParam;

			public int time;

			public POINT pt;
		}

		private ToolStripItemsToolTipService m_owner;

		private ToolStrip m_tsMain;

		private ToolStrip m_tsOverflow;

		private NativeMessageHandler m_mhMain;

		private NativeMessageHandler m_mhOverflow;

		private static uint ADDFLAGS;

		public override object this[int index]
		{
			get
			{
				if (index >= 0 && index < Count)
				{
					return base[index];
				}
				return null;
			}
			set
			{
				base[index] = value;
			}
		}

		public ToolStripData(ToolStrip tsMain, ToolStripItemsToolTipService owner)
		{
			m_owner = owner;
			m_mhMain = new NativeMessageHandler();
			m_mhOverflow = new NativeMessageHandler();
			if (tsMain != null)
			{
				m_tsMain = tsMain;
				m_tsMain.HandleCreated += OnMainHandleCreated;
				m_tsMain.HandleDestroyed += OnMainHandleDestroyed;
				m_tsMain.LayoutCompleted += OnMainLayoutCompleted;
				m_tsOverflow = tsMain.OverflowButton.DropDown;
				m_tsOverflow.HandleCreated += OnOverflowHandleCreated;
				m_tsOverflow.LayoutCompleted += OnOverflowLayoutCompleted;
				if (m_tsMain.IsHandleCreated)
				{
					OnMainHandleCreated(m_tsMain, EventArgs.Empty);
				}
				if (m_tsOverflow.IsHandleCreated)
				{
					OnOverflowHandleCreated(m_tsOverflow, EventArgs.Empty);
				}
			}
		}

		bool INativeMessageFilter.ProcessMessage(ref Message m)
		{
			bool result = false;
			switch ((Msg)m.Msg)
			{
			case Msg.WM_MOUSEMOVE:
			case Msg.WM_LBUTTONDOWN:
			case Msg.WM_LBUTTONUP:
			case Msg.WM_RBUTTONDOWN:
			case Msg.WM_RBUTTONUP:
			case Msg.WM_MBUTTONDOWN:
			case Msg.WM_MBUTTONUP:
				result = m_owner.OnMouseMessage(ref m);
				break;
			case Msg.WM_NOTIFY:
				result = m_owner.OnNotify(ref m, this);
				break;
			}
			return result;
		}

		public virtual void Dispose()
		{
			Clear();
			if (m_mhMain != null)
			{
				m_mhMain.MessageFilter = null;
				m_mhMain = null;
			}
			if (m_mhOverflow != null)
			{
				m_mhOverflow.MessageFilter = null;
				m_mhOverflow = null;
			}
			if (m_tsMain != null)
			{
				m_tsMain.HandleCreated -= OnMainHandleCreated;
				m_tsMain.HandleDestroyed -= OnMainHandleDestroyed;
				m_tsMain.LayoutCompleted -= OnMainLayoutCompleted;
				m_tsMain = null;
			}
			if (m_tsOverflow != null)
			{
				m_tsOverflow.HandleCreated -= OnOverflowHandleCreated;
				m_tsOverflow.LayoutCompleted -= OnOverflowLayoutCompleted;
				m_tsOverflow = null;
			}
		}

		public override int Add(object obj)
		{
			int num = base.Add(obj);
			OnItemAdded(num, obj as ToolStripItem);
			return num;
		}

		public override void RemoveAt(int index)
		{
			if (index >= 0 && index < Count)
			{
				OnItemRemoving(index, this[index] as ToolStripItem);
				base.RemoveAt(index);
				OnItemRemoved(index);
			}
		}

		public override void Clear()
		{
			int i = 0;
			for (int count = Count; i < count; i++)
			{
				OnItemRemoving(i, this[i] as ToolStripItem);
			}
			base.Clear();
		}

		private void OnItemAdded(int id, ToolStripItem item)
		{
			if (item != null)
			{
				item.OwnerChanged += OnItemOwnerChanged;
				if (GetPlacement(item) != ToolStripItemPlacement.None)
				{
					AddTool(id, item);
				}
			}
		}

		private void OnItemRemoving(int id, ToolStripItem item)
		{
			if (item != null)
			{
				item.OwnerChanged -= OnItemOwnerChanged;
				if (GetPlacement(item) != ToolStripItemPlacement.None)
				{
					DeleteTool(id);
				}
			}
		}

		private void OnItemRemoved(int id)
		{
			TOOLINFO ti = default(TOOLINFO);
			IntPtr intPtr = Marshal.StringToHGlobalAuto("tooltip");
			int i = id;
			for (int count = Count; i < count; i++)
			{
				if (GetToolInfo(i + 1, ref ti))
				{
					m_owner.SendMessage(TTM.TTM_DELTOOLW, 0, ref ti);
					ti.lpszText = intPtr;
					ti.uId = new IntPtr(i);
					m_owner.SendMessage(TTM.TTM_ADDTOOLW, 0, ref ti);
				}
			}
			Marshal.FreeHGlobal(intPtr);
		}

		private void AddTool(int id, ToolStripItem item)
		{
			if (m_tsMain != null && m_tsMain.IsHandleCreated)
			{
				TOOLINFO ti = default(TOOLINFO);
				ti.cbSize = (uint)Marshal.SizeOf((object)ti);
				ti.uFlags = ADDFLAGS;
				ti.lpszText = Marshal.StringToHGlobalAuto("tooltip");
				ti.hinst = IntPtr.Zero;
				ti.lParam = IntPtr.Zero;
				ti.hwnd = (item.IsOnOverflow ? m_tsOverflow.Handle : m_tsMain.Handle);
				ti.uId = new IntPtr(id);
				ti.rect = (RECT)item.Bounds;
				m_owner.SendMessage(TTM.TTM_ADDTOOLW, 0, ref ti);
				Marshal.FreeHGlobal(ti.lpszText);
			}
		}

		private void DeleteTool(int id)
		{
			TOOLINFO ti = default(TOOLINFO);
			if (GetToolInfo(id, ref ti))
			{
				m_owner.SendMessage(TTM.TTM_DELTOOLW, 0, ref ti);
			}
		}

		private bool GetToolInfo(int id, ref TOOLINFO ti)
		{
			bool flag = false;
			if (m_tsMain != null && m_tsMain.IsHandleCreated)
			{
				ti.cbSize = (uint)Marshal.SizeOf((object)ti);
				ti.hwnd = m_tsMain.Handle;
				ti.uId = new IntPtr(id);
				flag = m_owner.SendMessage(TTM.TTM_GETTOOLINFOW, 0, ref ti) != 0;
				if (!flag && m_tsMain.CanOverflow && m_tsOverflow.IsHandleCreated)
				{
					ti.hwnd = m_tsOverflow.Handle;
					flag = m_owner.SendMessage(TTM.TTM_GETTOOLINFOW, 0, ref ti) != 0;
				}
			}
			return flag;
		}

		private void UpdateMainTools()
		{
			IntPtr intPtr = Marshal.StringToHGlobalAuto("tooltip");
			TOOLINFO ti = default(TOOLINFO);
			int i = 0;
			for (int count = Count; i < count; i++)
			{
				if (!(this[i] is ToolStripItem toolStripItem))
				{
					continue;
				}
				bool toolInfo = GetToolInfo(i, ref ti);
				if (GetPlacement(toolStripItem) == ToolStripItemPlacement.Main)
				{
					ti.lpszText = intPtr;
					ti.rect = (RECT)toolStripItem.Bounds;
					if (toolInfo && ti.hwnd == m_tsMain.Handle)
					{
						m_owner.SendMessage(TTM.TTM_NEWTOOLRECTW, 0, ref ti);
						continue;
					}
					ti.cbSize = (uint)Marshal.SizeOf((object)ti);
					ti.uFlags = ADDFLAGS;
					ti.hwnd = m_tsMain.Handle;
					ti.uId = new IntPtr(i);
					ti.lParam = IntPtr.Zero;
					m_owner.SendMessage(TTM.TTM_ADDTOOLW, 0, ref ti);
				}
				else if (toolInfo && ti.hwnd == m_tsMain.Handle)
				{
					m_owner.SendMessage(TTM.TTM_DELTOOLW, 0, ref ti);
				}
			}
			Marshal.FreeHGlobal(intPtr);
		}

		private void UpdateOverflowTools()
		{
			TOOLINFO ti = default(TOOLINFO);
			IntPtr intPtr = Marshal.StringToHGlobalAuto("tooltip");
			int i = 0;
			for (int count = Count; i < count; i++)
			{
				if (!(this[i] is ToolStripItem toolStripItem))
				{
					continue;
				}
				bool toolInfo = GetToolInfo(i, ref ti);
				if (GetPlacement(toolStripItem) == ToolStripItemPlacement.Overflow)
				{
					ti.lpszText = intPtr;
					ti.rect = (RECT)toolStripItem.Bounds;
					if (toolInfo && ti.hwnd == m_tsOverflow.Handle)
					{
						m_owner.SendMessage(TTM.TTM_SETTOOLINFOW, 0, ref ti);
						continue;
					}
					ti.cbSize = (uint)Marshal.SizeOf((object)ti);
					ti.uFlags = ADDFLAGS;
					ti.hwnd = m_tsOverflow.Handle;
					ti.uId = new IntPtr(i);
					ti.lParam = IntPtr.Zero;
					m_owner.SendMessage(TTM.TTM_ADDTOOLW, 0, ref ti);
				}
				else if (toolInfo && ti.hwnd == m_tsOverflow.Handle)
				{
					m_owner.SendMessage(TTM.TTM_DELTOOLW, 0, ref ti);
				}
			}
			Marshal.FreeHGlobal(intPtr);
		}

		private void OnMainHandleCreated(object sender, EventArgs e)
		{
			if (sender is Control control && m_mhMain != null)
			{
				UpdateMainTools();
				m_mhMain.MessageFilter = this;
				m_mhMain.Assign(control.Handle);
			}
		}

		private void OnMainHandleDestroyed(object sender, EventArgs e)
		{
			int i = 0;
			for (int count = Count; i < count; i++)
			{
				ToolStripItem item = this[i] as ToolStripItem;
				if (GetPlacement(item) != ToolStripItemPlacement.None)
				{
					DeleteTool(i);
				}
			}
		}

		private void OnOverflowHandleCreated(object sender, EventArgs e)
		{
			if (sender is Control control && m_mhOverflow != null)
			{
				UpdateOverflowTools();
				m_mhOverflow.MessageFilter = this;
				m_mhOverflow.Assign(control.Handle);
			}
		}

		private void OnMainLayoutCompleted(object sender, EventArgs e)
		{
			if (m_tsMain.IsHandleCreated)
			{
				UpdateMainTools();
			}
		}

		private void OnOverflowLayoutCompleted(object sender, EventArgs e)
		{
			if (m_tsOverflow.IsHandleCreated)
			{
				UpdateOverflowTools();
			}
		}

		private void OnItemOwnerChanged(object sender, EventArgs e)
		{
			Remove(sender);
			m_owner.AddComponent(sender);
		}
	}

	private ToolStripData m_unownedItems;

	private ToolTipControl m_tooltip;

	public event PopupHandler Popup;

	public event EventHandler Pop;

	public ToolStripItemsToolTipService(ToolTipControl tooltipControl)
	{
		m_tooltip = tooltipControl;
		m_unownedItems = new ToolStripData(null, this);
	}

	public void AddComponent(object component)
	{
		if (component is ToolStripItem item)
		{
			GetData(GetOwner(item))?.Add(component);
		}
	}

	public void RemoveComponent(object component)
	{
		if (!(component is ToolStripItem toolStripItem))
		{
			return;
		}
		ToolStrip owner = GetOwner(toolStripItem);
		if (owner != null)
		{
			if (this[owner] is ToolStripData toolStripData)
			{
				toolStripData.Remove(component);
				if (toolStripData.Count == 0)
				{
					toolStripData.Dispose();
					Remove(owner);
				}
			}
		}
		else
		{
			m_unownedItems.Remove(toolStripItem);
		}
	}

	public void Dispose()
	{
		foreach (object value in Values)
		{
			if (value is IDisposable disposable)
			{
				disposable.Dispose();
			}
		}
		if (m_unownedItems != null)
		{
			m_unownedItems.Clear();
			m_unownedItems = null;
		}
		m_tooltip = null;
		Clear();
	}

	private int SendMessage(TTM msg, int wparam, ref TOOLINFO ti)
	{
		if (!m_tooltip.IsDisposed)
		{
			return WindowsAPI.SendMessage(m_tooltip.Handle, (int)msg, wparam, ref ti);
		}
		return 0;
	}

	private IntPtr SendMessage(int msg, int wparam, IntPtr lparam)
	{
		if (!m_tooltip.IsDisposed)
		{
			return WindowsAPI.SendMessage(m_tooltip.Handle, msg, wparam, lparam);
		}
		return IntPtr.Zero;
	}

	private bool OnMouseMessage(ref Message m)
	{
		MSG lParam = new MSG
		{
			hwnd = m.HWnd,
			message = m.Msg,
			wParam = m.WParam,
			lParam = m.LParam
		};
		WindowsAPI.SendMessage(m_tooltip.Handle, 1031, 0, ref lParam);
		return false;
	}

	private bool OnNotify(ref Message m, ToolStripData tsData)
	{
		bool result = false;
		NMHDR nMHDR = (NMHDR)Marshal.PtrToStructure(m.LParam, typeof(NMHDR));
		switch (nMHDR.code)
		{
		case -521:
			if (m_tooltip.IsHandleCreated && m_tooltip.Handle == nMHDR.hwndFrom && this.Popup != null)
			{
				this.Popup(tsData[(int)nMHDR.idFrom] as Component, ref m);
				result = true;
			}
			break;
		case -522:
			if (m_tooltip.IsHandleCreated && m_tooltip.Handle == nMHDR.hwndFrom && this.Pop != null)
			{
				this.Pop(null, EventArgs.Empty);
				result = true;
			}
			break;
		}
		return result;
	}

	private ToolStripData GetData(ToolStrip ts)
	{
		if (ts != null)
		{
			ToolStripData toolStripData = this[ts] as ToolStripData;
			if (toolStripData == null)
			{
				toolStripData = new ToolStripData(ts, this);
				Add(ts, toolStripData);
			}
			return toolStripData;
		}
		return m_unownedItems;
	}

	private static ToolStrip GetOwner(ToolStripItem item)
	{
		if (item != null)
		{
			if (item is ICustomItem)
			{
				return ((ICustomItem)item).Owner;
			}
			ToolStrip owner = item.Owner;
			if (owner is MenuDropDown.IPanel)
			{
				return ((MenuDropDown.IPanel)owner).Owner;
			}
			return owner;
		}
		return null;
	}

	private static ToolStripItemPlacement GetPlacement(ToolStripItem item)
	{
		if (item != null)
		{
			if (item is ICustomItem customItem)
			{
				return customItem.Placement;
			}
			if (item.Owner is MenuDropDown.IPanel panel)
			{
				return panel.GetItemPlacement(item);
			}
			return item.Placement;
		}
		return ToolStripItemPlacement.None;
	}
}
