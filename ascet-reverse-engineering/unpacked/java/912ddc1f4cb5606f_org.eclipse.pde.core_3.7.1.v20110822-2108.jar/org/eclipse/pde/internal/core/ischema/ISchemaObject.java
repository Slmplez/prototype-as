/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.pde.internal.core.ischema;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.internal.core.ischema.ISchema;

public interface ISchemaObject
extends IAdaptable,
IWritable {
    public static final String P_DESCRIPTION = "description";
    public static final String P_NAME = "name";

    public String getDescription();

    public String getName();

    public ISchemaObject getParent();

    public void setParent(ISchemaObject var1);

    public ISchema getSchema();
}

