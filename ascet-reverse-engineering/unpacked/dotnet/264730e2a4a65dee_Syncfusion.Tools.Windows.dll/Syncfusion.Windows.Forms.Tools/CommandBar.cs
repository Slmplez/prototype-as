using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(CommandBarDesigner), typeof(IDesigner))]
[ToolboxItem(false)]
public class CommandBar : Control, IPopupParent, IPopupItem, ICommandBarDesignerInvoke, ICommandBarDesignerMouseHook
{
	[DocumentationExclude]
	protected const int nGprXOff = 2;

	[DocumentationExclude]
	protected const int nGprYOff = 4;

	[DocumentationExclude]
	protected const int nGprCx = 2;

	[DocumentationExclude]
	protected CommandBarController cbController;

	[DocumentationExclude]
	protected internal bool bRedockNeededInternal;

	[DocumentationExclude]
	protected internal bool bRedockNeeded;

	[DocumentationExclude]
	protected internal bool bRecalcNeeded;

	[DocumentationExclude]
	protected bool bFireDockStateChanged;

	[DocumentationExclude]
	protected internal bool bHideGripper;

	[DocumentationExclude]
	protected internal bool bDockModeWrapping;

	[DocumentationExclude]
	protected internal bool bFloatModeWrapping;

	[DocumentationExclude]
	protected internal bool bShowDockModeText = true;

	[DocumentationExclude]
	protected internal bool bHideChevron;

	[DocumentationExclude]
	protected internal bool bHideDropDown;

	[DocumentationExclude]
	protected internal bool bHideCloseButton;

	[DocumentationExclude]
	protected internal bool bFullRow;

	[DocumentationExclude]
	protected internal bool bDisableFloating;

	[DocumentationExclude]
	protected internal bool bDisableDocking;

	[DocumentationExclude]
	protected internal int nMaxLength = 200;

	[DocumentationExclude]
	protected internal int nMinLength = 50;

	[DocumentationExclude]
	protected internal static int nDefaultUnitHt = 26;

	[DocumentationExclude]
	protected internal int nCommandBarHt = 26;

	[DocumentationExclude]
	protected internal int nIntegral = 1;

	[DocumentationExclude]
	protected internal bool bLeadingEdge;

	[DocumentationExclude]
	protected internal bool bTrailingEdge;

	[DocumentationExclude]
	protected internal CommandBarDockBorder allowedBorders = CommandBarDockBorder.Top | CommandBarDockBorder.Bottom | CommandBarDockBorder.Left | CommandBarDockBorder.Right;

	[DocumentationExclude]
	protected static Font ftFloatCaption = null;

	[DocumentationExclude]
	protected internal CommandDockBar cdbParent;

	[DocumentationExclude]
	protected internal CommandBarDockState cbarDockState = CommandBarDockState.Top;

	[DocumentationExclude]
	protected internal int nRowOffsetDir = -1;

	[DocumentationExclude]
	protected internal int nRowOffsetInDir = -1;

	[DocumentationExclude]
	protected internal int nRCIndex = -1;

	[DocumentationExclude]
	protected internal bool bVisible = true;

	[DocumentationExclude]
	protected bool bVisibilitySetFlag;

	[DocumentationExclude]
	protected internal Rectangle rcFloat = Rectangle.Empty;

	[DocumentationExclude]
	protected internal CommandBarDockState cbDockStateT;

	[DocumentationExclude]
	protected internal int nRowOffsetDirT = -1;

	[DocumentationExclude]
	protected internal int nRowOffsetInDirT = -1;

	[DocumentationExclude]
	protected internal int nRCIndexT = -1;

	[DocumentationExclude]
	protected CommandDockBar cdbParentDrag;

	[DocumentationExclude]
	protected int nRowOffsetDrag = -1;

	[DocumentationExclude]
	protected internal int nRCIndexDrag = -1;

	[DocumentationExclude]
	protected internal int nRCCountDrag;

	[DocumentationExclude]
	protected CBButtons cbHilight;

	[DocumentationExclude]
	protected internal static bool bDragging = false;

	[DocumentationExclude]
	protected internal static Point ptDeltaOff = Point.Empty;

	[DocumentationExclude]
	protected static Point ptMMWorkaround = Point.Empty;

	[DocumentationExclude]
	protected static Cursor crDefault = null;

	[DocumentationExclude]
	protected static bool bHideOnMouseUp = false;

	internal bool m_needRefreshTextData = true;

	private Color m_chevronColor = SystemColors.ControlText;

	[DocumentationExclude]
	protected internal bool bBackColorSet;

	[DocumentationExclude]
	protected internal bool bUpdateOffsets;

	[DocumentationExclude]
	protected internal bool bRestrictedSizing = true;

	[DocumentationExclude]
	protected internal RowMarker rMarker;

	[DocumentationExclude]
	protected static int nSysInfoMenuFontHeight = SystemInformation.MenuFont.Height;

	internal CommandBarWeakContainer commandBarWeakContainer;

	private bool m_bIsCustomizing;

	private PopupControlContainer popupContainer;

	private CommandBarRenderer m_renderer;

	private CommandBarFloatingRenderer m_rendererFloating;

	[DocumentationExclude]
	protected PopupMenu pupMenu;

	[Browsable(false)]
	[DocumentationExclude]
	public static int CaptionHeight => nSysInfoMenuFontHeight + 3;

	[Browsable(false)]
	[DocumentationExclude]
	public static int FormMinWidth => CaptionHeight * 2 + 20;

	[DocumentationExclude]
	protected internal virtual Rectangle CaptionRect => new Rectangle(1, 1, base.Width - 2, CaptionHeight);

	[DocumentationExclude]
	protected internal virtual Rectangle GripperRect
	{
		get
		{
			Rectangle result = Rectangle.Empty;
			if (!bHideGripper && cdbParent != null)
			{
				Rectangle clientRectangle = base.ClientRectangle;
				bool isRightToLeft = ((IPopupParent)this).IsRightToLeft;
				result = ((cdbParent.Dock != DockStyle.Top && cdbParent.Dock != DockStyle.Bottom) ? new Rectangle(clientRectangle.Left, isRightToLeft ? (clientRectangle.Bottom - nHeaderOff) : clientRectangle.Top, clientRectangle.Width, nHeaderOff) : new Rectangle(isRightToLeft ? (clientRectangle.Right - nHeaderOff) : clientRectangle.Left, clientRectangle.Top, nHeaderOff, clientRectangle.Height));
			}
			return result;
		}
	}

	[DocumentationExclude]
	protected internal virtual Rectangle DropDownRect => (cbarDockState == CommandBarDockState.None || (bHideDropDown && !IsChevronVisible)) ? Rectangle.Empty : GetDropDownRect();

	[DocumentationExclude]
	protected internal virtual Rectangle CloseButtonRect
	{
		get
		{
			if (bHideCloseButton || cbarDockState != CommandBarDockState.Float)
			{
				return Rectangle.Empty;
			}
			int captionHeight = CaptionHeight;
			Rectangle captionRect = CaptionRect;
			int num = (IsRTL ? captionRect.Left : (captionRect.Right - captionHeight));
			return new Rectangle(num, captionRect.Top, captionHeight, captionHeight);
		}
	}

	[DocumentationExclude]
	protected internal virtual Rectangle DragStartRect
	{
		get
		{
			if (cbarDockState == CommandBarDockState.None)
			{
				return Rectangle.Empty;
			}
			if (cbarDockState == CommandBarDockState.Float)
			{
				return CaptionRect;
			}
			return GripperRect;
		}
	}

	[DocumentationExclude]
	protected internal virtual int nHeaderOff
	{
		get
		{
			if (!bHideGripper)
			{
				return 8;
			}
			return 0;
		}
	}

	[DocumentationExclude]
	protected internal virtual int nTrailBtnOff
	{
		get
		{
			if (cbarDockState == CommandBarDockState.None)
			{
				return 0;
			}
			int num = 0;
			if (AllowQuickCustomizing || (HasExternalPopupMenu && (!HideDropDownButton || Floating)))
			{
				num = 11;
			}
			else if (cdbParent != null && !bHideChevron && cbarDockState != CommandBarDockState.Float)
			{
				if (cdbParent.Dock == DockStyle.Top || cdbParent.Dock == DockStyle.Bottom)
				{
					if (base.Width < nMaxLength)
					{
						num = 11;
					}
				}
				else if (base.Height < nMaxLength)
				{
					num = 11;
				}
			}
			if (num > 0 && ShouldDrawThemed() && cbController != null && cbController.Style != VisualStyle.Office2007 && cbController.Style != VisualStyle.Office2007Outlook)
			{
				return 13;
			}
			return num;
		}
	}

	protected internal virtual bool HasExternalPopupMenu => null != PopupMenu;

	[DocumentationExclude]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public CommandBarController Controller
	{
		get
		{
			return cbController;
		}
		set
		{
			cbController = value;
			if (cbController == null)
			{
				return;
			}
			if ((ShouldDrawThemed() || cbController.Style == VisualStyle.Office2003 || cbController.Style == VisualStyle.VS2005 || cbController.Style == VisualStyle.Office2007 || cbController.Style == VisualStyle.Office2007Outlook) && !bBackColorSet)
			{
				if (Floating)
				{
					base.BackColor = base.Parent.BackColor;
				}
				else
				{
					base.BackColor = Color.Transparent;
				}
			}
			cbController.StyleChanged += cbController_StyleChanged;
			cbController.ThemesEnabledChanged += cbController_ThemesEnabledChanged;
			if (pupMenu != null && pupMenu.ParentBarItem != null)
			{
				pupMenu.ParentBarItem.Style = cbController.Style;
			}
		}
	}

	[Category("Layout")]
	[Browsable(false)]
	[Localizable(true)]
	[Description("Contextual position information for the CommandBar.")]
	public CommandBarDockState DockState
	{
		get
		{
			return cbarDockState;
		}
		set
		{
			if ((!bDisableDocking || value == CommandBarDockState.Float) && (!bDisableFloating || value != CommandBarDockState.Float))
			{
				if (base.Parent != null && cbarDockState != value)
				{
					cbDockStateT = value;
					bRedockNeeded = true;
					RedockIfNeeded();
					RecalcIfNeeded();
				}
				else
				{
					cbarDockState = value;
				}
			}
		}
	}

	[DefaultValue(CommandBarDockBorder.Top | CommandBarDockBorder.Bottom | CommandBarDockBorder.Left | CommandBarDockBorder.Right)]
	[Category("Behavior")]
	[Description("The edges of the Form to which the CommandBar may be docked.")]
	[Localizable(true)]
	public CommandBarDockBorder AllowedDockBorders
	{
		get
		{
			return allowedBorders;
		}
		set
		{
			if (allowedBorders != value)
			{
				allowedBorders = value;
			}
		}
	}

	[Category("Layout")]
	[Localizable(true)]
	[Description("The positional offset for the CommandBar within a row.")]
	[Browsable(false)]
	public virtual int RowOffset
	{
		get
		{
			return nRowOffsetDir;
		}
		set
		{
			if (base.Parent != null && nRowOffsetDir != value)
			{
				nRowOffsetDirT = value;
				bRecalcNeeded = true;
				Invalidate();
			}
			nRowOffsetDir = value;
			nRowOffsetInDir = value;
		}
	}

	[Localizable(true)]
	[Category("Layout")]
	[Description("The zero-based index of the row in which the CommandBar is docked.")]
	[Browsable(false)]
	public int RowIndex
	{
		get
		{
			return nRCIndex;
		}
		set
		{
			if (base.Parent != null && nRCIndex != value)
			{
				nRCIndexT = value;
				if (nRowOffsetDirT == -1)
				{
					RowOffset = 0;
				}
				if (cdbParent != null)
				{
					nRCIndex = value;
					cdbParent.ReplaceBarLocation(this);
				}
				bRedockNeeded = true;
				cbController.RecalcLayout(this);
				Invalidate();
			}
			else
			{
				nRCIndex = value;
			}
		}
	}

	[Localizable(true)]
	[Description("The minimum linear dimension for the CommandBar.")]
	[Category("Layout")]
	public virtual int MinLength
	{
		get
		{
			return nMinLength;
		}
		set
		{
			if (base.Parent != null && nMinLength != value)
			{
				bRecalcNeeded = true;
				Invalidate();
			}
			nMinLength = value;
		}
	}

	[Localizable(true)]
	[Category("Layout")]
	[Description("The maximum/ideal linear dimension for the CommandBar.")]
	public virtual int MaxLength
	{
		get
		{
			return nMaxLength;
		}
		set
		{
			if (nMaxLength == value)
			{
				return;
			}
			int num = nMaxLength;
			nMaxLength = value;
			if (base.Parent == null)
			{
				return;
			}
			if (Floating)
			{
				SizeF sizeF = CalcTextLength(CommandBarDockState.Float, bmaxlength: true);
				int num2 = 0;
				if (sizeF.Width > 0f)
				{
					num2 = (int)sizeF.Width + 2;
				}
				Size size = new Size(nMaxLength - (nHeaderOff + 2 + num2 + 2 + nTrailBtnOff) + 2, nCommandBarHt);
				int formMinWidth = FormMinWidth;
				size.Width = ((size.Width < formMinWidth) ? formMinWidth : size.Width);
				rcFloat.Size = new Size(size.Width + 4, size.Height + CaptionHeight + 4);
			}
			else
			{
				if (cdbParent.Dock == DockStyle.Top || cdbParent.Dock == DockStyle.Bottom)
				{
					if (base.Width != nMaxLength)
					{
						if ((base.Width < nMaxLength && (nMaxLength < num || bUpdateOffsets)) || (base.Width < num && (nMaxLength > num || bUpdateOffsets)))
						{
							if (bUpdateOffsets)
							{
								bRedockNeeded = true;
								bRecalcNeeded = true;
								RedockIfNeeded();
								RecalcIfNeeded();
							}
							return;
						}
						base.Width += nMaxLength - num;
					}
				}
				else if (base.Height != nMaxLength)
				{
					if ((base.Height < nMaxLength && (nMaxLength < num || bUpdateOffsets)) || (base.Height < num && (nMaxLength > num || bUpdateOffsets)))
					{
						if (bUpdateOffsets)
						{
							bRedockNeeded = true;
							bRecalcNeeded = true;
							RedockIfNeeded();
							RecalcIfNeeded();
						}
						return;
					}
					base.Height += nMaxLength - num;
				}
				if (bUpdateOffsets)
				{
					UpdateRowsOffsets(this, nMaxLength - num);
					bUpdateOffsets = false;
				}
			}
			bRecalcNeeded = true;
			RecalcIfNeeded();
			Invalidate();
		}
	}

	[Description("The ideal lateral dimension for the CommandBar.")]
	[Localizable(true)]
	[Category("Layout")]
	public virtual int MinHeight
	{
		get
		{
			return nCommandBarHt;
		}
		set
		{
			if (base.Parent != null && nCommandBarHt != value)
			{
				nCommandBarHt = value;
				if (Floating)
				{
					bRecalcNeeded = true;
				}
				else
				{
					bRedockNeeded = true;
					if (cbController != null && cdbParent != null)
					{
						int num = nCommandBarHt;
						ArrayList arrayList = new ArrayList();
						foreach (CommandBar commandBar in cbController.CommandBars)
						{
							if (!(commandBar is CommandBarExt))
							{
								continue;
							}
							CommandBarExt commandBarExt = commandBar as CommandBarExt;
							if (commandBarExt.cdbParent != null && commandBarExt.cdbParent == cdbParent && commandBarExt.cbarDockState != CommandBarDockState.Float && commandBarExt.nRCIndex == nRCIndex && commandBarExt.BarControl != null)
							{
								SizeF preferredSize = new SizeF(2.1474836E+09f, 2.1474836E+09f);
								commandBarExt.BarControl.GetPreferredSize(ref preferredSize);
								if (num < (int)preferredSize.Height + 2)
								{
									num = (int)preferredSize.Height + 2;
								}
								if (commandBarExt != this && (((cbarDockState == CommandBarDockState.Top || cbarDockState == CommandBarDockState.Bottom) && commandBarExt.Height != num) || ((cbarDockState == CommandBarDockState.Left || cbarDockState == CommandBarDockState.Right) && commandBarExt.Width != num)))
								{
									arrayList.Add(commandBarExt);
								}
							}
						}
						int num2 = 0;
						if (cbarDockState == CommandBarDockState.Top || cbarDockState == CommandBarDockState.Bottom)
						{
							num2 = base.Height;
							base.Height = num;
							foreach (CommandBarExt item in arrayList)
							{
								item.Height = num;
							}
						}
						else if (cbarDockState == CommandBarDockState.Left || cbarDockState == CommandBarDockState.Right)
						{
							num2 = base.Width;
							base.Width = num;
							foreach (CommandBarExt item2 in arrayList)
							{
								item2.Width = num;
							}
						}
						if (bDragging)
						{
							float num3 = (float)ptDeltaOff.X / (float)num2;
							ptDeltaOff = new Point((int)(num3 * (float)num), ptDeltaOff.Y);
						}
					}
				}
				Invalidate();
			}
			else
			{
				nCommandBarHt = value;
			}
		}
	}

	[Description("Incremental step by which the CommandBar's lateral dimension increases when wrapped.")]
	[Localizable(true)]
	[DefaultValue(1)]
	[Category("Layout")]
	public virtual int IntegralHeight
	{
		get
		{
			return nIntegral;
		}
		set
		{
			if (base.Parent != null && nIntegral != value)
			{
				bRecalcNeeded = true;
				Invalidate();
			}
			nIntegral = value;
		}
	}

	internal bool CommandBarBaseVisible
	{
		get
		{
			return base.Visible;
		}
		set
		{
			base.Visible = value;
		}
	}

	[DefaultValue(true)]
	[Category("Behavior")]
	[Localizable(true)]
	[DocumentationExclude]
	public new virtual bool Visible
	{
		get
		{
			return bVisible;
		}
		set
		{
			if (bVisible == value)
			{
				return;
			}
			bVisibilitySetFlag = true;
			if (cbController != null)
			{
				if (value)
				{
					if ((Floating && m_rendererFloating == null) || m_renderer == null)
					{
						SetRenderer();
					}
					if (base.Parent != null && base.Parent is CommandBarForm)
					{
						bVisible = true;
						UtilFuncs.SetVisibleNoActivate(base.Parent, visible: true);
						base.Visible = true;
					}
					else if (cdbParent != null)
					{
						cdbParent.Controls.Remove(this);
						bVisible = true;
						base.Visible = true;
						if (nRCIndex == -1)
						{
							cdbParent.InitializeIndexRowOffsets(this);
						}
						cdbParent.bSuspendIndexChanges = true;
						DockToParent();
						cdbParent.bSuspendIndexChanges = false;
						cbController.RecalcLayout(this);
						nRowOffsetInDir = nRowOffsetDir;
					}
					else
					{
						bVisible = true;
					}
				}
				else if (base.Parent != null && base.Parent is CommandBarForm)
				{
					bVisible = false;
					base.Visible = false;
					UtilFuncs.SetVisibleNoActivate(base.Parent, visible: false);
				}
				else if (cdbParent != null)
				{
					nRCIndexDrag = ((cdbParent.GetCommandBarIndex(this) != -1) ? cdbParent.GetCommandBarIndex(this) : nRCIndex);
					nRCCountDrag = cdbParent.RowsCount;
					if (nRCIndexDrag != -1)
					{
						cdbParent.bSuspendIndexChanges = true;
					}
					cdbParent.RemoveCommandBar(this);
					cdbParent.bSuspendIndexChanges = false;
					bVisible = false;
					base.Visible = false;
					cdbParent.Controls.Add(this);
					cbController.RecalcLayout(this);
				}
				else
				{
					bVisible = false;
				}
			}
			else
			{
				bVisible = value;
			}
		}
	}

	[DefaultValue(true)]
	[Category("Behavior")]
	[Description("Draws the CommandBar with/without the text in the docked position.")]
	public virtual bool ShowDockModeText
	{
		get
		{
			return bShowDockModeText;
		}
		set
		{
			if (base.Parent != null && bShowDockModeText != value)
			{
				bRecalcNeeded = true;
				Invalidate();
			}
			bShowDockModeText = value;
		}
	}

	[DefaultValue(false)]
	[Description("Draws the CommandBar with/without the drag gripper.")]
	[Category("Behavior")]
	public bool HideGripper
	{
		get
		{
			return bHideGripper;
		}
		set
		{
			if (bHideGripper != value)
			{
				bHideGripper = value;
				bRecalcNeeded = true;
				if (base.Parent != null)
				{
					RecalcIfNeeded();
					SetChildControlBounds();
					Invalidate();
				}
			}
		}
	}

	[DefaultValue(false)]
	[Category("Behavior")]
	[Description("Draws the CommandBar with/without the chevron.")]
	public virtual bool HideChevron
	{
		get
		{
			return bHideChevron;
		}
		set
		{
			if (bHideChevron != value)
			{
				bHideChevron = value;
				bRecalcNeeded = true;
				if (base.Parent != null)
				{
					RecalcIfNeeded();
					SetChildControlBounds();
					Invalidate();
				}
			}
		}
	}

	[Description("Color for chevron.")]
	[DefaultValue(typeof(SystemColors), "ControlText")]
	[Category("Appearance")]
	public Color ChevronColor
	{
		get
		{
			return m_chevronColor;
		}
		set
		{
			if (value != m_chevronColor)
			{
				m_chevronColor = value;
			}
		}
	}

	[Description("Draws the CommandBar with/without the dropdown button.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	public bool HideDropDownButton
	{
		get
		{
			return bHideDropDown;
		}
		set
		{
			if (bHideDropDown != value)
			{
				bHideDropDown = value;
				bRecalcNeeded = true;
				if (base.Parent != null)
				{
					RecalcIfNeeded();
					SetChildControlBounds();
					Invalidate();
				}
			}
		}
	}

	[Category("Behavior")]
	[Description("Determines whether the CommandBar will have a close button when floating.")]
	[DefaultValue(false)]
	public bool HideCloseButton
	{
		get
		{
			return bHideCloseButton;
		}
		set
		{
			if (base.Parent != null && bHideCloseButton != value)
			{
				bRecalcNeeded = true;
				Invalidate();
			}
			bHideCloseButton = value;
		}
	}

	[DefaultValue(false)]
	[Category("Behavior")]
	[Description("Wraps the CommandBar when the bounds are less than the maximum length.")]
	public virtual bool DockModeWrapping
	{
		get
		{
			return bDockModeWrapping;
		}
		set
		{
			if (base.Parent != null && bDockModeWrapping != value)
			{
				bRecalcNeeded = true;
				Invalidate();
			}
			bDockModeWrapping = value;
			if (value)
			{
				bHideChevron = true;
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(false)]
	[Description("Wraps a floating CommandBar when it is resized to less than it's maximum length.")]
	public virtual bool FloatModeWrapping
	{
		get
		{
			return bFloatModeWrapping;
		}
		set
		{
			bFloatModeWrapping = value;
		}
	}

	[DefaultValue(false)]
	[Category("Behavior")]
	[Description("The CommandBar takes up the full row.")]
	public virtual bool OccupyFullRow
	{
		get
		{
			return bFullRow;
		}
		set
		{
			if (bFullRow == value)
			{
				return;
			}
			bFullRow = value;
			if (base.Parent == null)
			{
				return;
			}
			if (value && cbarDockState != CommandBarDockState.Float)
			{
				CommandBar[] rowArray = cdbParent.GetRowArray(nRCIndex);
				CommandBar[] array = rowArray;
				foreach (CommandBar commandBar in array)
				{
					commandBar.nRowOffsetDir = 0;
					commandBar.nRowOffsetInDir = 0;
				}
			}
			bRedockNeeded = true;
			RedockIfNeeded();
			Invalidate();
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Floating
	{
		get
		{
			if (base.Parent != null)
			{
				return base.Parent is CommandBarForm;
			}
			return false;
		}
	}

	[Description("The float bounds for the CommandBar.")]
	[Category("Layout")]
	[Localizable(true)]
	[Browsable(false)]
	public Rectangle FloatBounds
	{
		get
		{
			return rcFloat;
		}
		set
		{
			if (base.Parent != null && rcFloat != value)
			{
				bRecalcNeeded = true;
				Invalidate();
			}
			rcFloat = value;
		}
	}

	[DefaultValue(false)]
	[Category("Behavior")]
	[Description("Makes the CommandBar non-floatable.")]
	public bool DisableFloating
	{
		get
		{
			return bDisableFloating;
		}
		set
		{
			if (bDisableFloating != value && !bDisableDocking)
			{
				bDisableFloating = value;
				if (value && cbarDockState == CommandBarDockState.Float)
				{
					DockState = CommandBarDockState.Top;
				}
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(false)]
	[Description("Makes the CommandBar non-dockable.")]
	public bool DisableDocking
	{
		get
		{
			return bDisableDocking;
		}
		set
		{
			if (bDisableDocking == value)
			{
				return;
			}
			CommandDockBar dockBar = cbController.GetDockBar(cbarDockState);
			if (dockBar != null)
			{
				dockBar.bSuspendIndexChanges = true;
			}
			if (!bDisableFloating)
			{
				bDisableDocking = value;
				if (value)
				{
					DockState = CommandBarDockState.Float;
				}
				if (dockBar != null)
				{
					dockBar.bSuspendIndexChanges = false;
				}
			}
		}
	}

	[DefaultValue(false)]
	[Category("Behavior")]
	[Description("Permanently docks the CommandBar to the leading edge of the dockborder.")]
	public bool AlwaysLeadingEdge
	{
		get
		{
			return bLeadingEdge;
		}
		set
		{
			if (bLeadingEdge == value)
			{
				return;
			}
			bLeadingEdge = value;
			if (value)
			{
				bTrailingEdge = false;
				DisableFloating = true;
				if (base.Parent != null)
				{
					bRedockNeeded = true;
					Invalidate();
				}
			}
		}
	}

	[DefaultValue(false)]
	[Category("Behavior")]
	[Description("Permanently docks the CommandBar to the trailing edge of the dockborder.")]
	public bool AlwaysTrailingEdge
	{
		get
		{
			return bTrailingEdge;
		}
		set
		{
			bTrailingEdge = value;
			if (value)
			{
				bLeadingEdge = false;
				DisableFloating = true;
				if (base.Parent != null)
				{
					bRedockNeeded = true;
					Invalidate();
				}
			}
		}
	}

	[DocumentationExclude]
	public override Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			if (base.BackColor != value)
			{
				base.BackColor = value;
				bBackColorSet = true;
			}
		}
	}

	[Localizable(true)]
	[Description("The font used to display text in the control.")]
	[Category("Appearance")]
	public new Font Font
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

	[Description("The mouse cursor used for the CommandBar.")]
	[DocumentationExclude]
	[Localizable(true)]
	[Category("Appearance")]
	public override Cursor Cursor
	{
		get
		{
			return base.Cursor;
		}
		set
		{
			base.Cursor = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	[Browsable(false)]
	public override bool AllowDrop
	{
		get
		{
			return base.AllowDrop;
		}
		set
		{
			base.AllowDrop = value;
		}
	}

	[Localizable(true)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	public new bool Enabled
	{
		get
		{
			return base.Enabled;
		}
		set
		{
			base.Enabled = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[DocumentationExclude]
	public new Point Location
	{
		get
		{
			return base.Location;
		}
		set
		{
			base.Location = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	public new Size Size
	{
		get
		{
			return base.Size;
		}
		set
		{
			base.Size = value;
		}
	}

	[DocumentationExclude]
	public static bool IsDragging => bDragging;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsChevronVisible
	{
		get
		{
			if (!bHideChevron && !bDockModeWrapping && cbarDockState != CommandBarDockState.Float && cdbParent != null)
			{
				int num = 0;
				num = ((cdbParent.Dock != DockStyle.Top && cdbParent.Dock != DockStyle.Bottom) ? base.Height : base.Width);
				return num < nMaxLength;
			}
			return false;
		}
	}

	protected internal int VLeft
	{
		get
		{
			int num = 0;
			if (IsRTL && cdbParent != null && (DockStyle.Top == cdbParent.Dock || DockStyle.Bottom == cdbParent.Dock))
			{
				return cdbParent.ClientRectangle.Width - base.Right;
			}
			return base.Left;
		}
		set
		{
			int left = value;
			if (IsRTL && cdbParent != null && (DockStyle.Top == cdbParent.Dock || DockStyle.Bottom == cdbParent.Dock))
			{
				left = cdbParent.ClientRectangle.Width - value - base.Width;
			}
			base.Left = left;
		}
	}

	protected internal int VRight
	{
		get
		{
			int num = 0;
			if (IsRTL && cdbParent != null && (DockStyle.Top == cdbParent.Dock || DockStyle.Bottom == cdbParent.Dock))
			{
				return cdbParent.ClientRectangle.Width - base.Left;
			}
			return base.Right;
		}
	}

	protected internal Point VLocation
	{
		get
		{
			return new Point(VLeft, base.Top);
		}
		set
		{
			VLeft = value.X;
			base.Top = value.Y;
		}
	}

	protected internal Rectangle VBounds
	{
		get
		{
			if (IsRTL && cdbParent != null && (DockStyle.Top == cdbParent.Dock || DockStyle.Bottom == cdbParent.Dock))
			{
				return new Rectangle(VLocation, Size);
			}
			return base.Bounds;
		}
	}

	[DocumentationExclude]
	internal bool IsRTL => ((IPopupParent)this).IsRightToLeft;

	[DocumentationExclude]
	protected internal bool IsCustomizing => m_bIsCustomizing;

	[Category("DropDown")]
	[DefaultValue(null)]
	[Description("The PopupControlContainer displayed when the dropdown button is clicked.")]
	public PopupControlContainer PopupContainer
	{
		get
		{
			return popupContainer;
		}
		set
		{
			if (popupContainer != value)
			{
				if (IsShowingDropDown())
				{
					HideDropDown();
				}
				popupContainer = value;
			}
		}
	}

	[DefaultValue(null)]
	[Description("The PopupMenu displayed when the dropdown button is clicked.")]
	[Category("DropDown")]
	public PopupMenu PopupMenu
	{
		get
		{
			return pupMenu;
		}
		set
		{
			pupMenu = value;
			if (pupMenu != null && pupMenu.ParentBarItem != null && Controller != null)
			{
				pupMenu.ParentBarItem.Style = Controller.Style;
			}
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	internal CBButtons CmdBarHilight => cbHilight;

	protected internal virtual bool AllowQuickCustomizing => false;

	internal Office2007Colors Office2007ColorTable => (cbController == null) ? Office2007Colors.Default : cbController.Office2007ColorTable;

	protected internal bool DesignProcess
	{
		get
		{
			bool result = false;
			if (GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
			{
				IDesigner designer = designerHost.GetDesigner(this);
				if (designer != null)
				{
					result = true;
				}
			}
			return result;
		}
	}

	bool ICommandBarDesignerInvoke.CommandBarBaseVisibility
	{
		get
		{
			return CommandBarBaseVisible;
		}
		set
		{
			CommandBarBaseVisible = value;
		}
	}

	bool IPopupParent.IsRightToLeft => RightToLeft.Yes == RightToLeft;

	[Description("Occurs when the CommandBar is being wrapped.")]
	[Category("CommandBar Events")]
	public event CommandBarWrappingEventHandler CommandBarWrapping;

	[Description("Occurs when the dropdown button on the CommandBar is clicked.")]
	[Category("CommandBar Events")]
	public event EventHandler CommandBarDropDownClicked;

	[Description("Occurs just before the CommandBar's dock/float state changes.")]
	[Category("CommandBar Events")]
	public event CommandBarStateChangingEventHandler CommandBarStateChanging;

	[Description("Occurs after the CommandBar's dock/float state changes.")]
	[Category("CommandBar Events")]
	public event EventHandler CommandBarStateChanged;

	[Description("Occurs when the user presses the close button.")]
	[Category("CommandBar Events")]
	public event EventHandler CommandBarUserClosed;

	private void UpdateRowsOffsets(CommandBar cbar, int offset)
	{
		CommandBar[] rowArray = cdbParent.GetRowArray(cbar.nRCIndex);
		if (!cbar.Visible || rowArray.Length == 1)
		{
			return;
		}
		bool flag = true;
		for (int i = 0; i < rowArray.Length; i++)
		{
			int num = 2;
			CommandBar commandBar = rowArray[i];
			if (BarManager.GetManagerFromForm(cbar.Controller.HostForm) is MainFrameBarManager { NeedSaveCustomData: false })
			{
				flag = false;
			}
			if (flag && commandBar != cbar)
			{
				if (commandBar.nRowOffsetInDir > cbar.VRight + num && (cdbParent.Dock == DockStyle.Top || cdbParent.Dock == DockStyle.Bottom))
				{
					commandBar.nRowOffsetInDir += offset;
				}
				else if (commandBar.nRowOffsetInDir > cbar.VBounds.Bottom + num && (cdbParent.Dock == DockStyle.Left || cdbParent.Dock == DockStyle.Right))
				{
					commandBar.nRowOffsetInDir += offset;
				}
			}
		}
	}

	[DocumentationExclude]
	protected bool ShouldSerializeFloatBounds()
	{
		return Floating;
	}

	[DocumentationExclude]
	protected virtual bool ShouldDrawThemed()
	{
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && cbController != null)
		{
			return cbController.ThemesEnabled;
		}
		return false;
	}

	[DocumentationExclude]
	protected internal virtual Rectangle GetDropDownRect()
	{
		Rectangle result = Rectangle.Empty;
		bool isRTL = IsRTL;
		if (cbarDockState == CommandBarDockState.Float)
		{
			int captionHeight = CaptionHeight;
			int num = 0;
			Rectangle captionRect = CaptionRect;
			if (bHideCloseButton)
			{
				num = (isRTL ? 1 : (captionRect.Right - captionHeight - 1));
				result = new Rectangle(num, captionRect.Top, captionHeight, captionHeight);
			}
			else
			{
				num = (isRTL ? (captionHeight + 1) : (captionRect.Right - captionHeight * 2 - 1));
				result = new Rectangle(num, captionRect.Top, captionHeight, captionHeight);
			}
			result = new Rectangle(result.Left, result.Top, result.Width - 1, result.Height - 1);
		}
		else
		{
			Rectangle clientRectangle = base.ClientRectangle;
			if (ShouldDrawThemed() && cbController.Style != VisualStyle.Office2007 && cbController.Style != VisualStyle.Office2007Outlook)
			{
				result = ((cdbParent.Dock != DockStyle.Top && cdbParent.Dock != DockStyle.Bottom) ? new Rectangle(clientRectangle.Left + 1, isRTL ? 2 : (clientRectangle.Bottom - 14 - 2), clientRectangle.Width - 2, 14) : new Rectangle(isRTL ? 2 : (clientRectangle.Right - 14 - 2), clientRectangle.Top + 1, 14, clientRectangle.Height - 2));
				result.Inflate(0, -1);
			}
			else if (cbController != null && (cbController.Style == VisualStyle.Office2003 || cbController.Style == VisualStyle.VS2005 || cbController.Style == VisualStyle.Office2007 || cbController.Style == VisualStyle.Office2007Outlook))
			{
				int num2 = nTrailBtnOff;
				result = ((cdbParent.Dock != DockStyle.Top && cdbParent.Dock != DockStyle.Bottom) ? new Rectangle(clientRectangle.Left, (!isRTL) ? (clientRectangle.Bottom - num2) : 0, clientRectangle.Width, num2) : new Rectangle((!isRTL) ? (clientRectangle.Right - num2) : 0, clientRectangle.Top, num2, clientRectangle.Height));
			}
			else
			{
				result = ((cdbParent.Dock != DockStyle.Top && cdbParent.Dock != DockStyle.Bottom) ? new Rectangle(clientRectangle.Left + 1, (!isRTL) ? (clientRectangle.Bottom - 12 - 2) : 0, clientRectangle.Width - 2, 12) : new Rectangle((!isRTL) ? (clientRectangle.Right - 10 - 2) : 0, clientRectangle.Top + 1, 10, clientRectangle.Height - 2));
				result.Inflate(0, -1);
			}
		}
		return result;
	}

	public CBButtonState GetDropDownState()
	{
		CBButtonState result = CBButtonState.Normal;
		if (IsShowingDropDown() || cbHilight == (CBButtons.DropDown | CBButtons.Pressed))
		{
			result = CBButtonState.Pressed;
		}
		else if (cbHilight == CBButtons.DropDown)
		{
			result = CBButtonState.Hot;
		}
		return result;
	}

	public CBButtonState GetCloseButtonState()
	{
		CBButtonState result = CBButtonState.Normal;
		if (cbHilight == (CBButtons.Close | CBButtons.Pressed))
		{
			result = CBButtonState.Pressed;
		}
		else if (cbHilight == CBButtons.Close)
		{
			result = CBButtonState.Hot;
		}
		return result;
	}

	protected internal virtual Rectangle GetTextRectangle()
	{
		Rectangle result = Rectangle.Empty;
		int num = 0;
		bool isRTL = IsRTL;
		if (!bHideChevron || !bHideDropDown)
		{
			num = nTrailBtnOff;
		}
		result = ((cdbParent.Dock != DockStyle.Top && cdbParent.Dock != DockStyle.Bottom) ? new Rectangle(0, (!isRTL) ? (nHeaderOff + 2) : 0, base.Width, base.Height - (nHeaderOff + 2) - num) : new Rectangle(nHeaderOff + 2, 0, base.Width - (nHeaderOff + 2) - num, base.Height));
		return result;
	}

	protected internal Rectangle GetFloatingTextRectangle()
	{
		bool isRTL = IsRTL;
		int captionHeight = CaptionHeight;
		Rectangle captionRect = CaptionRect;
		return isRTL ? new Rectangle(captionHeight * 2 + 2, captionRect.Top, captionRect.Width - 2 - captionHeight * 2, captionRect.Height) : new Rectangle(captionRect.Left + 1, captionRect.Top, captionRect.Width - 2 - captionHeight * 2, captionRect.Height);
	}

	protected internal Font GetFloatinCaptionFont()
	{
		return ftFloatCaption;
	}

	protected internal bool IsShowChevron()
	{
		bool result = false;
		int num = 0;
		if (cdbParent != null)
		{
			num = ((cdbParent.Dock != DockStyle.Top && cdbParent.Dock != DockStyle.Bottom) ? base.Height : base.Width);
		}
		if (!bDockModeWrapping && !bHideChevron && num < nMaxLength)
		{
			result = true;
		}
		return result;
	}

	protected internal bool IsShowText()
	{
		bool result = false;
		if (Text != string.Empty && bShowDockModeText)
		{
			result = true;
		}
		return result;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeRowOffset()
	{
		return !Floating;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeRowIndex()
	{
		return !Floating;
	}

	[DocumentationExclude]
	public override void ResetBackColor()
	{
		base.ResetBackColor();
		bBackColorSet = false;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeBackColor()
	{
		return bBackColorSet;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeFont()
	{
		return Font != SystemInformation.MenuFont;
	}

	public override void ResetFont()
	{
		Font = SystemInformation.MenuFont;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeCursor()
	{
		if (Cursor != Cursors.Default)
		{
			return Cursor != Cursors.SizeAll;
		}
		return false;
	}

	[DocumentationExclude]
	public override void ResetCursor()
	{
		Cursor = Cursors.Default;
	}

	[DocumentationExclude]
	protected internal Rectangle CalcChildControlBounds(Size szbar)
	{
		return CalcChildControlBounds(szbar, DockState);
	}

	public virtual int CalcCommandBarMaxLength(int nctrlwidth)
	{
		SizeF sizeF = SizeF.Empty;
		if (ShowDockModeText)
		{
			Graphics graphics = CreateGraphics();
			sizeF = graphics.MeasureString(Text, Font);
			graphics.Dispose();
		}
		int num = 0;
		if (sizeF.Width > 0f)
		{
			num = (int)sizeF.Width + 2;
		}
		return nHeaderOff + 2 + num + nctrlwidth + 2 + nTrailBtnOff;
	}

	public Rectangle CalcChildControlBounds(Size szbar, CommandBarDockState cdb)
	{
		Rectangle childBounds = Rectangle.Empty;
		if (cdb == CommandBarDockState.Float)
		{
			Rectangle rectangle = new Rectangle(1, 1, szbar.Width - 2, CaptionHeight);
			childBounds = new Rectangle(rectangle.Left, rectangle.Bottom + 1, rectangle.Width, szbar.Height - rectangle.Height - 2);
		}
		else
		{
			bool isRTL = IsRTL;
			SizeF sizeF = CalcTextLength(cdb, bmaxlength: false);
			int num = 0;
			if (sizeF.Width > 0f)
			{
				num = (int)sizeF.Width + 2;
			}
			if (cdb == CommandBarDockState.Top || cdb == CommandBarDockState.Bottom)
			{
				Point point = new Point(nHeaderOff + 2 + num, 1);
				childBounds = new Rectangle(point.X, (!isRTL) ? point.Y : 0, szbar.Width - point.X - 2 - nTrailBtnOff, szbar.Height - 2);
			}
			else
			{
				Point point2 = new Point(1, nHeaderOff + 2 + num);
				childBounds = new Rectangle(point2.X, (!isRTL) ? point2.Y : 0, szbar.Width - 2, szbar.Height - point2.Y - 2 - nTrailBtnOff);
			}
		}
		AdjustChildControlBounds(ref childBounds);
		return childBounds;
	}

	[DocumentationExclude]
	protected internal void ResetTempDefaults()
	{
		cbDockStateT = CommandBarDockState.None;
		nRowOffsetDirT = -1;
		nRowOffsetInDirT = -1;
		nRCIndexT = -1;
	}

	private Form GetParentForm()
	{
		for (Control control = base.Parent; control != null; control = control.Parent)
		{
			if (control is Form)
			{
				return control as Form;
			}
		}
		return null;
	}

	[DocumentationExclude]
	protected internal virtual void RedockIfNeeded()
	{
		if (!bRedockNeeded)
		{
			return;
		}
		Form parentForm = GetParentForm();
		parentForm?.SuspendLayout();
		bRedockNeeded = false;
		if ((cbarDockState == CommandBarDockState.Float && (cbDockStateT == CommandBarDockState.Float || cbDockStateT == CommandBarDockState.None)) || (cbarDockState != CommandBarDockState.Float && cbDockStateT == CommandBarDockState.Float))
		{
			if (cbarDockState != CommandBarDockState.Float)
			{
				FireCommandBarStateChanging(new CommandBarStateChangingEventArgs(CommandBarDockState.Float));
				if (rcFloat.IsEmpty)
				{
					EnterFloatMode(Location);
				}
				else
				{
					EnterFloatMode(rcFloat.Location);
				}
				FireCommandBarStateChanged(EventArgs.Empty);
				cdbParent.LayoutDockBar();
			}
			else
			{
				cbController.RecalcLayout(this);
			}
		}
		else
		{
			FireCommandBarStateChanging(new CommandBarStateChangingEventArgs(cbDockStateT));
			if (cbarDockState != CommandBarDockState.Float)
			{
				cdbParent.SetCurrentRowMarker(this);
				cdbParent.RemoveCommandBar(this);
				bool flag = true;
				if (nRCIndexT != -1)
				{
					nRCIndex = nRCIndexT;
					flag = false;
				}
				if (cbDockStateT != CommandBarDockState.None)
				{
					cbarDockState = cbDockStateT;
					cdbParent = cbController.GetDockBar(cbarDockState);
					if (flag)
					{
						flag = false;
					}
				}
				if (nRowOffsetDirT != -1)
				{
					nRowOffsetDir = nRowOffsetDirT;
					nRowOffsetInDir = nRowOffsetDir;
					if (flag)
					{
						flag = false;
					}
				}
				ArrayList arrayList = new ArrayList();
				foreach (CommandBar control in cdbParent.Controls)
				{
					if (control.Visible)
					{
						arrayList.Add(control);
					}
				}
				foreach (CommandBar item in arrayList)
				{
					if ((item.cbDockStateT == CommandBarDockState.None || item.cbDockStateT == cbarDockState) && item.nRCIndexT >= 0 && item.nRCIndexT < nRCIndex)
					{
						item.RedockIfNeeded();
					}
				}
				cdbParent.AddCommandBar(this, bcreatenewrow: false);
				nRowOffsetInDir = nRowOffsetDir;
			}
			else
			{
				CommandBarForm commandBarForm = base.Parent as CommandBarForm;
				rcFloat = commandBarForm.Bounds;
				if (nRCIndexT != -1)
				{
					nRCIndex = nRCIndexT;
				}
				if (cbDockStateT != CommandBarDockState.None)
				{
					cbarDockState = cbDockStateT;
					cdbParent = cbController.GetDockBar(cbarDockState);
				}
				if (nRowOffsetDirT != -1)
				{
					nRowOffsetDir = nRowOffsetDirT;
					nRowOffsetInDir = nRowOffsetDir;
				}
				cdbParent.AddCommandBar(this, bcreatenewrow: false);
				commandBarForm.Visible = false;
				commandBarForm.Close();
			}
			FireCommandBarStateChanged(EventArgs.Empty);
		}
		ResetTempDefaults();
		parentForm?.ResumeLayout(performLayout: true);
	}

	[DocumentationExclude]
	protected internal virtual void RecalcIfNeeded()
	{
		try
		{
			if (!bRecalcNeeded)
			{
				return;
			}
			bRecalcNeeded = false;
			if (nRowOffsetDirT != -1)
			{
				nRowOffsetDir = nRowOffsetDirT;
				nRowOffsetInDir = nRowOffsetDir;
				nRowOffsetDirT = -1;
			}
			if (cbController != null)
			{
				cbController.RecalcLayout(this);
				if (bFireDockStateChanged)
				{
					bFireDockStateChanged = false;
					OnCommandBarStateChanged(EventArgs.Empty);
				}
			}
		}
		catch (Exception)
		{
		}
	}

	[DocumentationExclude]
	protected bool ShouldCreateNewRow()
	{
		if (nRCIndex == -1)
		{
			nRCIndex = cdbParent.nRCCount;
			return true;
		}
		bool result = true;
		if (rMarker != null && rMarker.DockBar == cdbParent)
		{
			int num = 0;
			int num2 = cdbParent.RowMarkers.IndexOf(rMarker);
			for (int i = 0; i < cdbParent.nRCCount; i++)
			{
				CommandBar[] rowArray = cdbParent.GetRowArray(i);
				if (rowArray.GetLength(0) > 0)
				{
					CommandBar commandBar = rowArray[0];
					int num3 = cdbParent.RowMarkers.IndexOf(commandBar.rMarker);
					if (num3 < num2)
					{
						num = commandBar.nRCIndex + 1;
					}
					else if (num3 == num2)
					{
						num = commandBar.nRCIndex;
						result = false;
						break;
					}
				}
			}
			nRCIndex = num;
		}
		return result;
	}

	[DocumentationExclude]
	protected void AdjustRowOffsetsInParentDockBar()
	{
		if (cdbParent == null)
		{
			return;
		}
		CommandBarDockState dockBorder = cdbParent.GetDockBorder();
		if (dockBorder == CommandBarDockState.Top || dockBorder == CommandBarDockState.Bottom)
		{
			foreach (CommandBar control in cdbParent.Controls)
			{
				if (control.Visible)
				{
					control.nRowOffsetInDir = control.VLeft;
					control.nRowOffsetDir = control.nRowOffsetInDir;
				}
			}
			return;
		}
		foreach (CommandBar control2 in cdbParent.Controls)
		{
			if (control2.Visible)
			{
				control2.nRowOffsetInDir = control2.Location.Y;
				control2.nRowOffsetDir = control2.nRowOffsetInDir;
			}
		}
	}

	[DocumentationExclude]
	protected internal virtual Size GetDockWrapSize(Size szbounds)
	{
		if (this.CommandBarWrapping == null)
		{
			if (cdbParent.Dock == DockStyle.Left || cdbParent.Dock == DockStyle.Right)
			{
				szbounds.Height = ((szbounds.Height > nMaxLength) ? nMaxLength : szbounds.Height);
				szbounds.Height = ((szbounds.Height < nMinLength) ? nMinLength : szbounds.Height);
				float num = (float)nMaxLength / (float)szbounds.Height;
				if (num <= 1f)
				{
					if (!bFullRow)
					{
						return new Size(nCommandBarHt, nMaxLength);
					}
					return new Size(nCommandBarHt, base.Parent.Height);
				}
				return new Size(nCommandBarHt + nIntegral * (int)Math.Floor(num), szbounds.Height);
			}
			szbounds.Width = ((szbounds.Width > nMaxLength) ? nMaxLength : szbounds.Width);
			szbounds.Width = ((szbounds.Width < nMinLength) ? nMinLength : szbounds.Width);
			float num2 = (float)nMaxLength / (float)szbounds.Width;
			if (num2 <= 1f)
			{
				if (!bFullRow)
				{
					return new Size(nMaxLength, nCommandBarHt);
				}
				return new Size(base.Parent.Width, nCommandBarHt);
			}
			return new Size(szbounds.Width, nCommandBarHt + nIntegral * (int)Math.Floor(num2));
		}
		Size size = CalcChildControlBounds(szbounds).Size;
		CommandBarResizeType commandBarResizeType = CommandBarResizeType.None;
		commandBarResizeType = ((cdbParent.Dock != DockStyle.Top && cdbParent.Dock != DockStyle.Bottom) ? CommandBarResizeType.Bottom : CommandBarResizeType.Right);
		CommandBarWrappingEventArgs e = new CommandBarWrappingEventArgs(size, commandBarResizeType);
		OnCommandBarWrapping(e);
		return GetAdjustedSize(size, e.ClientSize);
	}

	[DocumentationExclude]
	protected internal virtual Size GetFloatWrapSize(Size szbounds, CommandBarResizeType rtsize)
	{
		int captionHeight = CaptionHeight;
		if (szbounds.Width <= 0 || szbounds.Height <= 0)
		{
			return new Size(base.Width, base.Height - captionHeight);
		}
		if (this.CommandBarWrapping == null)
		{
			szbounds.Height -= captionHeight;
			SizeF sizeF = CalcTextLength(CommandBarDockState.Float, bmaxlength: true);
			int num = 0;
			if (sizeF.Width > 0f)
			{
				num = (int)sizeF.Width + 2;
			}
			int num2 = nHeaderOff + 2 + num + 2 + nTrailBtnOff;
			int num3 = nMaxLength - num2 + 2;
			int num4 = nMinLength - num2 + 2;
			int formMinWidth = FormMinWidth;
			num4 = ((num4 < formMinWidth) ? formMinWidth : num4);
			num3 = ((num3 < formMinWidth) ? formMinWidth : num3);
			if (rtsize == CommandBarResizeType.Top || rtsize == CommandBarResizeType.Bottom)
			{
				double num5 = 0.0;
				int num6 = nCommandBarHt + nIntegral * (int)Math.Floor((double)num3 / (double)num4);
				int num7 = 0;
				if (szbounds.Height <= nCommandBarHt)
				{
					num7 = num3;
					num5 = 0.0;
				}
				else if (szbounds.Height >= num6)
				{
					num7 = num4;
					num5 = num3 / num4;
				}
				else
				{
					num5 = (float)(szbounds.Height - nCommandBarHt) / (float)nIntegral;
					num7 = num3 / (int)Math.Ceiling(num5);
					if (Math.Ceiling(num5) == Math.Floor(num5))
					{
						num5 -= 1.0;
					}
				}
				if (num7 == num3)
				{
					num5 = 0.0;
				}
				return new Size(num7, nCommandBarHt + nIntegral * (int)Math.Floor(num5));
			}
			float num8 = (float)num3 / (float)szbounds.Width;
			int num9 = num3 / (int)Math.Ceiling(num8);
			if (Math.Ceiling(num8) == Math.Floor(num8))
			{
				num8 -= 1f;
			}
			if (num9 > num3)
			{
				num9 = num3;
				num8 = 0f;
			}
			if (num9 < num4)
			{
				num9 = num4;
				num8 = num3 / num4;
			}
			if (num9 == num3)
			{
				num8 = 0f;
			}
			return new Size(num9, nCommandBarHt + nIntegral * (int)Math.Floor(num8));
		}
		Size size = CalcChildControlBounds(szbounds).Size;
		CommandBarWrappingEventArgs e = new CommandBarWrappingEventArgs(size, rtsize);
		OnCommandBarWrapping(e);
		return GetAdjustedSize(size, e.ClientSize);
	}

	[DocumentationExclude]
	protected internal bool SetCommandBarSize(int nwidth, int nheight)
	{
		DockStyle dock = cdbParent.Dock;
		bool flag = false;
		if (bDockModeWrapping)
		{
			Size dockWrapSize = GetDockWrapSize(new Size(nwidth, nheight));
			if (dock == DockStyle.Top || dock == DockStyle.Bottom)
			{
				if (dockWrapSize.Height != nheight)
				{
					int num = cdbParent.ConfirmNewRowHeight(this, dockWrapSize.Height);
					if (num != nheight)
					{
						cdbParent.AdjustRowHeight(this, num - nheight);
						nheight = num;
					}
				}
				if (nwidth != dockWrapSize.Width)
				{
					flag = true;
				}
				nwidth = dockWrapSize.Width;
			}
			else
			{
				if (dockWrapSize.Width != nwidth)
				{
					int num2 = cdbParent.ConfirmNewRowHeight(this, dockWrapSize.Width);
					if (num2 != nwidth)
					{
						cdbParent.AdjustRowHeight(this, num2 - nwidth);
						nwidth = num2;
					}
				}
				if (nheight != dockWrapSize.Height)
				{
					flag = true;
				}
				nheight = dockWrapSize.Height;
			}
		}
		if (base.Width != nwidth || base.Height != nheight)
		{
			base.Width = nwidth;
			base.Height = nheight;
			if (flag)
			{
				nRowOffsetDir = VLeft;
				nRowOffsetInDir = nRowOffsetDir;
				cdbParent.AdjustNextBarsInRow(this);
			}
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	protected Size GetAdjustedSize(Size szmaxctrl, Size szproposedctrl)
	{
		CommandBarDockState dockState = DockState;
		if (dockState == CommandBarDockState.Top || dockState == CommandBarDockState.Bottom || dockState == CommandBarDockState.Float)
		{
			SizeF sizeF = CalcTextLength(dockState, bmaxlength: true);
			int num = 0;
			if (sizeF.Width > 0f)
			{
				num = (int)sizeF.Width + 2;
			}
			int num2 = nHeaderOff + 2 + num + 2 + nTrailBtnOff;
			int num3 = 2;
			Size size = new Size(szmaxctrl.Width + num2, szmaxctrl.Height + num3);
			Size result = new Size(szproposedctrl.Width + num2, szproposedctrl.Height + num3);
			double num4 = (double)(result.Height - nCommandBarHt) / (double)nIntegral;
			if (num4 <= 0.0)
			{
				result.Height = nCommandBarHt;
			}
			else if (Math.Floor(num4) != Math.Ceiling(num4))
			{
				result.Height = nCommandBarHt + nIntegral * (int)Math.Ceiling(num4);
			}
			if (OccupyFullRow && dockState != CommandBarDockState.Float)
			{
				result.Width = base.Parent.Width;
			}
			else
			{
				if (dockState != CommandBarDockState.Float)
				{
					result.Width = ((result.Width > size.Width) ? size.Width : result.Width);
				}
				result.Width = ((result.Width > nMaxLength) ? nMaxLength : result.Width);
				result.Width = ((result.Width < nMinLength) ? nMinLength : result.Width);
			}
			if (dockState == CommandBarDockState.Float)
			{
				result.Width = result.Width - num2 + 2;
			}
			return result;
		}
		SizeF sizeF2 = CalcTextLength(CommandBarDockState.Left, bmaxlength: true);
		int num5 = 0;
		if (sizeF2.Width > 0f)
		{
			num5 = (int)sizeF2.Width + 2;
		}
		int num6 = 2;
		int num7 = nHeaderOff + 2 + num5 + 2 + nTrailBtnOff;
		Size size2 = new Size(szmaxctrl.Width + num6, szmaxctrl.Height + num7);
		Size result2 = new Size(szproposedctrl.Width + num6, szproposedctrl.Height + num7);
		double num8 = (double)(result2.Width - nCommandBarHt) / (double)nIntegral;
		if (num8 <= 0.0)
		{
			result2.Width = nCommandBarHt;
		}
		else if (Math.Floor(num8) != Math.Ceiling(num8))
		{
			result2.Width = nCommandBarHt + nIntegral * (int)Math.Ceiling(num8);
		}
		if (OccupyFullRow && dockState != CommandBarDockState.Float)
		{
			result2.Height = base.Parent.Height;
		}
		else
		{
			result2.Height = ((result2.Height > size2.Height) ? size2.Height : result2.Height);
			result2.Height = ((result2.Height > nMaxLength) ? nMaxLength : result2.Height);
			result2.Height = ((result2.Height < nMinLength) ? nMinLength : result2.Height);
		}
		return result2;
	}

	[DocumentationExclude]
	protected SizeF CalcTextLength(CommandBarDockState cdb, bool bmaxlength)
	{
		SizeF result = Size.Empty;
		if (Text != string.Empty && bShowDockModeText)
		{
			StringFormat stringFormat = new StringFormat();
			stringFormat.Alignment = StringAlignment.Near;
			stringFormat.LineAlignment = StringAlignment.Center;
			stringFormat.FormatFlags = StringFormatFlags.NoWrap;
			Graphics graphics = CreateGraphics();
			int captionHeight = CaptionHeight;
			int num = nTrailBtnOff;
			if (!bmaxlength)
			{
				switch (cdb)
				{
				case CommandBarDockState.Top:
				case CommandBarDockState.Bottom:
					result = graphics.MeasureString(Text, Font, base.Width - (nHeaderOff + 2) - (num + 1), stringFormat);
					break;
				case CommandBarDockState.Left:
				case CommandBarDockState.Right:
					result = graphics.MeasureString(Text, Font, base.Height - (nHeaderOff + 2) - (num + 1), stringFormat);
					break;
				default:
					result = graphics.MeasureString(Text, Font, CaptionRect.Width - 2 - captionHeight * 2, stringFormat);
					break;
				}
			}
			else
			{
				int num2 = nMaxLength - (nHeaderOff + 2 + 2 + num);
				switch (cdb)
				{
				case CommandBarDockState.Top:
				case CommandBarDockState.Bottom:
				case CommandBarDockState.Float:
					result = graphics.MeasureString(Text, Font, num2, stringFormat);
					break;
				case CommandBarDockState.Left:
				case CommandBarDockState.Right:
					result = graphics.MeasureString(Text, Font, num2, stringFormat);
					break;
				}
			}
			graphics.Dispose();
		}
		return result;
	}

	[DocumentationExclude]
	protected virtual void SetCommandBarBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		CommandBarDockState dockState = DockState;
		if (cbController != null && dockState != CommandBarDockState.None)
		{
			if (dockState != CommandBarDockState.Float)
			{
				Rectangle clientRectangle = base.ClientRectangle;
				Rectangle rc = Rectangle.Empty;
				SizeF sizeF = CalcTextLength(dockState, bmaxlength: true);
				Rectangle empty = Rectangle.Empty;
				bool flag = false;
				int num = nTrailBtnOff;
				if (dockState == CommandBarDockState.Top || dockState == CommandBarDockState.Bottom)
				{
					if (bShowDockModeText && (float)clientRectangle.Width <= sizeF.Width + (float)nHeaderOff + 2f + (float)num)
					{
						rc = new Rectangle(nHeaderOff + 2, clientRectangle.Top, clientRectangle.Width - (nHeaderOff + 2 + num), clientRectangle.Height);
					}
					empty = new Rectangle(clientRectangle.Right - num, clientRectangle.Top, num, clientRectangle.Height);
					if (!ShouldDrawThemed() && cbController.Style == VisualStyle.Office2003)
					{
						empty.Inflate(3, 1);
					}
					if (width < nMinLength)
					{
						width = nMinLength;
					}
					if (height != base.Height)
					{
						flag = true;
					}
				}
				else
				{
					if (bShowDockModeText && (float)clientRectangle.Height <= sizeF.Width + (float)nHeaderOff + 2f + (float)num)
					{
						rc = new Rectangle(clientRectangle.Left, nHeaderOff + 2, clientRectangle.Width, clientRectangle.Height - (nHeaderOff + 2 + num));
					}
					empty = new Rectangle(clientRectangle.Left, clientRectangle.Bottom - num, clientRectangle.Width, num);
					if (!ShouldDrawThemed() && cbController.Style == VisualStyle.Office2003)
					{
						empty.Inflate(1, 3);
					}
					if (height < nMinLength)
					{
						height = nMinLength;
					}
					if (width != base.Width)
					{
						flag = true;
					}
				}
				if (!flag)
				{
					if (rc.Width > 0 || rc.Height > 0)
					{
						Invalidate(rc, invalidateChildren: false);
					}
					if (!bHideChevron || !bHideDropDown)
					{
						Invalidate(empty, invalidateChildren: false);
					}
					base.SetBoundsCore(x, y, width, height, specified);
					rc = Rectangle.Empty;
					if (dockState == CommandBarDockState.Top || dockState == CommandBarDockState.Bottom)
					{
						if (bShowDockModeText && (float)width <= sizeF.Width + (float)nHeaderOff + 2f + (float)num)
						{
							rc = new Rectangle(nHeaderOff + 2, clientRectangle.Top, width - (nHeaderOff + 2 + num), height);
						}
						empty = new Rectangle(width - num, clientRectangle.Top, num, height);
						if (!ShouldDrawThemed() && cbController.Style == VisualStyle.Office2003)
						{
							empty.Inflate(3, 1);
						}
					}
					else
					{
						if (bShowDockModeText && (float)height <= sizeF.Width + (float)nHeaderOff + 2f + (float)num)
						{
							rc = new Rectangle(clientRectangle.Left, nHeaderOff + 2, width, height - (nHeaderOff + 2 + num));
						}
						empty = new Rectangle(height - num, clientRectangle.Left, width, num);
						if (!ShouldDrawThemed() && cbController.Style == VisualStyle.Office2003)
						{
							empty.Inflate(1, 3);
						}
					}
					if (rc.Width > 0 || rc.Height > 0)
					{
						Invalidate(rc, invalidateChildren: false);
					}
					if (!bHideChevron || !bHideDropDown)
					{
						Invalidate(empty, invalidateChildren: false);
					}
				}
				else
				{
					base.SetBoundsCore(x, y, width, height, specified);
					Invalidate(invalidateChildren: false);
				}
			}
			else
			{
				base.SetBoundsCore(x, y, width, height, specified);
			}
			if (base.Controls.Count > 0)
			{
				SetChildControlBounds();
			}
		}
		else
		{
			base.SetBoundsCore(x, y, width, height, specified);
		}
	}

	[DocumentationExclude]
	protected virtual void SetChildControlBounds()
	{
		if (base.Controls.Count <= 0)
		{
			return;
		}
		CommandBarDockState dockState = DockState;
		if (dockState == CommandBarDockState.None)
		{
			return;
		}
		bool isRTL = IsRTL;
		Control control = base.Controls[0];
		if (dockState != CommandBarDockState.Float)
		{
			SizeF sizeF = CalcTextLength(dockState, bmaxlength: false);
			int num = 0;
			if (sizeF.Width > 0f)
			{
				num = (int)sizeF.Width + 2;
			}
			Point empty = Point.Empty;
			Size empty2 = Size.Empty;
			Rectangle empty3 = Rectangle.Empty;
			if (dockState == CommandBarDockState.Top || dockState == CommandBarDockState.Bottom)
			{
				empty = new Point(nHeaderOff + 2 + num, 1);
				empty2 = new Size(base.Width - empty.X - 2 - nTrailBtnOff, base.Height - 2);
				if (isRTL)
				{
					empty.X = nTrailBtnOff + 2;
				}
				empty3 = new Rectangle(empty, empty2);
				AdjustChildControlBounds(ref empty3);
			}
			else
			{
				empty = new Point(1, nHeaderOff + 2 + num);
				empty2 = new Size(base.Width - 2, base.Height - empty.Y - 2 - nTrailBtnOff);
				if (isRTL)
				{
					empty.Y = nTrailBtnOff + 2;
				}
				empty3 = new Rectangle(empty, empty2);
				AdjustChildControlBounds(ref empty3);
			}
			control.Location = empty3.Location;
			control.Size = empty3.Size;
		}
		else
		{
			int captionHeight = CaptionHeight;
			Point location = new Point(1, 1 + captionHeight);
			Size size = new Size(base.Width - 2, base.Height - captionHeight - 2);
			Rectangle childBounds = new Rectangle(location, size);
			AdjustChildControlBounds(ref childBounds);
			control.Location = childBounds.Location;
			control.Size = childBounds.Size;
		}
	}

	[DocumentationExclude]
	protected virtual void AdjustChildControlBounds(ref Rectangle childBounds)
	{
	}

	private Point CorrectBarLocation(Size fornsize, Point ptscr)
	{
		Point result = ptscr;
		Rectangle virtualScreen = SystemInformation.VirtualScreen;
		if (result.X > virtualScreen.Right - 10)
		{
			if (result.X > virtualScreen.Right)
			{
				result.X = virtualScreen.Right - Size.Width;
			}
			else
			{
				result.X = virtualScreen.Right - 10;
			}
		}
		if (result.Y > virtualScreen.Bottom - 10)
		{
			if (result.Y > virtualScreen.Bottom)
			{
				result.Y = virtualScreen.Bottom - Size.Height;
			}
			else
			{
				result.Y = virtualScreen.Bottom - 10;
			}
		}
		return result;
	}

	[DocumentationExclude]
	protected internal virtual void EnterFloatMode(Point ptscreen)
	{
		float num = 0f;
		if (ptDeltaOff != Point.Empty)
		{
			num = (float)ptDeltaOff.X / (float)base.Width;
		}
		if (cdbParent != null)
		{
			cdbParent.RemoveCommandBar(this);
			if (cdbParent.Dock == DockStyle.Left || cdbParent.Dock == DockStyle.Right)
			{
				ChangeCommandBarOrientation();
			}
			else
			{
				cbController.RecalcBorderLayout(CommandBarDockState.Left);
				cbController.RecalcBorderLayout(CommandBarDockState.Right);
			}
		}
		cbarDockState = CommandBarDockState.Float;
		CommandBarForm commandBarForm = null;
		if (base.Parent == null)
		{
			commandBarForm = CreateFloatingForm();
			commandBarForm.Name = "CommandBarForm" + base.Name;
		}
		else
		{
			commandBarForm = base.Parent as CommandBarForm;
		}
		Color backColor = cbController.BackColor;
		if (bBackColorSet && BackColor != Color.Transparent)
		{
			backColor = BackColor;
		}
		commandBarForm.BackColor = backColor;
		commandBarForm.Size = new Size(0, 0);
		commandBarForm.Owner = cbController.HostForm;
		Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowPos(commandBarForm.Handle, (IntPtr)(-2), 0, 0, 0, 0, 83);
		if (cbController.bLoadVisibility)
		{
			commandBarForm.Visible = true;
		}
		commandBarForm.Controls.Add(this);
		Size size = CalculateFloatingSize();
		if (num != 0f)
		{
			ptDeltaOff = new Point((int)(num * (float)size.Width), ptDeltaOff.Y);
			commandBarForm.Location = new Point(ptscreen.X - ptDeltaOff.X, ptscreen.Y);
		}
		else
		{
			commandBarForm.Location = CorrectBarLocation(size, ptscreen);
		}
		commandBarForm.Size = size;
		rcFloat = commandBarForm.Bounds;
		if (cbController.HostForm != null && cbController.ShouldHostFormGetFocus())
		{
			cbController.HostForm.Focus();
		}
	}

	protected virtual void ChangeCommandBarOrientation()
	{
		Size = new Size(base.Height, base.Width);
	}

	protected internal virtual Size CalculateFloatingSize()
	{
		Size empty = Size.Empty;
		empty = ((!bFloatModeWrapping) ? new Size(nMaxLength - (nHeaderOff + 2 + 2 + nTrailBtnOff) + 2, nCommandBarHt) : ((rcFloat.Width != 0 && rcFloat.Height != 0) ? GetFloatWrapSize(new Size(rcFloat.Width - 4, rcFloat.Height - 4), CommandBarResizeType.Right) : GetFloatWrapSize(new Size(nMaxLength - (nHeaderOff + 2 + 2 + nTrailBtnOff) + 2, nCommandBarHt), CommandBarResizeType.Right)));
		Size result = new Size(empty.Width + 4, empty.Height + 4 + CaptionHeight);
		result.Width = Math.Max(result.Width, FormMinWidth);
		return result;
	}

	[DocumentationExclude]
	protected virtual CommandBarForm CreateFloatingForm()
	{
		return new CommandBarForm(cbController);
	}

	protected override AccessibleObject CreateAccessibilityInstance()
	{
		return new CommandBarAccessibleObject(this);
	}

	[DocumentationExclude]
	public virtual Control GetPopupParentControl()
	{
		return this;
	}

	[DocumentationExclude]
	public virtual bool IsRelatedControl(Control control, bool askPopupParent)
	{
		return control == this;
	}

	[DocumentationExclude]
	protected virtual PopupRelativeAlignment GetFirstAlignPreference()
	{
		bool isRTL = IsRTL;
		switch (DockState)
		{
		default:
			_ = 32;
			goto case CommandBarDockState.Top;
		case CommandBarDockState.Top:
		case (CommandBarDockState)3:
			if (!isRTL)
			{
				return PopupRelativeAlignment.BottomLeft;
			}
			return PopupRelativeAlignment.BottomRight;
		case CommandBarDockState.Left:
			if (!isRTL)
			{
				return PopupRelativeAlignment.RightBottom;
			}
			return PopupRelativeAlignment.LeftBottom;
		case CommandBarDockState.Bottom:
			if (!isRTL)
			{
				return PopupRelativeAlignment.TopRight;
			}
			return PopupRelativeAlignment.TopLeft;
		case CommandBarDockState.Right:
			if (!isRTL)
			{
				return PopupRelativeAlignment.LeftBottom;
			}
			return PopupRelativeAlignment.RightBottom;
		}
	}

	[DocumentationExclude]
	protected virtual bool IsShowingDropDown()
	{
		bool flag = false;
		if (popupContainer != null)
		{
			flag |= popupContainer.IsShowing();
		}
		else if (pupMenu != null)
		{
			flag |= pupMenu.IsShowing();
		}
		return flag;
	}

	[DocumentationExclude]
	protected virtual bool ShowDropDown()
	{
		if (popupContainer != null)
		{
			popupContainer.PopupParent = this;
			popupContainer.ParentControl = this;
			popupContainer.RightToLeft = RightToLeft;
			popupContainer.ShowPopup(Point.Empty);
			return true;
		}
		if (pupMenu != null)
		{
			m_bIsCustomizing = true;
			pupMenu.ParentBarItem.PopupClosed -= OnPopupClosed;
			pupMenu.ParentBarItem.PopupClosed += OnPopupClosed;
			pupMenu.ShowChildrenUI(Point.Empty, this);
		}
		return false;
	}

	[DocumentationExclude]
	protected virtual void HideDropDown()
	{
		if (popupContainer != null && popupContainer.IsShowing())
		{
			popupContainer.HidePopup(PopupCloseType.Deactivated);
		}
		if (pupMenu != null && pupMenu.IsShowing() && pupMenu.ShouldHidePopupOnDeactivate())
		{
			pupMenu.Hide();
		}
	}

	private void UpdateColorScheme()
	{
		MenuColors.UpdateMenuColors();
		Office2003Colors.UpdateMenuColors();
		VS2005Colors.UpdateMenuColors();
		Office2007Theme theme = ((cbController != null) ? cbController.Office2007Theme : Office2007Theme.Blue);
		Office2007OutlookColors.UpdateMenuColors(theme);
	}

	protected virtual void SetRenderer()
	{
		VisualStyle visualStyle = ((cbController != null) ? cbController.Style : VisualStyle.Default);
		CommandBarDockState commandBarDockState = cbarDockState;
		if (commandBarDockState == CommandBarDockState.Float)
		{
			if (m_rendererFloating != null)
			{
				m_rendererFloating.Dispose();
			}
		}
		else if (m_renderer != null)
		{
			m_renderer.Dispose();
		}
		if (ShouldDrawThemed() && visualStyle != VisualStyle.Office2007 && visualStyle != VisualStyle.Office2007Outlook)
		{
			if (commandBarDockState == CommandBarDockState.Float)
			{
				m_rendererFloating = new CommandBarFloatingRendereThemed(this);
			}
			else
			{
				m_renderer = new CommandBarRendererThemed(this);
			}
			return;
		}
		switch (visualStyle)
		{
		case VisualStyle.VS2005:
			if (commandBarDockState == CommandBarDockState.Float)
			{
				m_rendererFloating = new CommandBarFloatingRendererVS2005(this);
			}
			else
			{
				m_renderer = new CommandBarRendererVS2005(this);
			}
			break;
		case VisualStyle.Office2003:
			if (commandBarDockState == CommandBarDockState.Float)
			{
				m_rendererFloating = new CommandBarFloatingRendererOffice2003(this);
			}
			else
			{
				m_renderer = new CommandBarRendererOffice2003(this);
			}
			break;
		case VisualStyle.Office2007:
		case VisualStyle.Office2007Outlook:
			if (commandBarDockState == CommandBarDockState.Float)
			{
				m_rendererFloating = new CommandBarFloatingRendererOffice2007(this);
			}
			else
			{
				m_renderer = new CommandBarRendererOffice2007(this);
			}
			break;
		default:
			if (commandBarDockState == CommandBarDockState.Float)
			{
				m_rendererFloating = new CommandBarFloatingRendererOfficeXP(this);
			}
			else
			{
				m_renderer = new CommandBarRendererOfficeXP(this);
			}
			break;
		}
	}

	[DocumentationExclude]
	protected override void OnVisibleChanged(EventArgs e)
	{
		if (bVisibilitySetFlag)
		{
			base.OnVisibleChanged(e);
			bVisibilitySetFlag = false;
		}
	}

	[DocumentationExclude]
	protected override void OnTextChanged(EventArgs e)
	{
		base.OnTextChanged(e);
		Invalidate(invalidateChildren: false);
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		e.Control.Dock = DockStyle.None;
		e.Control.Anchor = AnchorStyles.Top | AnchorStyles.Left;
		if (cbController != null)
		{
			SetChildControlBounds();
		}
		if (!DesignProcess)
		{
			RecSubscribeChildControlEvents(e.Control, subscribe: true);
		}
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		base.OnControlRemoved(e);
		if (!DesignProcess)
		{
			RecSubscribeChildControlEvents(e.Control, subscribe: false);
		}
	}

	[DocumentationExclude]
	public void RecSubscribeChildControlEvents(Control ctrl, bool subscribe)
	{
		if (subscribe)
		{
			ctrl.GotFocus += childctrl_GotFocus;
			ctrl.LostFocus += childctrl_LostFocus;
			ctrl.ControlAdded += childctrl_ControlAdded;
			ctrl.ControlRemoved += childctrl_ControlRemoved;
		}
		else
		{
			ctrl.GotFocus -= childctrl_GotFocus;
			ctrl.LostFocus -= childctrl_LostFocus;
			ctrl.ControlAdded -= childctrl_ControlAdded;
			ctrl.ControlRemoved -= childctrl_ControlRemoved;
		}
		if (ctrl.Controls.Count > 0)
		{
			IEnumerator enumerator = ctrl.Controls.GetEnumerator();
			while (enumerator.MoveNext())
			{
				RecSubscribeChildControlEvents(enumerator.Current as Control, subscribe);
			}
		}
	}

	[DocumentationExclude]
	protected void childctrl_GotFocus(object sender, EventArgs e)
	{
		if (cbController != null)
		{
			cbController.FocusedCommandBar = this;
		}
		Invalidate(CaptionRect);
	}

	[DocumentationExclude]
	protected void childctrl_LostFocus(object sender, EventArgs e)
	{
		if (cbController != null)
		{
			cbController.FocusedCommandBar = null;
		}
		Invalidate(CaptionRect);
	}

	[DocumentationExclude]
	protected void childctrl_ControlAdded(object sender, ControlEventArgs e)
	{
		RecSubscribeChildControlEvents(e.Control, subscribe: true);
	}

	[DocumentationExclude]
	protected void childctrl_ControlRemoved(object sender, ControlEventArgs e)
	{
		RecSubscribeChildControlEvents(e.Control, subscribe: false);
	}

	internal void OnNewBarAddedEH(object obj, EventArgs e)
	{
		if (Visible && base.Parent != null)
		{
			RedockIfNeeded();
			RecalcIfNeeded();
		}
	}

	protected override void OnSystemColorsChanged(EventArgs e)
	{
		base.OnSystemColorsChanged(e);
		MenuColors.SysColorsChanged(updateColorsNow: false);
		Office2003Colors.SysColorsChanged(updateColorsNow: false);
		int num = SystemInformation.MenuFont.Height;
		if (nSysInfoMenuFontHeight != num)
		{
			nSysInfoMenuFontHeight = num;
		}
		SetRenderer();
	}

	[DocumentationExclude]
	public virtual void MenuColorsChanged(object sender, EventArgs e)
	{
		Invalidate();
		if (base.Parent is CommandBarForm)
		{
			base.Parent.Invalidate();
		}
	}

	internal void XPThemes_ThemeChanged(object sender, EventArgs e)
	{
		m_needRefreshTextData = true;
		if (Floating)
		{
			Invalidate();
		}
	}

	protected virtual void OnCommandBarWrapping(CommandBarWrappingEventArgs arg)
	{
		if (this.CommandBarWrapping != null)
		{
			this.CommandBarWrapping(this, arg);
		}
	}

	protected virtual void OnCommandBarDropDownClicked(EventArgs arg)
	{
		if (this.CommandBarDropDownClicked != null)
		{
			this.CommandBarDropDownClicked(this, arg);
		}
	}

	[DocumentationExclude]
	protected internal void FireCommandBarStateChanging(CommandBarStateChangingEventArgs args)
	{
		OnCommandBarStateChanging(args);
	}

	[DocumentationExclude]
	protected internal void FireCommandBarStateChanged(EventArgs args)
	{
		OnCommandBarStateChanged(args);
	}

	protected virtual void OnCommandBarStateChanging(CommandBarStateChangingEventArgs arg)
	{
		if (this.CommandBarStateChanging != null)
		{
			this.CommandBarStateChanging(this, arg);
		}
	}

	protected virtual void OnCommandBarStateChanged(EventArgs arg)
	{
		if (!bRecalcNeeded)
		{
			if (this.CommandBarStateChanged != null)
			{
				this.CommandBarStateChanged(this, arg);
			}
		}
		else
		{
			bFireDockStateChanged = true;
		}
		SetRenderer();
	}

	protected virtual void OnCommandBarUserClosed(EventArgs arg)
	{
		if (this.CommandBarUserClosed != null)
		{
			this.CommandBarUserClosed(this, arg);
		}
	}

	[DocumentationExclude]
	protected virtual void OnPopupClosed(object sender, EventArgs e)
	{
		m_bIsCustomizing = false;
	}

	private void cbController_StyleChanged(object sender, EventArgs e)
	{
		SetRenderer();
	}

	private void cbController_ThemesEnabledChanged(object sender, EventArgs e)
	{
		SetRenderer();
	}

	public CommandBar()
	{
		InitializeCommandBar();
	}

	[DocumentationExclude]
	protected virtual void InitializeCommandBar()
	{
		SetStyle(ControlStyles.Selectable, value: false);
		SetStyle(ControlStyles.UserPaint | ControlStyles.SupportsTransparentBackColor | ControlStyles.StandardDoubleClick | ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		base.TabStop = false;
		Font = SystemInformation.MenuFont;
		pupMenu = new PopupMenu();
		pupMenu.ParentBarItem = new ParentBarItem();
		if (ftFloatCaption == null)
		{
			InitializeFloatCaptionFont();
		}
		commandBarWeakContainer = new CommandBarWeakContainer(this);
		MenuColors.MenuColorsChanged += commandBarWeakContainer.MenuColorsChangedWeakEventHandler;
		Office2003Colors.MenuColorsChanged += commandBarWeakContainer.Office2003ColorsChangedWeakEventHandler;
		XPThemes.ThemeChanged += commandBarWeakContainer.XPThemesChangedWeakEventHandler;
	}

	[DocumentationExclude]
	protected internal static void InitializeFloatCaptionFont()
	{
		Syncfusion.Runtime.InteropServices.NativeMethods.NONCLIENTMETRICS lpvParam = default(Syncfusion.Runtime.InteropServices.NativeMethods.NONCLIENTMETRICS);
		lpvParam.cbSize = Marshal.SizeOf((object)lpvParam);
		if (Syncfusion.Runtime.InteropServices.NativeMethods.SystemParametersInfo(41, 0, ref lpvParam, 0) != 0)
		{
			if (ftFloatCaption != null)
			{
				ftFloatCaption.Dispose();
			}
			ftFloatCaption = FontUtil.CreateFont(lpvParam.lfSmCaptionFont.lfFaceName, 8f, FontStyle.Bold);
		}
		else if (ftFloatCaption == null)
		{
			ftFloatCaption = FontUtil.CreateFont(SystemInformation.MenuFont.Name, 8f, FontStyle.Bold);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DocumentationExclude]
	public void InitiateFloatingResize(Point ptscreen, int nchittest)
	{
	}

	protected override void Dispose(bool disposing)
	{
		if (rMarker != null)
		{
			rMarker.DecreaseRefCount();
			rMarker = null;
		}
		foreach (Control control in base.Controls)
		{
			RecSubscribeChildControlEvents(control, subscribe: false);
		}
		if (cbController != null)
		{
			cbController.StyleChanged -= cbController_StyleChanged;
			cbController.ThemesEnabledChanged -= cbController_ThemesEnabledChanged;
			cbController = null;
		}
		if (pupMenu != null)
		{
			if (pupMenu.ParentBarItem != null)
			{
				pupMenu.ParentBarItem.Dispose();
				pupMenu.ParentBarItem = null;
			}
			pupMenu.Dispose();
			pupMenu = null;
		}
		if (m_renderer != null)
		{
			m_renderer.Dispose();
			m_renderer = null;
		}
		if (commandBarWeakContainer != null)
		{
			MenuColors.MenuColorsChanged -= commandBarWeakContainer.MenuColorsChangedWeakEventHandler;
			Office2003Colors.MenuColorsChanged -= commandBarWeakContainer.Office2003ColorsChangedWeakEventHandler;
			XPThemes.ThemeChanged -= commandBarWeakContainer.XPThemesChangedWeakEventHandler;
			commandBarWeakContainer = null;
		}
		base.Dispose(disposing);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		UpdateColorScheme();
		if (cbarDockState == CommandBarDockState.Float)
		{
			if (m_rendererFloating != null)
			{
				m_rendererFloating.Draw(e.Graphics);
			}
		}
		else if (m_renderer != null)
		{
			m_renderer.Draw(e.Graphics);
		}
		base.OnPaint(e);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		base.OnMouseDown(e);
		if (cbController != null && !DesignProcess)
		{
			HandleMouseDown(e.Button, PointToScreen(new Point(e.X, e.Y)));
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		if (cbController != null && !DesignProcess)
		{
			HandleMouseMove(e.Button, PointToScreen(new Point(e.X, e.Y)));
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		if (cbController != null && !DesignProcess)
		{
			HandleMouseUp(e.Button, PointToScreen(new Point(e.X, e.Y)));
		}
	}

	protected override void OnDoubleClick(EventArgs e)
	{
		if (cbController != null && !DesignProcess)
		{
			HandleDoubleClick(Cursor.Position);
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		if (cbController != null && !DesignProcess)
		{
			HandleMouseLeave();
		}
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		base.SetBoundsCore(x, y, width, height, specified);
		if (cbController != null && DockState != CommandBarDockState.None && base.Controls.Count > 0)
		{
			SetChildControlBounds();
		}
		Invalidate();
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		base.OnRightToLeftChanged(e);
		if (DockState == CommandBarDockState.Float && base.Parent != null && Visible && base.Parent is CommandBarForm commandBarForm)
		{
			commandBarForm.BringToFront();
		}
	}

	void ICommandBarDesignerInvoke.SetChildControlBounds()
	{
		SetChildControlBounds();
	}

	CommandDockBar ICommandBarDesignerInvoke.GetCommandDockBarParent()
	{
		return cdbParent;
	}

	[DocumentationExclude]
	public virtual void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		Rectangle dropDownRect = DropDownRect;
		if (!dropDownRect.Contains(PointToClient(Cursor.Position)))
		{
			if (ShouldDrawThemed() || (cbController.Style != VisualStyle.Office2003 && cbController.Style != VisualStyle.VS2005 && cbController.Style != VisualStyle.Office2007 && cbController.Style != VisualStyle.Office2007Outlook))
			{
				Invalidate(Rectangle.Inflate(dropDownRect, 1, 1), invalidateChildren: false);
			}
			else if (cdbParent != null)
			{
				if (cdbParent.Dock == DockStyle.Top || cdbParent.Dock == DockStyle.Bottom)
				{
					Invalidate(Rectangle.Inflate(dropDownRect, 3, 1), invalidateChildren: false);
				}
				else
				{
					Invalidate(Rectangle.Inflate(dropDownRect, 1, 3), invalidateChildren: false);
				}
			}
			cbHilight = CBButtons.None;
		}
		if (bHideOnMouseUp)
		{
			bHideOnMouseUp = false;
		}
	}

	[DocumentationExclude]
	public virtual Point[] GetBorderOverlapCue(PopupRelativeAlignment rAlign)
	{
		Rectangle dropDownRect = DropDownRect;
		dropDownRect.Width++;
		dropDownRect.Height++;
		return PopupUtils.ComputeDefaultBorderOverlapCue(rAlign, RectangleToScreen(dropDownRect));
	}

	[DocumentationExclude]
	public virtual Point GetLocationForPopupAlignment(PopupRelativeAlignment prevAlign, out PopupRelativeAlignment newAlign)
	{
		Rectangle dropDownRect = DropDownRect;
		dropDownRect.Width++;
		dropDownRect.Height++;
		Point p = PopupUtils.ComputeDefaultPopupAlignment(prevAlign, out newAlign, GetFirstAlignPreference(), PopupRelativeAlignment.RightTop, dropDownRect);
		return PointToScreen(p);
	}

	public virtual void HandleMouseDown(MouseButtons button, Point ptscreen)
	{
		if (button != MouseButtons.Left)
		{
			return;
		}
		if (DesignProcess)
		{
			ISelectionService selectionService = GetService(typeof(ISelectionService)) as ISelectionService;
			if (!selectionService.GetComponentSelected(this))
			{
				selectionService.SetSelectedComponents(new object[1] { this }, SelectionTypes.Click);
			}
		}
		Point point = PointToClient(ptscreen);
		if (cbarDockState != CommandBarDockState.Float)
		{
			if (cbHilight == CBButtons.None && DragStartRect.Contains(point))
			{
				if (!DesignProcess && Cursor != Cursors.SizeAll)
				{
					crDefault = Cursor;
					Cursor = Cursors.SizeAll;
				}
				bDragging = true;
				nRCCountDrag = cdbParent.RowsCount;
				if (rMarker == null)
				{
					cdbParent.SetCurrentRowMarker(this);
				}
			}
			else
			{
				if ((cbHilight & CBButtons.DropDown) == CBButtons.DropDown)
				{
					Rectangle dropDownRect = DropDownRect;
					if (dropDownRect.Contains(point))
					{
						if (IsShowingDropDown())
						{
							bHideOnMouseUp = true;
						}
						else
						{
							cbHilight |= CBButtons.Pressed;
							Invalidate(Rectangle.Inflate(dropDownRect, 2, 2));
							if (!ShowDropDown())
							{
								OnCommandBarDropDownClicked(EventArgs.Empty);
							}
						}
					}
					else
					{
						cbHilight = CBButtons.None;
						if (IsShowingDropDown())
						{
							HideDropDown();
						}
					}
				}
				if ((cbHilight & CBButtons.Close) == CBButtons.Close)
				{
					Rectangle closeButtonRect = CloseButtonRect;
					if (closeButtonRect.Contains(point))
					{
						cbHilight |= CBButtons.Pressed;
					}
					else
					{
						cbHilight = CBButtons.None;
					}
					Invalidate(Rectangle.Inflate(closeButtonRect, 1, 1));
				}
			}
		}
		else
		{
			if (DragStartRect.Contains(point) || GripperRect.Contains(point))
			{
				if (cbHilight == CBButtons.None)
				{
					if (!DesignProcess && Cursor != Cursors.SizeAll)
					{
						crDefault = Cursor;
						Cursor = Cursors.SizeAll;
					}
					bDragging = true;
				}
				else if ((cbHilight & CBButtons.DropDown) == CBButtons.DropDown)
				{
					Rectangle dropDownRect2 = DropDownRect;
					if (dropDownRect2.Contains(point))
					{
						cbHilight = CBButtons.DropDown | CBButtons.Pressed;
						if (IsShowingDropDown())
						{
							bHideOnMouseUp = true;
						}
						else
						{
							Invalidate(Rectangle.Inflate(dropDownRect2, 2, 2));
							if (!ShowDropDown())
							{
								OnCommandBarDropDownClicked(EventArgs.Empty);
							}
						}
					}
					else
					{
						cbHilight = CBButtons.None;
						if (IsShowingDropDown())
						{
							HideDropDown();
						}
					}
				}
				else if (cbHilight == CBButtons.Close)
				{
					cbHilight = CBButtons.Close | CBButtons.Pressed;
					Invalidate(Rectangle.Inflate(CloseButtonRect, 1, 1));
				}
			}
			if (cbController.HostForm != null && cbController.ShouldHostFormGetFocus())
			{
				cbController.HostForm.Focus();
			}
		}
		if (bDragging)
		{
			ptDeltaOff = point;
			if ((CommandBarDockState.Left == DockState || CommandBarDockState.Right == DockState) && !bHideGripper && IsRTL)
			{
				ptDeltaOff.Y -= GripperRect.Bottom - GripperRect.Height;
			}
			ptMMWorkaround = PointToScreen(point);
			cdbParentDrag = cdbParent;
			nRowOffsetDrag = nRowOffsetInDir;
			nRCIndexDrag = nRCIndex;
		}
	}

	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void HandleMouseMove(MouseButtons button, Point ptscreen)
	{
		Point pt = PointToClient(ptscreen);
		Rectangle gripperRect = GripperRect;
		if (!DesignProcess)
		{
			if (gripperRect.Contains(pt))
			{
				if (crDefault == null)
				{
					crDefault = Cursor;
					Cursor = Cursors.SizeAll;
				}
			}
			else if (!bDragging && crDefault != null)
			{
				Cursor = crDefault;
				crDefault = null;
			}
		}
		if (!bDragging)
		{
			Rectangle dropDownRect = DropDownRect;
			Rectangle closeButtonRect = CloseButtonRect;
			if (cbarDockState != CommandBarDockState.Float)
			{
				if (DesignProcess)
				{
					return;
				}
				if (dropDownRect.Contains(pt))
				{
					if (!cbController.bDisableButtons && cbHilight == CBButtons.None)
					{
						cbHilight = CBButtons.DropDown;
						Invalidate(Rectangle.Inflate(dropDownRect, 2, 2));
					}
				}
				else if ((cbHilight & CBButtons.DropDown) == CBButtons.DropDown && !IsShowingDropDown())
				{
					cbHilight = CBButtons.None;
					if (ShouldDrawThemed() || cbController == null || (cbController.Style != VisualStyle.Office2003 && cbController.Style != VisualStyle.VS2005 && cbController.Style != VisualStyle.Office2007 && cbController.Style != VisualStyle.Office2007Outlook))
					{
						Invalidate(Rectangle.Inflate(dropDownRect, 1, 1), invalidateChildren: false);
					}
					else if (cdbParent.Dock == DockStyle.Top || cdbParent.Dock == DockStyle.Bottom)
					{
						Invalidate(Rectangle.Inflate(dropDownRect, 3, 1), invalidateChildren: false);
					}
					else
					{
						Invalidate(Rectangle.Inflate(dropDownRect, 1, 3), invalidateChildren: false);
					}
				}
				if (closeButtonRect.Contains(pt))
				{
					if (!cbController.bDisableButtons && cbHilight == CBButtons.None)
					{
						cbHilight = CBButtons.Close;
						Invalidate(Rectangle.Inflate(closeButtonRect, 1, 1));
					}
				}
				else if ((cbHilight & CBButtons.Close) == CBButtons.Close)
				{
					cbHilight = CBButtons.None;
					Invalidate(Rectangle.Inflate(closeButtonRect, 1, 1));
				}
			}
			else
			{
				if (DesignProcess)
				{
					return;
				}
				if (dropDownRect.Contains(pt))
				{
					if (!cbController.bDisableButtons && cbHilight == CBButtons.None)
					{
						cbHilight = CBButtons.DropDown;
						Invalidate(Rectangle.Inflate(dropDownRect, 2, 2));
					}
				}
				else if (closeButtonRect.Contains(pt) && !cbController.bDisableButtons && cbHilight == CBButtons.None)
				{
					cbHilight = CBButtons.Close;
					Invalidate(Rectangle.Inflate(closeButtonRect, 1, 1));
				}
				if ((cbHilight & CBButtons.DropDown) == CBButtons.DropDown && !dropDownRect.Contains(pt) && !IsShowingDropDown())
				{
					cbHilight = CBButtons.None;
					Invalidate(Rectangle.Inflate(dropDownRect, 1, 1), invalidateChildren: false);
				}
				if ((cbHilight & CBButtons.Close) == CBButtons.Close && !closeButtonRect.Contains(pt))
				{
					cbHilight = CBButtons.None;
					Invalidate(Rectangle.Inflate(closeButtonRect, 1, 1), invalidateChildren: false);
				}
			}
		}
		else
		{
			if (!(ptscreen != ptMMWorkaround) || button == MouseButtons.None)
			{
				return;
			}
			ptMMWorkaround = ptscreen;
			if (cbarDockState != CommandBarDockState.Float)
			{
				Rectangle rectangle = cdbParent.RectangleToScreen(cdbParent.ClientRectangle);
				if (rectangle.Contains(ptscreen))
				{
					Point point = cdbParent.HandleDragOver(this, ptscreen);
					if (point.X != -1 && point.Y != -1)
					{
						int num = 0;
						if (cdbParent.Dock == DockStyle.Top || cdbParent.Dock == DockStyle.Bottom)
						{
							num = VLeft - point.X;
							VLocation = new Point(point.X, point.Y);
							nRowOffsetDir = VLeft;
						}
						else
						{
							num = Location.Y - point.Y;
							Location = new Point(point.X, point.Y);
							nRowOffsetDir = Location.Y;
						}
						cdbParent.AdjustRowOffsets(this, ref num);
					}
					else
					{
						cbController.RecalcLayout(this);
					}
				}
				else if (cdbParent.GetRowArray(nRCIndex).Length > 1)
				{
					int rowMaxHeight = cdbParent.GetRowMaxHeight(nRCIndex, bmin: true);
					switch (cdbParent.Dock)
					{
					case DockStyle.Top:
						if (ptscreen.Y >= rectangle.Bottom && ptscreen.Y < rectangle.Bottom + rowMaxHeight && !bLeadingEdge && cdbParent.AllowTrailingEdgeDocking(this))
						{
							cdbParent.RemoveCommandBar(this);
							nRCIndex = cdbParent.nRCCount;
							cdbParent.AddCommandBar(this, bcreatenewrow: true);
						}
						else if (ptscreen.Y <= rectangle.Top && ptscreen.Y > rectangle.Top - rowMaxHeight && !bTrailingEdge && cdbParent.AllowLeadingEdgeDocking(this))
						{
							cdbParent.MoveBarFirst(this);
							base.Height = nCommandBarHt;
							CommandBar[] cbarray = cdbParent.GetRowArray(1);
							cdbParent.AdjustPreviousRow(this, ref cbarray, VBounds);
						}
						break;
					case DockStyle.Bottom:
						if (ptscreen.Y <= rectangle.Top && ptscreen.Y < rectangle.Top - rowMaxHeight && !bTrailingEdge && cdbParent.AllowLeadingEdgeDocking(this))
						{
							cdbParent.RemoveCommandBar(this);
							nRCIndex = 0;
							cdbParent.AddCommandBar(this, bcreatenewrow: true);
						}
						else if (ptscreen.Y >= rectangle.Bottom && ptscreen.Y < rectangle.Bottom + rowMaxHeight && !bLeadingEdge && cdbParent.AllowTrailingEdgeDocking(this))
						{
							cdbParent.RemoveCommandBar(this);
							nRCIndex = cdbParent.nRCCount;
							cdbParent.AddCommandBar(this, bcreatenewrow: true);
						}
						break;
					case DockStyle.Left:
						if (ptscreen.X >= rectangle.Right && ptscreen.X < rectangle.Right + rowMaxHeight && !bLeadingEdge && cdbParent.AllowTrailingEdgeDocking(this))
						{
							cdbParent.RemoveCommandBar(this);
							nRCIndex = cdbParent.nRCCount;
							cdbParent.AddCommandBar(this, bcreatenewrow: true);
						}
						else if (ptscreen.X <= rectangle.Left && ptscreen.X > rectangle.Right + rowMaxHeight && !bTrailingEdge && cdbParent.AllowLeadingEdgeDocking(this))
						{
							cdbParent.RemoveCommandBar(this);
							nRCIndex = 0;
							cdbParent.AddCommandBar(this, bcreatenewrow: true);
						}
						break;
					case DockStyle.Right:
						if (ptscreen.X <= rectangle.Left && ptscreen.X > rectangle.Left - rowMaxHeight && !bTrailingEdge && cdbParent.AllowLeadingEdgeDocking(this))
						{
							cdbParent.RemoveCommandBar(this);
							nRCIndex = 0;
							cdbParent.AddCommandBar(this, bcreatenewrow: true);
						}
						else if (ptscreen.Y >= rectangle.Right && ptscreen.Y < rectangle.Right + rowMaxHeight && !bLeadingEdge && cdbParent.AllowTrailingEdgeDocking(this))
						{
							cdbParent.RemoveCommandBar(this);
							nRCIndex = cdbParent.nRCCount;
							cdbParent.AddCommandBar(this, bcreatenewrow: true);
						}
						break;
					}
					cbController.RecalcLayout(this);
				}
				Rectangle rectangle2 = cdbParent.RectangleToScreen(cdbParent.ClientRectangle);
				rectangle2.Inflate(nDefaultUnitHt, nDefaultUnitHt);
				if (!rectangle2.Contains(ptscreen) && cdbParent.Contains(this) && !bDisableFloating)
				{
					CommandBarStateChangingEventArgs e = new CommandBarStateChangingEventArgs(CommandBarDockState.Float);
					FireCommandBarStateChanging(e);
					if (!e.Cancel)
					{
						EnterFloatMode(ptscreen);
						FireCommandBarStateChanged(EventArgs.Empty);
						cdbParent.LayoutDockBar();
					}
				}
				return;
			}
			CommandBarForm commandBarForm = base.Parent as CommandBarForm;
			CommandDockBar commandDockBar = null;
			CommandBarDockState commandBarDockState = CommandBarDockState.Float;
			if (!bDisableDocking)
			{
				commandDockBar = cbController.GetDockBar(ptscreen);
			}
			if (commandDockBar != null)
			{
				commandBarDockState = commandDockBar.GetDockBorder();
				if (((uint)allowedBorders & (uint)commandBarDockState) != (uint)commandBarDockState)
				{
					commandBarDockState = CommandBarDockState.Float;
				}
			}
			if (commandBarDockState != CommandBarDockState.Float)
			{
				Rectangle bounds = commandBarForm.Bounds;
				CommandBarStateChangingEventArgs e2 = new CommandBarStateChangingEventArgs(commandBarDockState);
				FireCommandBarStateChanging(e2);
				if (e2.Cancel)
				{
					return;
				}
				rcFloat = bounds;
				cdbParent = commandDockBar;
				cbarDockState = commandBarDockState;
				Point point2 = cdbParent.PointToClient(ptscreen);
				float num2 = (float)ptDeltaOff.X / (float)bounds.Width;
				if (commandDockBar.Dock == DockStyle.Top || commandDockBar.Dock == DockStyle.Bottom)
				{
					if (commandDockBar.RectangleToScreen(commandDockBar.ClientRectangle).Top >= ptscreen.Y)
					{
						nRCIndex = 0;
					}
					else
					{
						nRCIndex = commandDockBar.nRCCount;
					}
					nRowOffsetDir = point2.X;
					nRowOffsetInDir = point2.X;
				}
				else
				{
					if (commandDockBar.RectangleToScreen(commandDockBar.ClientRectangle).Left >= ptscreen.X)
					{
						nRCIndex = 0;
					}
					else
					{
						nRCIndex = commandDockBar.nRCCount;
					}
					nRowOffsetDir = point2.Y;
					nRowOffsetInDir = point2.Y;
				}
				commandDockBar.AddCommandBar(this, bcreatenewrow: false);
				if (commandBarDockState == CommandBarDockState.Left || commandBarDockState == CommandBarDockState.Right)
				{
					bRedockNeeded = true;
					bRecalcNeeded = true;
					CommandBarDockState commandBarDockState2 = cbDockStateT;
					cbDockStateT = commandBarDockState;
					RedockIfNeeded();
					RecalcIfNeeded();
					cbDockStateT = commandBarDockState2;
				}
				cbController.RecalcLayout(this);
				switch (commandBarDockState)
				{
				case CommandBarDockState.Top:
				case CommandBarDockState.Bottom:
					cbController.RecalcBorderLayout(CommandBarDockState.Left);
					cbController.RecalcBorderLayout(CommandBarDockState.Right);
					break;
				case CommandBarDockState.Left:
				case CommandBarDockState.Right:
					cbController.RecalcBorderLayout(CommandBarDockState.Top);
					cbController.RecalcBorderLayout(CommandBarDockState.Bottom);
					break;
				}
				commandBarForm.Visible = false;
				commandBarForm.Close();
				OnCommandBarStateChanged(EventArgs.Empty);
				ptDeltaOff = new Point((int)(num2 * (float)base.Width), ptDeltaOff.Y);
			}
			else
			{
				commandBarForm.Location = new Point(ptscreen.X - ptDeltaOff.X, ptscreen.Y - ptDeltaOff.Y);
			}
		}
	}

	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void HandleMouseUp(MouseButtons button, Point ptscreen)
	{
		if (button != MouseButtons.Left)
		{
			return;
		}
		if (bDragging)
		{
			if (cbarDockState == CommandBarDockState.Float)
			{
				if (crDefault != null)
				{
					Cursor = crDefault;
					crDefault = null;
				}
				cdbParent = cdbParentDrag;
				nRowOffsetDir = nRowOffsetDrag;
				nRowOffsetInDir = nRowOffsetDir;
				nRCIndex = nRCIndexDrag;
				cdbParentDrag = null;
				nRowOffsetDrag = -1;
				nRCIndexDrag = -1;
			}
			else
			{
				cdbParent.SetCurrentRowMarker(this);
			}
			if (cdbParent != null)
			{
				foreach (CommandBar commandBar in Controller.CommandBars)
				{
					if (commandBar.cdbParent != null && commandBar.cdbParent.Controls.Contains(commandBar))
					{
						commandBar.cdbParent.ReplaceBarLocation(commandBar);
					}
				}
				int val = cdbParent.GetMaxRowIndex() + 1;
				cdbParent.nRCCount = Math.Min(cdbParent.nRCCount + 1, val);
			}
			bDragging = false;
			ptMMWorkaround = Point.Empty;
			ptDeltaOff = Point.Empty;
			if (DesignProcess)
			{
				IDesigner designer = (GetService(typeof(IDesignerHost)) as IDesignerHost).GetDesigner(this);
				if (designer != null)
				{
					ICommandBarDesignerComponentInvoke commandBarDesignerComponentInvoke = designer as ICommandBarDesignerComponentInvoke;
					commandBarDesignerComponentInvoke.RaiseComponentChanged();
				}
			}
		}
		if ((cbHilight & CBButtons.DropDown) == CBButtons.DropDown)
		{
			Rectangle dropDownRect = DropDownRect;
			if (bHideOnMouseUp)
			{
				bHideOnMouseUp = false;
				cbHilight = CBButtons.DropDown;
				if (IsShowingDropDown())
				{
					HideDropDown();
					Update();
					Invalidate(Rectangle.Inflate(dropDownRect, 2, 2));
				}
			}
			else if (!IsShowingDropDown())
			{
				Invalidate(Rectangle.Inflate(dropDownRect, 2, 2));
			}
		}
		if ((cbHilight & CBButtons.Close) == CBButtons.Close)
		{
			cbHilight = CBButtons.Close;
			Invalidate(Rectangle.Inflate(CloseButtonRect, 1, 1));
			Visible = false;
			OnCommandBarUserClosed(EventArgs.Empty);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DocumentationExclude]
	public void HandleDoubleClick(Point ptscreen)
	{
		if (cbarDockState != CommandBarDockState.Float)
		{
			return;
		}
		Point pt = PointToClient(ptscreen);
		if (!bDisableDocking && DragStartRect.Contains(pt) && cbHilight == CBButtons.None)
		{
			if (cdbParent == null)
			{
				cdbParent = cbController.GetDockBar(CommandBarDockState.Top);
				if (cdbParent == null)
				{
					cdbParent = cbController.GetDockBar(CommandBarDockState.Bottom);
				}
				if (cdbParent == null)
				{
					cdbParent = cbController.GetDockBar(CommandBarDockState.Left);
				}
				if (cdbParent == null)
				{
					cdbParent = cbController.GetDockBar(CommandBarDockState.Right);
				}
			}
			if (cdbParent != null)
			{
				CommandBarDockState dockBorder = cdbParent.GetDockBorder();
				OnCommandBarStateChanging(new CommandBarStateChangingEventArgs(dockBorder));
				CommandBarForm commandBarForm = base.Parent as CommandBarForm;
				rcFloat = commandBarForm.Bounds;
				cbarDockState = dockBorder;
				if (dockBorder == CommandBarDockState.Top || dockBorder == CommandBarDockState.Bottom)
				{
					base.Left = nRowOffsetInDir;
				}
				else
				{
					base.Top = nRowOffsetInDir;
				}
				if (dockBorder == CommandBarDockState.Top || dockBorder == CommandBarDockState.Bottom)
				{
					Size = new Size(nMaxLength, base.Height);
				}
				else
				{
					Size = new Size(base.Width, nMaxLength);
				}
				DockToParent();
				if (dockBorder == CommandBarDockState.Left || dockBorder == CommandBarDockState.Right)
				{
					bRedockNeeded = true;
					bRecalcNeeded = true;
					CommandBarDockState commandBarDockState = cbDockStateT;
					cbDockStateT = dockBorder;
					RedockIfNeeded();
					RecalcIfNeeded();
					cbDockStateT = commandBarDockState;
				}
				cbController.RecalcLayout(this);
				switch (dockBorder)
				{
				case CommandBarDockState.Top:
				case CommandBarDockState.Bottom:
					cbController.RecalcBorderLayout(CommandBarDockState.Left);
					cbController.RecalcBorderLayout(CommandBarDockState.Right);
					break;
				case CommandBarDockState.Left:
				case CommandBarDockState.Right:
					cbController.RecalcBorderLayout(CommandBarDockState.Top);
					cbController.RecalcBorderLayout(CommandBarDockState.Bottom);
					break;
				}
				nRowOffsetInDir = nRowOffsetDir;
				commandBarForm.Visible = false;
				commandBarForm.Close();
				OnCommandBarStateChanged(EventArgs.Empty);
			}
		}
		if (!bDragging)
		{
			return;
		}
		if (crDefault != null)
		{
			Cursor = crDefault;
			crDefault = null;
		}
		bDragging = false;
		ptDeltaOff = Point.Empty;
		if (DesignProcess)
		{
			IDesigner designer = (GetService(typeof(IDesignerHost)) as IDesignerHost).GetDesigner(this);
			if (designer != null)
			{
				ICommandBarDesignerComponentInvoke commandBarDesignerComponentInvoke = designer as ICommandBarDesignerComponentInvoke;
				commandBarDesignerComponentInvoke.RaiseComponentChanged();
			}
		}
	}

	protected virtual void DockToParent()
	{
		int rowsCount = cdbParent.RowsCount;
		bool flag = rowsCount > 0 && rowsCount != nRCCountDrag && nRCIndexDrag >= 0;
		if (Floating)
		{
			ArrayList arrayList = new ArrayList();
			foreach (CommandBar commandBar in Controller.CommandBars)
			{
				if (commandBar.Floating && commandBar.cdbParent == cdbParent && commandBar != this)
				{
					arrayList.Add(commandBar);
				}
			}
			flag = DockToParentOffsetRowIndex(flag, arrayList);
		}
		cdbParent.AddCommandBar(this, flag);
		if (nRCIndexDrag != -1 && !cdbParent.bSuspendIndexChanges)
		{
			CommandBar[] rowArray = cdbParent.GetRowArray(nRCIndexDrag);
			if (rowArray.Length == 0 || !rowArray[0].OccupyFullRow)
			{
				nRCIndex = nRCIndexDrag;
			}
			else
			{
				nRCIndexDrag = -1;
			}
		}
		if (cdbParent.nRCCount <= nRCIndexDrag)
		{
			cdbParent.nRCCount = nRCIndexDrag + 1;
		}
	}

	private bool DockToParentOffsetRowIndex(bool createNewRow, ArrayList array)
	{
		int num = 0;
		Hashtable hashtable = new Hashtable();
		int num2 = nRCIndex;
		int num3 = nRCIndexDrag;
		if (createNewRow)
		{
			foreach (CommandBar item in array)
			{
				if (item.nRCCountDrag != nRCCountDrag)
				{
					createNewRow = false;
					if (item.nRCIndex < nRCIndex && hashtable[item.nRCIndex] == null)
					{
						hashtable[item.nRCIndex] = item.nRCIndex;
						num--;
					}
				}
			}
		}
		else
		{
			foreach (CommandBar item2 in array)
			{
				if (item2.nRCIndex == nRCIndex && item2.nRCCountDrag > nRCCountDrag && hashtable[item2.nRCIndex] == null)
				{
					createNewRow = true;
					hashtable[item2.nRCIndex] = item2.nRCIndex;
					num++;
				}
			}
		}
		nRCIndex += num;
		nRCIndexDrag += num;
		foreach (CommandBar item3 in array)
		{
			if (item3.nRCIndex == num2 && (item3.nRCIndexDrag < 0 || item3.nRCIndexDrag == num3))
			{
				item3.nRCIndex = nRCIndex;
				item3.nRCIndexDrag = nRCIndexDrag;
			}
			else
			{
				item3.nRCIndexDrag -= num;
			}
		}
		return createNewRow;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DocumentationExclude]
	public virtual void HandleMouseLeave()
	{
		if (cbHilight != CBButtons.None && !IsShowingDropDown())
		{
			switch (cbHilight)
			{
			case CBButtons.DropDown:
			{
				cbHilight = CBButtons.None;
				Rectangle dropDownRect = DropDownRect;
				if (ShouldDrawThemed() || cbController == null || (cbController.Style != VisualStyle.Office2003 && cbController.Style != VisualStyle.VS2005 && cbController.Style != VisualStyle.Office2007 && cbController.Style != VisualStyle.Office2007Outlook))
				{
					Invalidate(Rectangle.Inflate(dropDownRect, 1, 1), invalidateChildren: false);
				}
				else if (cdbParent != null)
				{
					if (cdbParent.Dock == DockStyle.Top || cdbParent.Dock == DockStyle.Bottom)
					{
						Invalidate(Rectangle.Inflate(dropDownRect, 3, 1), invalidateChildren: false);
					}
					else
					{
						Invalidate(Rectangle.Inflate(dropDownRect, 1, 3), invalidateChildren: false);
					}
				}
				break;
			}
			case CBButtons.Close:
			{
				cbHilight = CBButtons.None;
				_ = CaptionRect;
				_ = CaptionHeight;
				Rectangle closeButtonRect = CloseButtonRect;
				Invalidate(Rectangle.Inflate(closeButtonRect, 1, 1), invalidateChildren: false);
				break;
			}
			}
		}
		if (crDefault != null)
		{
			Cursor = crDefault;
			crDefault = null;
		}
		if (bDragging || ptDeltaOff != Point.Empty)
		{
			bDragging = false;
			ptDeltaOff = Point.Empty;
		}
	}
}
