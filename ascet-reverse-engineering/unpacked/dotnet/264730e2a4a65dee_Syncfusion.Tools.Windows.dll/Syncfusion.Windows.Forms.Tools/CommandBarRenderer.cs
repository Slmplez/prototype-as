using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

internal abstract class CommandBarRenderer : IDisposable
{
	private CommandBar m_commandBar;

	private bool m_bDisposed;

	protected virtual CommandBar CmdBar => m_commandBar;

	public CommandBarRenderer(CommandBar commandBar)
	{
		if (commandBar == null)
		{
			throw new ArgumentNullException();
		}
		m_commandBar = commandBar;
	}

	~CommandBarRenderer()
	{
		Dispose();
	}

	protected abstract void DrawText(Graphics g, Rectangle rect, bool bRTL, bool bVertical);

	protected abstract void DrawBackground(Graphics g, Rectangle rect, bool bRTL, bool bVerticalt);

	protected abstract void DrawGripper(Graphics g, Rectangle rect, bool bRTL, bool bVertical);

	protected abstract void DrawDropDown(Graphics g, Rectangle rect, bool bRTL, bool bVertical, CBButtonState state, bool bShowChevron, bool bShowArrow);

	protected virtual Rectangle GetDropDownRect()
	{
		Rectangle dropDownRect = CmdBar.DropDownRect;
		bool isRTL = CmdBar.IsRTL;
		if (IsVertical())
		{
			dropDownRect.Y -= ((!isRTL) ? 3 : 0);
			dropDownRect.Height += (isRTL ? 2 : 3);
		}
		else
		{
			dropDownRect.X -= ((!isRTL) ? 2 : 0);
			dropDownRect.Width += 2;
		}
		return dropDownRect;
	}

	protected virtual Rectangle GetTextRectangle()
	{
		return CmdBar.GetTextRectangle();
	}

	protected virtual Rectangle GetGripperRect()
	{
		return CmdBar.ClientRectangle;
	}

	protected bool IsMainCommandBar()
	{
		bool result = false;
		if (CmdBar is CommandBarExt { Bar: not null } commandBarExt && (commandBarExt.Bar.BarStyle & BarStyle.IsMainMenu) > BarStyle.None)
		{
			result = true;
		}
		return result;
	}

	protected bool IsVertical()
	{
		bool result = false;
		if (CmdBar.cdbParent != null)
		{
			result = CmdBar.cdbParent.Dock != DockStyle.Top && CmdBar.cdbParent.Dock != DockStyle.Bottom;
		}
		return result;
	}

	public virtual void Draw(Graphics g)
	{
		bool isRTL = CmdBar.IsRTL;
		bool flag = IsVertical();
		Rectangle clientRectangle = CmdBar.ClientRectangle;
		DrawBackground(g, clientRectangle, isRTL, flag);
		if (!m_commandBar.bHideDropDown)
		{
			CBButtonState dropDownState = CmdBar.GetDropDownState();
			bool bShowChevron = CmdBar.IsShowChevron();
			Rectangle dropDownRect = GetDropDownRect();
			DrawDropDown(g, dropDownRect, isRTL, flag, dropDownState, bShowChevron, CmdBar.AllowQuickCustomizing || CmdBar.HasExternalPopupMenu);
		}
		if (m_commandBar.IsShowText() || CmdBar.cbarDockState == CommandBarDockState.Float)
		{
			Rectangle textRectangle = GetTextRectangle();
			DrawText(g, textRectangle, isRTL, flag);
		}
		if (!m_commandBar.bHideGripper)
		{
			Rectangle gripperRect = GetGripperRect();
			DrawGripper(g, gripperRect, isRTL, flag);
		}
	}

	public void Dispose()
	{
		if (!m_bDisposed)
		{
			OnDispose(m_bDisposed);
			GC.SuppressFinalize(this);
			m_bDisposed = true;
		}
	}

	protected virtual void OnDispose(bool diposing)
	{
	}
}
