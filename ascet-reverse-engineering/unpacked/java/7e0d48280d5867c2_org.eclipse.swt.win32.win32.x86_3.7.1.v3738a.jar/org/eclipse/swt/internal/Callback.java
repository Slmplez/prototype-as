/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal;

import org.eclipse.swt.internal.C;

public class Callback {
    Object object;
    String method;
    String signature;
    int argCount;
    int address;
    int errorResult;
    boolean isStatic;
    boolean isArrayBased;
    static final String PTR_SIGNATURE = C.PTR_SIZEOF == 4 ? "I" : "J";
    static final String SIGNATURE_0 = Callback.getSignature(0);
    static final String SIGNATURE_1 = Callback.getSignature(1);
    static final String SIGNATURE_2 = Callback.getSignature(2);
    static final String SIGNATURE_3 = Callback.getSignature(3);
    static final String SIGNATURE_4 = Callback.getSignature(4);
    static final String SIGNATURE_N = "([" + PTR_SIGNATURE + ")" + PTR_SIGNATURE;

    public Callback(Object object, String method, int argCount) {
        this(object, method, argCount, false);
    }

    public Callback(Object object, String method, int argCount, boolean isArrayBased) {
        this(object, method, argCount, isArrayBased, 0);
    }

    public Callback(Object object, String method, int argCount, boolean isArrayBased, int errorResult) {
        this.object = object;
        this.method = method;
        this.argCount = argCount;
        this.isStatic = object instanceof Class;
        this.isArrayBased = isArrayBased;
        this.errorResult = errorResult;
        if (isArrayBased) {
            this.signature = SIGNATURE_N;
        } else {
            switch (argCount) {
                case 0: {
                    this.signature = SIGNATURE_0;
                    break;
                }
                case 1: {
                    this.signature = SIGNATURE_1;
                    break;
                }
                case 2: {
                    this.signature = SIGNATURE_2;
                    break;
                }
                case 3: {
                    this.signature = SIGNATURE_3;
                    break;
                }
                case 4: {
                    this.signature = SIGNATURE_4;
                    break;
                }
                default: {
                    this.signature = Callback.getSignature(argCount);
                }
            }
        }
        this.address = Callback.bind(this, object, method, this.signature, argCount, this.isStatic, isArrayBased, errorResult);
    }

    static synchronized native int bind(Callback var0, Object var1, String var2, String var3, int var4, boolean var5, boolean var6, int var7);

    public void dispose() {
        if (this.object == null) {
            return;
        }
        Callback.unbind(this);
        this.signature = null;
        this.method = null;
        this.object = null;
        this.address = 0;
    }

    public int getAddress() {
        return this.address;
    }

    public static native String getPlatform();

    public static native int getEntryCount();

    static String getSignature(int argCount) {
        String signature = "(";
        int i = 0;
        while (i < argCount) {
            signature = String.valueOf(signature) + PTR_SIGNATURE;
            ++i;
        }
        signature = String.valueOf(signature) + ")" + PTR_SIGNATURE;
        return signature;
    }

    public static final synchronized native void setEnabled(boolean var0);

    public static final synchronized native boolean getEnabled();

    static final void ignoreCallbacks(boolean ignore) {
        Callback.setEnabled(!ignore);
    }

    public static final synchronized native void reset();

    static final synchronized native void unbind(Callback var0);
}

