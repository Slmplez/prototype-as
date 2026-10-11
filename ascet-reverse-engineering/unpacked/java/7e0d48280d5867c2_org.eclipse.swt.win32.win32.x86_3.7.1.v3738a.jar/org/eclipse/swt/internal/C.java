/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal;

import org.eclipse.swt.internal.Library;
import org.eclipse.swt.internal.Platform;

public class C
extends Platform {
    public static final int PTR_SIZEOF;

    static {
        if ("Linux".equals(System.getProperty("os.name")) && "motif".equals("win32")) {
            try {
                Library.loadLibrary("libXm.so.2", false);
            }
            catch (Throwable throwable) {}
        }
        Library.loadLibrary("swt");
        PTR_SIZEOF = C.PTR_sizeof();
    }

    public static final native void free(int var0);

    public static final native int getenv(byte[] var0);

    public static final native int malloc(int var0);

    public static final native void memmove(int var0, byte[] var1, int var2);

    public static final native void memmove(int var0, char[] var1, int var2);

    public static final native void memmove(int var0, double[] var1, int var2);

    public static final native void memmove(int var0, float[] var1, int var2);

    public static final native void memmove(int var0, int[] var1, int var2);

    public static final native void memmove(int var0, long[] var1, int var2);

    public static final native void memmove(int var0, short[] var1, int var2);

    public static final native void memmove(byte[] var0, char[] var1, int var2);

    public static final native void memmove(byte[] var0, int var1, int var2);

    public static final native void memmove(int var0, int var1, int var2);

    public static final native void memmove(char[] var0, int var1, int var2);

    public static final native void memmove(double[] var0, int var1, int var2);

    public static final native void memmove(float[] var0, int var1, int var2);

    public static final native void memmove(int[] var0, byte[] var1, int var2);

    public static final native void memmove(short[] var0, int var1, int var2);

    public static final native void memmove(int[] var0, int var1, int var2);

    public static final native void memmove(long[] var0, int var1, int var2);

    public static final native int memset(int var0, int var1, int var2);

    public static final native int PTR_sizeof();

    public static final native int strlen(int var0);
}

