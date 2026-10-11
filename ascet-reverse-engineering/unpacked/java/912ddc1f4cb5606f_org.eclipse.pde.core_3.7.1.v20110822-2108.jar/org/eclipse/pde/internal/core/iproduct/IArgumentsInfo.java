/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.iproduct;

import org.eclipse.pde.internal.core.iproduct.IProductObject;

public interface IArgumentsInfo
extends IProductObject {
    public static final String P_PROG_ARGS = "programArgs";
    public static final String P_PROG_ARGS_LIN = "programArgsLin";
    public static final String P_PROG_ARGS_MAC = "programArgsMac";
    public static final String P_PROG_ARGS_SOL = "programArgsSol";
    public static final String P_PROG_ARGS_WIN = "programArgsWin";
    public static final String P_VM_ARGS = "vmArgs";
    public static final String P_VM_ARGS_LIN = "vmArgsLin";
    public static final String P_VM_ARGS_MAC = "vmArgsMac";
    public static final String P_VM_ARGS_SOL = "vmArgsSol";
    public static final String P_VM_ARGS_WIN = "vmArgsWin";
    public static final int L_ARGS_ALL = 0;
    public static final int L_ARGS_LINUX = 1;
    public static final int L_ARGS_MACOS = 2;
    public static final int L_ARGS_SOLAR = 3;
    public static final int L_ARGS_WIN32 = 4;

    public void setProgramArguments(String var1, int var2);

    public String getProgramArguments(int var1);

    public String getCompleteProgramArguments(String var1);

    public void setVMArguments(String var1, int var2);

    public String getVMArguments(int var1);

    public String getCompleteVMArguments(String var1);
}

