/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.pde.internal.core.ifeature;

import java.io.Serializable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.internal.core.ifeature.IFeature;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;

public interface IFeatureObject
extends IWritable,
IAdaptable,
Serializable {
    public static final String P_LABEL = "label";

    public IFeature getFeature();

    public String getLabel();

    public IFeatureModel getModel();

    public boolean isInTheModel();

    public IFeatureObject getParent();

    public void setLabel(String var1) throws CoreException;

    public String getTranslatableLabel();
}

