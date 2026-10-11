/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.resources.refresh.win32;

import org.eclipse.core.internal.resources.refresh.win32.Convert;

public class Win32Natives {
    public static final long INVALID_HANDLE_VALUE;
    public static final int ERROR_SUCCESS;
    public static final int ERROR_INVALID_HANDLE;
    public static int FILE_NOTIFY_ALL;
    public static final int MAXIMUM_WAIT_OBJECTS;
    public static final int MAX_PATH;
    public static final int INFINITE;
    public static final int WAIT_TIMEOUT;
    public static final int WAIT_OBJECT_0;
    public static final int WAIT_FAILED;
    public static final int FILE_NOTIFY_CHANGE_FILE_NAME;
    public static final int FILE_NOTIFY_CHANGE_DIR_NAME;
    public static final int FILE_NOTIFY_CHANGE_ATTRIBUTES;
    public static final int FILE_NOTIFY_CHANGE_SIZE;
    public static final int FILE_NOTIFY_CHANGE_LAST_WRITE;
    public static final int FILE_NOTIFY_CHANGE_SECURITY;
    public static final boolean UNICODE;

    static {
        System.loadLibrary("win32refresh");
        UNICODE = Win32Natives.IsUnicode();
        INVALID_HANDLE_VALUE = Win32Natives.INVALID_HANDLE_VALUE();
        ERROR_SUCCESS = Win32Natives.ERROR_SUCCESS();
        ERROR_INVALID_HANDLE = Win32Natives.ERROR_INVALID_HANDLE();
        MAXIMUM_WAIT_OBJECTS = Win32Natives.MAXIMUM_WAIT_OBJECTS();
        MAX_PATH = Win32Natives.MAX_PATH();
        INFINITE = Win32Natives.INFINITE();
        WAIT_TIMEOUT = Win32Natives.WAIT_TIMEOUT();
        WAIT_OBJECT_0 = Win32Natives.WAIT_OBJECT_0();
        WAIT_FAILED = Win32Natives.WAIT_FAILED();
        FILE_NOTIFY_CHANGE_FILE_NAME = Win32Natives.FILE_NOTIFY_CHANGE_FILE_NAME();
        FILE_NOTIFY_CHANGE_DIR_NAME = Win32Natives.FILE_NOTIFY_CHANGE_DIR_NAME();
        FILE_NOTIFY_CHANGE_ATTRIBUTES = Win32Natives.FILE_NOTIFY_CHANGE_ATTRIBUTES();
        FILE_NOTIFY_CHANGE_SIZE = Win32Natives.FILE_NOTIFY_CHANGE_SIZE();
        FILE_NOTIFY_CHANGE_LAST_WRITE = Win32Natives.FILE_NOTIFY_CHANGE_LAST_WRITE();
        FILE_NOTIFY_CHANGE_SECURITY = Win32Natives.FILE_NOTIFY_CHANGE_SECURITY();
        FILE_NOTIFY_ALL = FILE_NOTIFY_CHANGE_FILE_NAME | FILE_NOTIFY_CHANGE_DIR_NAME | FILE_NOTIFY_CHANGE_ATTRIBUTES | FILE_NOTIFY_CHANGE_SIZE | FILE_NOTIFY_CHANGE_LAST_WRITE | FILE_NOTIFY_CHANGE_SECURITY;
    }

    public static long FindFirstChangeNotification(String lpPathName, boolean bWatchSubtree, int dwNotifyFilter) {
        if (UNICODE) {
            return Win32Natives.FindFirstChangeNotificationW(lpPathName, bWatchSubtree, dwNotifyFilter);
        }
        return Win32Natives.FindFirstChangeNotificationA(Convert.toPlatformBytes(lpPathName), bWatchSubtree, dwNotifyFilter);
    }

    private static native long FindFirstChangeNotificationW(String var0, boolean var1, int var2);

    private static native long FindFirstChangeNotificationA(byte[] var0, boolean var1, int var2);

    public static native boolean FindCloseChangeNotification(long var0);

    public static native boolean FindNextChangeNotification(long var0);

    public static native int WaitForMultipleObjects(int var0, long[] var1, boolean var2, int var3);

    private static native boolean IsUnicode();

    public static native int GetLastError();

    private static native int FILE_NOTIFY_CHANGE_LAST_WRITE();

    private static native int FILE_NOTIFY_CHANGE_DIR_NAME();

    private static native int FILE_NOTIFY_CHANGE_ATTRIBUTES();

    private static native int FILE_NOTIFY_CHANGE_SIZE();

    private static native int FILE_NOTIFY_CHANGE_FILE_NAME();

    private static native int FILE_NOTIFY_CHANGE_SECURITY();

    private static native int MAXIMUM_WAIT_OBJECTS();

    private static native int MAX_PATH();

    private static native int INFINITE();

    private static native int WAIT_OBJECT_0();

    private static native int WAIT_FAILED();

    private static native int WAIT_TIMEOUT();

    private static native int ERROR_INVALID_HANDLE();

    private static native int ERROR_SUCCESS();

    private static native long INVALID_HANDLE_VALUE();
}

