using System;
using System.ComponentModel;
using System.Drawing;
using System.Globalization;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.Grid;

[ToolboxItem(false)]
public class GridCurrencyTextBox : CurrencyTextBox
{
	private GridCurrencyTextBoxCellRenderer parent;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridCurrencyTextBoxCellRenderer ParentCell => parent;

	public GridCurrencyTextBox(GridCurrencyTextBoxCellRenderer parent)
	{
		this.parent = parent;
		AutoSize = false;
		base.TabStop = false;
		AllowNull = false;
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

	protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
	{
		bool flag = keyData == (Keys.X | Keys.Control);
		bool flag2 = keyData == (Keys.C | Keys.Control);
		if (msg.Msg == 256 && SelectionLength == 0 && (flag2 || flag))
		{
			bool flag3 = false;
			if (ContextMenu != null && ContextMenu.MenuItems.Count > 0)
			{
				foreach (MenuItem menuItem in ContextMenu.MenuItems)
				{
					if (menuItem.Shortcut.Equals(Shortcut.CtrlC) || menuItem.Shortcut.Equals(Shortcut.CtrlX))
					{
						flag3 = true;
					}
				}
				if (flag3)
				{
					return ProcessKeyMessage(ref msg);
				}
			}
		}
		return ProcessCmdKey(ref msg, keyData);
	}

	[DocumentationExclude]
	protected override bool HandleDecimalKey()
	{
		if (GetTextBoxText() == base.NullString)
		{
			base.DecimalValue = 0m;
		}
		return base.HandleDecimalKey();
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
			if (!parent.Grid.WantEscapeKey)
			{
				callBaseProcessKeyMessage = true;
				break;
			}
			callProcessKeyPreview = true;
			scrollInView = true;
			break;
		case Keys.Return:
			if (!parent.Grid.WantEnterKey)
			{
				callBaseProcessKeyMessage = true;
				break;
			}
			callProcessKeyPreview = true;
			scrollInView = true;
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
			AllowNull = true;
			if (base.DecimalValue.ToString().IndexOf("0.").Equals(0))
			{
				base.SelectionStart++;
			}
			scrollInView = true;
			callProcessKeyPreview = flag || flag2 || (flag3 && SelectionLength == 0);
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

	protected override bool ProcessDialogKey(Keys keyData)
	{
		if (keyData == Keys.Delete && ParentCell != null && ParentCell.Grid != null)
		{
			ParentCell.Grid.Model.ClearingCells += Model_ClearingCells;
			Timer timer = new Timer();
			timer.Interval = 10;
			timer.Tick += t_Tick;
			timer.Start();
		}
		return base.ProcessDialogKey(keyData);
	}

	private void Model_ClearingCells(object sender, GridClearingCellsEventArgs e)
	{
		if (!e.Handled)
		{
			e.Handled = true;
			e.Result = false;
			ParentCell.Grid.Model.ClearingCells -= Model_ClearingCells;
		}
	}

	private void t_Tick(object sender, EventArgs e)
	{
		Timer timer = (Timer)sender;
		timer.Tick -= t_Tick;
		timer.Stop();
		timer.Dispose();
		ParentCell.Grid.Model.ClearingCells -= Model_ClearingCells;
	}

	public override void Paste()
	{
		bool flag = true;
		if (ParentCell != null && ParentCell.Model != null && ((GridCurrencyTextBoxCellModel)ParentCell.Model).ValidateNumberDuringCellPaste)
		{
			string text = Clipboard.GetText();
			if (text != null && text.Length > 0)
			{
				flag = double.TryParse(text, out var result) || double.TryParse(text, NumberStyles.Any, null, out result) || decimal.TryParse(text, out var result2) || decimal.TryParse(text, NumberStyles.Any, null, out result2);
			}
		}
		if (flag)
		{
			base.Paste();
		}
	}
}
