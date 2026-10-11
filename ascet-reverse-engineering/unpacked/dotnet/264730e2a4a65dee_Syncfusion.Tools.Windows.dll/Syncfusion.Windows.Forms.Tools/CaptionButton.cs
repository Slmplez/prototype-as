using System;
using System.ComponentModel;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class CaptionButton
{
	protected string m_name;

	protected string m_ToolTip = "";

	protected bool m_bModified;

	protected Color m_clTransparentImage = Color.Transparent;

	protected int m_ImageIndex = -1;

	protected CaptionButtonType m_cbtType;

	protected ToolTipInfo m_toolTipInfo = new ToolTipInfo();

	[Description("SuperToolTip drawing info associated with button.")]
	[DefaultValue(null)]
	public ToolTipInfo SuperToolTipInfo
	{
		get
		{
			return m_toolTipInfo;
		}
		set
		{
			if (m_toolTipInfo != value)
			{
				m_toolTipInfo = value;
			}
		}
	}

	public string Name
	{
		get
		{
			return m_name;
		}
		set
		{
			if (m_name != value)
			{
				m_name = value;
			}
		}
	}

	[DefaultValue("")]
	public string ToolTip
	{
		get
		{
			return m_ToolTip;
		}
		set
		{
			if (m_ToolTip != value)
			{
				m_ToolTip = value;
			}
		}
	}

	[DefaultValue(typeof(Color), "Transparent")]
	public Color TransparentImageColor
	{
		get
		{
			return m_clTransparentImage;
		}
		set
		{
			if (m_clTransparentImage != value)
			{
				m_clTransparentImage = value;
				OnRepaint();
			}
		}
	}

	[DefaultValue(-1)]
	public int ImageIndex
	{
		get
		{
			return m_ImageIndex;
		}
		set
		{
			if (m_ImageIndex != value)
			{
				m_ImageIndex = value;
				OnRepaint();
			}
		}
	}

	[DefaultValue(CaptionButtonType.Custom)]
	public CaptionButtonType Type
	{
		get
		{
			return m_cbtType;
		}
		set
		{
			if (m_cbtType != value)
			{
				CancelEventArgs e = new CancelEventArgs(cancel: false);
				CaptionButtonType cbtType = m_cbtType;
				m_cbtType = value;
				OnTypeChanging(e);
				if (e.Cancel)
				{
					m_cbtType = cbtType;
					throw new DockingManagerException("Adding to collection more than one button of type Maximize or Restore is not allowed.");
				}
				OnRepaint();
			}
		}
	}

	protected internal bool Modified
	{
		get
		{
			return m_bModified;
		}
		set
		{
			if (m_bModified != value)
			{
				m_bModified = value;
			}
		}
	}

	public event CancelEventHandler Click;

	public event EventHandler Changed;

	protected internal event CancelEventHandler TypeChanging;

	public CaptionButton()
		: this(CaptionButtonType.Custom)
	{
	}

	public CaptionButton(CaptionButtonType type)
	{
		m_cbtType = type;
		switch (type)
		{
		case CaptionButtonType.Close:
			m_name = "CloseButton";
			m_ToolTip = SR.GetString("ToolTipCaptionButtonClose");
			break;
		case CaptionButtonType.Pin:
			m_name = "PinButton";
			m_ToolTip = SR.GetString("ToolTipCaptionButtonPin");
			break;
		case CaptionButtonType.Menu:
			m_name = "MenuButton";
			m_ToolTip = SR.GetString("ToolTipCaptionButtonMenu");
			break;
		case CaptionButtonType.Maximize:
			m_name = "MaximizeButton";
			m_ToolTip = SR.GetString("ToolTipCaptionButtonMaximize");
			break;
		case CaptionButtonType.Restore:
			m_name = "RestoreButton";
			m_ToolTip = SR.GetString("ToolTipCaptionButtonRestore");
			break;
		}
	}

	public CaptionButton(CaptionButtonType type, string name)
	{
		m_cbtType = type;
		m_name = name;
		switch (type)
		{
		case CaptionButtonType.Close:
			m_ToolTip = SR.GetString("ToolTipCaptionButtonClose");
			break;
		case CaptionButtonType.Pin:
			m_ToolTip = SR.GetString("ToolTipCaptionButtonPin");
			break;
		case CaptionButtonType.Menu:
			m_ToolTip = SR.GetString("ToolTipCaptionButtonMenu");
			break;
		case CaptionButtonType.Maximize:
			m_ToolTip = SR.GetString("ToolTipCaptionButtonMaximize");
			break;
		case CaptionButtonType.Restore:
			m_ToolTip = SR.GetString("ToolTipCaptionButtonRestore");
			break;
		}
	}

	public CaptionButton(CaptionButtonType type, string name, int imageIndex, Color clr, string tooltip)
		: this(type, name)
	{
		m_clTransparentImage = clr;
		m_ImageIndex = imageIndex;
		m_ToolTip = tooltip;
	}

	protected void OnClick(CancelEventArgs args)
	{
		if (this.Click != null)
		{
			this.Click(this, args);
		}
	}

	public void FireClickEvent(CancelEventArgs e)
	{
		OnClick(e);
	}

	protected void OnTypeChanging(CancelEventArgs args)
	{
		if (this.TypeChanging != null)
		{
			this.TypeChanging(this, args);
		}
	}

	protected void OnRepaint()
	{
		if (this.Changed != null)
		{
			this.Changed(this, EventArgs.Empty);
		}
	}

	public CaptionButton Clone()
	{
		return new CaptionButton(Type, Name, ImageIndex, TransparentImageColor, ToolTip);
	}

	public static bool HasDefaultValue(CaptionButton button)
	{
		bool result = false;
		if (button.ImageIndex < 0 && button.TransparentImageColor == Color.Transparent)
		{
			if (button.Type == CaptionButtonType.Close && button.ToolTip == "Close")
			{
				result = true;
			}
			else if (button.Type == CaptionButtonType.Pin && button.ToolTip == "Auto Hide")
			{
				result = true;
			}
			else if (button.Type == CaptionButtonType.Menu && button.ToolTip == "Window Position")
			{
				result = true;
			}
			else if (button.Type == CaptionButtonType.Maximize && button.ToolTip == "Maximize")
			{
				result = true;
			}
			else if (button.Type == CaptionButtonType.Restore && button.ToolTip == "Restore")
			{
				result = true;
			}
			else if (button.Type == CaptionButtonType.Custom && button.ToolTip == "")
			{
				result = true;
			}
		}
		return result;
	}
}
