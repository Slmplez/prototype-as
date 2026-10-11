/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ischema;

import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.ischema.ISchemaSimpleType;

public interface ISchemaRestriction
extends ISchemaObject {
    public ISchemaSimpleType getBaseType();

    public Object[] getChildren();

    public boolean isValueValid(Object var1);

    public void setBaseType(ISchemaSimpleType var1);
}

