using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class VS2008FadeTimer
{
	internal delegate void FadeChangeEventHandler(FadeEventArgs args);

	private const int m_cAnimationTime = 200;

	private const int m_cAnimationSteps = 10;

	private Timer m_fadeTimer;

	private float tempOpacity;

	internal event FadeChangeEventHandler FadeChange;

	public VS2008FadeTimer()
	{
		m_fadeTimer = new Timer();
	}

	protected void OnFadeChange(FadeEventArgs args)
	{
		if (this.FadeChange != null)
		{
			this.FadeChange(args);
		}
	}

	internal void InitAnimation()
	{
		if (!m_fadeTimer.Enabled)
		{
			tempOpacity = 0f;
			m_fadeTimer.Interval = 20;
			m_fadeTimer.Tick += m_fadeTimer_Tick;
			m_fadeTimer.Start();
		}
	}

	protected void m_fadeTimer_Tick(object sender, EventArgs e)
	{
		if ((double)tempOpacity < VS2008DragControlConsts.DEF_TARGET_OPACITY)
		{
			float num = (float)VS2008DragControlConsts.DEF_TARGET_OPACITY / 10f;
			tempOpacity += num;
			OnFadeChange(new FadeEventArgs(this, tempOpacity));
		}
		else
		{
			StopAnimation();
		}
	}

	internal void StopAnimation()
	{
		OnFadeChange(new FadeEventArgs(this, VS2008DragControlConsts.DEF_TARGET_OPACITY));
		tempOpacity = 0f;
		m_fadeTimer.Stop();
		m_fadeTimer.Tick -= m_fadeTimer_Tick;
	}
}
