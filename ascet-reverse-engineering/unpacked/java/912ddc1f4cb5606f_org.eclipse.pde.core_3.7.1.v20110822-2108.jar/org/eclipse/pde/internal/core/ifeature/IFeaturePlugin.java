/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.ifeature;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.ifeature.IFeatureEntry;
import org.eclipse.pde.internal.core.ifeature.IFeatureObject;
import org.eclipse.pde.internal.core.ifeature.IVersionable;

public interface IFeaturePlugin
extends IFeatureObject,
IVersionable,
IFeatureEntry {
    public static final String P_UNPACK = "unpack";

    public boolean isFragment();

    public boolean isUnpack();

    public void setUnpack(boolean var1) throws CoreException;
}

