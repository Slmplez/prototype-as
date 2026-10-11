using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class TabData : ITabData2, ITabData, IDisposable
{
	private Image image;

	private Size imageSize = new Size(16, 16);

	private Font font;

	private Color backColor = Color.Empty;

	private string text = "";

	private bool enabled = true;

	private bool tabVisible = true;

	private string tooltip = "";

	private Color foreColor = Color.Empty;

	private int _imageIndex = -1;

	private bool imageChanged;

	private ToolTipInfo m_superToolTip;

	public virtual Font Font
	{
		get
		{
			return font;
		}
		set
		{
			if (font != value)
			{
				font = value;
				OnBoundsAffected();
			}
		}
	}

	public virtual Color BackColor
	{
		get
		{
			return backColor;
		}
		set
		{
			if (backColor != value)
			{
				backColor = value;
				OnPropertyChanged();
			}
		}
	}

	public virtual string Text
	{
		get
		{
			return text;
		}
		set
		{
			if (text != value)
			{
				text = value;
				OnBoundsAffected();
			}
		}
	}

	public virtual bool Enabled
	{
		get
		{
			return enabled;
		}
		set
		{
			if (enabled != value)
			{
				enabled = value;
				OnBoundsAffected();
			}
		}
	}

	public virtual bool TabVisible
	{
		get
		{
			return tabVisible;
		}
		set
		{
			if (tabVisible != value)
			{
				tabVisible = value;
				OnBoundsAffected();
			}
		}
	}

	public virtual string ToolTip
	{
		get
		{
			return tooltip;
		}
		set
		{
			tooltip = value;
		}
	}

	public virtual Color ForeColor
	{
		get
		{
			return foreColor;
		}
		set
		{
			if (foreColor != value)
			{
				foreColor = value;
				OnPropertyChanged();
			}
		}
	}

	public virtual int ImageIndex
	{
		get
		{
			return _imageIndex;
		}
		set
		{
			if (_imageIndex != value)
			{
				_imageIndex = value;
				OnBoundsAffected();
			}
		}
	}

	public virtual Image Image
	{
		get
		{
			return image;
		}
		set
		{
			image = value;
			OnBoundsAffected();
		}
	}

	public Size ImageSize
	{
		get
		{
			return imageSize;
		}
		set
		{
			imageSize = value;
			OnBoundsAffected();
		}
	}

	public bool ImageChanged
	{
		get
		{
			return imageChanged;
		}
		set
		{
			imageChanged = value;
		}
	}

	public virtual ToolTipInfo SuperTooltip
	{
		get
		{
			return m_superToolTip;
		}
		set
		{
			m_superToolTip = value;
		}
	}

	public event EventHandler BoundsAffected;

	public event EventHandler PropertyChanged;

	public TabData()
	{
	}

	public TabData(TabData tabData)
	{
		CopyFrom(tabData);
	}

	protected void CopyFrom(TabData tabData)
	{
		if (tabData != null)
		{
			Font = tabData.Font;
			BackColor = tabData.BackColor;
			ForeColor = tabData.ForeColor;
			Text = tabData.Text;
			Enabled = tabData.Enabled;
			TabVisible = tabData.TabVisible;
			ToolTip = tabData.ToolTip;
			ImageIndex = tabData.ImageIndex;
		}
	}

	~TabData()
	{
		Dispose(disposing: false);
	}

	public void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	protected virtual void Dispose(bool disposing)
	{
	}

	internal void SetTextWithoutBoundsAffected(string value)
	{
		text = value;
	}

	internal void SetImageIndexWithoutBoundsAffected(int i)
	{
		_imageIndex = i;
	}

	protected virtual void OnBoundsAffected()
	{
		if (this.BoundsAffected != null)
		{
			this.BoundsAffected(this, EventArgs.Empty);
		}
	}

	protected virtual void OnPropertyChanged()
	{
		if (this.PropertyChanged != null)
		{
			this.PropertyChanged(this, EventArgs.Empty);
		}
	}
}
