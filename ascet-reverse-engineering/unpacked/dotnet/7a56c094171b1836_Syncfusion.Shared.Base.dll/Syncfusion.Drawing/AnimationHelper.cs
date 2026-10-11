using System;
using System.Windows.Forms;

namespace Syncfusion.Drawing;

public class AnimationHelper
{
	private int maxAnimationPosition = 10;

	private int animationPosition = 10;

	private bool fireStopAnimation;

	private bool animationDirectionExpand = true;

	private bool animationOn;

	private bool mtflag;

	private WeakReference m_timer;

	private Timer Timer
	{
		get
		{
			Timer timer;
			if (m_timer == null || !m_timer.IsAlive)
			{
				timer = new Timer();
				timer.Tick += TimerHandler;
				m_timer = new WeakReference(timer);
			}
			else
			{
				timer = (Timer)m_timer.Target;
			}
			return timer;
		}
	}

	public int MaxAnimationPosition => maxAnimationPosition;

	public int AnimationPosition => animationPosition;

	public bool AnimationOn => animationOn;

	public bool AnimationDirectionExpand => animationDirectionExpand;

	public event EventHandler AnimationPositionChanged;

	public event EventHandler AnimationDone;

	private void TimerHandler(object sender, EventArgs e)
	{
		if (!mtflag)
		{
			mtflag = true;
			AnimateNext();
			mtflag = false;
		}
	}

	protected bool NeedAnimation()
	{
		if ((animationPosition > 0 && !animationDirectionExpand) || (animationPosition < maxAnimationPosition && animationDirectionExpand))
		{
			return true;
		}
		return false;
	}

	public void StartAnimation(int maxPosition, bool directionExpand, int interval)
	{
		maxAnimationPosition = maxPosition;
		if (directionExpand)
		{
			animationPosition = 0;
		}
		else
		{
			animationPosition = maxAnimationPosition;
		}
		animationDirectionExpand = directionExpand;
		animationOn = true;
		if (interval > 0)
		{
			Timer timer = Timer;
			timer.Interval = interval;
			timer.Start();
		}
		else
		{
			fireStopAnimation = true;
		}
		AnimateNext();
	}

	public void StopAnimation()
	{
		if (animationOn)
		{
			animationOn = false;
			Timer.Stop();
			if (this.AnimationDone != null)
			{
				this.AnimationDone(this, EventArgs.Empty);
			}
		}
	}

	public virtual void AnimateNext()
	{
		if (NeedAnimation() && !fireStopAnimation)
		{
			animationOn = true;
			if (!animationDirectionExpand)
			{
				animationPosition--;
			}
			else
			{
				animationPosition++;
			}
			if (this.AnimationPositionChanged != null)
			{
				this.AnimationPositionChanged(this, EventArgs.Empty);
			}
		}
		else
		{
			if (this.AnimationPositionChanged != null)
			{
				this.AnimationPositionChanged(this, EventArgs.Empty);
			}
			StopAnimation();
		}
	}
}
