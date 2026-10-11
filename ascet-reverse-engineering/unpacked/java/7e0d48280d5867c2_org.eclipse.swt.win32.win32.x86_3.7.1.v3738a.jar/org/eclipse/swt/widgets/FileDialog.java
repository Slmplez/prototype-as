/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.Callback;
import org.eclipse.swt.internal.win32.OFNOTIFY;
import org.eclipse.swt.internal.win32.OPENFILENAME;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;

public class FileDialog
extends Dialog {
    String[] filterNames = new String[0];
    String[] filterExtensions = new String[0];
    String[] fileNames = new String[0];
    String filterPath = "";
    String fileName = "";
    int filterIndex = 0;
    boolean overwrite = false;
    static final String FILTER = "*.*";
    static int BUFFER_SIZE = 32768;
    static boolean USE_HOOK = true;

    static {
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
            USE_HOOK = false;
        }
    }

    public FileDialog(Shell parent) {
        this(parent, 65536);
    }

    public FileDialog(Shell parent, int style) {
        super(parent, FileDialog.checkStyle(parent, style));
        this.checkSubclass();
    }

    public String getFileName() {
        return this.fileName;
    }

    public String[] getFileNames() {
        return this.fileNames;
    }

    public String[] getFilterExtensions() {
        return this.filterExtensions;
    }

    public int getFilterIndex() {
        return this.filterIndex;
    }

    public String[] getFilterNames() {
        return this.filterNames;
    }

    public String getFilterPath() {
        return this.filterPath;
    }

    public boolean getOverwrite() {
        return this.overwrite;
    }

    int OFNHookProc(int hdlg, int uiMsg, int wParam, int lParam) {
        switch (uiMsg) {
            case 78: {
                int hHeap;
                int lpstrFile;
                int lResult;
                OFNOTIFY ofn = new OFNOTIFY();
                OS.MoveMemory(ofn, lParam, OFNOTIFY.sizeof);
                if (ofn.code != -602 || (lResult = OS.SendMessage(ofn.hwndFrom, 1124, 0, 0)) <= 0) break;
                OPENFILENAME lpofn = new OPENFILENAME();
                OS.MoveMemory(lpofn, ofn.lpOFN, OPENFILENAME.sizeof);
                if (lpofn.nMaxFile >= (lResult += 260) || (lpstrFile = OS.HeapAlloc(hHeap = OS.GetProcessHeap(), 8, lResult * TCHAR.sizeof)) == 0) break;
                if (lpofn.lpstrFile != 0) {
                    OS.HeapFree(hHeap, 0, lpofn.lpstrFile);
                }
                lpofn.lpstrFile = lpstrFile;
                lpofn.nMaxFile = lResult;
                OS.MoveMemory(ofn.lpOFN, lpofn, OPENFILENAME.sizeof);
            }
        }
        return 0;
    }

    public String open() {
        boolean save;
        int parentOrientation;
        int dialogOrientation;
        int hHeap = OS.GetProcessHeap();
        int hwndOwner = this.parent.handle;
        int hwndParent = this.parent.handle;
        boolean enabled = false;
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10) && (dialogOrientation = this.style & 0x6000000) != (parentOrientation = this.parent.style & 0x6000000)) {
            int exStyle = 0x100000;
            if (dialogOrientation == 0x4000000) {
                exStyle |= 0x400000;
            }
            hwndOwner = OS.CreateWindowEx(exStyle, Shell.DialogClass, null, 0, Integer.MIN_VALUE, 0, Integer.MIN_VALUE, 0, hwndParent, 0, OS.GetModuleHandle(null), null);
            enabled = OS.IsWindowEnabled(hwndParent);
            if (enabled) {
                OS.EnableWindow(hwndParent, false);
            }
        }
        if (this.title == null) {
            this.title = "";
        }
        TCHAR buffer3 = new TCHAR(0, this.title, true);
        int byteCount3 = buffer3.length() * TCHAR.sizeof;
        int lpstrTitle = OS.HeapAlloc(hHeap, 8, byteCount3);
        OS.MoveMemory(lpstrTitle, buffer3, byteCount3);
        String strFilter = "";
        if (this.filterNames == null) {
            this.filterNames = new String[0];
        }
        if (this.filterExtensions == null) {
            this.filterExtensions = new String[0];
        }
        int i = 0;
        while (i < this.filterExtensions.length) {
            String filterName = this.filterExtensions[i];
            if (i < this.filterNames.length) {
                filterName = this.filterNames[i];
            }
            strFilter = String.valueOf(strFilter) + filterName + '\u0000' + this.filterExtensions[i] + '\u0000';
            ++i;
        }
        if (this.filterExtensions.length == 0) {
            strFilter = String.valueOf(strFilter) + FILTER + '\u0000' + FILTER + '\u0000';
        }
        TCHAR buffer4 = new TCHAR(0, strFilter, true);
        int byteCount4 = buffer4.length() * TCHAR.sizeof;
        int lpstrFilter = OS.HeapAlloc(hHeap, 8, byteCount4);
        OS.MoveMemory(lpstrFilter, buffer4, byteCount4);
        if (this.fileName == null) {
            this.fileName = "";
        }
        TCHAR name = new TCHAR(0, this.fileName, true);
        int nMaxFile = 260;
        if ((this.style & 2) != 0) {
            nMaxFile = Math.max(nMaxFile, BUFFER_SIZE);
        }
        int byteCount = nMaxFile * TCHAR.sizeof;
        int lpstrFile = OS.HeapAlloc(hHeap, 8, byteCount);
        int byteCountFile = Math.min(name.length() * TCHAR.sizeof, byteCount - TCHAR.sizeof);
        OS.MoveMemory(lpstrFile, name, byteCountFile);
        if (this.filterPath == null) {
            this.filterPath = "";
        }
        TCHAR path = new TCHAR(0, this.filterPath.replace('/', '\\'), true);
        int byteCount5 = 260 * TCHAR.sizeof;
        int lpstrInitialDir = OS.HeapAlloc(hHeap, 8, byteCount5);
        int byteCountDir = Math.min(path.length() * TCHAR.sizeof, byteCount5 - TCHAR.sizeof);
        OS.MoveMemory(lpstrInitialDir, path, byteCountDir);
        OPENFILENAME struct = new OPENFILENAME();
        struct.lStructSize = OPENFILENAME.sizeof;
        struct.Flags = 12;
        boolean bl = save = (this.style & 0x2000) != 0;
        if (save && this.overwrite) {
            struct.Flags |= 2;
        }
        Callback callback = null;
        if ((this.style & 2) != 0) {
            struct.Flags |= 0x880200;
            if (!OS.IsWinCE && USE_HOOK) {
                callback = new Callback(this, "OFNHookProc", 4);
                int lpfnHook = callback.getAddress();
                if (lpfnHook == 0) {
                    SWT.error(3);
                }
                struct.lpfnHook = lpfnHook;
                struct.Flags |= 0x20;
            }
        }
        struct.hwndOwner = hwndOwner;
        struct.lpstrTitle = lpstrTitle;
        struct.lpstrFile = lpstrFile;
        struct.nMaxFile = nMaxFile;
        struct.lpstrInitialDir = lpstrInitialDir;
        struct.lpstrFilter = lpstrFilter;
        struct.nFilterIndex = this.filterIndex == 0 ? this.filterIndex : this.filterIndex + 1;
        int lpstrDefExt = 0;
        if (save) {
            struct.lpstrDefExt = lpstrDefExt = OS.HeapAlloc(hHeap, 8, TCHAR.sizeof);
        }
        Dialog oldModal = null;
        Display display = this.parent.getDisplay();
        if ((this.style & 0x30000) != 0) {
            oldModal = display.getModalDialog();
            display.setModalDialog(this);
        }
        boolean oldRunMessagesInIdle = display.runMessagesInIdle;
        display.runMessagesInIdle = !OS.IsWin95;
        boolean success = save ? OS.GetSaveFileName(struct) : OS.GetOpenFileName(struct);
        switch (OS.CommDlgExtendedError()) {
            case 12290: {
                OS.MoveMemory(lpstrFile, new TCHAR(0, "", true), TCHAR.sizeof);
                success = save ? OS.GetSaveFileName(struct) : OS.GetOpenFileName(struct);
                break;
            }
            case 12291: {
                USE_HOOK = true;
            }
        }
        display.runMessagesInIdle = oldRunMessagesInIdle;
        if ((this.style & 0x30000) != 0) {
            display.setModalDialog(oldModal);
        }
        if (callback != null) {
            callback.dispose();
        }
        lpstrFile = struct.lpstrFile;
        this.fileNames = new String[0];
        String fullPath = null;
        if (success) {
            TCHAR buffer = new TCHAR(0, struct.nMaxFile);
            int byteCount1 = buffer.length() * TCHAR.sizeof;
            OS.MoveMemory(buffer, lpstrFile, byteCount1);
            int nFileOffset = struct.nFileOffset;
            if (OS.IsWinCE && nFileOffset == 0) {
                int index = 0;
                while (index < buffer.length()) {
                    int ch = buffer.tcharAt(index);
                    if (ch == 0) break;
                    if (ch == 92) {
                        nFileOffset = index + 1;
                    }
                    ++index;
                }
            }
            if (nFileOffset > 0) {
                String[] newFileNames;
                TCHAR prefix = new TCHAR(0, nFileOffset - 1);
                int byteCount2 = prefix.length() * TCHAR.sizeof;
                OS.MoveMemory(prefix, lpstrFile, byteCount2);
                this.filterPath = prefix.toString(0, prefix.length());
                int count = 0;
                this.fileNames = new String[(this.style & 2) != 0 ? 4 : 1];
                int start = nFileOffset;
                do {
                    int end = start;
                    while (end < buffer.length() && buffer.tcharAt(end) != 0) {
                        ++end;
                    }
                    String string = buffer.toString(start, end - start);
                    start = end;
                    if (count == this.fileNames.length) {
                        newFileNames = new String[this.fileNames.length + 4];
                        System.arraycopy(this.fileNames, 0, newFileNames, 0, this.fileNames.length);
                        this.fileNames = newFileNames;
                    }
                    this.fileNames[count++] = string;
                } while ((this.style & 2) != 0 && ++start < buffer.length() && buffer.tcharAt(start) != 0);
                if (this.fileNames.length > 0) {
                    this.fileName = this.fileNames[0];
                }
                String separator = "";
                int length = this.filterPath.length();
                if (length > 0 && this.filterPath.charAt(length - 1) != '\\') {
                    separator = "\\";
                }
                fullPath = String.valueOf(this.filterPath) + separator + this.fileName;
                if (count < this.fileNames.length) {
                    newFileNames = new String[count];
                    System.arraycopy(this.fileNames, 0, newFileNames, 0, count);
                    this.fileNames = newFileNames;
                }
            }
            this.filterIndex = struct.nFilterIndex - 1;
        }
        OS.HeapFree(hHeap, 0, lpstrFile);
        OS.HeapFree(hHeap, 0, lpstrFilter);
        OS.HeapFree(hHeap, 0, lpstrInitialDir);
        OS.HeapFree(hHeap, 0, lpstrTitle);
        if (lpstrDefExt != 0) {
            OS.HeapFree(hHeap, 0, lpstrDefExt);
        }
        if (hwndParent != hwndOwner) {
            if (enabled) {
                OS.EnableWindow(hwndParent, true);
            }
            OS.SetActiveWindow(hwndParent);
            OS.DestroyWindow(hwndOwner);
        }
        return fullPath;
    }

    public void setFileName(String string) {
        this.fileName = string;
    }

    public void setFilterExtensions(String[] extensions) {
        this.filterExtensions = extensions;
    }

    public void setFilterIndex(int index) {
        this.filterIndex = index;
    }

    public void setFilterNames(String[] names) {
        this.filterNames = names;
    }

    public void setFilterPath(String string) {
        this.filterPath = string;
    }

    public void setOverwrite(boolean overwrite) {
        this.overwrite = overwrite;
    }
}

