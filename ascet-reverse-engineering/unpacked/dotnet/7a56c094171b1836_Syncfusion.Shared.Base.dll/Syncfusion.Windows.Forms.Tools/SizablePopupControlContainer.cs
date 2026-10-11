using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class SizablePopupControlContainer : PopupControlContainer
{
	private Control childControl;

	private bool isInitialized;

	private bool m_bFitToChildSize;

	private bool m_bShowCloseButton = true;

	private bool m_bShowGripper = true;

	public bool FitToChildControlSize
	{
		get
		{
			return m_bFitToChildSize;
		}
		set
		{
			m_bFitToChildSize = value;
		}
	}

	public bool ShowCloseButton
	{
		get
		{
			return m_bShowCloseButton;
		}
		set
		{
			if (value != m_bShowCloseButton)
			{
				m_bShowCloseButton = value;
			}
		}
	}

	public bool ShowGripper
	{
		get
		{
			return m_bShowGripper;
		}
		set
		{
			if (value != m_bShowGripper)
			{
				m_bShowGripper = value;
			}
		}
	}

	public SizablePopupControlContainer(Control childControl)
	{
		this.childControl = childControl;
		isInitialized = false;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			childControl = null;
		}
		base.Dispose(disposing);
	}

	protected override PopupHost CreatePopupHost()
	{
		return new SizablePopupHost(childControl);
	}

	public override void ShowPopup(Point location)
	{
		EnsurePopupHost();
		if (base.PopupHost is SizablePopupHost sizablePopupHost)
		{
			sizablePopupHost.ShowCloseButton = m_bShowCloseButton;
			sizablePopupHost.ShowGripper = m_bShowGripper;
			sizablePopupHost.RightToLeft = (GetIsMirrored() ? RightToLeft.Yes : RightToLeft.No);
		}
		base.ShowPopup(location);
	}

	private bool GetIsMirrored()
	{
		bool result = false;
		Control control = base.ParentControl;
		if (control != null)
		{
			result = RightToLeft.Yes == control.RightToLeft;
		}
		return result;
	}

	public virtual void InitializeContainer()
	{
		if (!isInitialized)
		{
			SuspendLayout();
			base.BorderStyle = BorderStyle.None;
			base.Location = new Point(8, 16);
			base.Name = "dropDownContainer";
			base.Size = new Size(184, 200);
			base.TabIndex = 0;
			ResumeLayout(performLayout: false);
			base.Controls.Add(childControl);
			isInitialized = true;
		}
	}

	public override void ConfirmDeactivate()
	{
	}

	public void AdjustPopupHostBounds()
	{
		base.PopupHost.ComputeLayout();
	}
}
