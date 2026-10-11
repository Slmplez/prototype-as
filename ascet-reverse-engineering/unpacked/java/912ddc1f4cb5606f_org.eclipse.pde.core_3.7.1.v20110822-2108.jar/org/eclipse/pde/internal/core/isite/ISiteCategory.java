/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.isite;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.isite.ISiteCategoryDefinition;
import org.eclipse.pde.internal.core.isite.ISiteObject;

public interface ISiteCategory
extends ISiteObject {
    public static final String P_NAME = "name";

    public String getName();

    public void setName(String var1) throws CoreException;

    public ISiteCategoryDefinition getDefinition();
}

