/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.ifeature;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IIdentifiable;
import org.eclipse.pde.internal.core.ifeature.IFeatureObject;

public interface IFeatureEntry
extends IFeatureObject,
IIdentifiable {
    public static final String P_OS = "p_os";
    public static final String P_WS = "p_ws";
    public static final String P_NL = "p_nl";
    public static final String P_ARCH = "p_arch";
    public static final String P_FILTER = "p_filter";
    public static final String P_DOWNLOAD_SIZE = "p_download_size";
    public static final String P_INSTALL_SIZE = "p_install_size";

    public String getOS();

    public String getWS();

    public String getNL();

    public String getArch();

    public String getFilter();

    public long getDownloadSize();

    public long getInstallSize();

    public void setOS(String var1) throws CoreException;

    public void setWS(String var1) throws CoreException;

    public void setNL(String var1) throws CoreException;

    public void setArch(String var1) throws CoreException;

    public void setFilter(String var1) throws CoreException;

    public void setDownloadSize(long var1) throws CoreException;

    public void setInstallSize(long var1) throws CoreException;
}

