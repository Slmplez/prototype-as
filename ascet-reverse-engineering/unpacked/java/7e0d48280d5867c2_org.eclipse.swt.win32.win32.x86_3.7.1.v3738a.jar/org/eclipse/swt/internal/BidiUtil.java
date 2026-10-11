/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal;

import java.util.Hashtable;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.internal.Callback;
import org.eclipse.swt.internal.LONG;
import org.eclipse.swt.internal.win32.GCP_RESULTS;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Control;

public class BidiUtil {
    public static final int KEYBOARD_NON_BIDI = 0;
    public static final int KEYBOARD_BIDI = 1;
    static int isBidiPlatform = -1;
    public static final int CLASSIN = 1;
    public static final int LINKBEFORE = 2;
    public static final int LINKAFTER = 4;
    static Hashtable languageMap = new Hashtable();
    static Hashtable keyMap = new Hashtable();
    static Hashtable oldProcMap = new Hashtable();
    static final String CLASS_NAME = "org.eclipse.swt.internal.BidiUtil";
    static Callback callback;
    static final int GCP_REORDER = 2;
    static final int GCP_GLYPHSHAPE = 16;
    static final int GCP_LIGATE = 32;
    static final int GCP_CLASSIN = 524288;
    static final byte GCPCLASS_ARABIC = 2;
    static final byte GCPCLASS_HEBREW = 2;
    static final byte GCPCLASS_LOCALNUMBER = 4;
    static final byte GCPCLASS_LATINNUMBER = 5;
    static final int GCPGLYPH_LINKBEFORE = 32768;
    static final int GCPGLYPH_LINKAFTER = 16384;
    static final int ETO_CLIPPED = 4;
    static final int ETO_GLYPH_INDEX = 16;
    static final int LANG_ARABIC = 1;
    static final int LANG_HEBREW = 13;
    static final int LANG_FARSI = 41;
    static final String CD_PG_HEBREW = "1255";
    static final String CD_PG_ARABIC = "1256";
    static final int HKL_NEXT = 1;
    static final int HKL_PREV = 0;
    public static final int CLASS_HEBREW = 2;
    public static final int CLASS_ARABIC = 2;
    public static final int CLASS_LOCALNUMBER = 4;
    public static final int CLASS_LATINNUMBER = 5;
    public static final int REORDER = 2;
    public static final int LIGATE = 32;
    public static final int GLYPHSHAPE = 16;

    static {
        try {
            callback = new Callback(Class.forName(CLASS_NAME), "windowProc", 4);
            if (callback.getAddress() == 0) {
                SWT.error(3);
            }
        }
        catch (ClassNotFoundException classNotFoundException) {}
    }

    public static void addLanguageListener(int hwnd, Runnable runnable) {
        languageMap.put(new LONG(hwnd), runnable);
        BidiUtil.subclass(hwnd);
    }

    public static void addLanguageListener(Control control, Runnable runnable) {
        BidiUtil.addLanguageListener(control.handle, runnable);
    }

    static int EnumSystemLanguageGroupsProc(int lpLangGrpId, int lpLangGrpIdString, int lpLangGrpName, int options, int lParam) {
        if (lpLangGrpId == 12) {
            isBidiPlatform = 1;
            return 0;
        }
        if (lpLangGrpId == 13) {
            isBidiPlatform = 1;
            return 0;
        }
        return 1;
    }

    public static void drawGlyphs(GC gc, char[] renderBuffer, int[] renderDx, int x, int y) {
        int length = renderDx.length;
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10) && OS.GetLayout(gc.handle) != 0) {
            BidiUtil.reverse(renderDx);
            int n = length - 1;
            renderDx[n] = renderDx[n] - 1;
            BidiUtil.reverse(renderBuffer);
        }
        int oldBkMode = OS.SetBkMode(gc.handle, 1);
        OS.ExtTextOutW(gc.handle, x, y, 16, null, renderBuffer, renderBuffer.length, renderDx);
        OS.SetBkMode(gc.handle, oldBkMode);
    }

    public static char[] getRenderInfo(GC gc, String text, int[] order, byte[] classBuffer, int[] dx, int flags, int[] offsets) {
        int fontLanguageInfo = OS.GetFontLanguageInfo(gc.handle);
        int hHeap = OS.GetProcessHeap();
        int[] lpCs = new int[8];
        int cs = OS.GetTextCharset(gc.handle);
        boolean isRightOriented = false;
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10)) {
            isRightOriented = OS.GetLayout(gc.handle) != 0;
        }
        OS.TranslateCharsetInfo(cs, lpCs, 1);
        TCHAR textBuffer = new TCHAR(lpCs[1], text, false);
        int byteCount = textBuffer.length();
        boolean linkBefore = (flags & 2) == 2;
        boolean linkAfter = (flags & 4) == 4;
        GCP_RESULTS result = new GCP_RESULTS();
        result.lStructSize = GCP_RESULTS.sizeof;
        result.nGlyphs = byteCount;
        int lpOrder = result.lpOrder = OS.HeapAlloc(hHeap, 8, byteCount * 4);
        int lpDx = result.lpDx = OS.HeapAlloc(hHeap, 8, byteCount * 4);
        int lpClass = result.lpClass = OS.HeapAlloc(hHeap, 8, byteCount);
        int lpGlyphs = result.lpGlyphs = OS.HeapAlloc(hHeap, 8, byteCount * 2);
        int dwFlags = 0;
        int glyphFlags = 0;
        dwFlags |= 2;
        if ((fontLanguageInfo & 0x20) == 32) {
            dwFlags |= 0x20;
            glyphFlags |= 0;
        }
        if ((fontLanguageInfo & 0x10) == 16) {
            dwFlags |= 0x10;
            if (linkBefore) {
                glyphFlags |= 0x8000;
            }
            if (linkAfter) {
                glyphFlags |= 0x4000;
            }
        }
        byte[] lpGlyphs2 = linkBefore || linkAfter ? new byte[]{(byte)glyphFlags, (byte)(glyphFlags >> 8)} : new byte[]{(byte)glyphFlags};
        OS.MoveMemory(result.lpGlyphs, lpGlyphs2, lpGlyphs2.length);
        if ((flags & 1) == 1) {
            dwFlags |= 0x80000;
            OS.MoveMemory(result.lpClass, classBuffer, classBuffer.length);
        }
        char[] glyphBuffer = new char[result.nGlyphs];
        int glyphCount = 0;
        int i = 0;
        while (i < offsets.length - 1) {
            int length;
            int offset = offsets[i];
            result.nGlyphs = length = offsets[i + 1] - offsets[i];
            TCHAR textBuffer2 = new TCHAR(lpCs[1], text.substring(offset, offset + length), false);
            OS.GetCharacterPlacement(gc.handle, textBuffer2, textBuffer2.length(), 0, result, dwFlags);
            if (dx != null) {
                int[] dx2 = new int[result.nGlyphs];
                OS.MoveMemory(dx2, result.lpDx, dx2.length * 4);
                if (isRightOriented) {
                    BidiUtil.reverse(dx2);
                }
                System.arraycopy(dx2, 0, dx, glyphCount, dx2.length);
            }
            if (order != null) {
                int[] order2 = new int[length];
                OS.MoveMemory(order2, result.lpOrder, order2.length * 4);
                BidiUtil.translateOrder(order2, glyphCount, isRightOriented);
                System.arraycopy(order2, 0, order, offset, length);
            }
            if (classBuffer != null) {
                byte[] classBuffer2 = new byte[length];
                OS.MoveMemory(classBuffer2, result.lpClass, classBuffer2.length);
                System.arraycopy(classBuffer2, 0, classBuffer, offset, length);
            }
            char[] glyphBuffer2 = new char[result.nGlyphs];
            OS.MoveMemory(glyphBuffer2, result.lpGlyphs, glyphBuffer2.length * 2);
            if (isRightOriented) {
                BidiUtil.reverse(glyphBuffer2);
            }
            System.arraycopy(glyphBuffer2, 0, glyphBuffer, glyphCount, glyphBuffer2.length);
            glyphCount += glyphBuffer2.length;
            result.lpOrder += length * 4;
            result.lpDx += length * 4;
            result.lpClass += length;
            result.lpGlyphs += glyphBuffer2.length * 2;
            ++i;
        }
        OS.HeapFree(hHeap, 0, lpGlyphs);
        OS.HeapFree(hHeap, 0, lpClass);
        OS.HeapFree(hHeap, 0, lpDx);
        OS.HeapFree(hHeap, 0, lpOrder);
        return glyphBuffer;
    }

    public static void getOrderInfo(GC gc, String text, int[] order, byte[] classBuffer, int flags, int[] offsets) {
        int fontLanguageInfo = OS.GetFontLanguageInfo(gc.handle);
        int hHeap = OS.GetProcessHeap();
        int[] lpCs = new int[8];
        int cs = OS.GetTextCharset(gc.handle);
        OS.TranslateCharsetInfo(cs, lpCs, 1);
        TCHAR textBuffer = new TCHAR(lpCs[1], text, false);
        int byteCount = textBuffer.length();
        boolean isRightOriented = false;
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10)) {
            isRightOriented = OS.GetLayout(gc.handle) != 0;
        }
        GCP_RESULTS result = new GCP_RESULTS();
        result.lStructSize = GCP_RESULTS.sizeof;
        result.nGlyphs = byteCount;
        int lpOrder = result.lpOrder = OS.HeapAlloc(hHeap, 8, byteCount * 4);
        int lpClass = result.lpClass = OS.HeapAlloc(hHeap, 8, byteCount);
        int dwFlags = 0;
        dwFlags |= 2;
        if ((fontLanguageInfo & 0x20) == 32) {
            dwFlags |= 0x20;
        }
        if ((fontLanguageInfo & 0x10) == 16) {
            dwFlags |= 0x10;
        }
        if ((flags & 1) == 1) {
            dwFlags |= 0x80000;
            OS.MoveMemory(result.lpClass, classBuffer, classBuffer.length);
        }
        int glyphCount = 0;
        int i = 0;
        while (i < offsets.length - 1) {
            int length;
            int offset = offsets[i];
            result.nGlyphs = length = offsets[i + 1] - offsets[i];
            TCHAR textBuffer2 = new TCHAR(lpCs[1], text.substring(offset, offset + length), false);
            OS.GetCharacterPlacement(gc.handle, textBuffer2, textBuffer2.length(), 0, result, dwFlags);
            if (order != null) {
                int[] order2 = new int[length];
                OS.MoveMemory(order2, result.lpOrder, order2.length * 4);
                BidiUtil.translateOrder(order2, glyphCount, isRightOriented);
                System.arraycopy(order2, 0, order, offset, length);
            }
            if (classBuffer != null) {
                byte[] classBuffer2 = new byte[length];
                OS.MoveMemory(classBuffer2, result.lpClass, classBuffer2.length);
                System.arraycopy(classBuffer2, 0, classBuffer, offset, length);
            }
            glyphCount += result.nGlyphs;
            result.lpOrder += length * 4;
            result.lpClass += length;
            ++i;
        }
        OS.HeapFree(hHeap, 0, lpClass);
        OS.HeapFree(hHeap, 0, lpOrder);
    }

    public static int getFontBidiAttributes(GC gc) {
        int fontStyle = 0;
        int fontLanguageInfo = OS.GetFontLanguageInfo(gc.handle);
        if ((fontLanguageInfo & 2) != 0) {
            fontStyle |= 2;
        }
        if ((fontLanguageInfo & 0x20) != 0) {
            fontStyle |= 0x20;
        }
        if ((fontLanguageInfo & 0x10) != 0) {
            fontStyle |= 0x10;
        }
        return fontStyle;
    }

    public static int getKeyboardLanguage() {
        int layout = OS.GetKeyboardLayout(0);
        return BidiUtil.isBidiLang(layout) ? 1 : 0;
    }

    static int[] getKeyboardLanguageList() {
        int maxSize = 10;
        int[] tempList = new int[maxSize];
        int size = OS.GetKeyboardLayoutList(maxSize, tempList);
        int[] list = new int[size];
        System.arraycopy(tempList, 0, list, 0, size);
        return list;
    }

    static boolean isBidiLang(int lang) {
        short id = OS.PRIMARYLANGID(OS.LOWORD(lang));
        return id == 1 || id == 13 || id == 41;
    }

    public static boolean isBidiPlatform() {
        if (OS.IsWinCE) {
            return false;
        }
        if (isBidiPlatform != -1) {
            return isBidiPlatform == 1;
        }
        isBidiPlatform = 0;
        if (!BidiUtil.isKeyboardBidi()) {
            return false;
        }
        Callback callback = null;
        try {
            callback = new Callback(Class.forName(CLASS_NAME), "EnumSystemLanguageGroupsProc", 5);
            int lpEnumSystemLanguageGroupsProc = callback.getAddress();
            if (lpEnumSystemLanguageGroupsProc == 0) {
                SWT.error(3);
            }
            OS.EnumSystemLanguageGroups(lpEnumSystemLanguageGroupsProc, 1, 0);
            callback.dispose();
        }
        catch (ClassNotFoundException classNotFoundException) {}
        if (isBidiPlatform == 1) {
            return true;
        }
        String codePage = String.valueOf(OS.GetACP());
        if (CD_PG_ARABIC.equals(codePage) || CD_PG_HEBREW.equals(codePage)) {
            isBidiPlatform = 1;
        }
        return isBidiPlatform == 1;
    }

    public static boolean isKeyboardBidi() {
        int[] list = BidiUtil.getKeyboardLanguageList();
        int i = 0;
        while (i < list.length) {
            if (BidiUtil.isBidiLang(list[i])) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public static void removeLanguageListener(int hwnd) {
        languageMap.remove(new LONG(hwnd));
        BidiUtil.unsubclass(hwnd);
    }

    public static void removeLanguageListener(Control control) {
        BidiUtil.removeLanguageListener(control.handle);
    }

    public static void setKeyboardLanguage(int language) {
        if (language == BidiUtil.getKeyboardLanguage()) {
            return;
        }
        boolean bidi = language == 1;
        int[] list = BidiUtil.getKeyboardLanguageList();
        int i = 0;
        while (i < list.length) {
            if (bidi == BidiUtil.isBidiLang(list[i])) {
                OS.ActivateKeyboardLayout(list[i], 0);
                return;
            }
            ++i;
        }
    }

    public static boolean setOrientation(int hwnd, int orientation) {
        if (OS.IsWinCE) {
            return false;
        }
        if (OS.WIN32_VERSION < OS.VERSION(4, 10)) {
            return false;
        }
        int bits = OS.GetWindowLong(hwnd, -20);
        bits = (orientation & 0x4000000) != 0 ? (bits |= 0x400000) : (bits &= 0xFFBFFFFF);
        OS.SetWindowLong(hwnd, -20, bits);
        return true;
    }

    public static boolean setOrientation(Control control, int orientation) {
        return BidiUtil.setOrientation(control.handle, orientation);
    }

    static void subclass(int hwnd) {
        LONG key = new LONG(hwnd);
        if (oldProcMap.get(key) == null) {
            int oldProc = OS.GetWindowLongPtr(hwnd, -4);
            oldProcMap.put(key, new LONG(oldProc));
            OS.SetWindowLongPtr(hwnd, -4, callback.getAddress());
        }
    }

    static void reverse(char[] charArray) {
        int length = charArray.length;
        int i = 0;
        while (i <= (length - 1) / 2) {
            char tmp = charArray[i];
            charArray[i] = charArray[length - 1 - i];
            charArray[length - 1 - i] = tmp;
            ++i;
        }
    }

    static void reverse(int[] intArray) {
        int length = intArray.length;
        int i = 0;
        while (i <= (length - 1) / 2) {
            int tmp = intArray[i];
            intArray[i] = intArray[length - 1 - i];
            intArray[length - 1 - i] = tmp;
            ++i;
        }
    }

    static void translateOrder(int[] orderArray, int glyphCount, boolean isRightOriented) {
        int i;
        int maxOrder = 0;
        int length = orderArray.length;
        if (isRightOriented) {
            i = 0;
            while (i < length) {
                maxOrder = Math.max(maxOrder, orderArray[i]);
                ++i;
            }
        }
        i = 0;
        while (i < length) {
            if (isRightOriented) {
                orderArray[i] = maxOrder - orderArray[i];
            }
            int n = i++;
            orderArray[n] = orderArray[n] + glyphCount;
        }
    }

    static void unsubclass(int hwnd) {
        LONG key = new LONG(hwnd);
        if (languageMap.get(key) == null && keyMap.get(key) == null) {
            LONG proc = (LONG)oldProcMap.remove(key);
            if (proc == null) {
                return;
            }
            OS.SetWindowLongPtr(hwnd, -4, proc.value);
        }
    }

    static int windowProc(int hwnd, int msg, int wParam, int lParam) {
        LONG key = new LONG(hwnd);
        switch (msg) {
            case 81: {
                Runnable runnable = (Runnable)languageMap.get(key);
                if (runnable == null) break;
                runnable.run();
            }
        }
        LONG oldProc = (LONG)oldProcMap.get(key);
        return OS.CallWindowProc(oldProc.value, hwnd, msg, wParam, lParam);
    }
}

