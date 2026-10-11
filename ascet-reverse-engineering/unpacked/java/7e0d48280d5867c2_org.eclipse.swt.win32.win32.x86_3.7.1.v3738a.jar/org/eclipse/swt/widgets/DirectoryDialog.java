/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.Callback;
import org.eclipse.swt.internal.win32.BROWSEINFO;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;

public class DirectoryDialog
extends Dialog {
    String message = "";
    String filterPath = "";
    String directoryPath;

    public DirectoryDialog(Shell parent) {
        this(parent, 65536);
    }

    public DirectoryDialog(Shell parent, int style) {
        super(parent, DirectoryDialog.checkStyle(parent, style));
        this.checkSubclass();
    }

    int BrowseCallbackProc(int hwnd, int uMsg, int lParam, int lpData) {
        switch (uMsg) {
            case 1: {
                TCHAR buffer;
                if (this.filterPath != null && this.filterPath.length() != 0) {
                    buffer = new TCHAR(0, this.filterPath.replace('/', '\\'), true);
                    OS.SendMessage(hwnd, OS.BFFM_SETSELECTION, 1, buffer);
                }
                if (this.title == null || this.title.length() == 0) break;
                buffer = new TCHAR(0, this.title, true);
                OS.SetWindowText(hwnd, buffer);
                break;
            }
            case 3: 
            case 4: {
                int length = OS.IsUnicode ? OS.wcslen(lParam) : OS.strlen(lParam);
                TCHAR buffer = new TCHAR(0, length);
                int byteCount = buffer.length() * TCHAR.sizeof;
                OS.MoveMemory(buffer, lParam, byteCount);
                this.directoryPath = buffer.toString(0, length);
            }
        }
        return 0;
    }

    public String getFilterPath() {
        return this.filterPath;
    }

    public String getMessage() {
        return this.message;
    }

    public String open() {
        int[] ppMalloc;
        TCHAR buffer;
        boolean success;
        Callback callback;
        int lpfn;
        if (OS.IsWinCE) {
            SWT.error(20);
        }
        int hHeap = OS.GetProcessHeap();
        int hwndOwner = 0;
        if (this.parent != null) {
            hwndOwner = this.parent.handle;
        }
        int lpszTitle = 0;
        if (this.message.length() != 0) {
            String string = this.message;
            if (string.indexOf(38) != -1) {
                int length = string.length();
                char[] buffer2 = new char[length * 2];
                int index = 0;
                int i = 0;
                while (i < length) {
                    char ch = string.charAt(i);
                    if (ch == '&') {
                        buffer2[index++] = 38;
                    }
                    buffer2[index++] = ch;
                    ++i;
                }
                string = new String(buffer2, 0, index);
            }
            TCHAR buffer3 = new TCHAR(0, string, true);
            int byteCount = buffer3.length() * TCHAR.sizeof;
            lpszTitle = OS.HeapAlloc(hHeap, 8, byteCount);
            OS.MoveMemory(lpszTitle, buffer3, byteCount);
        }
        if ((lpfn = (callback = new Callback(this, "BrowseCallbackProc", 4)).getAddress()) == 0) {
            SWT.error(3);
        }
        Dialog oldModal = null;
        Display display = this.parent.getDisplay();
        if ((this.style & 0x30000) != 0) {
            oldModal = display.getModalDialog();
            display.setModalDialog(this);
        }
        this.directoryPath = null;
        BROWSEINFO lpbi = new BROWSEINFO();
        lpbi.hwndOwner = hwndOwner;
        lpbi.lpszTitle = lpszTitle;
        lpbi.ulFlags = 113;
        lpbi.lpfn = lpfn;
        int oldErrorMode = OS.SetErrorMode(1);
        boolean oldRunMessages = display.runMessages;
        if (OS.COMCTL32_MAJOR < 6) {
            display.runMessages = false;
        }
        int lpItemIdList = OS.SHBrowseForFolder(lpbi);
        if (OS.COMCTL32_MAJOR < 6) {
            display.runMessages = oldRunMessages;
        }
        OS.SetErrorMode(oldErrorMode);
        if ((this.style & 0x30000) != 0) {
            display.setModalDialog(oldModal);
        }
        boolean bl = success = lpItemIdList != 0;
        if (success && OS.SHGetPathFromIDList(lpItemIdList, buffer = new TCHAR(0, 260))) {
            this.filterPath = this.directoryPath = buffer.toString(0, buffer.strlen());
        }
        callback.dispose();
        if (lpszTitle != 0) {
            OS.HeapFree(hHeap, 0, lpszTitle);
        }
        if (OS.SHGetMalloc(ppMalloc = new int[1]) == 0) {
            OS.VtblCall(5, ppMalloc[0], lpItemIdList);
        }
        if (!success) {
            return null;
        }
        return this.directoryPath;
    }

    public void setFilterPath(String string) {
        this.filterPath = string;
    }

    public void setMessage(String string) {
        if (string == null) {
            this.error(4);
        }
        this.message = string;
    }
}

