/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.ifeature;

import org.eclipse.core.runtime.CoreException;

public interface IEnvironment {
    public static final String P_OS = "os";
    public static final String P_WS = "ws";
    public static final String P_ARCH = "arch";
    public static final String P_NL = "nl";

    public String getOS();

    public String getWS();

    public String getArch();

    public String getNL();

    public void setOS(String var1) throws CoreException;

    public void setWS(String var1) throws CoreException;

    public void setArch(String var1) throws CoreException;

    public void setNL(String var1) throws CoreException;
}

