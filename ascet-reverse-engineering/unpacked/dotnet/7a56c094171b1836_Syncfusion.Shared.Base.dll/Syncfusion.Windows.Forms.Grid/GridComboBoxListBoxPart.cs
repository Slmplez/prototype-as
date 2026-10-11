using System;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

[ToolboxItem(false)]
public class GridComboBoxListBoxPart : ListBox
{
	internal Timer timer = new Timer();

	internal int direction;

	internal Point oldPoint = Point.Empty;

	private int dropDownRows = 6;

	private BindingContext bindingContext;

	public int DropDownRows
	{
		get
		{
			return dropDownRows;
		}
		set
		{
			dropDownRows = value;
		}
	}

	public override BindingContext BindingContext
	{
		get
		{
			if (bindingContext == null)
			{
				bindingContext = new BindingContext();
			}
			return bindingContext;
		}
		set
		{
		}
	}

	public override int SelectedIndex
	{
		get
		{
			return base.SelectedIndex;
		}
		set
		{
			if (value != base.SelectedIndex && value < base.Items.Count)
			{
				base.SelectedIndex = value;
			}
		}
	}

	public GridComboBoxListBoxPart()
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

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if ((specified & BoundsSpecified.Size) != BoundsSpecified.None)
		{
			if ((specified & BoundsSpecified.Height) != BoundsSpecified.None)
			{
				int num = Math.Min(dropDownRows, base.Items.Count);
				float num2 = ItemHeight;
				height = (int)Math.Ceiling((float)num * num2 + 2f);
			}
			if ((specified & BoundsSpecified.Width) != BoundsSpecified.None)
			{
				width = Math.Max(GetOptimalWidth(), width);
			}
		}
		base.SetBoundsCore(x, y, width, height, specified);
	}

	protected int GetOptimalWidth()
	{
		Graphics graphics = CreateGraphics();
		int optimalWidth = GetOptimalWidth(graphics);
		graphics.Dispose();
		return Math.Min(optimalWidth, SystemInformation.WorkingArea.Width);
	}

	protected virtual int GetOptimalWidth(Graphics g)
	{
		int num = 0;
		for (int i = 0; i < base.Items.Count; i++)
		{
			num = Math.Max(g.MeasureString(GetItemText(base.Items[i]), Font).ToSize().Width, num);
		}
		if (base.Items.Count > dropDownRows)
		{
			num += SystemInformation.VerticalScrollBarWidth;
		}
		return num;
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
		if (e == null || (e.X == oldPoint.X && e.Y == oldPoint.Y))
		{
			base.OnMouseMove(e);
			return;
		}
		oldPoint.X = e.X;
		oldPoint.Y = e.Y;
		if (base.Bounds.Contains(e.X, e.Y))
		{
			timer.Stop();
			int num = IndexFromPoint(e.X, e.Y);
			if (num != SelectedIndex && num != -1)
			{
				SetSelected(num, value: true);
			}
			direction = 0;
			return;
		}
		int num2 = 0;
		if (e.Y > base.Height)
		{
			num2 = e.Y - base.Height;
			direction = 1;
		}
		else
		{
			num2 = -e.Y;
			direction = -1;
		}
		timer.Interval = Math.Max(5, 100 - num2 * 2);
		if (!timer.Enabled)
		{
			timer.Start();
		}
		OnTimerEvent(null, null);
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

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
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
}
