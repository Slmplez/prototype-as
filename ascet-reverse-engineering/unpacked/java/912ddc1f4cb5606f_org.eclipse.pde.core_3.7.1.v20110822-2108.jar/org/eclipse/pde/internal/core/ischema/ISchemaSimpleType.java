/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ischema;

import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.internal.core.ischema.ISchemaRestriction;
import org.eclipse.pde.internal.core.ischema.ISchemaType;

public interface ISchemaSimpleType
extends ISchemaType,
IWritable {
    public ISchemaRestriction getRestriction();
}

