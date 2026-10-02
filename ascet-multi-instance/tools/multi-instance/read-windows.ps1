param([Parameter(Mandatory=$true)][uint32]$TargetProcessId)
$ErrorActionPreference = 'Stop'
Add-Type -TypeDefinition @'
using System;
using System.Text;
using System.Collections.Generic;
using System.Runtime.InteropServices;
public static class AscetWindowReader {
    public delegate bool EnumProc(IntPtr h, IntPtr p);
    [DllImport("user32.dll")] static extern bool EnumWindows(EnumProc callback, IntPtr p);
    [DllImport("user32.dll")] static extern bool EnumChildWindows(IntPtr h, EnumProc callback, IntPtr p);
    [DllImport("user32.dll")] static extern uint GetWindowThreadProcessId(IntPtr h, out uint pid);
    [DllImport("user32.dll")] static extern bool IsWindowVisible(IntPtr h);
    [DllImport("user32.dll", CharSet=CharSet.Unicode)] static extern int GetClassName(IntPtr h, StringBuilder s, int n);
    [DllImport("user32.dll", CharSet=CharSet.Unicode)] static extern IntPtr SendMessageTimeout(IntPtr h, uint m, IntPtr w, StringBuilder l, uint flags, uint timeout, out IntPtr result);
    public sealed class Window { public long handle; public string type; public string text; public bool visible; public bool top_level; }
    static Window Read(IntPtr h, bool topLevel) {
        var text = new StringBuilder(16384);
        var type = new StringBuilder(256);
        GetClassName(h, type, type.Capacity);
        IntPtr result;
        SendMessageTimeout(h, 13, (IntPtr)text.Capacity, text, 2, 500, out result);
        return new Window { handle=h.ToInt64(), type=type.ToString(), text=text.ToString(), visible=IsWindowVisible(h), top_level=topLevel };
    }
    public static Window[] ForPid(uint pid) {
        var windows = new List<Window>();
        EnumWindows((h,p) => {
            uint owner;
            GetWindowThreadProcessId(h, out owner);
            if (owner == pid) {
                windows.Add(Read(h, true));
                EnumChildWindows(h, (child,q) => { windows.Add(Read(child, false)); return true; }, IntPtr.Zero);
            }
            return true;
        }, IntPtr.Zero);
        return windows.ToArray();
    }
}
'@
[AscetWindowReader]::ForPid($TargetProcessId) | ConvertTo-Json -Depth 3
