using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public abstract class UpDownRenderer : IUpDownRenderer
{
	private UpDownBase m_upDownControl;

	private Control m_upDownButtons;

	private TextBox m_upDownTextBox;

	private Rectangle m_upButtonRect;

	private Rectangle m_downButtonRect;

	protected UpDownBase UpDownControl => m_upDownControl;

	protected Orientation UpDownSpinOrientation
	{
		get
		{
			Orientation result = Orientation.Vertical;
			if (m_upDownControl is IUpDownButtonsOrientable)
			{
				result = (m_upDownControl as IUpDownButtonsOrientable).SpinOrientation;
			}
			return result;
		}
	}

	protected Control UpDownButtons
	{
		get
		{
			if (m_upDownButtons != null)
			{
				return m_upDownButtons;
			}
			foreach (Control control in UpDownControl.Controls)
			{
				if (!(control is TextBox))
				{
					m_upDownButtons = control;
				}
			}
			return m_upDownButtons;
		}
	}

	protected Control UpDownTextBox
	{
		get
		{
			if (m_upDownTextBox != null)
			{
				return m_upDownTextBox;
			}
			foreach (Control control in UpDownControl.Controls)
			{
				if (control is TextBox)
				{
					m_upDownTextBox = control as TextBox;
				}
			}
			return m_upDownTextBox;
		}
	}

	protected Rectangle UpButtonRectangle => m_upButtonRect;

	protected Rectangle DownButtonRectangle => m_downButtonRect;

	public UpDownRenderer(UpDownBase upDownControl)
	{
		m_upDownControl = upDownControl;
		Init();
	}

	private void UpDownButtonsSizeChanged(object sender, EventArgs e)
	{
		Layout();
	}

	private void Init()
	{
		Layout();
		UpDownButtons.SizeChanged += UpDownButtonsSizeChanged;
		if (m_upDownControl is IUpDownButtonsOrientable upDownButtonsOrientable)
		{
			upDownButtonsOrientable.SpinOrientationChanged += UpDownSpinOrientationChanged;
		}
	}

	private void UpDownSpinOrientationChanged(object sender, EventArgs e)
	{
		Layout();
	}

	public void Layout()
	{
		int num = UpDownButtons.Width / 2;
		int num2 = UpDownButtons.Height / 2;
		if (UpDownSpinOrientation == Orientation.Vertical)
		{
			m_upButtonRect = new Rectangle(0, 0, UpDownButtons.Width, num2);
			m_downButtonRect = new Rectangle(0, num2, UpDownButtons.Width, num2);
		}
		else
		{
			m_upButtonRect = new Rectangle(num, 0, num, UpDownButtons.Height);
			m_downButtonRect = new Rectangle(0, 0, num, UpDownButtons.Height);
		}
	}

	public abstract void DrawArrow(Graphics g, Rectangle buttonRectangle, ButtonState buttonState, bool upper);

	public abstract void DrawScrollButtonBorder(Graphics g, Rectangle buttonRectangle, ButtonState buttonState);

	public abstract void DrawScrollButtonBackground(Graphics g, Rectangle buttonRectangle, ButtonState buttonState);

	public virtual void DrawScrollButton(Graphics g, Rectangle buttonRectangle, ButtonState buttonState, ButtonID buttonID)
	{
		DrawScrollButtonBorder(g, buttonRectangle, buttonState);
		DrawScrollButtonBackground(g, buttonRectangle, buttonState);
		DrawArrow(g, buttonRectangle, buttonState, buttonID == ButtonID.Up);
	}

	public virtual void Render(Graphics g, ButtonState upButtonState, ButtonState downButtonState)
	{
		DrawScrollButton(g, m_upButtonRect, upButtonState, ButtonID.Up);
		DrawScrollButton(g, m_downButtonRect, downButtonState, ButtonID.Down);
	}
}
