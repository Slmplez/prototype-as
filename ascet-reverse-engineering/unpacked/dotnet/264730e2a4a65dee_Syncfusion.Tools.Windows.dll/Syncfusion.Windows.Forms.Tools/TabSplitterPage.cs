using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(TabSplitterPageDesigner))]
[ToolboxItem(false)]
[Docking(DockingBehavior.Never)]
public class TabSplitterPage : Panel
{
	private TabSplitterPagesCollection m_owner;

	private Image m_image;

	private Color m_imageTransparentColor = Color.Empty;

	private string m_sToolTip;

	private static Bitmap m_defaultImage;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public TabSplitterPagesCollection Owner
	{
		get
		{
			return m_owner;
		}
		set
		{
			if (m_owner != value)
			{
				if (m_owner != null)
				{
					m_owner.Remove(this);
				}
				value?.Add(this);
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(true)]
	public override string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			base.Text = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override DockStyle Dock
	{
		get
		{
			return base.Dock;
		}
		set
		{
		}
	}

	[Description("Indicates the image to be shown in the page's tab.")]
	[Category("Appearance")]
	public Image Image
	{
		get
		{
			if (m_image == null)
			{
				return m_defaultImage;
			}
			return m_image;
		}
		set
		{
			if (m_image != value)
			{
				m_image = value;
				OnImageChanged();
			}
		}
	}

	[Description("Indicates the transparency color for the tab image.")]
	[Category("Appearance")]
	public Color ImageTransparentColor
	{
		get
		{
			return m_imageTransparentColor;
		}
		set
		{
			if (m_imageTransparentColor != value)
			{
				m_imageTransparentColor = value;
				if (value != Color.Empty && Image is Bitmap bitmap)
				{
					bitmap.MakeTransparent(value);
					OnImageChanged();
				}
			}
		}
	}

	[Description("Gets or sets tooltip to be shown on the pages tab.")]
	[Localizable(true)]
	[Category("Behavior")]
	public string ToolTip
	{
		get
		{
			if (m_sToolTip == null || m_sToolTip == string.Empty)
			{
				return Text;
			}
			return m_sToolTip;
		}
		set
		{
			m_sToolTip = value;
		}
	}

	[Description("Occurs when the Image property value has been changed")]
	public event EventHandler ImageChanged;

	static TabSplitterPage()
	{
		m_defaultImage = new Bitmap(typeof(TabSplitterContainer).Assembly.GetManifestResourceStream("Syncfusion.Windows.Forms.Tools.Controls.TabSplitterContainer.TabSplitterDefaultImage.bmp"));
		m_defaultImage.MakeTransparent(Color.Magenta);
	}

	public TabSplitterPage()
	{
		base.Dock = DockStyle.None;
		base.AutoScroll = true;
	}

	internal void SetOwner(TabSplitterPagesCollection owner)
	{
		m_owner = owner;
	}

	protected override void Dispose(bool disposing)
	{
		Owner = null;
		base.Dispose(disposing);
	}

	private void OnImageChanged()
	{
		if (this.ImageChanged != null)
		{
			this.ImageChanged(this, EventArgs.Empty);
		}
	}

	public bool ShouldSerializeImage()
	{
		return m_image != null;
	}

	public void ResetImage()
	{
		m_image = null;
	}

	public bool ShouldSerializeImageTransparentColor()
	{
		return m_imageTransparentColor != Color.Empty;
	}

	public void ResetImageTransparentColor()
	{
		m_imageTransparentColor = Color.Empty;
	}

	public bool ShouldSerializeToolTip()
	{
		if (m_sToolTip != null)
		{
			return m_sToolTip != string.Empty;
		}
		return false;
	}

	public void ResetToolTipText()
	{
		m_sToolTip = null;
	}
}
