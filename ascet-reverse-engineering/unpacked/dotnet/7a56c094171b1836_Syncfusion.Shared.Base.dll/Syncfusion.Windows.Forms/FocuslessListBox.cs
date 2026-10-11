using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
public class FocuslessListBox : ListBox
{
	internal Timer timer = new Timer();

	internal int direction;

	internal Point oldPoint = Point.Empty;

	public FocuslessListBox()
	{
		base.Size = new Size(2, 2);
		base.Location = new Point(0, 0);
		DrawMode = DrawMode.Normal;
		base.IntegralHeight = true;
		base.BorderStyle = BorderStyle.FixedSingle;
		SetStyle(ControlStyles.Selectable, value: false);
		SetStyle(ControlStyles.UserMouse, value: true);
		base.CausesValidation = false;
	}

	protected virtual void OnTimerEvent(object sender, EventArgs e)
	{
		switch (direction)
		{
		case -1:
			if (base.TopIndex > 0)
			{
				base.TopIndex--;
				SelectedIndex--;
			}
			break;
		case 1:
		{
			int num = base.Height / ItemHeight;
			if (base.TopIndex < base.Items.Count - num)
			{
				base.TopIndex++;
				SelectedIndex++;
			}
			break;
		}
		case 0:
			break;
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		if (timer != null)
		{
			timer.Stop();
			timer.Tick -= OnTimerEvent;
		}
		if (base.IsHandleCreated)
		{
			base.Capture = false;
		}
		base.OnMouseUp(e);
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		OnClick(null);
		base.OnMouseDown(e);
		base.Capture = true;
		oldPoint = Point.Empty;
		timer.Tick += OnTimerEvent;
		timer.Stop();
		OnMouseMove(e);
	}

	protected override void WndProc(ref Message msg)
	{
		if (msg.Msg == 33)
		{
			msg.Result = (IntPtr)3;
			return;
		}
		int msg2 = msg.Msg;
		if (msg2 == 277)
		{
			WmVScroll(ref msg);
		}
		else
		{
			base.WndProc(ref msg);
		}
	}

	private void WmVScroll(ref Message m)
	{
		OnClick(null);
		base.WndProc(ref m);
	}

	public void SetRedraw(bool value)
	{
		NativeMethods.SendMessage(base.Handle, 11, value ? 1 : 0, 0);
	}
}
