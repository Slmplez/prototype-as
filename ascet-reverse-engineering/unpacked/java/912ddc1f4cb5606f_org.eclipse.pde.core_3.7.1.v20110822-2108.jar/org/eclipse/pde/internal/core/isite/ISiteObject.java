/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.pde.internal.core.isite;

import java.io.Serializable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.internal.core.isite.ISite;
import org.eclipse.pde.internal.core.isite.ISiteModel;

public interface ISiteObject
extends IWritable,
IAdaptable,
Serializable {
    public static final String P_LABEL = "label";

    public ISite getSite();

    public String getLabel();

    public ISiteModel getModel();

    public boolean isInTheModel();

    public ISiteObject getParent();

    public void setLabel(String var1) throws CoreException;

    public boolean isValid();
}

