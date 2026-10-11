using System.Collections;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Design;

[DocumentationExclude]
public class DesignerHooks
{
	private static Hashtable threadHookMap = new Hashtable();

	public static bool GetMsgProcListContains(IGetMsgProcListener listener)
	{
		int currentThreadId = NativeMethods.GetCurrentThreadId();
		return GetMsgProcListContains(listener, currentThreadId);
	}

	public static bool GetMsgProcListContains(IGetMsgProcListener listener, int threadId)
	{
		if (threadHookMap.ContainsKey(threadId))
		{
			ThreadHooks threadHooks = threadHookMap[threadId] as ThreadHooks;
			return threadHooks.GetMsgProcListContains(listener);
		}
		return false;
	}

	public static bool CallWndProcListContains(ICallWndProcListener listener)
	{
		int currentThreadId = NativeMethods.GetCurrentThreadId();
		return CallWndProcListContains(listener, currentThreadId);
	}

	public static bool CallWndProcListContains(ICallWndProcListener listener, int threadId)
	{
		if (threadHookMap.ContainsKey(threadId))
		{
			ThreadHooks threadHooks = threadHookMap[threadId] as ThreadHooks;
			return threadHooks.CallWndProcListContains(listener);
		}
		return false;
	}

	public static int AddGetMsgProcListener(IGetMsgProcListener listener)
	{
		int currentThreadId = NativeMethods.GetCurrentThreadId();
		ThreadHooks threadHooks;
		if (threadHookMap.ContainsKey(currentThreadId))
		{
			threadHooks = threadHookMap[currentThreadId] as ThreadHooks;
		}
		else
		{
			threadHooks = new ThreadHooks();
			threadHookMap.Add(currentThreadId, threadHooks);
		}
		threadHooks.AddGetMsgProcListener(listener);
		return currentThreadId;
	}

	public static void RemoveGetMsgProcListener(IGetMsgProcListener listener)
	{
		int currentThreadId = NativeMethods.GetCurrentThreadId();
		RemoveGetMsgProcListener(listener, currentThreadId);
	}

	public static void RemoveGetMsgProcListener(IGetMsgProcListener listener, int threadId)
	{
		if (threadHookMap.ContainsKey(threadId))
		{
			ThreadHooks threadHooks = threadHookMap[threadId] as ThreadHooks;
			threadHooks.RemoveGetMsgProcListener(listener);
			if (threadHooks.getMsgProcCount == 0 && threadHooks.callWndProcCount == 0)
			{
				threadHookMap.Remove(threadId);
			}
		}
	}

	public static int AddCallWndProcListener(ICallWndProcListener listener)
	{
		int currentThreadId = NativeMethods.GetCurrentThreadId();
		ThreadHooks threadHooks;
		if (threadHookMap.ContainsKey(currentThreadId))
		{
			threadHooks = threadHookMap[currentThreadId] as ThreadHooks;
		}
		else
		{
			threadHooks = new ThreadHooks();
			threadHookMap.Add(currentThreadId, threadHooks);
		}
		threadHooks.AddCallWndProcListener(listener);
		return currentThreadId;
	}

	public static void RemoveCallWndProcListener(ICallWndProcListener listener)
	{
		int currentThreadId = NativeMethods.GetCurrentThreadId();
		RemoveCallWndProcListener(listener, currentThreadId);
	}

	public static void RemoveCallWndProcListener(ICallWndProcListener listener, int threadId)
	{
		if (threadHookMap.ContainsKey(threadId))
		{
			ThreadHooks threadHooks = threadHookMap[threadId] as ThreadHooks;
			threadHooks.RemoveCallWndProcListener(listener);
			if (threadHooks.callWndProcCount == 0 && threadHooks.getMsgProcCount == 0)
			{
				threadHookMap.Remove(threadId);
			}
		}
	}
}
