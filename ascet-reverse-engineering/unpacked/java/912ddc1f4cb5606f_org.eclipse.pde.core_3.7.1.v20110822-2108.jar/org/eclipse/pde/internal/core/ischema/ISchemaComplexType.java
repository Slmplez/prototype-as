/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ischema;

import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.internal.core.ischema.ISchemaAttributeProvider;
import org.eclipse.pde.internal.core.ischema.ISchemaCompositor;
import org.eclipse.pde.internal.core.ischema.ISchemaType;

public interface ISchemaComplexType
extends ISchemaType,
ISchemaAttributeProvider,
IWritable {
    public ISchemaCompositor getCompositor();

    public boolean isMixed();
}

