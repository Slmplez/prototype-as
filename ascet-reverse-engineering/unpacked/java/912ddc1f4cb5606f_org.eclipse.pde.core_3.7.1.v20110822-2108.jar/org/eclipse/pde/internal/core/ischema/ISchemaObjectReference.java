/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ischema;

import org.eclipse.pde.internal.core.ischema.ISchemaObject;

public interface ISchemaObjectReference {
    public String getName();

    public ISchemaObject getReferencedObject();

    public Class getReferencedObjectClass();

    public void setReferencedObject(ISchemaObject var1);
}

