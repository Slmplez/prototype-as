using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.Grid;

[ToolboxItem(false)]
public class GridMaskedEditBox : MaskedEditBox
{
	private GridMaskEditCellRenderer parent;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridMaskEditCellRenderer ParentCell => parent;

	public GridMaskedEditBox(GridMaskEditCellRenderer parent)
	{
		this.parent = parent;
		AutoSize = false;
		base.TabStop = false;
	}

	protected override bool IsInputKey(Keys keyData)
	{
		return (keyData & Keys.KeyCode) switch
		{
			Keys.Tab => ParentCell.Grid.WantTabKey, 
			Keys.Escape => ParentCell.Grid.WantEscapeKey, 
			Keys.Return => ParentCell.Grid.WantEnterKey, 
			_ => base.IsInputKey(keyData), 
		};
	}

	protected override bool ProcessKeyMessage(ref Message m)
	{
		_ = ParentCell;
		Rectangle rectangle = Rectangle.Intersect(base.Bounds, parent.Grid.GridBounds);
		Keys keys = (Keys)((int)m.WParam & 0xFFFF);
		if (m.Msg == 258)
		{
			if ((parent.Grid.WantEnterKey && keys == Keys.Return) || (parent.Grid.WantEscapeKey && keys == Keys.Escape))
			{
				return true;
			}
			if (rectangle != base.Bounds)
			{
				parent.Grid.CurrentCell.ScrollInView(GridScrollCurrentCellReason.KeyPress);
			}
			return base.ProcessKeyMessage(ref m);
		}
		bool flag = (Control.ModifierKeys & Keys.Control) != 0;
		bool flag2 = (Control.ModifierKeys & Keys.Alt) != 0;
		bool flag3 = (Control.ModifierKeys & Keys.Shift) != 0;
		bool callProcessKeyPreview = false;
		bool scrollInView = false;
		bool callBaseProcessKeyMessage = true;
		switch (keys)
		{
		case Keys.End:
		case Keys.Home:
			if (flag)
			{
				callProcessKeyPreview = true;
			}
			else
			{
				scrollInView = true;
			}
			break;
		case Keys.Left:
			if (flag || (base.SelectionStart <= 0 && (SelectionLength == 0 || !flag3)))
			{
				callProcessKeyPreview = true;
			}
			else
			{
				scrollInView = true;
			}
			callBaseProcessKeyMessage = false;
			break;
		case Keys.Right:
			if (flag || base.SelectionStart + SelectionLength >= Text.Length)
			{
				callProcessKeyPreview = true;
			}
			else
			{
				scrollInView = true;
			}
			callBaseProcessKeyMessage = false;
			break;
		case Keys.Up:
			callProcessKeyPreview = true;
			break;
		case Keys.Down:
			callProcessKeyPreview = !flag2;
			callBaseProcessKeyMessage = !flag2;
			break;
		case Keys.Tab:
		case Keys.Prior:
		case Keys.Next:
		case Keys.F2:
			callProcessKeyPreview = true;
			break;
		case Keys.Escape:
			if (parent.Grid.WantEscapeKey)
			{
				callProcessKeyPreview = true;
				scrollInView = true;
				callBaseProcessKeyMessage = false;
			}
			break;
		case Keys.Return:
			if (parent.Grid.WantEnterKey)
			{
				callProcessKeyPreview = true;
				scrollInView = true;
				callBaseProcessKeyMessage = false;
			}
			break;
		case Keys.C:
		case Keys.V:
		case Keys.X:
			scrollInView = flag;
			callProcessKeyPreview = true;
			break;
		case Keys.Insert:
			scrollInView = true;
			callProcessKeyPreview = ((flag || flag3) && SelectionLength == 0) || flag2;
			break;
		case Keys.Delete:
			scrollInView = true;
			callProcessKeyPreview = (flag || flag2 || flag3) && SelectionLength == 0;
			callBaseProcessKeyMessage = false;
			break;
		case Keys.F4:
			if (flag || flag2)
			{
				callBaseProcessKeyMessage = false;
			}
			break;
		default:
			callProcessKeyPreview = flag || flag2;
			break;
		}
		GridCurrentCellControlKeyMessageEventArgs e = new GridCurrentCellControlKeyMessageEventArgs(this, m, scrollInView, callProcessKeyPreview, callBaseProcessKeyMessage, result: true);
		parent.Grid.RaiseCurrentCellControlKeyMessage(e);
		if (e.Handled)
		{
			return e.Result;
		}
		scrollInView = e.ScrollInView;
		callProcessKeyPreview = e.CallProcessKeyPreview;
		callBaseProcessKeyMessage = e.CallBaseProcessKeyMessage;
		if (scrollInView && rectangle != base.Bounds)
		{
			parent.Grid.CurrentCell.ScrollInView(GridScrollCurrentCellReason.KeyPress);
		}
		if (callProcessKeyPreview)
		{
			ProcessKeyPreview(ref m);
			return true;
		}
		if (callBaseProcessKeyMessage)
		{
			return base.ProcessKeyMessage(ref m);
		}
		return ParentCell.RaiseProcessKeyEventArgs(ref m) || ProcessKeyEventArgs(ref m);
	}

	public override bool PreProcessMessage(ref Message msg)
	{
		if (parent.Grid.NotifyCurrentCellControlPreProcessMessage(ref msg))
		{
			return true;
		}
		return base.PreProcessMessage(ref msg);
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message msg)
	{
		if (!parent.Grid.NotifyCurrentCellControlWndProc(ref msg))
		{
			base.WndProc(ref msg);
		}
	}
}
