/*
 * Decompiled with CFR 0.152.
 */
package de.etas.util;

public class EtasGeneralDll {
    static {
        System.loadLibrary("j_etasgeneral");
    }

    public static final native String getApplicationDataPath();

    public static final native String getApplicationProgramPath();

    public static final native String getCOMDLLPath(String var0);

    public static final native String getEtasLogFilePath();

    public static final native String getEtasSharedFilePath(String var0);

    public static final native String getEtasTempFilePath();

    public static final native void registerApplication(String var0, String var1);

    public static final native boolean startApplication(String var0, String var1, String var2, int var3);
}

