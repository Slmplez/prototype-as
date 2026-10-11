/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.core.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginObject;

public interface IPluginLibrary
extends IPluginObject {
    public static final String P_EXPORTED = "export";
    public static final String P_PACKAGES = "packages";
    public static final String P_CONTENT_FILTERS = "contentFilters";
    public static final String P_TYPE = "type";
    public static final String CODE = "code";
    public static final String RESOURCE = "resource";

    public String[] getContentFilters();

    public String[] getPackages();

    public boolean isExported();

    public boolean isFullyExported();

    public String getType();

    public void setContentFilters(String[] var1) throws CoreException;

    public void addContentFilter(String var1) throws CoreException;

    public void removeContentFilter(String var1) throws CoreException;

    public void setPackages(String[] var1) throws CoreException;

    public void setExported(boolean var1) throws CoreException;

    public void setType(String var1) throws CoreException;
}

