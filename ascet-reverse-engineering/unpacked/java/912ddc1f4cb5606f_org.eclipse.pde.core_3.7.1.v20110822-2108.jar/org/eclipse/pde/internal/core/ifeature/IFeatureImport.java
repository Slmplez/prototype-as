/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.ifeature;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginReference;
import org.eclipse.pde.internal.core.ifeature.IFeatureObject;

public interface IFeatureImport
extends IFeatureObject,
IPluginReference {
    public static final String P_TYPE = "type";
    public static final String P_PATCH = "patch";
    public static final String P_ID_MATCH = "id-match";
    public static final int PLUGIN = 0;
    public static final int FEATURE = 1;

    public int getType();

    public void setType(int var1) throws CoreException;

    public boolean isPatch();

    public void setPatch(boolean var1) throws CoreException;

    public int getIdMatch();

    public void setIdMatch(int var1) throws CoreException;

    public String getFilter();

    public void setFilter(String var1) throws CoreException;
}

