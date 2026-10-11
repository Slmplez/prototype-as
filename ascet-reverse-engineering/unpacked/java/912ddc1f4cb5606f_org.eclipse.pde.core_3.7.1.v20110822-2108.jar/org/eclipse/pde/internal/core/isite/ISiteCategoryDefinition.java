/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.isite;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.isite.ISiteDescription;
import org.eclipse.pde.internal.core.isite.ISiteObject;

public interface ISiteCategoryDefinition
extends ISiteObject {
    public static final String P_NAME = "name";
    public static final String P_DESCRIPTION = "description";

    public String getName();

    public void setName(String var1) throws CoreException;

    public ISiteDescription getDescription();

    public void setDescription(ISiteDescription var1) throws CoreException;
}

