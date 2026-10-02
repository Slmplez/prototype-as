using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Runtime.InteropServices;
using System.Text;
using System.Web.Script.Serialization;
using System.Windows.Forms;

// Keep ASCET's UI message loop alive while suppressing its desktop windows.
class WindowGuard
{
    delegate bool EnumProc(IntPtr window, IntPtr parameter);
    delegate void EventProc(IntPtr hook, uint kind, IntPtr window, int objectId,
                            int childId, uint threadId, uint time);
    [DllImport("user32.dll")] static extern bool EnumWindows(EnumProc callback, IntPtr parameter);
    [DllImport("user32.dll")] static extern uint GetWindowThreadProcessId(IntPtr window, out uint pid);
    [DllImport("user32.dll")] static extern bool IsWindowVisible(IntPtr window);
    [DllImport("user32.dll")] static extern bool ShowWindowAsync(IntPtr window, int mode);
    [DllImport("user32.dll")] static extern IntPtr GetAncestor(IntPtr window, uint flags);
    [DllImport("user32.dll", CharSet = CharSet.Unicode)]
    static extern int GetClassName(IntPtr window, StringBuilder text, int capacity);
    [DllImport("user32.dll", CharSet = CharSet.Unicode)]
    static extern int GetWindowText(IntPtr window, StringBuilder text, int capacity);
    [DllImport("user32.dll")] static extern IntPtr SetWinEventHook(uint first, uint last,
        IntPtr module, EventProc callback, uint pid, uint thread, uint flags);
    [DllImport("user32.dll")] static extern bool UnhookWinEvent(IntPtr hook);

    sealed class Window
    {
        public long handle;
        public uint thread_id;
        public string type;
        public string text;
    }

    static readonly JavaScriptSerializer Json = new JavaScriptSerializer();
    static readonly Dictionary<IntPtr, Window> Hidden = new Dictionary<IntPtr, Window>();
    static Process Target;
    static uint TargetPid;
    static string TargetStart, Executable, StateFile;
    static IntPtr Hook;
    static EventProc Callback;
    static DateTime LastState;
    static bool Finished;

    static bool MatchesTarget()
    {
        Target.Refresh();
        return !Target.HasExited &&
            Target.StartTime.ToUniversalTime().ToString("o") == TargetStart &&
            String.Equals(Target.MainModule.FileName, Executable, StringComparison.OrdinalIgnoreCase);
    }

    static void Hide(IntPtr window)
    {
        uint pid;
        uint thread = GetWindowThreadProcessId(window, out pid);
        if (pid != TargetPid || GetAncestor(window, 2) != window || !IsWindowVisible(window)) return;
        if (!Hidden.ContainsKey(window))
        {
            var type = new StringBuilder(256);
            var text = new StringBuilder(1024);
            GetClassName(window, type, type.Capacity);
            GetWindowText(window, text, text.Capacity);
            Hidden.Add(window, new Window { handle = window.ToInt64(), thread_id = thread,
                type = type.ToString(), text = text.ToString() });
        }
        ShowWindowAsync(window, 0);
    }

    static void HideAll()
    {
        EnumWindows((window, parameter) => { Hide(window); return true; }, IntPtr.Zero);
    }

    static void Restore()
    {
        if (!MatchesTarget()) return;
        foreach (var pair in Hidden)
        {
            uint pid;
            if (GetWindowThreadProcessId(pair.Key, out pid) == pair.Value.thread_id && pid == TargetPid)
                ShowWindowAsync(pair.Key, 4);
        }
    }

    static void WriteState(string status, string error)
    {
        using (var self = Process.GetCurrentProcess())
        {
            var state = Json.Serialize(new { status, error, target_pid = TargetPid,
                target_start_time_utc = TargetStart, pid = self.Id,
                start_time_utc = self.StartTime.ToUniversalTime().ToString("o"),
                executable = self.MainModule.FileName, command_file = StateFile + ".command",
                updated_at_utc = DateTime.UtcNow.ToString("o"), windows = new List<Window>(Hidden.Values) });
            string temporary = StateFile + ".tmp";
            File.WriteAllText(temporary, state, new UTF8Encoding(false));
            if (File.Exists(StateFile)) File.Replace(temporary, StateFile, null);
            else File.Move(temporary, StateFile);
        }
        LastState = DateTime.UtcNow;
    }

    static void Finish(string status, string error, bool restore)
    {
        if (Finished) return;
        Finished = true;
        if (Hook != IntPtr.Zero) { UnhookWinEvent(Hook); Hook = IntPtr.Zero; }
        if (restore) Restore();
        WriteState(status, error);
        Application.ExitThread();
    }

    [STAThread]
    static int Main(string[] args)
    {
        try
        {
            TargetPid = UInt32.Parse(args[0]);
            TargetStart = args[1];
            Executable = Path.GetFullPath(args[2]);
            StateFile = Path.GetFullPath(args[3]);
            Target = Process.GetProcessById((int)TargetPid);
            if (!MatchesTarget()) throw new InvalidOperationException("ASCET process identity changed");
            Callback = (hook, kind, window, objectId, childId, thread, time) => {
                if (objectId != 0 || childId != 0 || window == IntPtr.Zero) return;
                if (kind == 0x8001) Hidden.Remove(window);
                else Hide(window);
            };
            Hook = SetWinEventHook(0x8001, 0x8002, IntPtr.Zero, Callback, TargetPid, 0, 0);
            if (Hook == IntPtr.Zero) throw new InvalidOperationException("Window event hook failed");
            HideAll();
            WriteState("watching", null);
            using (var timer = new Timer { Interval = 100 })
            {
                timer.Tick += (sender, eventArgs) => {
                    try
                    {
                        if (!MatchesTarget()) { Finish("exited", null, false); return; }
                        if (File.Exists(StateFile + ".command"))
                        {
                            string command = File.ReadAllText(StateFile + ".command").Trim();
                            if (command == "show") { Finish("shown", null, true); return; }
                        }
                        HideAll();
                        if ((DateTime.UtcNow - LastState).TotalSeconds >= 1) WriteState("watching", null);
                    }
                    catch (Exception error) { Finish("failed", error.Message, true); }
                };
                timer.Start();
                Application.Run();
            }
            return 0;
        }
        catch (Exception error)
        {
            try { Finish("failed", error.Message, true); } catch { }
            return 1;
        }
        finally
        {
            if (Hook != IntPtr.Zero) UnhookWinEvent(Hook);
            if (Target != null) Target.Dispose();
        }
    }
}
