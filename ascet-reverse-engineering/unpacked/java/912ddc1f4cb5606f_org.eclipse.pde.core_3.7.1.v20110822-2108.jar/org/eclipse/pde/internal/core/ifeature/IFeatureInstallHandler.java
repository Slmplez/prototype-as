/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.ifeature;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.ifeature.IFeatureObject;

public interface IFeatureInstallHandler
extends IFeatureObject {
    public static final String P_LIBRARY = "library";
    public static final String P_HANDLER_NAME = "handlerName";

    public String getLibrary();

    public String getHandlerName();

    public void setLibrary(String var1) throws CoreException;

    public void setHandlerName(String var1) throws CoreException;
}

