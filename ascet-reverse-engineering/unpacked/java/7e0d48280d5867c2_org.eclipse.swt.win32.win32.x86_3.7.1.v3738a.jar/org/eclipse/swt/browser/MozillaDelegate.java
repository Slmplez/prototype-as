/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.Mozilla;
import org.eclipse.swt.internal.Callback;
import org.eclipse.swt.internal.mozilla.nsIBaseWindow;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Display;

class MozillaDelegate {
    Browser browser;
    static int MozillaProc;
    static Callback SubclassProc;
    static /* synthetic */ Class class$0;

    MozillaDelegate(Browser browser) {
        this.browser = browser;
    }

    static Browser findBrowser(int handle) {
        Display display = Display.getCurrent();
        return (Browser)display.findWidget(handle);
    }

    static String getLibraryName() {
        return "xpcom.dll";
    }

    static char[] mbcsToWcs(String codePage, byte[] buffer) {
        char[] chars = new char[buffer.length];
        int charCount = OS.MultiByteToWideChar(0, 1, buffer, buffer.length, chars, chars.length);
        if (charCount == chars.length) {
            return chars;
        }
        char[] result = new char[charCount];
        System.arraycopy(chars, 0, result, 0, charCount);
        return result;
    }

    static byte[] wcsToMbcs(String codePage, String string, boolean terminate) {
        char[] chars = new char[string.length()];
        string.getChars(0, chars.length, chars, 0);
        int byteCount = chars.length * 2 + (terminate ? 1 : 0);
        byte[] bytes = new byte[byteCount];
        byteCount = OS.WideCharToMultiByte(0, 0, chars, chars.length, bytes, byteCount, null, null);
        if (terminate) {
            ++byteCount;
        } else if (bytes.length != byteCount) {
            byte[] result = new byte[byteCount];
            System.arraycopy(bytes, 0, result, 0, byteCount);
            bytes = result;
        }
        return bytes;
    }

    static int windowProc(int hwnd, int msg, int wParam, int lParam) {
        switch (msg) {
            case 20: {
                RECT rect = new RECT();
                OS.GetClientRect(hwnd, rect);
                OS.FillRect(wParam, rect, OS.GetSysColorBrush(OS.COLOR_WINDOW));
            }
        }
        return OS.CallWindowProc(MozillaProc, hwnd, msg, wParam, lParam);
    }

    void addWindowSubclass() {
        int hwndChild = OS.GetWindow(this.browser.handle, 5);
        if (SubclassProc == null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.swt.browser.MozillaDelegate");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            SubclassProc = new Callback(clazz, "windowProc", 4);
            MozillaProc = OS.GetWindowLongPtr(hwndChild, -4);
        }
        OS.SetWindowLongPtr(hwndChild, -4, SubclassProc.getAddress());
    }

    int createBaseWindow(nsIBaseWindow baseWindow) {
        return baseWindow.Create();
    }

    int getHandle() {
        return this.browser.handle;
    }

    String getJSLibraryName() {
        return "js3250.dll";
    }

    String getProfilePath() {
        TCHAR buffer = new TCHAR(0, 260);
        String baseDir = OS.SHGetFolderPath(0, 26, 0, 0, buffer) == 0 ? buffer.toString(0, buffer.strlen()) : System.getProperty("user.home");
        return String.valueOf(baseDir) + Mozilla.SEPARATOR_OS + "Mozilla" + Mozilla.SEPARATOR_OS + "eclipse";
    }

    static String GetSWTInitLibraryName() {
        return "swt-xulrunner";
    }

    void handleFocus() {
    }

    void handleMouseDown() {
    }

    boolean hookEnterExit() {
        return true;
    }

    void init() {
    }

    boolean needsSpinup() {
        return false;
    }

    void onDispose(int embedHandle) {
        this.removeWindowSubclass();
        this.browser = null;
    }

    void removeWindowSubclass() {
        if (SubclassProc == null) {
            return;
        }
        int hwndChild = OS.GetWindow(this.browser.handle, 5);
        OS.SetWindowLongPtr(hwndChild, -4, MozillaProc);
    }

    boolean sendTraverse() {
        return false;
    }

    void setSize(int embedHandle, int width, int height) {
    }
}

