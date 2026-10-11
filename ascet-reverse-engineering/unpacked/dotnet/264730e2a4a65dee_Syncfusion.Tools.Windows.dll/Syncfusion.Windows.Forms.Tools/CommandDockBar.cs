using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[DesignTimeVisible(false)]
[ToolboxItem(false)]
[DocumentationExclude]
public class CommandDockBar : ContainerControl
{
	private delegate void ResumeLayoutAsync();

	protected CommandBarController cbController;

	public int nRCCount;

	protected ThemedControlDrawing tdRebar;

	protected internal ArrayList alRowMarkers = new ArrayList();

	protected bool bExpanding;

	private int m_nSuspendCount;

	internal bool bSuspendIndexChanges;

	private Hashtable m_barStateHash = new Hashtable();

	private bool m_bIsInitializing;

	private ArrayList m_arrControlsToEnsure = new ArrayList();

	public ArrayList RowMarkers => alRowMarkers;

	internal bool IsInitializing
	{
		get
		{
			return m_bIsInitializing;
		}
		set
		{
			if (value != m_bIsInitializing)
			{
				m_bIsInitializing = value;
			}
		}
	}

	private Office2007Colors Office2007ColorTable => (cbController == null) ? Office2007Colors.Default : cbController.Office2007ColorTable;

	protected internal bool IsRTL => RightToLeft.Yes == RightToLeft;

	protected internal int RowsCount => nRCCount;

	protected override bool ScaleChildren
	{
		get
		{
			bool result = false;
			if (cbController != null && cbController is CommandBarControllerExt)
			{
				CommandBarControllerExt commandBarControllerExt = cbController as CommandBarControllerExt;
				if (commandBarControllerExt.Manager != null && commandBarControllerExt.Manager.AutoScale)
				{
					result = true;
				}
			}
			return result;
		}
	}

	public CommandDockBar(CommandBarController cbc)
	{
		InitializeCommandDockBar(cbc);
		if (cbc != null)
		{
			cbc.LayoutSuspended += OnControllerLayoutSuspended;
			cbc.LayoutResumed += OnControllerLayoutResumed;
		}
	}

	public void InitializeCommandDockBar(CommandBarController cbc)
	{
		cbController = cbc;
		SetStyle(ControlStyles.Selectable, value: false);
		SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		base.TabStop = false;
		if (cbc.bBackColorSet)
		{
			base.BackColor = cbc.BackColor;
		}
		if (XPThemes.IsThemedOS)
		{
			tdRebar = new ThemedControlDrawing("REBAR");
		}
	}

	internal void ReplaceBarLocation(CommandBar cbar)
	{
		if (cbar == null)
		{
			throw new ArgumentNullException("cbar");
		}
		m_barStateHash[cbar.Name] = cbar.nRCIndex;
		if (cbar.nRCIndex >= cbar.cdbParent.nRCCount)
		{
			cbar.cdbParent.nRCCount = cbar.nRCIndex + 1;
		}
	}

	internal void ResetBarState()
	{
		m_barStateHash.Clear();
	}

	internal void RemoveBarIndex(CommandBar cbar)
	{
		if (cbar == null)
		{
			throw new ArgumentNullException("cbar");
		}
		if (m_barStateHash[cbar.Name] != null)
		{
			m_barStateHash.Remove(cbar.Name);
		}
	}

	internal void MoveBarFirst(CommandBar cbar)
	{
		foreach (CommandBar control in base.Controls)
		{
			if (control != cbar)
			{
				control.nRCIndex++;
			}
		}
		cbar.nRCIndex = 0;
		nRCCount++;
	}

	internal void SaveBarIndex(CommandBar cbar)
	{
		if (cbar == null)
		{
			throw new ArgumentNullException("cbar");
		}
		if (m_barStateHash[cbar.Name] == null)
		{
			m_barStateHash[cbar.Name] = cbar.nRCIndex;
		}
	}

	private void CorrectBarsLocation(CommandBar cbar)
	{
		if (cbar == null)
		{
			throw new ArgumentNullException("cbar");
		}
		if (m_barStateHash[cbar.Name] == null)
		{
			SaveBarIndex(cbar);
		}
		int num = 0;
		num = ((!CommandBar.bDragging) ? ((int)m_barStateHash[cbar.Name]) : cbar.nRCIndex);
		int num2 = 0;
		int num3 = 0;
		bool flag = false;
		Hashtable hashtable = new Hashtable();
		foreach (CommandBar control in base.Controls)
		{
			if (!control.Visible || m_barStateHash[control.Name] == null || cbar == control)
			{
				continue;
			}
			int num4 = 0;
			num4 = ((!CommandBar.bDragging) ? ((int)m_barStateHash[control.Name]) : control.nRCIndex);
			if (num < num4 && control.nRCIndex < num4)
			{
				flag = true;
				control.nRCIndex++;
				continue;
			}
			if (num4 == num && !control.bFullRow)
			{
				flag = false;
				num2 = control.nRCIndex;
				break;
			}
			if (hashtable[num4] == null)
			{
				hashtable[num4] = true;
				flag = true;
				if (num4 > num3)
				{
					num3 = num4;
				}
				if (num >= num4)
				{
					num2 = num3 + 1;
				}
			}
		}
		if (flag)
		{
			int val = Math.Max(GetMaxRowIndex(), num2) + 1;
			nRCCount = Math.Min(nRCCount + 1, val);
		}
		cbar.nRCIndex = num2;
	}

	internal int GetMaxRowIndex()
	{
		int num = -1;
		if (m_barStateHash != null && m_barStateHash.Count > 0)
		{
			foreach (DictionaryEntry item in m_barStateHash)
			{
				CommandBar commandBarFromName = GetCommandBarFromName((string)item.Key);
				if (commandBarFromName != null && commandBarFromName.Visible)
				{
					num = Math.Max((int)item.Value, num);
				}
			}
		}
		return num;
	}

	private CommandBar GetCommandBarFromName(string cbName)
	{
		foreach (CommandBar control in base.Controls)
		{
			if (control.Name == cbName)
			{
				return control;
			}
		}
		return null;
	}

	internal int GetCommandBarIndex(CommandBar cbar)
	{
		if (m_barStateHash[cbar.Name] != null)
		{
			return (int)m_barStateHash[cbar.Name];
		}
		return -1;
	}

	internal void SaveBarIndexChange(CommandBar cbar, int valueChanged)
	{
		if (m_barStateHash[cbar.Name] != null)
		{
			int num = (int)m_barStateHash[cbar.Name] + valueChanged;
			if (num < 0)
			{
				num = 0;
			}
			if (num > GetMaxRowIndex() + 1)
			{
				num = GetMaxRowIndex();
			}
			m_barStateHash[cbar.Name] = num;
		}
	}

	internal void DockBar(CommandBar cbar, bool dockFirst)
	{
		if (dockFirst)
		{
			string[] array = new string[m_barStateHash.Count];
			m_barStateHash.Keys.CopyTo(array, 0);
			int i = 0;
			for (int num = array.Length; i < num; i++)
			{
				int num2 = (int)m_barStateHash[array[i]];
				m_barStateHash[array[i]] = ++num2;
			}
			m_barStateHash[cbar.Name] = 0;
		}
		else
		{
			m_barStateHash[cbar.Name] = GetMaxRowIndex() + 1;
		}
	}

	public void AddCommandBar(CommandBar cbar, bool bcreatenewrow)
	{
		if (Contains(cbar))
		{
			return;
		}
		CommandBarDockState dockBorder = GetDockBorder();
		if (cbar.cbarDockState != dockBorder)
		{
			cbar.cbarDockState = dockBorder;
		}
		if (!cbar.bRestrictedSizing)
		{
			if (dockBorder == CommandBarDockState.Top || dockBorder == CommandBarDockState.Bottom)
			{
				if (cbar.nCommandBarHt < cbar.MinHeight)
				{
					cbar.nCommandBarHt = cbar.MinHeight;
				}
			}
			else if (cbar.nCommandBarHt < cbar.MinLength)
			{
				cbar.nCommandBarHt = cbar.MinLength;
			}
		}
		if (cbar.rMarker != null && cbar.rMarker.DockBar != this)
		{
			cbar.rMarker.DecreaseRefCount();
			cbar.rMarker = null;
		}
		if (!bcreatenewrow)
		{
			if (cbar.bLeadingEdge && cbar.nRCIndex != -1)
			{
				cbar.nRCIndex = 0;
			}
			else if (cbar.bTrailingEdge)
			{
				cbar.nRCIndex = nRCCount;
			}
			if (cbar.nRCIndex == -1 || cbar.nRCIndex == 0)
			{
				CommandBar[] rowArray = GetRowArray(0);
				CommandBar[] array = rowArray;
				foreach (CommandBar commandBar in array)
				{
					if (commandBar == cbar || (!commandBar.bLeadingEdge && (!commandBar.bFullRow || cbar.nRCIndexDrag != 0)))
					{
						continue;
					}
					if (commandBar.bFullRow)
					{
						cbar.nRCIndex = 1;
						for (int num = nRCCount - 1; num >= 1; num--)
						{
							CommandBar[] rowArray2 = GetRowArray(num);
							CommandBar[] array2 = rowArray2;
							foreach (CommandBar commandBar2 in array2)
							{
								commandBar2.nRCIndex++;
							}
						}
						nRCCount++;
					}
					else if (cbar.nRCIndex == -1)
					{
						cbar.nRCIndex = 0;
					}
					break;
				}
			}
			else if (cbar.nRCIndex == nRCCount || cbar.nRCIndex == nRCCount - 1)
			{
				CommandBar[] rowArray3 = GetRowArray(nRCCount - 1);
				CommandBar[] array3 = rowArray3;
				foreach (CommandBar commandBar3 in array3)
				{
					if (commandBar3 != cbar && commandBar3.bTrailingEdge)
					{
						cbar.nRCIndex = commandBar3.nRCIndex - 1;
						if (cbar.nRCIndex < 0)
						{
							cbar.nRCIndex = 0;
						}
						CommandBar[] rowArray4 = GetRowArray(cbar.nRCIndex);
						if (commandBar3.bFullRow && (rowArray4.Length == 0 || (rowArray4.Length == 1 && rowArray4[0] == commandBar3)))
						{
							commandBar3.nRCIndex++;
							ReplaceBarLocation(commandBar3);
						}
						break;
					}
				}
			}
			if (cbar.nRCIndex == -1 || cbar.nRCIndex == nRCCount || nRCCount == 0)
			{
				nRCCount++;
			}
			if (cbar.nRCIndex == -1)
			{
				foreach (CommandBar control in base.Controls)
				{
					if (control.Visible)
					{
						control.nRCIndex++;
					}
				}
				cbar.nRCIndex = 0;
			}
			CorrectBarsLocation(cbar);
			bool bappend = true;
			if (cbar.nRCIndex < 0)
			{
				bappend = false;
			}
			else
			{
				CommandBar[] rowArray5 = GetRowArray(cbar.nRCIndex - 1);
				if (rowArray5.Length == 0)
				{
					bappend = true;
				}
				else if (rowArray5[0].nRCIndex > cbar.nRCIndex)
				{
					bappend = false;
				}
			}
			if (cbar.nRowOffsetInDir != cbar.nRowOffsetDir)
			{
				cbar.nRowOffsetInDir = cbar.nRowOffsetDir;
			}
			ValidateBarIndex(cbar, bappend);
		}
		else
		{
			if (!bSuspendIndexChanges)
			{
				for (int num2 = nRCCount - 1; num2 >= cbar.nRCIndex; num2--)
				{
					CommandBar[] rowArray6 = GetRowArray(num2);
					CommandBar[] array4 = rowArray6;
					foreach (CommandBar commandBar5 in array4)
					{
						commandBar5.nRCIndex++;
						ReplaceBarLocation(commandBar5);
					}
				}
			}
			CorrectBarsLocation(cbar);
			SaveBarIndex(cbar);
		}
		if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
		{
			int rowMaxHeight = GetRowMaxHeight(cbar.nRCIndex, bmin: false);
			cbar.Height = ((rowMaxHeight > cbar.nCommandBarHt) ? rowMaxHeight : cbar.nCommandBarHt);
		}
		else
		{
			int rowMaxHeight2 = GetRowMaxHeight(cbar.nRCIndex, bmin: false);
			cbar.Width = ((rowMaxHeight2 > cbar.nCommandBarHt) ? rowMaxHeight2 : cbar.nCommandBarHt);
		}
		CommandBar[] cbnewrow = GetRowArray(cbar.nRCIndex);
		base.Controls.Add(cbar);
		if (!AdjustNewRow(cbar, ref cbnewrow))
		{
			CalcDockbarSize();
			LayoutDockBar();
		}
		if (cbar.rMarker == null)
		{
			SetCurrentRowMarker(cbar);
		}
		SaveBarIndex(cbar);
	}

	public void RemoveCommandBar(CommandBar cbar)
	{
		if (!Contains(cbar))
		{
			return;
		}
		Rectangle vBounds = cbar.VBounds;
		CommandBar[] cbarray = GetRowArray(cbar.nRCIndex);
		base.Controls.Remove(cbar);
		RemoveBarIndex(cbar);
		if (Array.IndexOf(cbarray, cbar) < 0)
		{
			return;
		}
		if (cbarray.Length == 1)
		{
			if (!bSuspendIndexChanges)
			{
				if (nRCCount > 0)
				{
					nRCCount--;
				}
				for (int i = cbar.nRCIndex + 1; i <= nRCCount; i++)
				{
					CommandBar[] rowArray = GetRowArray(i);
					CommandBar[] array = rowArray;
					foreach (CommandBar commandBar in array)
					{
						commandBar.nRCIndex--;
					}
				}
			}
			CalcDockbarSize();
			LayoutDockBar();
		}
		else
		{
			CalcDockbarSize();
			AdjustPreviousRow(cbar, ref cbarray, vBounds);
		}
	}

	public CommandBarDockState GetDockBorder()
	{
		CommandBarDockState result = CommandBarDockState.None;
		switch (Dock)
		{
		case DockStyle.Top:
			result = CommandBarDockState.Top;
			break;
		case DockStyle.Bottom:
			result = CommandBarDockState.Bottom;
			break;
		case DockStyle.Left:
			result = CommandBarDockState.Left;
			break;
		case DockStyle.Right:
			result = CommandBarDockState.Right;
			break;
		}
		return result;
	}

	public void SetCurrentRowMarker(CommandBar cbar)
	{
		if (cbar.rMarker != null)
		{
			cbar.rMarker.DecreaseRefCount();
			cbar.rMarker = null;
		}
		CommandBar[] rowArray = GetRowArray(cbar.nRCIndex);
		CommandBar[] array = rowArray;
		foreach (CommandBar commandBar in array)
		{
			if (commandBar != cbar)
			{
				cbar.rMarker = commandBar.rMarker;
				cbar.rMarker.IncreaseRefCount();
				break;
			}
		}
		if (cbar.rMarker != null)
		{
			return;
		}
		RowMarker rowMarker = new RowMarker(this);
		int index = alRowMarkers.Count;
		if (cbar.nRCIndex + 1 < nRCCount)
		{
			CommandBar[] rowArray2 = GetRowArray(cbar.nRCIndex + 1);
			if (rowArray2.Length > 0)
			{
				index = alRowMarkers.IndexOf(rowArray2[0].rMarker);
			}
		}
		alRowMarkers.Insert(index, rowMarker);
		CommandBar[] array2 = rowArray;
		foreach (CommandBar commandBar2 in array2)
		{
			if (commandBar2.rMarker != null)
			{
				commandBar2.rMarker.DecreaseRefCount();
				commandBar2.rMarker = null;
			}
			commandBar2.rMarker = rowMarker;
			commandBar2.rMarker.IncreaseRefCount();
		}
	}

	public void InitializeIndexRowOffsets(CommandBar cbar)
	{
		int num = (cbar.nRCIndex = ((nRCCount > 0) ? (nRCCount - 1) : 0));
		if (cbar.nRowOffsetDir == -1)
		{
			cbar.nRowOffsetDir = 0;
		}
		InitializeRowOffsets(cbar);
		if (cbar.nRowOffsetDir <= 0)
		{
			return;
		}
		if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
		{
			if (cbar.nRowOffsetDir + cbar.nMaxLength > base.Right)
			{
				cbar.nRCIndex = num + 1;
				cbar.nRowOffsetDir = 0;
				cbar.nRowOffsetInDir = 0;
			}
		}
		else if (cbar.nRowOffsetDir + cbar.nMaxLength > base.Bottom)
		{
			cbar.nRCIndex = num + 1;
			cbar.nRowOffsetDir = 0;
			cbar.nRowOffsetInDir = 0;
		}
	}

	public void InitializeRowOffsets(CommandBar cbar)
	{
		CommandBar[] rowArray = GetRowArray(cbar.nRCIndex);
		if (Array.IndexOf(rowArray, cbar) >= 0)
		{
			return;
		}
		if (rowArray.Length > 0)
		{
			CommandBar commandBar = rowArray[rowArray.Length - 1];
			if (commandBar.OccupyFullRow || cbar.OccupyFullRow)
			{
				cbar.nRowOffsetDir = 0;
				cbar.nRCIndex++;
			}
			else
			{
				cbar.nRowOffsetDir = commandBar.nRowOffsetDir + commandBar.nMaxLength + 2;
			}
		}
		else
		{
			cbar.nRowOffsetDir = 0;
		}
		cbar.nRowOffsetInDir = cbar.nRowOffsetDir;
	}

	protected internal void AdjustPreviousRow(CommandBar cbar, ref CommandBar[] cbarray, Rectangle rccbar)
	{
		if (m_nSuspendCount != 0)
		{
			return;
		}
		CommandBar commandBar = null;
		CommandBar commandBar2 = null;
		int num = Array.IndexOf(cbarray, cbar);
		if (num > 0)
		{
			commandBar = cbarray[num - 1];
		}
		if (num + 1 < cbarray.Length)
		{
			commandBar2 = cbarray[num + 1];
		}
		int num2 = 0;
		num2 = ((Dock != DockStyle.Top && Dock != DockStyle.Bottom) ? cbar.Height : cbar.Width);
		num2 += ((commandBar2 != null) ? 2 : 0);
		if (num > 0)
		{
			CommandBar[] cbarray2 = new CommandBar[num];
			Array.Copy(cbarray, 0, cbarray2, 0, cbarray2.Length);
			RecalcHeightForBarsInRow(next: false, ref cbarray2, ref num2);
		}
		if (num2 > 0 && num < cbarray.Length - 1)
		{
			CommandBar[] cbarray3 = new CommandBar[cbarray.Length - 1 - num];
			Array.Copy(cbarray, num + 1, cbarray3, 0, cbarray3.Length);
			RecalcHeightForBarsInRow(next: true, ref cbarray3, ref num2);
		}
		if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
		{
			if (num2 > 0 && commandBar != null && commandBar.VLeft < commandBar.nRowOffsetDir && commandBar.nRowOffsetDir + commandBar.nMaxLength + 2 > rccbar.Left)
			{
				int num3 = commandBar.VLeft - commandBar.nRowOffsetDir;
				num3 = ((num3 > num2) ? num2 : num3);
				num2 = Math.Abs(num2 - num3);
				AdjustRowOffsets(ref cbarray, num, rccbar, ref num3);
			}
			if (num2 > 0 && commandBar2 != null && commandBar2.VLeft > commandBar2.nRowOffsetDir && commandBar2.nRowOffsetDir - 2 < rccbar.Right)
			{
				int num4 = commandBar2.VLeft - commandBar2.nRowOffsetDir;
				num4 = ((num4 > num2) ? num2 : num4);
				AdjustRowOffsets(ref cbarray, num, rccbar, ref num4);
			}
		}
		else
		{
			if (num2 > 0 && commandBar != null && commandBar.Top < commandBar.nRowOffsetDir && commandBar.nRowOffsetDir + commandBar.nMaxLength + 2 > rccbar.Top)
			{
				int num5 = commandBar.Top - commandBar.nRowOffsetDir;
				num5 = ((num5 > num2) ? num2 : num5);
				num2 = Math.Abs(num2 - num5);
				AdjustRowOffsets(ref cbarray, num, rccbar, ref num5);
			}
			if (num2 > 0 && commandBar2 != null && commandBar2.Top > commandBar2.nRowOffsetDir && commandBar2.nRowOffsetDir - 2 < rccbar.Bottom)
			{
				int num6 = commandBar2.Top - commandBar2.nRowOffsetDir;
				num6 = ((num6 > num2) ? num2 : num6);
				AdjustRowOffsets(ref cbarray, num, rccbar, ref num6);
			}
		}
		LayoutDockBar();
	}

	protected void RecalcHeightForBarsInRow(bool next, ref CommandBar[] cbarray, ref int ndelta)
	{
		bool isRTL = IsRTL;
		if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
		{
			for (int i = 0; i < cbarray.Length; i++)
			{
				CommandBar commandBar = cbarray[i];
				if (commandBar.Width >= commandBar.nMaxLength && commandBar.Height <= commandBar.nCommandBarHt)
				{
					continue;
				}
				int num = commandBar.nMaxLength - commandBar.Width;
				num = ((num > ndelta) ? ndelta : num);
				for (int num2 = cbarray.Length - 1; num2 >= i + 1; num2--)
				{
					cbarray[num2].Left += num;
				}
				if (commandBar.DockModeWrapping)
				{
					commandBar.SetCommandBarSize(commandBar.Width + num, commandBar.Height);
					if (isRTL)
					{
						commandBar.Left -= num;
					}
				}
				else
				{
					int num3 = ConfirmNewRowHeight(commandBar, commandBar.nCommandBarHt);
					if (num3 != commandBar.Height)
					{
						AdjustRowHeight(commandBar, num3 - commandBar.Height);
						commandBar.SetCommandBarSize(commandBar.Width + num, num3);
						if (isRTL)
						{
							commandBar.Left -= num;
						}
					}
				}
				if (!next)
				{
					ndelta -= num;
				}
				if (ndelta <= 0)
				{
					break;
				}
			}
			return;
		}
		for (int j = 0; j < cbarray.Length; j++)
		{
			CommandBar commandBar2 = cbarray[j];
			if (commandBar2.Height >= commandBar2.nMaxLength && commandBar2.Width <= commandBar2.nCommandBarHt)
			{
				continue;
			}
			int num4 = commandBar2.nMaxLength - commandBar2.Height;
			num4 = ((num4 > ndelta) ? ndelta : num4);
			for (int num5 = cbarray.Length - 1; num5 >= j + 1; num5--)
			{
				cbarray[num5].Top += num4;
			}
			if (commandBar2.DockModeWrapping)
			{
				commandBar2.SetCommandBarSize(commandBar2.Width, commandBar2.Height + num4);
			}
			else
			{
				int num6 = ConfirmNewRowHeight(commandBar2, commandBar2.nCommandBarHt);
				int num7 = commandBar2.Width - num6;
				if (num7 != 0)
				{
					AdjustRowHeight(commandBar2, num6 - commandBar2.Width);
					commandBar2.SetCommandBarSize(num6, commandBar2.Height + num4);
					if (isRTL)
					{
						commandBar2.Left += num7;
					}
				}
			}
			if (!next)
			{
				ndelta -= num4;
			}
			if (ndelta <= 0)
			{
				break;
			}
		}
	}

	protected internal bool AllowLeadingEdgeDocking(CommandBar cbar)
	{
		CommandBar[] rowArray = GetRowArray(0);
		CommandBar[] array = rowArray;
		foreach (CommandBar commandBar in array)
		{
			if (commandBar != cbar && commandBar.bLeadingEdge)
			{
				return false;
			}
		}
		return true;
	}

	protected internal bool AllowTrailingEdgeDocking(CommandBar cbar)
	{
		CommandBar[] rowArray = GetRowArray(nRCCount - 1);
		CommandBar[] array = rowArray;
		foreach (CommandBar commandBar in array)
		{
			if (commandBar != cbar && commandBar.bTrailingEdge)
			{
				return false;
			}
		}
		return true;
	}

	protected internal bool ValidateBarIndex(CommandBar cbar, bool bappend)
	{
		CommandBar[] rowArray = GetRowArray(cbar.nRCIndex);
		if (rowArray.Length > 0)
		{
			if (cbar.bLeadingEdge)
			{
				bappend = false;
			}
			else if (cbar.bTrailingEdge)
			{
				bappend = true;
			}
			bool flag = cbar.OccupyFullRow;
			if (!flag)
			{
				CommandBar[] array = rowArray;
				foreach (CommandBar commandBar in array)
				{
					if (commandBar.OccupyFullRow)
					{
						flag = true;
						break;
					}
				}
			}
			if (flag)
			{
				Array.Clear(rowArray, 0, rowArray.Length);
				if (bappend)
				{
					for (int num = nRCCount - 1; num >= cbar.nRCIndex + 1; num--)
					{
						rowArray = GetRowArray(num);
						CommandBar[] array2 = rowArray;
						foreach (CommandBar commandBar2 in array2)
						{
							if (commandBar2 != cbar)
							{
								commandBar2.nRCIndex++;
							}
						}
					}
					nRCCount++;
					cbar.nRCIndex++;
				}
				else
				{
					for (int num2 = nRCCount - 1; num2 >= cbar.nRCIndex; num2--)
					{
						rowArray = GetRowArray(num2);
						CommandBar[] array3 = rowArray;
						foreach (CommandBar commandBar3 in array3)
						{
							if (commandBar3 != cbar)
							{
								commandBar3.nRCIndex++;
							}
						}
					}
					nRCCount++;
				}
				return true;
			}
		}
		return false;
	}

	protected internal void CalcDockbarSize()
	{
		if (m_nSuspendCount != 0)
		{
			return;
		}
		int num = 0;
		for (int i = 0; i < nRCCount; i++)
		{
			int num2 = GetRowMaxHeight(i, bmin: false);
			int rowMaxHeight = GetRowMaxHeight(i, bmin: true);
			int num3 = GetRowArray(i).Length;
			if (num3 == 1 && (Dock == DockStyle.Top || Dock == DockStyle.Bottom))
			{
				num2 = rowMaxHeight;
			}
			num += ((num2 > rowMaxHeight) ? num2 : rowMaxHeight);
		}
		cbController.FreezeLayoutInternal = true;
		switch (Dock)
		{
		case DockStyle.Left:
			base.Size = new Size(num, base.Height);
			break;
		case DockStyle.Top:
			base.Size = new Size(base.Width, num);
			break;
		case DockStyle.Right:
			base.Size = new Size(num, base.Height);
			break;
		case DockStyle.Bottom:
			base.Size = new Size(base.Width, num);
			break;
		}
		cbController.FreezeLayoutInternal = false;
	}

	private void EnsureControlsCreation()
	{
		if (m_arrControlsToEnsure.Count <= 0)
		{
			return;
		}
		Control control = null;
		int i = 0;
		for (int count = m_arrControlsToEnsure.Count; i < count; i++)
		{
			if (m_arrControlsToEnsure[i] is Control { IsDisposed: false } control2)
			{
				_ = control2.Handle;
			}
		}
		m_arrControlsToEnsure.Clear();
	}

	private void UpdateColorScheme()
	{
		MenuColors.UpdateMenuColors();
		Office2003Colors.UpdateMenuColors();
		VS2005Colors.UpdateMenuColors();
		Office2007Theme theme = ((cbController != null) ? cbController.Office2007Theme : Office2007Theme.Blue);
		Office2007OutlookColors.UpdateMenuColors(theme);
	}

	private void DrawBackgroundThemed(Graphics g)
	{
		tdRebar.DrawThemeBackground(g, 6, 1, base.ClientRectangle);
		Pen pen = new Pen(ControlPaint.LightLight(SystemColors.ControlDark), 1f);
		Pen pen2 = new Pen(SystemColors.ControlLightLight, 1f);
		Rectangle clientRectangle = base.ClientRectangle;
		int num = 0;
		DockStyle dock = Dock;
		for (int i = 0; i < nRCCount - 1; i++)
		{
			num += GetRowMaxHeight(i, bmin: false) - 1;
			if (dock == DockStyle.Top || dock == DockStyle.Bottom)
			{
				g.DrawLine(pen, clientRectangle.Left, num, clientRectangle.Right, num);
				num++;
				g.DrawLine(pen2, clientRectangle.Left, num, clientRectangle.Right, num);
			}
			else
			{
				g.DrawLine(pen, num, clientRectangle.Top, num, clientRectangle.Bottom);
				num++;
				g.DrawLine(pen2, num, clientRectangle.Top, num, clientRectangle.Bottom);
			}
		}
		pen.Dispose();
		pen2.Dispose();
	}

	private void DrawBackgroundOffice2003(Graphics g)
	{
		Rectangle clientRectangle = base.ClientRectangle;
		if (clientRectangle.Width > 0 && clientRectangle.Height > 0)
		{
			if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
			{
				LinearGradientBrush linearGradientBrush = new LinearGradientBrush(clientRectangle, Office2003Colors.DockBarColorDark, Office2003Colors.DockBarColorLight, LinearGradientMode.Horizontal);
				g.FillRectangle(linearGradientBrush, clientRectangle);
				linearGradientBrush.Dispose();
			}
			else
			{
				LinearGradientBrush linearGradientBrush2 = new LinearGradientBrush(clientRectangle, Office2003Colors.DockBarColorDark, Office2003Colors.DockBarColorLight, LinearGradientMode.Vertical);
				g.FillRectangle(linearGradientBrush2, clientRectangle);
				linearGradientBrush2.Dispose();
			}
		}
	}

	private void DrawBackgroundVS2005(Graphics g)
	{
		Rectangle clientRectangle = base.ClientRectangle;
		if (clientRectangle.Width > 0 && clientRectangle.Height > 0)
		{
			if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
			{
				LinearGradientBrush linearGradientBrush = new LinearGradientBrush(clientRectangle, VS2005Colors.DockBarDarkColor, VS2005Colors.DockBarLightColor, LinearGradientMode.Horizontal);
				g.FillRectangle(linearGradientBrush, clientRectangle);
				linearGradientBrush.Dispose();
			}
			else
			{
				LinearGradientBrush linearGradientBrush2 = new LinearGradientBrush(clientRectangle, VS2005Colors.DockBarDarkColor, VS2005Colors.DockBarLightColor, LinearGradientMode.Vertical);
				g.FillRectangle(linearGradientBrush2, clientRectangle);
				linearGradientBrush2.Dispose();
			}
		}
	}

	private void DrawBackgroundOffice2007(Graphics g)
	{
		Rectangle clientRectangle = base.ClientRectangle;
		if (clientRectangle.Width > 0 && clientRectangle.Height > 0)
		{
			using (SolidBrush brush = new SolidBrush(Office2007ColorTable.DockBarBackColor))
			{
				g.FillRectangle(brush, clientRectangle);
			}
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		EnsureControlsCreation();
		UpdateColorScheme();
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && cbController.ThemesEnabled && cbController.Style != VisualStyle.Office2007 && cbController.Style != VisualStyle.Office2007Outlook)
		{
			DrawBackgroundThemed(e.Graphics);
		}
		else if (cbController != null)
		{
			switch (cbController.Style)
			{
			case VisualStyle.Office2003:
				DrawBackgroundOffice2003(e.Graphics);
				break;
			case VisualStyle.VS2005:
				DrawBackgroundVS2005(e.Graphics);
				break;
			case VisualStyle.Office2007:
			case VisualStyle.Office2007Outlook:
				DrawBackgroundOffice2007(e.Graphics);
				break;
			}
		}
		base.OnPaint(e);
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && cbController.ThemesEnabled)
		{
			Invalidate(invalidateChildren: true);
		}
	}

	protected override void OnSystemColorsChanged(EventArgs e)
	{
		base.OnSystemColorsChanged(e);
		MenuColors.SysColorsChanged(updateColorsNow: false);
		Office2003Colors.SysColorsChanged(updateColorsNow: false);
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if ((base.Left == x && base.Top == y && base.Width == width && base.Height == height) || cbController == null || cbController.FreezeLayout)
		{
			return;
		}
		int num = width - base.Width;
		if (Dock == DockStyle.Left || Dock == DockStyle.Right)
		{
			if (base.Height > 0 && height > base.Height)
			{
				bExpanding = true;
			}
		}
		else if (base.Width > 0 && width > base.Width)
		{
			bExpanding = true;
		}
		base.SetBoundsCore(x, y, width, height, specified);
		bool flag = false;
		foreach (CommandBar control in base.Controls)
		{
			if (control.Visible)
			{
				flag = true;
				break;
			}
		}
		if (flag && cbController.HostForm.WindowState != FormWindowState.Minimized)
		{
			if (IsRTL && (DockStyle.Top == Dock || DockStyle.Bottom == Dock))
			{
				for (int i = 0; i < nRCCount; i++)
				{
					CommandBar[] rowArray = GetRowArray(i);
					CommandBar[] array = rowArray;
					for (int j = 0; j < array.Length; j++)
					{
						array[j].Left += num;
					}
				}
			}
			LayoutDockBar();
			Invalidate(invalidateChildren: false);
		}
		bExpanding = false;
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		e.Control.TabIndexChanged += Child_TabIndexChanged;
		ResetTabIndex();
		if (!m_arrControlsToEnsure.Contains(e.Control))
		{
			m_arrControlsToEnsure.Add(e.Control);
		}
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		e.Control.TabIndexChanged -= Child_TabIndexChanged;
		ResetTabIndex();
	}

	protected void Child_TabIndexChanged(object sender, EventArgs e)
	{
		ResetTabIndex();
	}

	protected virtual void ResetTabIndex()
	{
		int num = 1000;
		foreach (CommandBar control in base.Controls)
		{
			if (control.Visible && control.TabIndex < num)
			{
				num = control.TabIndex;
			}
		}
		base.TabIndex = num;
	}

	public virtual void LayoutDockBar()
	{
		if (m_nSuspendCount != 0 || cbController.FreezeLayoutInternal || cbController.FreezeLayout)
		{
			return;
		}
		int nyoff = 0;
		Rectangle clientRectangle = base.ClientRectangle;
		for (int i = 0; i < nRCCount; i++)
		{
			CommandBar[] cbarray = GetRowArray(i);
			if (cbarray.Length == 0)
			{
				continue;
			}
			int num = 0;
			bool flag = false;
			for (int j = 0; j < cbarray.Length; j++)
			{
				int num2 = ((j != cbarray.Length - 1) ? 2 : 0);
				CommandBar commandBar = cbarray[j];
				if (!commandBar.OccupyFullRow)
				{
					if (!flag)
					{
						if (num > commandBar.nRowOffsetInDir)
						{
							commandBar.nRowOffsetInDir = num;
							if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
							{
								commandBar.VLeft = commandBar.nRowOffsetInDir;
							}
							else
							{
								commandBar.Top = commandBar.nRowOffsetInDir;
							}
						}
						num = commandBar.nRowOffsetInDir + commandBar.nMaxLength + num2;
					}
					else
					{
						num += commandBar.nRowOffsetInDir + commandBar.nMaxLength + num2;
					}
				}
				else
				{
					num = ((Dock != DockStyle.Top && Dock != DockStyle.Bottom) ? base.Height : base.Width);
					commandBar.nRowOffsetDir = 0;
					commandBar.nRowOffsetInDir = 0;
				}
				if (flag)
				{
					continue;
				}
				if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
				{
					if (commandBar.Width < commandBar.nMaxLength && commandBar.DockModeWrapping)
					{
						flag = true;
					}
				}
				else if (commandBar.Height < commandBar.nMaxLength && commandBar.DockModeWrapping)
				{
					flag = true;
				}
			}
			num = ((Dock == DockStyle.Top || Dock == DockStyle.Bottom) ? ((clientRectangle.Width > 0) ? (num - clientRectangle.Width) : 0) : ((clientRectangle.Height > 0) ? (num - clientRectangle.Height) : 0));
			if (num > 0)
			{
				if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
				{
					if (bExpanding)
					{
						int num3 = 0;
						CommandBar[] array = cbarray;
						foreach (CommandBar commandBar2 in array)
						{
							num3 += commandBar2.nMaxLength + 2;
						}
						if (num3 <= base.Width)
						{
							RepositionBars(ref cbarray, num, nyoff);
						}
					}
					else
					{
						RepositionBars(ref cbarray, num, nyoff);
					}
					int num4 = 0;
					for (int l = 0; l < cbarray.Length; l++)
					{
						int num5 = ((l != cbarray.Length - 1) ? 2 : 0);
						num4 += cbarray[l].Width + num5;
					}
					num = num4 - clientRectangle.Width;
					ResizeBarsTopBottom(ref cbarray, num, nyoff);
				}
				else
				{
					if (bExpanding)
					{
						int num6 = 0;
						CommandBar[] array2 = cbarray;
						foreach (CommandBar commandBar3 in array2)
						{
							num6 += commandBar3.nMaxLength;
						}
						if (num6 <= base.Height)
						{
							RepositionBars(ref cbarray, num, nyoff);
						}
					}
					else
					{
						RepositionBars(ref cbarray, num, nyoff);
					}
					int num7 = 0;
					for (int n = 0; n < cbarray.Length; n++)
					{
						int num8 = ((n != cbarray.Length - 1) ? 2 : 0);
						num7 += cbarray[n].Height + num8;
					}
					num = num7 - clientRectangle.Height;
					ResizeBarsLeftRight(ref cbarray, num, nyoff);
				}
			}
			else
			{
				for (int num9 = 0; num9 < cbarray.Length; num9++)
				{
					CommandBar commandBar4 = cbarray[num9];
					int rowMaxHeight = GetRowMaxHeight(commandBar4.nRCIndex, bmin: true);
					if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
					{
						int num10 = 0;
						if (!commandBar4.OccupyFullRow)
						{
							num10 = commandBar4.nMaxLength;
							if (flag && num9 + 1 < cbarray.Length)
							{
								int num11 = Math.Abs(num10 - commandBar4.Width);
								for (int num12 = num9 + 1; num12 < cbarray.Length; num12++)
								{
									cbarray[num12].VLeft += num11;
								}
							}
						}
						else
						{
							num10 = base.Width;
						}
						commandBar4.SetCommandBarSize(num10, (commandBar4.Height > rowMaxHeight) ? commandBar4.Height : rowMaxHeight);
						commandBar4.VLocation = new Point(commandBar4.nRowOffsetInDir, nyoff);
						continue;
					}
					int num13 = 0;
					if (!commandBar4.OccupyFullRow)
					{
						num13 = commandBar4.nMaxLength;
						if (flag && num9 + 1 < cbarray.Length)
						{
							int num14 = Math.Abs(num13 - commandBar4.Height);
							for (int num15 = num9 + 1; num15 < cbarray.Length; num15++)
							{
								cbarray[num15].Top += num14;
							}
						}
					}
					else
					{
						num13 = base.Height;
					}
					commandBar4.SetCommandBarSize((commandBar4.Width > rowMaxHeight) ? commandBar4.Width : rowMaxHeight, num13);
					commandBar4.VLocation = new Point(nyoff, commandBar4.nRowOffsetInDir);
				}
			}
			nyoff = ((Dock != DockStyle.Top && Dock != DockStyle.Bottom) ? cbarray[0].Bounds.Right : cbarray[0].Bounds.Bottom);
		}
		EnsureCorrectLocation();
	}

	private void EnsureCorrectLocation()
	{
		ArrayList arrayList = new ArrayList();
		for (int i = 0; i < nRCCount; i++)
		{
			CommandBar[] rowArray = GetRowArray(i);
			if (rowArray.Length == 0)
			{
				continue;
			}
			int num = 0;
			for (int j = 0; j < arrayList.Count; j++)
			{
				num += GetRowMaxHeight((int)arrayList[j], bmin: false);
			}
			if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
			{
				CommandBar[] array = rowArray;
				foreach (CommandBar commandBar in array)
				{
					if (commandBar.Location.Y != num)
					{
						commandBar.Location = new Point(commandBar.Location.X, num);
					}
				}
			}
			else if (Dock == DockStyle.Left || Dock == DockStyle.Right)
			{
				CommandBar[] array2 = rowArray;
				foreach (CommandBar commandBar2 in array2)
				{
					if (commandBar2.Location.X != num)
					{
						commandBar2.Location = new Point(num, commandBar2.Location.Y);
					}
				}
			}
			arrayList.Add(i);
		}
	}

	protected virtual void RepositionBars(ref CommandBar[] cbarray, int nreqdlength, int nyoff)
	{
		CommandBar commandBar = cbarray[cbarray.Length - 1];
		CommandBar commandBar2 = null;
		if (cbarray.Length >= 2)
		{
			commandBar2 = cbarray[cbarray.Length - 2];
		}
		if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
		{
			if (commandBar2 != null)
			{
				if (commandBar.nRowOffsetInDir - nreqdlength > commandBar2.VRight + 2)
				{
					if (bExpanding && commandBar.nRowOffsetInDir - nreqdlength > commandBar.nRowOffsetInDir)
					{
						commandBar.VLocation = new Point(commandBar.nRowOffsetInDir, nyoff);
					}
					else
					{
						commandBar.VLocation = new Point(commandBar.nRowOffsetInDir - nreqdlength, nyoff);
					}
					if (commandBar.VLeft > commandBar2.VRight + 2 && commandBar2.VLeft < commandBar2.nRowOffsetInDir)
					{
						nreqdlength = commandBar2.VRight + 2 - commandBar.VLeft;
						RepositionBarsRToLShift(ref cbarray, cbarray.Length - 2, ref nreqdlength, nyoff);
					}
					else
					{
						nreqdlength = 0;
					}
				}
				else
				{
					nreqdlength -= commandBar.nRowOffsetInDir - commandBar.VLeft;
					RepositionBarsRToLShift(ref cbarray, cbarray.Length - 2, ref nreqdlength, nyoff);
					commandBar.VLocation = new Point(commandBar2.VRight + 2, nyoff);
				}
			}
			else if (commandBar.nRowOffsetInDir - nreqdlength >= base.ClientRectangle.Left)
			{
				if (bExpanding && commandBar.nRowOffsetInDir - nreqdlength > commandBar.nRowOffsetInDir)
				{
					commandBar.VLocation = new Point(commandBar.nRowOffsetInDir, nyoff);
				}
				else
				{
					commandBar.VLocation = new Point(commandBar.nRowOffsetInDir - nreqdlength, nyoff);
				}
				nreqdlength = 0;
			}
			else
			{
				commandBar.VLocation = new Point(base.ClientRectangle.Left, nyoff);
				nreqdlength -= commandBar.nRowOffsetInDir - base.ClientRectangle.Left;
			}
		}
		else if (commandBar2 != null)
		{
			if (commandBar.nRowOffsetInDir - nreqdlength > commandBar2.Bottom + 2)
			{
				if (bExpanding && commandBar.nRowOffsetInDir - nreqdlength > commandBar.nRowOffsetInDir)
				{
					commandBar.Location = new Point(nyoff, commandBar.nRowOffsetInDir);
				}
				else
				{
					commandBar.Location = new Point(nyoff, commandBar.nRowOffsetInDir - nreqdlength);
				}
				if (commandBar.Location.Y > commandBar2.Bottom + 2 && commandBar2.Top < commandBar2.nRowOffsetInDir)
				{
					nreqdlength = commandBar2.Bottom + 2 - commandBar.Top;
					RepositionBarsBToTShift(ref cbarray, cbarray.Length - 2, ref nreqdlength, nyoff);
				}
				else
				{
					nreqdlength = 0;
				}
			}
			else
			{
				nreqdlength -= commandBar.nRowOffsetInDir - commandBar.Top;
				RepositionBarsBToTShift(ref cbarray, cbarray.Length - 2, ref nreqdlength, nyoff);
				commandBar.Location = new Point(nyoff, commandBar2.Bottom + 2);
			}
		}
		else if (commandBar.nRowOffsetInDir - nreqdlength >= base.ClientRectangle.Top)
		{
			if (bExpanding && commandBar.nRowOffsetInDir - nreqdlength > commandBar.nRowOffsetInDir)
			{
				commandBar.Location = new Point(nyoff, commandBar.nRowOffsetInDir);
			}
			else
			{
				commandBar.Location = new Point(nyoff, commandBar.nRowOffsetInDir - nreqdlength);
			}
			nreqdlength = 0;
		}
		else
		{
			commandBar.Location = new Point(nyoff, base.ClientRectangle.Top);
			nreqdlength -= commandBar.nRowOffsetInDir - base.ClientRectangle.Left;
		}
	}

	protected virtual void RepositionBarsRToLShift(ref CommandBar[] cbarray, int i, ref int nreqdlength, int nyoff)
	{
		CommandBar commandBar = cbarray[i];
		CommandBar commandBar2 = null;
		if (i > 0)
		{
			commandBar2 = cbarray[i - 1];
		}
		if (commandBar2 != null)
		{
			if (commandBar.VLeft - nreqdlength > commandBar2.VRight + 2)
			{
				if (bExpanding && commandBar.VLeft - nreqdlength > commandBar.nRowOffsetInDir)
				{
					commandBar.VLocation = new Point(commandBar.nRowOffsetInDir, nyoff);
				}
				else
				{
					commandBar.VLocation = new Point(commandBar.VLeft - nreqdlength, nyoff);
				}
				if (commandBar.VLeft > commandBar2.VRight + 2 && commandBar2.VLeft < commandBar2.nRowOffsetInDir)
				{
					nreqdlength = commandBar2.VRight + 2 - commandBar.VLeft;
					RepositionBarsRToLShift(ref cbarray, i - 1, ref nreqdlength, nyoff);
				}
				nreqdlength = 0;
			}
			else
			{
				nreqdlength -= commandBar.VLeft - (commandBar2.VRight + 2);
				RepositionBarsRToLShift(ref cbarray, i - 1, ref nreqdlength, nyoff);
				commandBar.VLocation = new Point(commandBar2.VRight + 2, nyoff);
			}
		}
		else if (commandBar.VLeft - nreqdlength > base.ClientRectangle.Left)
		{
			if (bExpanding && commandBar.VLeft - nreqdlength > commandBar.nRowOffsetInDir)
			{
				commandBar.VLocation = new Point(commandBar.nRowOffsetInDir, nyoff);
			}
			else
			{
				commandBar.VLocation = new Point(commandBar.VLeft - nreqdlength, nyoff);
			}
			nreqdlength = 0;
		}
		else
		{
			nreqdlength -= commandBar.VLeft - base.ClientRectangle.Left;
			commandBar.VLocation = new Point(base.ClientRectangle.Left, nyoff);
		}
	}

	protected virtual void RepositionBarsLToRShift(ref CommandBar[] cbarray, int i, ref int nreqdlength, int nyoff)
	{
		CommandBar commandBar = cbarray[i];
		CommandBar commandBar2 = null;
		if (i + 1 < cbarray.Length)
		{
			commandBar2 = cbarray[i + 1];
		}
		if (commandBar2 != null)
		{
			if (commandBar.VRight - nreqdlength < commandBar2.VLeft - 2)
			{
				commandBar.Location = new Point(commandBar.VLeft - nreqdlength, nyoff);
				nreqdlength = 0;
			}
			else
			{
				nreqdlength -= commandBar2.VLeft - 2 - commandBar.VRight;
				RepositionBarsLToRShift(ref cbarray, i + 1, ref nreqdlength, nyoff);
				commandBar.VLocation = new Point(commandBar2.VLeft - 2 - commandBar.Width, nyoff);
			}
		}
		else if (commandBar.VRight - nreqdlength < base.ClientRectangle.Right)
		{
			commandBar.VLocation = new Point(commandBar.VLeft - nreqdlength, nyoff);
			nreqdlength = 0;
		}
		else
		{
			nreqdlength -= base.ClientRectangle.Right - commandBar.VRight;
			commandBar.VLocation = new Point(base.ClientRectangle.Right - commandBar.Width, nyoff);
		}
	}

	protected virtual void RepositionBarsBToTShift(ref CommandBar[] cbarray, int i, ref int nreqdlength, int nyoff)
	{
		CommandBar commandBar = cbarray[i];
		CommandBar commandBar2 = null;
		if (i > 0)
		{
			commandBar2 = cbarray[i - 1];
		}
		if (commandBar2 != null)
		{
			if (commandBar.Top - nreqdlength > commandBar2.Bottom + 2)
			{
				if (bExpanding && commandBar.Top - nreqdlength > commandBar.nRowOffsetInDir)
				{
					commandBar.Location = new Point(nyoff, commandBar.nRowOffsetInDir);
				}
				else
				{
					commandBar.Location = new Point(nyoff, commandBar.Top - nreqdlength);
				}
				if (commandBar.Location.Y > commandBar2.Bottom + 2 && commandBar2.Top < commandBar2.nRowOffsetInDir)
				{
					nreqdlength = commandBar2.Bottom + 2 - commandBar.Top;
					RepositionBarsBToTShift(ref cbarray, i - 1, ref nreqdlength, nyoff);
				}
				nreqdlength = 0;
			}
			else
			{
				nreqdlength -= commandBar.Top - (commandBar2.Bottom + 2);
				RepositionBarsBToTShift(ref cbarray, i - 1, ref nreqdlength, nyoff);
				commandBar.Location = new Point(nyoff, commandBar2.Bottom + 2);
			}
		}
		else if (commandBar.Top - nreqdlength > base.ClientRectangle.Top)
		{
			if (bExpanding && commandBar.Top - nreqdlength > commandBar.nRowOffsetInDir)
			{
				commandBar.Location = new Point(nyoff, commandBar.nRowOffsetInDir);
			}
			else
			{
				commandBar.Location = new Point(nyoff, commandBar.Top - nreqdlength);
			}
			nreqdlength = 0;
		}
		else
		{
			nreqdlength -= commandBar.Top - base.ClientRectangle.Top;
			commandBar.Location = new Point(nyoff, base.ClientRectangle.Top);
		}
	}

	protected virtual void RepositionBarsTToBShift(ref CommandBar[] cbarray, int i, ref int nreqdlength, int nyoff)
	{
		CommandBar commandBar = cbarray[i];
		CommandBar commandBar2 = null;
		if (i + 1 < cbarray.Length)
		{
			commandBar2 = cbarray[i + 1];
		}
		if (commandBar2 != null)
		{
			if (commandBar.Bottom - nreqdlength < commandBar2.Top - 2)
			{
				commandBar.Location = new Point(nyoff, commandBar.Top - nreqdlength);
				nreqdlength = 0;
			}
			else
			{
				nreqdlength -= commandBar2.Top - 2 - commandBar.Bottom;
				RepositionBarsTToBShift(ref cbarray, i + 1, ref nreqdlength, nyoff);
				commandBar.Location = new Point(nyoff, commandBar2.Top - 2 - commandBar.Height);
			}
		}
		else if (commandBar.Bottom - nreqdlength < base.ClientRectangle.Bottom)
		{
			commandBar.Location = new Point(nyoff, commandBar.Top - nreqdlength);
			nreqdlength = 0;
		}
		else
		{
			nreqdlength -= base.ClientRectangle.Bottom - commandBar.Bottom;
			commandBar.Location = new Point(nyoff, base.ClientRectangle.Bottom - commandBar.Height);
		}
	}

	protected virtual void ResizeBarsTopBottom(ref CommandBar[] cbarray, int nreqdlength, int nyoff)
	{
		bool isRTL = IsRTL;
		if (nreqdlength > 0)
		{
			for (int num = cbarray.Length - 1; num >= 0; num--)
			{
				CommandBar commandBar = cbarray[num];
				if (commandBar.Width > commandBar.nMinLength)
				{
					int num2 = commandBar.Width - commandBar.nMinLength;
					if (nreqdlength <= num2)
					{
						if (commandBar.SetCommandBarSize(commandBar.Width - nreqdlength, commandBar.Height))
						{
							if (isRTL)
							{
								commandBar.Left += nreqdlength;
							}
							for (int i = num + 1; i < cbarray.Length; i++)
							{
								CommandBar commandBar2 = cbarray[i];
								commandBar2.VLocation = new Point(commandBar2.VLeft - nreqdlength, nyoff);
							}
						}
						nreqdlength = 0;
						break;
					}
					nreqdlength -= num2;
					int num3 = commandBar.Width;
					if (commandBar.SetCommandBarSize(commandBar.nMinLength, commandBar.Height))
					{
						if (isRTL)
						{
							commandBar.Left += commandBar.nMinLength - num3;
						}
						for (int j = num + 1; j < cbarray.Length; j++)
						{
							CommandBar commandBar3 = cbarray[j];
							commandBar3.VLocation = new Point(commandBar3.VLeft - num2, nyoff);
						}
					}
				}
			}
			return;
		}
		nreqdlength = -nreqdlength;
		for (int k = 0; k < cbarray.Length; k++)
		{
			CommandBar commandBar4 = cbarray[k];
			if (commandBar4.Width >= commandBar4.nMaxLength)
			{
				continue;
			}
			int num4 = commandBar4.nMaxLength - commandBar4.Width;
			if (nreqdlength <= num4)
			{
				if (!commandBar4.SetCommandBarSize(commandBar4.Width + nreqdlength, commandBar4.Height))
				{
					continue;
				}
				if (isRTL)
				{
					commandBar4.Left -= nreqdlength;
				}
				if (k + 1 >= cbarray.Length)
				{
					continue;
				}
				CommandBar commandBar5 = cbarray[k + 1];
				if (commandBar5.VLeft < commandBar4.VRight + 2)
				{
					int num5 = commandBar4.VRight + 2 - commandBar5.VLeft;
					for (int num6 = cbarray.Length - 1; num6 >= k + 1; num6--)
					{
						CommandBar commandBar6 = cbarray[num6];
						commandBar6.VLocation = new Point(commandBar6.VLeft + num5, nyoff);
					}
				}
				continue;
			}
			nreqdlength -= num4;
			int num7 = commandBar4.Width;
			if (!commandBar4.SetCommandBarSize(commandBar4.nMaxLength, commandBar4.Height))
			{
				continue;
			}
			if (isRTL)
			{
				commandBar4.Left += commandBar4.nMaxLength - num7;
			}
			if (k + 1 >= cbarray.Length)
			{
				continue;
			}
			CommandBar commandBar7 = cbarray[k + 1];
			if (commandBar7.VLeft < commandBar4.VRight + 2)
			{
				int num8 = commandBar4.VRight + 2 - commandBar7.VLeft;
				for (int num9 = cbarray.Length - 1; num9 >= k + 1; num9--)
				{
					CommandBar commandBar8 = cbarray[num9];
					commandBar8.VLocation = new Point(commandBar8.VLeft + num8, nyoff);
				}
			}
		}
	}

	protected virtual void ResizeBarsLeftRight(ref CommandBar[] cbarray, int nreqdlength, int nyoff)
	{
		if (nreqdlength > 0)
		{
			for (int num = cbarray.Length - 1; num >= 0; num--)
			{
				CommandBar commandBar = cbarray[num];
				if (commandBar.Height > commandBar.nMinLength)
				{
					int num2 = commandBar.Height - commandBar.nMinLength;
					if (nreqdlength <= num2)
					{
						if (commandBar.SetCommandBarSize(commandBar.Width, commandBar.Height - nreqdlength))
						{
							for (int i = num + 1; i < cbarray.Length; i++)
							{
								CommandBar commandBar2 = cbarray[i];
								commandBar2.Location = new Point(nyoff, commandBar2.Location.Y - nreqdlength);
							}
						}
						nreqdlength = 0;
						break;
					}
					nreqdlength -= num2;
					if (commandBar.SetCommandBarSize(commandBar.Width, commandBar.nMinLength))
					{
						for (int j = num + 1; j < cbarray.Length; j++)
						{
							CommandBar commandBar3 = cbarray[j];
							commandBar3.Location = new Point(nyoff, commandBar3.Location.Y - num2);
						}
					}
				}
			}
			return;
		}
		nreqdlength = -nreqdlength;
		for (int k = 0; k < cbarray.Length; k++)
		{
			CommandBar commandBar4 = cbarray[k];
			if (commandBar4.Height >= commandBar4.nMaxLength)
			{
				continue;
			}
			int num3 = commandBar4.nMaxLength - commandBar4.Height;
			if (nreqdlength <= num3)
			{
				if (commandBar4.SetCommandBarSize(commandBar4.Width, commandBar4.Height + nreqdlength) && k + 1 < cbarray.Length)
				{
					CommandBar commandBar5 = cbarray[k + 1];
					if (commandBar5.Top < commandBar4.Bottom + 2)
					{
						int num4 = commandBar4.Bottom + 2 - commandBar5.Top;
						for (int num5 = cbarray.Length - 1; num5 >= k + 1; num5--)
						{
							CommandBar commandBar6 = cbarray[num5];
							commandBar6.Location = new Point(nyoff, commandBar6.Location.Y + num4);
						}
					}
				}
				nreqdlength = 0;
				break;
			}
			nreqdlength -= num3;
			if (!commandBar4.SetCommandBarSize(commandBar4.Width, commandBar4.nMaxLength) || k + 1 >= cbarray.Length)
			{
				continue;
			}
			CommandBar commandBar7 = cbarray[k + 1];
			if (commandBar7.Top < commandBar4.Bottom + 2)
			{
				int num6 = commandBar4.Bottom + 2 - commandBar7.Top;
				for (int num7 = cbarray.Length - 1; num7 >= k + 1; num7--)
				{
					CommandBar commandBar8 = cbarray[num7];
					commandBar8.Location = new Point(nyoff, commandBar8.Location.Y + num6);
				}
			}
		}
	}

	public CommandBar[] GetRowArray(int nrow)
	{
		ArrayList arrayList = new ArrayList();
		foreach (CommandBar control in base.Controls)
		{
			if (!control.Visible || control.nRCIndex != nrow)
			{
				continue;
			}
			int index = arrayList.Count;
			foreach (CommandBar item in arrayList)
			{
				if (item.nRowOffsetInDir > control.nRowOffsetInDir)
				{
					index = arrayList.IndexOf(item);
					break;
				}
			}
			arrayList.Insert(index, control);
		}
		return (CommandBar[])arrayList.ToArray(typeof(CommandBar));
	}

	public int GetRowMaxHeight(int nrow, bool bmin)
	{
		if (nrow >= 0 && nrow < nRCCount)
		{
			CommandBar[] rowArray = GetRowArray(nrow);
			int num = 0;
			CommandBar[] array = rowArray;
			foreach (CommandBar commandBar in array)
			{
				if (bmin)
				{
					if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
					{
						if (commandBar.Height > num)
						{
							num = commandBar.Height;
						}
					}
					else if (commandBar.Width > num)
					{
						num = commandBar.Width;
					}
					if (commandBar.nCommandBarHt > num)
					{
						num = commandBar.nCommandBarHt;
					}
				}
				else if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
				{
					if (commandBar.Height > num)
					{
						num = commandBar.Height;
					}
				}
				else if (commandBar.Width > num)
				{
					num = commandBar.Width;
				}
			}
			return num;
		}
		return CommandBar.nDefaultUnitHt;
	}

	public Point HandleDragOver(CommandBar cbar, Point ptscreen)
	{
		if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
		{
			if (IsRTL)
			{
				ptscreen = PointToClient(ptscreen);
				ptscreen.X = base.ClientRectangle.Width - ptscreen.X;
				ptscreen = PointToScreen(ptscreen);
			}
			return HandleDragOverTopBottom(cbar, ptscreen);
		}
		return HandleDragOverLeftRight(cbar, ptscreen);
	}

	protected Point HandleDragOverTopBottom(CommandBar cbar, Point ptscreen)
	{
		Point point = PointToClient(ptscreen);
		CommandBar[] cbarray = GetRowArray(cbar.nRCIndex);
		_ = IsRTL;
		if (point.Y > cbar.Bottom)
		{
			CommandBar[] cbnewrow = GetRowArray(cbar.nRCIndex + 1);
			if (cbnewrow.Length > 0)
			{
				CommandBar commandBar = cbnewrow[0];
				if (commandBar.bTrailingEdge && commandBar.bFullRow)
				{
					return new Point(-1, -1);
				}
				if (point.Y < commandBar.Top + commandBar.Height / 2)
				{
					return new Point(-1, -1);
				}
			}
			if (cbar.bLeadingEdge && (cbarray.Length > 1 || cbnewrow[0].bFullRow))
			{
				return new Point(-1, -1);
			}
			int nRCIndex = cbar.nRCIndex;
			cbar.nRCIndex++;
			if (cbarray.Length == 1)
			{
				nRCCount--;
				foreach (CommandBar control in base.Controls)
				{
					if (control.Visible && control.nRCIndex >= nRCIndex)
					{
						control.nRCIndex--;
					}
				}
				CalcDockbarSize();
			}
			if (ValidateBarIndex(cbar, bappend: true))
			{
				CalcDockbarSize();
				LayoutDockBar();
			}
			if (!cbar.OccupyFullRow)
			{
				AdjustPreviousRow(cbar, ref cbarray, cbar.VBounds);
				if (cbnewrow.Length > 0 && !cbnewrow[0].OccupyFullRow)
				{
					AdjustNewRow(cbar, ref cbnewrow);
				}
				cbar.nRowOffsetInDir = cbar.VLeft;
				cbar.nRowOffsetDir = cbar.nRowOffsetInDir;
			}
			return new Point(-1, -1);
		}
		if (point.Y < cbar.Top)
		{
			CommandBar[] cbnewrow2 = GetRowArray(cbar.nRCIndex - 1);
			if (cbnewrow2.Length > 0)
			{
				CommandBar commandBar3 = cbnewrow2[0];
				if (commandBar3.bLeadingEdge && commandBar3.bFullRow)
				{
					return new Point(-1, -1);
				}
				if (point.Y > commandBar3.Bottom - commandBar3.Height / 2)
				{
					return new Point(-1, -1);
				}
			}
			if (cbar.bTrailingEdge && (cbarray.Length > 1 || cbnewrow2[0].bFullRow))
			{
				return new Point(-1, -1);
			}
			int nRCIndex2 = cbar.nRCIndex;
			cbar.nRCIndex--;
			if (cbarray.Length == 1)
			{
				nRCCount--;
				foreach (CommandBar control2 in base.Controls)
				{
					if (control2.Visible && control2.nRCIndex >= nRCIndex2)
					{
						control2.nRCIndex--;
					}
				}
				CalcDockbarSize();
			}
			if (ValidateBarIndex(cbar, bappend: false))
			{
				CalcDockbarSize();
				LayoutDockBar();
			}
			if (!cbar.OccupyFullRow)
			{
				AdjustPreviousRow(cbar, ref cbarray, cbar.VBounds);
				if (cbnewrow2.Length > 0 && !cbnewrow2[0].OccupyFullRow)
				{
					AdjustNewRow(cbar, ref cbnewrow2);
				}
				cbar.nRowOffsetInDir = cbar.VLeft;
				cbar.nRowOffsetDir = cbar.nRowOffsetInDir;
			}
			return new Point(-1, -1);
		}
		bool flag = false;
		CommandBar[] array = cbarray;
		foreach (CommandBar commandBar5 in array)
		{
			if (commandBar5.Width < commandBar5.nMaxLength)
			{
				if (commandBar5.bDockModeWrapping)
				{
					return new Point(-1, -1);
				}
				flag = true;
			}
		}
		int num = Array.IndexOf(cbarray, cbar);
		int nreqdlength = cbar.VLeft - point.X;
		if (nreqdlength > 0 && point.X <= cbar.VLeft + cbar.nHeaderOff)
		{
			CommandBar[] cbarray2 = new CommandBar[num];
			Array.Copy(cbarray, 0, cbarray2, 0, cbarray2.Length);
			if (cbarray2.Length > 0)
			{
				CommandBar commandBar6 = cbarray2[cbarray2.Length - 1];
				if (commandBar6.VRight + 2 < point.X)
				{
					Array.Clear(cbarray2, 0, cbarray2.Length);
				}
				else
				{
					if (point.X < commandBar6.nRowOffsetDir + 2)
					{
						if (point.X < base.ClientRectangle.Left)
						{
							cbar.nRowOffsetInDir = base.ClientRectangle.Left;
						}
						else
						{
							cbar.nRowOffsetInDir = point.X;
						}
						cbar.VLeft = cbar.nRowOffsetInDir;
						commandBar6.nRowOffsetInDir = cbar.nRowOffsetInDir + cbar.Width + 2;
						commandBar6.VLeft = commandBar6.nRowOffsetInDir;
						LayoutDockBar();
						return new Point(-1, -1);
					}
					if (flag)
					{
						return new Point(-1, -1);
					}
					RepositionBarsRToLShift(ref cbarray2, cbarray2.Length - 1, ref nreqdlength, cbar.Location.Y);
					if (nreqdlength != 0)
					{
						return new Point(commandBar6.VRight + 2, cbar.Location.Y);
					}
				}
			}
			else if (point.X <= base.ClientRectangle.Left)
			{
				return new Point(base.ClientRectangle.Left, cbar.Location.Y);
			}
			return new Point(point.X, cbar.Location.Y);
		}
		if (nreqdlength < 0 && point.X >= cbar.VLeft)
		{
			CommandBar[] cbarray2 = new CommandBar[cbarray.Length - 1 - num];
			Array.Copy(cbarray, num + 1, cbarray2, 0, cbarray2.Length);
			if (cbarray2.Length > 0)
			{
				CommandBar commandBar7 = cbarray2[0];
				if (commandBar7.VLeft - 2 > point.X + cbar.Width)
				{
					Array.Clear(cbarray2, 0, cbarray2.Length);
				}
				else
				{
					if (point.X > commandBar7.nRowOffsetDir)
					{
						if (point.X + cbar.Width > base.ClientRectangle.Right)
						{
							cbar.nRowOffsetInDir = base.ClientRectangle.Right - cbar.Width;
						}
						else
						{
							cbar.nRowOffsetInDir = point.X;
						}
						cbar.VLeft = cbar.nRowOffsetInDir;
						commandBar7.nRowOffsetInDir = cbar.nRowOffsetInDir - 2 - commandBar7.Width;
						commandBar7.VLeft = commandBar7.nRowOffsetInDir;
						LayoutDockBar();
						return new Point(-1, -1);
					}
					if (flag)
					{
						return new Point(-1, -1);
					}
					RepositionBarsLToRShift(ref cbarray2, 0, ref nreqdlength, cbar.Location.Y);
					if (nreqdlength != 0)
					{
						return new Point(commandBar7.VLeft - 2 - cbar.Width, cbar.Location.Y);
					}
				}
			}
			else if (point.X + cbar.Width > base.ClientRectangle.Right)
			{
				return new Point(base.ClientRectangle.Right - cbar.Width, cbar.Location.Y);
			}
			return new Point(point.X, cbar.Location.Y);
		}
		return new Point(-1, -1);
	}

	protected Point HandleDragOverLeftRight(CommandBar cbar, Point ptscreen)
	{
		Point point = PointToClient(ptscreen);
		CommandBar[] cbarray = GetRowArray(cbar.nRCIndex);
		if (point.X > cbar.Right)
		{
			CommandBar[] cbnewrow = GetRowArray(cbar.nRCIndex + 1);
			if (cbnewrow.Length > 0)
			{
				CommandBar commandBar = cbnewrow[0];
				if (commandBar.bTrailingEdge && commandBar.bFullRow)
				{
					return new Point(-1, -1);
				}
				if (point.X < commandBar.Left + commandBar.Width / 2)
				{
					return new Point(-1, -1);
				}
			}
			if (cbar.bLeadingEdge && (cbarray.Length > 1 || cbnewrow[0].bFullRow))
			{
				return new Point(-1, -1);
			}
			int nRCIndex = cbar.nRCIndex;
			cbar.nRCIndex++;
			if (cbarray.Length == 1)
			{
				nRCCount--;
				foreach (CommandBar control in base.Controls)
				{
					if (control.Visible && control.nRCIndex >= nRCIndex)
					{
						control.nRCIndex--;
					}
				}
				CalcDockbarSize();
			}
			if (ValidateBarIndex(cbar, bappend: true))
			{
				CalcDockbarSize();
				LayoutDockBar();
			}
			if (!cbar.OccupyFullRow)
			{
				AdjustPreviousRow(cbar, ref cbarray, cbar.VBounds);
				if (cbnewrow.Length > 0 && !cbnewrow[0].OccupyFullRow)
				{
					AdjustNewRow(cbar, ref cbnewrow);
				}
				cbar.nRowOffsetInDir = cbar.Location.Y;
				cbar.nRowOffsetDir = cbar.nRowOffsetInDir;
			}
			return new Point(-1, -1);
		}
		if (point.X < cbar.Left)
		{
			CommandBar[] cbnewrow2 = GetRowArray(cbar.nRCIndex - 1);
			if (cbnewrow2.Length > 0)
			{
				CommandBar commandBar3 = cbnewrow2[0];
				if (commandBar3.bLeadingEdge && commandBar3.bFullRow)
				{
					return new Point(-1, -1);
				}
				if (point.X > commandBar3.Right - commandBar3.Width / 2)
				{
					return new Point(-1, -1);
				}
			}
			if (cbar.bTrailingEdge && (cbarray.Length > 1 || cbnewrow2[0].bFullRow))
			{
				return new Point(-1, -1);
			}
			int nRCIndex2 = cbar.nRCIndex;
			cbar.nRCIndex--;
			if (cbarray.Length == 1)
			{
				nRCCount--;
				foreach (CommandBar control2 in base.Controls)
				{
					if (control2.Visible && control2.nRCIndex >= nRCIndex2)
					{
						control2.nRCIndex--;
					}
				}
				CalcDockbarSize();
			}
			if (ValidateBarIndex(cbar, bappend: false))
			{
				CalcDockbarSize();
				LayoutDockBar();
			}
			if (!cbar.OccupyFullRow)
			{
				AdjustPreviousRow(cbar, ref cbarray, cbar.VBounds);
				if (cbnewrow2.Length > 0 && !cbnewrow2[0].OccupyFullRow)
				{
					AdjustNewRow(cbar, ref cbnewrow2);
				}
				cbar.nRowOffsetInDir = cbar.Location.Y;
				cbar.nRowOffsetDir = cbar.nRowOffsetInDir;
			}
			return new Point(-1, -1);
		}
		bool flag = false;
		CommandBar[] array = cbarray;
		foreach (CommandBar commandBar5 in array)
		{
			if (commandBar5.Height < commandBar5.nMaxLength)
			{
				if (commandBar5.bDockModeWrapping)
				{
					return new Point(-1, -1);
				}
				flag = true;
			}
		}
		int num = Array.IndexOf(cbarray, cbar);
		int nreqdlength = cbar.Location.Y - point.Y;
		if (nreqdlength > 0 && point.Y <= cbar.Top + cbar.nHeaderOff)
		{
			CommandBar[] cbarray2 = new CommandBar[num];
			Array.Copy(cbarray, 0, cbarray2, 0, cbarray2.Length);
			if (cbarray2.Length > 0)
			{
				CommandBar commandBar6 = cbarray2[cbarray2.Length - 1];
				if (commandBar6.Bottom + 2 < point.Y)
				{
					Array.Clear(cbarray2, 0, cbarray2.Length);
				}
				else
				{
					if (point.Y < commandBar6.nRowOffsetDir + 2)
					{
						if (point.Y < base.ClientRectangle.Top)
						{
							cbar.nRowOffsetInDir = base.ClientRectangle.Top;
						}
						else
						{
							cbar.nRowOffsetInDir = point.Y;
						}
						cbar.Top = cbar.nRowOffsetInDir;
						commandBar6.nRowOffsetInDir = cbar.nRowOffsetInDir + cbar.Height + 2;
						commandBar6.Top = commandBar6.nRowOffsetInDir;
						LayoutDockBar();
						return new Point(-1, -1);
					}
					if (flag)
					{
						return new Point(-1, -1);
					}
					RepositionBarsBToTShift(ref cbarray2, cbarray2.Length - 1, ref nreqdlength, cbar.Location.X);
					if (nreqdlength != 0)
					{
						return new Point(cbar.Location.X, commandBar6.Bottom + 2);
					}
				}
			}
			else if (point.Y <= base.ClientRectangle.Top)
			{
				return new Point(cbar.Location.X, base.ClientRectangle.Top);
			}
			return new Point(cbar.Location.X, point.Y);
		}
		if (nreqdlength < 0 && point.Y >= cbar.Top)
		{
			CommandBar[] cbarray2 = new CommandBar[cbarray.Length - 1 - num];
			Array.Copy(cbarray, num + 1, cbarray2, 0, cbarray2.Length);
			if (cbarray2.Length > 0)
			{
				CommandBar commandBar7 = cbarray2[0];
				if (commandBar7.Top - 2 > point.Y + cbar.Height)
				{
					Array.Clear(cbarray2, 0, cbarray2.Length);
				}
				else
				{
					if (point.Y > commandBar7.nRowOffsetDir)
					{
						if (point.Y + cbar.Height > base.ClientRectangle.Bottom)
						{
							cbar.nRowOffsetInDir = base.ClientRectangle.Bottom - cbar.Height;
						}
						else
						{
							cbar.nRowOffsetInDir = point.Y;
						}
						cbar.Top = cbar.nRowOffsetInDir;
						commandBar7.nRowOffsetInDir = cbar.nRowOffsetInDir - 2 - commandBar7.Height;
						commandBar7.Top = commandBar7.nRowOffsetInDir;
						LayoutDockBar();
						return new Point(-1, -1);
					}
					if (flag)
					{
						return new Point(-1, -1);
					}
					RepositionBarsTToBShift(ref cbarray2, 0, ref nreqdlength, cbar.Location.X);
					if (nreqdlength != 0)
					{
						return new Point(cbar.Location.X, commandBar7.Top - 2 - cbar.Height);
					}
				}
			}
			else
			{
				int num2 = Math.Max(base.ClientRectangle.Bottom - cbar.Height, 0);
				if (point.Y > num2)
				{
					point.Y = num2;
				}
			}
			return new Point(cbar.Location.X, point.Y);
		}
		return new Point(-1, -1);
	}

	protected bool AdjustNewRow(CommandBar cbar, ref CommandBar[] cbnewrow)
	{
		if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
		{
			int num = ((cbnewrow.Length > 0) ? cbnewrow[0].Height : 0);
			int num2 = ((num > cbar.nCommandBarHt) ? num : cbar.nCommandBarHt);
			cbar.Height = num;
			if (num != num2)
			{
				CommandBar[] rowArray = GetRowArray(cbar.nRCIndex);
				CommandBar[] array = rowArray;
				foreach (CommandBar commandBar in array)
				{
					if (commandBar.Height < num2)
					{
						commandBar.Height = num2;
					}
				}
				CalcDockbarSize();
				LayoutDockBar();
				return true;
			}
		}
		else
		{
			int num3 = ((cbnewrow.Length > 0) ? cbnewrow[0].Width : 0);
			int num4 = ((num3 > cbar.nCommandBarHt) ? num3 : cbar.nCommandBarHt);
			cbar.Width = num3;
			if (num3 != num4)
			{
				CommandBar[] rowArray2 = GetRowArray(cbar.nRCIndex);
				CommandBar[] array2 = rowArray2;
				foreach (CommandBar commandBar2 in array2)
				{
					if (commandBar2.Width < num4)
					{
						commandBar2.Width = num4;
					}
				}
				CalcDockbarSize();
				LayoutDockBar();
				return true;
			}
		}
		return false;
	}

	public void AdjustRowOffsets(CommandBar cbar, ref int ndelta)
	{
		CommandBar[] cbarray = GetRowArray(cbar.nRCIndex);
		AdjustRowOffsets(ref cbarray, Array.IndexOf(cbarray, cbar), cbar.VBounds, ref ndelta);
	}

	protected void AdjustRowOffsets(ref CommandBar[] cbarray, int cbindex, Rectangle rccbar, ref int ndelta)
	{
		if (ndelta > 0)
		{
			CommandBar[] array = new CommandBar[cbarray.Length - 1 - cbindex];
			Array.Copy(cbarray, cbindex + 1, array, 0, array.Length);
			if (array.Length > 0)
			{
				CommandBar commandBar = array[0];
				if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
				{
					if (commandBar.VLeft - 2 - ndelta - 1 <= rccbar.Right && commandBar.VLeft > commandBar.nRowOffsetDir)
					{
						int num = 0;
						if (commandBar.VLeft - ndelta >= commandBar.nRowOffsetDir)
						{
							num = ndelta;
							ndelta = 0;
						}
						else
						{
							num = commandBar.VLeft - commandBar.nRowOffsetDir;
							ndelta -= num;
						}
						foreach (CommandBar commandBar2 in array)
						{
							if (commandBar2.VLeft - num >= commandBar2.nRowOffsetDir)
							{
								commandBar2.VLeft -= num;
							}
							else
							{
								commandBar2.VLeft = commandBar2.nRowOffsetDir;
							}
						}
					}
				}
				else if (commandBar.Top - 2 - ndelta - 1 <= rccbar.Bottom && commandBar.Top > commandBar.nRowOffsetDir)
				{
					int num2 = 0;
					if (commandBar.Top - ndelta >= commandBar.nRowOffsetDir)
					{
						num2 = ndelta;
						ndelta = 0;
					}
					else
					{
						num2 = commandBar.Top - commandBar.nRowOffsetDir;
						ndelta -= num2;
					}
					foreach (CommandBar commandBar3 in array)
					{
						if (commandBar3.Top - num2 >= commandBar3.nRowOffsetDir)
						{
							commandBar3.Top -= num2;
						}
						else
						{
							commandBar3.Top = commandBar3.nRowOffsetDir;
						}
					}
				}
			}
		}
		else
		{
			CommandBar[] array = new CommandBar[cbindex];
			Array.Copy(cbarray, 0, array, 0, array.Length);
			if (array.Length > 0)
			{
				CommandBar commandBar4 = array[array.Length - 1];
				if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
				{
					if (commandBar4.VRight + 2 - ndelta + 1 >= rccbar.Left && commandBar4.nRowOffsetDir > commandBar4.VLeft)
					{
						int num3 = 0;
						if (commandBar4.VLeft - ndelta <= commandBar4.nRowOffsetDir)
						{
							num3 = ndelta;
							ndelta = 0;
						}
						else
						{
							num3 = commandBar4.VLeft - commandBar4.nRowOffsetDir;
							ndelta -= num3;
						}
						for (int num4 = array.Length - 1; num4 >= 0; num4--)
						{
							CommandBar commandBar5 = array[num4];
							if (commandBar5.VLeft - num3 <= commandBar5.nRowOffsetDir)
							{
								commandBar5.VLeft -= num3;
							}
							else
							{
								commandBar5.VLeft = commandBar5.nRowOffsetDir;
							}
						}
					}
				}
				else if (commandBar4.Bottom + 2 - ndelta + 1 >= rccbar.Top && commandBar4.nRowOffsetDir > commandBar4.Top)
				{
					int num5 = 0;
					if (commandBar4.Top - ndelta <= commandBar4.nRowOffsetDir)
					{
						num5 = ndelta;
						ndelta = 0;
					}
					else
					{
						num5 = commandBar4.Top - commandBar4.nRowOffsetDir;
						ndelta -= num5;
					}
					for (int num6 = array.Length - 1; num6 >= 0; num6--)
					{
						CommandBar commandBar6 = array[num6];
						if (commandBar6.Top - num5 <= commandBar6.nRowOffsetDir)
						{
							commandBar6.Top -= num5;
						}
						else
						{
							commandBar6.Top = commandBar6.nRowOffsetDir;
						}
					}
				}
			}
		}
		if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
		{
			foreach (CommandBar control in base.Controls)
			{
				if (control.Visible)
				{
					control.nRowOffsetInDir = control.VLeft;
				}
			}
			return;
		}
		foreach (CommandBar control2 in base.Controls)
		{
			if (control2.Visible)
			{
				control2.nRowOffsetInDir = control2.Location.Y;
			}
		}
	}

	public void AdjustNextBarsInRow(CommandBar cbar)
	{
		CommandBar[] rowArray = GetRowArray(cbar.nRCIndex);
		int length = rowArray.GetLength(0);
		for (int i = Array.IndexOf(rowArray, cbar); i < length; i++)
		{
			if (i >= length - 1)
			{
				continue;
			}
			CommandBar commandBar = rowArray[i + 1];
			if (i >= 0 && i + 1 < length)
			{
				CommandBar commandBar2 = rowArray[i];
				if (Dock == DockStyle.Top || Dock == DockStyle.Bottom)
				{
					commandBar.VLeft = commandBar2.VRight + 2;
					commandBar.nRowOffsetDir = commandBar.VLeft;
				}
				else
				{
					commandBar.Location = new Point(commandBar.Location.X, commandBar2.Bottom + 2);
					commandBar.nRowOffsetDir = commandBar.Location.Y;
				}
				commandBar.nRowOffsetInDir = commandBar.nRowOffsetDir;
			}
		}
	}

	public int ConfirmNewRowHeight(CommandBar cbar, int nnewdim)
	{
		CommandBar[] rowArray = GetRowArray(cbar.nRCIndex);
		int num = nnewdim;
		int num2 = 0;
		int num3 = 0;
		CommandBar[] array = rowArray;
		foreach (CommandBar commandBar in array)
		{
			if (commandBar != cbar)
			{
				num2 = commandBar.nCommandBarHt;
				if (commandBar.DockModeWrapping)
				{
					num3 = ((Dock != DockStyle.Top && Dock != DockStyle.Bottom) ? commandBar.GetDockWrapSize(commandBar.Size).Width : commandBar.GetDockWrapSize(commandBar.Size).Height);
				}
				int num4 = ((num2 > num3) ? num2 : num3);
				if (num4 > num)
				{
					num = num4;
				}
			}
		}
		return num;
	}

	public void AdjustRowHeight(CommandBar cbar, int ndelta)
	{
		cbController.FreezeLayoutInternal = true;
		switch (Dock)
		{
		case DockStyle.Top:
		{
			base.Height += ndelta;
			for (int num = cbar.nRCIndex + 1; num < nRCCount; num++)
			{
				CommandBar[] rowArray4 = GetRowArray(num);
				CommandBar[] array5 = rowArray4;
				foreach (CommandBar commandBar5 in array5)
				{
					commandBar5.Location = new Point(commandBar5.Location.X, commandBar5.Location.Y + ndelta);
				}
			}
			CommandBar[] rowArray2 = GetRowArray(cbar.nRCIndex);
			CommandBar[] array6 = rowArray2;
			foreach (CommandBar commandBar6 in array6)
			{
				if (commandBar6 != cbar)
				{
					commandBar6.Height += ndelta;
				}
			}
			break;
		}
		case DockStyle.Bottom:
		{
			base.Location = new Point(base.Location.X, base.Location.Y - ndelta);
			base.Height += ndelta;
			for (int num4 = cbar.nRCIndex + 1; num4 < nRCCount; num4++)
			{
				CommandBar[] rowArray5 = GetRowArray(num4);
				CommandBar[] array7 = rowArray5;
				foreach (CommandBar commandBar7 in array7)
				{
					commandBar7.Location = new Point(commandBar7.Location.X, commandBar7.Location.Y + ndelta);
				}
			}
			CommandBar[] rowArray2 = GetRowArray(cbar.nRCIndex);
			CommandBar[] array8 = rowArray2;
			foreach (CommandBar commandBar8 in array8)
			{
				if (commandBar8 != cbar)
				{
					commandBar8.Height += ndelta;
				}
			}
			break;
		}
		case DockStyle.Left:
		{
			base.Width += ndelta;
			for (int l = cbar.nRCIndex + 1; l < nRCCount; l++)
			{
				CommandBar[] rowArray3 = GetRowArray(l);
				CommandBar[] array3 = rowArray3;
				foreach (CommandBar commandBar3 in array3)
				{
					commandBar3.Location = new Point(commandBar3.Location.X + ndelta, commandBar3.Location.Y);
				}
			}
			CommandBar[] rowArray2 = GetRowArray(cbar.nRCIndex);
			CommandBar[] array4 = rowArray2;
			foreach (CommandBar commandBar4 in array4)
			{
				if (commandBar4 != cbar)
				{
					commandBar4.Width += ndelta;
				}
			}
			break;
		}
		case DockStyle.Right:
		{
			base.Location = new Point(base.Location.X - ndelta, base.Location.Y);
			base.Width += ndelta;
			for (int i = cbar.nRCIndex + 1; i < nRCCount; i++)
			{
				CommandBar[] rowArray = GetRowArray(i);
				CommandBar[] array = rowArray;
				foreach (CommandBar commandBar in array)
				{
					commandBar.Location = new Point(commandBar.Location.X + ndelta, commandBar.Location.Y);
				}
			}
			CommandBar[] rowArray2 = GetRowArray(cbar.nRCIndex);
			CommandBar[] array2 = rowArray2;
			foreach (CommandBar commandBar2 in array2)
			{
				if (commandBar2 != cbar)
				{
					commandBar2.Location = new Point(commandBar2.Location.X - ndelta, commandBar2.Location.Y);
					commandBar2.Width += ndelta;
				}
			}
			break;
		}
		}
		cbController.FreezeLayoutInternal = false;
	}

	protected override void Dispose(bool disposing)
	{
		m_nSuspendCount++;
		if (tdRebar != null)
		{
			tdRebar.Dispose();
			tdRebar = null;
		}
		if (cbController != null)
		{
			cbController = null;
		}
		base.Dispose(disposing);
		m_nSuspendCount--;
	}

	protected override AccessibleObject CreateAccessibilityInstance()
	{
		return new CommandDockBarAccessibleObject(this);
	}

	protected override void ScaleControl(SizeF factor, BoundsSpecified specified)
	{
		if (cbController != null && cbController is CommandBarControllerExt)
		{
			CommandBarControllerExt commandBarControllerExt = cbController as CommandBarControllerExt;
			if (commandBarControllerExt.Manager != null && commandBarControllerExt.Manager.AutoScale && base.Parent != null)
			{
				commandBarControllerExt.Manager.Font = base.Parent.Font;
				base.ScaleControl(factor, specified);
			}
		}
	}

	private void OnControllerLayoutSuspended(object sender, EventArgs e)
	{
		m_nSuspendCount++;
		if (m_nSuspendCount == 1)
		{
			SuspendLayout();
		}
	}

	private void OnControllerLayoutResumed(object sender, EventArgs e)
	{
		if (base.IsHandleCreated)
		{
			BeginInvoke(new ResumeLayoutAsync(ResumeLayoutInternal));
		}
		else
		{
			ResumeLayoutInternal();
		}
	}

	private void ResumeLayoutInternal()
	{
		if (m_nSuspendCount > 0)
		{
			m_nSuspendCount--;
			if (m_nSuspendCount == 0 && !base.IsDisposed)
			{
				CalcDockbarSize();
				LayoutDockBar();
				LayoutDockBar();
				ResumeLayout();
			}
		}
	}
}
