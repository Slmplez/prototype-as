/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ischema;

import org.eclipse.pde.internal.core.ischema.ISchemaAttribute;

public interface ISchemaAttributeProvider {
    public ISchemaAttribute getAttribute(String var1);

    public int getAttributeCount();

    public ISchemaAttribute[] getAttributes();
}

