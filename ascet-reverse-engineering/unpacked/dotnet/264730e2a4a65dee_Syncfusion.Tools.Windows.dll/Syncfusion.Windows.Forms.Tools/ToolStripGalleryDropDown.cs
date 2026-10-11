using System;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

internal class ToolStripGalleryDropDown : ToolStripDropDown
{
	internal const int GALLERY_DRAGGER_HEIGHT = 12;

	internal static readonly Size DROPDOWN_MIN_SIZE = new Size(160, 105);

	private bool m_bShowGrip = true;

	private ToolStripGallery m_gallery;

	private Rectangle m_draggerRect;

	private Size m_dropDownMinSize = DROPDOWN_MIN_SIZE;

	public bool ShowGrip
	{
		get
		{
			return m_bShowGrip;
		}
		set
		{
			if (m_bShowGrip != value)
			{
				m_bShowGrip = value;
				PerformLayout();
			}
		}
	}

	public Size DropDownMinimumSize
	{
		get
		{
			return m_dropDownMinSize;
		}
		set
		{
			m_dropDownMinSize = value;
		}
	}

	internal ToolStripGallery Gallery => m_gallery;

	public ToolStripGalleryDropDown(ToolStripGallery gallery)
	{
		m_gallery = gallery;
		m_gallery.AutoSize = false;
		Items.Add(m_gallery);
	}

	protected override void OnLayout(LayoutEventArgs e)
	{
		base.OnLayout(e);
		m_gallery.Height = base.Height - (12 + base.Margin.Vertical);
		m_gallery.Width = base.Width - base.Margin.Horizontal;
		SetItemLocation(m_gallery, new Point(base.Margin.Left, base.Margin.Top));
		m_draggerRect = new Rectangle(base.Width - 10, base.Height - 10, 10, 10);
	}

	public override Size GetPreferredSize(Size proposedSize)
	{
		Size preferredSize = m_gallery.GetPreferredSize(Size.Empty);
		m_gallery.Height = preferredSize.Height;
		preferredSize.Height += 12 + base.Margin.Vertical;
		preferredSize.Width += base.Margin.Horizontal;
		return preferredSize;
	}

	protected override void OnMouseMove(MouseEventArgs mea)
	{
		base.OnMouseMove(mea);
		if (m_draggerRect.Contains(mea.Location))
		{
			Cursor = Cursors.SizeNWSE;
		}
		else
		{
			Cursor = Cursors.Default;
		}
	}

	protected override void OnMouseDown(MouseEventArgs mea)
	{
		base.OnMouseDown(mea);
		if (m_draggerRect.Contains(mea.Location))
		{
			int num = WindowsAPI.MAKELONG(Cursor.Position.X, Cursor.Position.Y);
			AutoSize = false;
			WindowsAPI.SendMessage(base.Handle, 274, 61448, (IntPtr)num);
		}
	}

	protected override void OnOpening(CancelEventArgs e)
	{
		AutoSize = true;
		if (!m_gallery.ShowItem(m_gallery.CheckedItem))
		{
			m_gallery.ScrollOffset = 0;
		}
		base.OnOpening(e);
	}

	protected override void WndProc(ref Message m)
	{
		base.WndProc(ref m);
		Msg msg = (Msg)m.Msg;
		if (msg == Msg.WM_GETMINMAXINFO)
		{
			MINMAXINFO mINMAXINFO = (MINMAXINFO)Marshal.PtrToStructure(m.LParam, typeof(MINMAXINFO));
			mINMAXINFO.ptMinTrackSize = new POINT(m_dropDownMinSize.Width, m_dropDownMinSize.Height);
			Marshal.StructureToPtr((object)mINMAXINFO, m.LParam, fDeleteOld: false);
		}
	}
}
