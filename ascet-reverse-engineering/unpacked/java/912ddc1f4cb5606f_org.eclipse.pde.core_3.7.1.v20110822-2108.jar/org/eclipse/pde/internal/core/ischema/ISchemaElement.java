/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ischema;

import org.eclipse.pde.internal.core.ischema.IMetaElement;
import org.eclipse.pde.internal.core.ischema.ISchemaAttributeProvider;
import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.ischema.ISchemaRepeatable;
import org.eclipse.pde.internal.core.ischema.ISchemaType;

public interface ISchemaElement
extends ISchemaObject,
ISchemaRepeatable,
ISchemaAttributeProvider,
IMetaElement,
Comparable {
    public String getDTDRepresentation(boolean var1);

    public ISchemaType getType();

    public String[] getAttributeNames();
}

