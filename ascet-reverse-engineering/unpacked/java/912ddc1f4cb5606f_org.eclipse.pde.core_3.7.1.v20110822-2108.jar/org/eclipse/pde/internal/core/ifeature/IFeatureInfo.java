/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.ifeature;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.ifeature.IFeatureObject;

public interface IFeatureInfo
extends IFeatureObject {
    public static final String P_URL = "p_url";
    public static final String P_DESC = "p_desc";

    public String getURL();

    public String getDescription();

    public void setURL(String var1) throws CoreException;

    public void setDescription(String var1) throws CoreException;

    public boolean isEmpty();

    public int getIndex();
}

