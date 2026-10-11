/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.ischema;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaObject;

public interface ISchemaInclude
extends ISchemaObject {
    public static final String P_LOCATION = "location";

    public String getLocation();

    public void setLocation(String var1) throws CoreException;

    public ISchema getIncludedSchema();

    public void dispose();
}

