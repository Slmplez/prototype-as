/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.core;

import org.eclipse.core.runtime.CoreException;

public interface IIdentifiable {
    public static final String P_ID = "id";

    public String getId();

    public void setId(String var1) throws CoreException;
}

