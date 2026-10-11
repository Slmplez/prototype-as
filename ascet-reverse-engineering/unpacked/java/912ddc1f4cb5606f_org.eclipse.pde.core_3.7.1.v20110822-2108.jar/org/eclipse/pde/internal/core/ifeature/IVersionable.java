/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.ifeature;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IIdentifiable;

public interface IVersionable
extends IIdentifiable {
    public static final String P_VERSION = "version";

    public String getVersion();

    public void setVersion(String var1) throws CoreException;
}

