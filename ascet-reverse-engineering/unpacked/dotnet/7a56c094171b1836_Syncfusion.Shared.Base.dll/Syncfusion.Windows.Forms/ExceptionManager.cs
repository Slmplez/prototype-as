using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms;

public class ExceptionManager
{
	[ThreadStatic]
	private static bool passThroughExceptions = false;

	[ThreadStatic]
	private static int suspendCatchExceptions = 0;

	[ThreadStatic]
	private static EventHandlerList _ehl = null;

	private static object onExceptionCatchedKey = new object();

	private static EventHandlerList ehl
	{
		get
		{
			if (_ehl == null)
			{
				_ehl = new EventHandlerList();
			}
			return _ehl;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public static bool PassThroughExceptions
	{
		get
		{
			return passThroughExceptions;
		}
		set
		{
			passThroughExceptions = value;
		}
	}

	public static event ExceptionCatchedEventHandler ExceptionCatched
	{
		add
		{
			ehl.AddHandler(onExceptionCatchedKey, value);
		}
		remove
		{
			ehl.RemoveHandler(onExceptionCatchedKey, value);
		}
	}

	public static void SuspendCatchExceptions()
	{
		suspendCatchExceptions++;
	}

	public static void ResumeCatchExceptions()
	{
		if (suspendCatchExceptions > 0)
		{
			suspendCatchExceptions--;
		}
	}

	public static bool ShouldCatchExceptions()
	{
		if (suspendCatchExceptions == 0)
		{
			return !passThroughExceptions;
		}
		return false;
	}

	public static bool RaiseExceptionCatched(object sender, ExceptionCatchedEventArgs e)
	{
		((ExceptionCatchedEventHandler)ehl[onExceptionCatchedKey])?.Invoke(sender, e);
		return ShouldCatchExceptions();
	}

	public static bool RaiseExceptionCatched(object sender, Exception ex)
	{
		return RaiseExceptionCatched(sender, new ExceptionCatchedEventArgs(ex));
	}
}
