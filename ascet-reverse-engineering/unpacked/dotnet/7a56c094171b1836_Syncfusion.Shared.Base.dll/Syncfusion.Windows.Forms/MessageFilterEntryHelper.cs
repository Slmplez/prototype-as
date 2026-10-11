using System;
using System.Collections;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class MessageFilterEntryHelper : IMessageFilter, IMouseHookHLProcClient, IKeyboardProcHookClient
{
	[ThreadStatic]
	private static MessageFilterEntryHelper singleton = null;

	private ArrayList filters;

	private Hashtable m_suspend;

	private Hashtable m_htFilters;

	private MouseProcHookerUtil mouseProcHooker;

	private KeyboardProcHooker keyboardProcHooker;

	private bool parsingFilters;

	private ArrayList filtersToRemoveAfterParse;

	private bool bFlag = true;

	private static bool s_isDevEnv = SystemInformationExt.IsDotNetApp && !SystemInformationExt.IsDevStudio;

	internal MessageFilterEntryHelperWeakContainer messageFilterEntryHelperWeakContainer;

	private static MessageFilterEntryHelper Singleton
	{
		get
		{
			if (singleton == null)
			{
				singleton = new MessageFilterEntryHelper();
			}
			return singleton;
		}
	}

	private MessageFilterEntryHelper()
	{
		filters = new ArrayList();
		filtersToRemoveAfterParse = new ArrayList();
		m_htFilters = new Hashtable();
		m_suspend = new Hashtable();
	}

	public static void Suspend(object tag)
	{
		Singleton.SuspendInternal(tag);
	}

	internal void SuspendInternal(object tag)
	{
		if (tag != null && !m_suspend.ContainsKey(tag))
		{
			m_suspend.Add(tag, null);
		}
	}

	public static void Resume(object tag)
	{
		Singleton.ResumeInternal(tag);
	}

	internal void ResumeInternal(object tag)
	{
		if (tag != null && m_suspend.ContainsKey(tag))
		{
			m_suspend.Remove(tag);
		}
	}

	public static void AddMessageFilter(IMessageFilter filter, bool ontop, object tag)
	{
		lock (typeof(MessageFilterEntryHelper))
		{
			Singleton.AddMessageFilterInternal(filter, ontop, tag);
		}
	}

	internal void AddMessageFilterInternal(IMessageFilter filter, bool ontop, object tag)
	{
		if (filter != null && !m_htFilters.ContainsKey(filter))
		{
			m_htFilters.Add(filter, tag);
		}
		AddMessageFilterInternal(filter, ontop);
	}

	public static void AddMessageFilter(IMessageFilter filter, bool ontop)
	{
		lock (typeof(MessageFilterEntryHelper))
		{
			Singleton.AddMessageFilterInternal(filter, ontop);
		}
	}

	internal void AddMessageFilterInternal(IMessageFilter filter, bool ontop)
	{
		if (filter == null && !m_htFilters.ContainsKey(filter))
		{
			m_htFilters.Add(filter, null);
		}
		if (filters.Contains(filter))
		{
			if (filtersToRemoveAfterParse.Contains(filter))
			{
				filtersToRemoveAfterParse.Remove(filter);
			}
			if (ontop && filters[0] != filter)
			{
				filters.Remove(filter);
				filters.Insert(0, filter);
			}
		}
		else
		{
			if (ontop)
			{
				filters.Insert(0, filter);
			}
			else
			{
				filters.Add(filter);
			}
			filtersToRemoveAfterParse.Remove(filter);
		}
		if (s_isDevEnv)
		{
			if (filters.Count == 1)
			{
				if (messageFilterEntryHelperWeakContainer != null)
				{
					Application.Idle -= messageFilterEntryHelperWeakContainer.AppIdleWeakEventHandler;
				}
				Application.AddMessageFilter(this);
			}
		}
		else if (filters.Count == 1)
		{
			InitHooks();
			mouseProcHooker.HookMessages = true;
			keyboardProcHooker.HookMessages = true;
		}
	}

	public static void RemoveMessageFilter(IMessageFilter filter)
	{
		lock (typeof(MessageFilterEntryHelper))
		{
			Singleton.RemoveMessageFilterInternal(filter);
		}
	}

	internal void RemoveMessageFilterInternal(IMessageFilter filter)
	{
		if (filter != null && m_htFilters.ContainsKey(filter))
		{
			m_htFilters.Remove(filter);
		}
		if (parsingFilters)
		{
			filtersToRemoveAfterParse.Add(filter);
			return;
		}
		filters.Remove(filter);
		VerifyHooksRequirement();
	}

	internal void OnAppIdle(object sender, EventArgs a)
	{
		Application.RemoveMessageFilter(this);
		Application.Idle -= messageFilterEntryHelperWeakContainer.AppIdleWeakEventHandler;
	}

	private void VerifyHooksRequirement()
	{
		if (s_isDevEnv)
		{
			if (filters.Count == 0 && bFlag)
			{
				if (messageFilterEntryHelperWeakContainer == null)
				{
					messageFilterEntryHelperWeakContainer = new MessageFilterEntryHelperWeakContainer(this);
				}
				Application.Idle += messageFilterEntryHelperWeakContainer.AppIdleWeakEventHandler;
				bFlag = false;
			}
		}
		else if (filters.Count == 0)
		{
			ReleaseHooks();
		}
	}

	private void OnBeforeFiltersEnumeration()
	{
		parsingFilters = true;
	}

	private void OnAfterFiltersEnumeration()
	{
		parsingFilters = false;
		if (filtersToRemoveAfterParse.Count <= 0)
		{
			return;
		}
		foreach (IMessageFilter item in filtersToRemoveAfterParse)
		{
			filters.Remove(item);
		}
		VerifyHooksRequirement();
	}

	private void InitHooks()
	{
		if (mouseProcHooker == null)
		{
			mouseProcHooker = new MouseProcHookerUtil(IntPtr.Zero, this);
			keyboardProcHooker = new KeyboardProcHooker(IntPtr.Zero, this);
			mouseProcHooker.HookMessages = false;
			keyboardProcHooker.HookMessages = false;
		}
	}

	private void ReleaseHooks()
	{
		if (mouseProcHooker != null)
		{
			mouseProcHooker.HookMessages = false;
			mouseProcHooker.Dispose();
			mouseProcHooker = null;
		}
		if (keyboardProcHooker != null)
		{
			keyboardProcHooker.HookMessages = false;
			keyboardProcHooker.Dispose();
			keyboardProcHooker = null;
		}
	}

	bool IMouseHookHLProcClient.MouseHookProc(int msg, Point point, IntPtr hwnd, int wHitTestCode, int dwExtraInfo)
	{
		OnBeforeFiltersEnumeration();
		try
		{
			for (int i = 0; i < filters.Count; i++)
			{
				if (filters[i] is IMouseHookHLProcClient mouseHookHLProcClient && (m_htFilters[mouseHookHLProcClient] == null || !m_suspend.ContainsKey(m_htFilters[mouseHookHLProcClient])) && mouseHookHLProcClient.MouseHookProc(msg, point, hwnd, wHitTestCode, dwExtraInfo))
				{
					return true;
				}
			}
		}
		finally
		{
			OnAfterFiltersEnumeration();
		}
		return false;
	}

	bool IKeyboardProcHookClient.KeyboardHookProc(int wParam, int lParam)
	{
		OnBeforeFiltersEnumeration();
		try
		{
			for (int i = 0; i < filters.Count; i++)
			{
				if (filters[i] is IKeyboardProcHookClient keyboardProcHookClient && (m_htFilters[keyboardProcHookClient] == null || !m_suspend.ContainsKey(m_htFilters[keyboardProcHookClient])) && keyboardProcHookClient.KeyboardHookProc(wParam, lParam))
				{
					return true;
				}
			}
		}
		finally
		{
			OnAfterFiltersEnumeration();
		}
		return false;
	}

	bool IMessageFilter.PreFilterMessage(ref Message m)
	{
		OnBeforeFiltersEnumeration();
		try
		{
			IMessageFilter messageFilter = null;
			for (int i = 0; i < filters.Count; i++)
			{
				messageFilter = (IMessageFilter)filters[i];
				if ((m_htFilters[messageFilter] == null || !m_suspend.ContainsKey(m_htFilters[messageFilter])) && messageFilter.PreFilterMessage(ref m))
				{
					return true;
				}
			}
		}
		finally
		{
			OnAfterFiltersEnumeration();
		}
		return false;
	}
}
