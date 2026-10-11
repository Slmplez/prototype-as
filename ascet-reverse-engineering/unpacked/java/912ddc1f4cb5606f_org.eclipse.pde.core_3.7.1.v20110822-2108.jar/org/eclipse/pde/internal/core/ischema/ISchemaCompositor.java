/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ischema;

import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.ischema.ISchemaRepeatable;

public interface ISchemaCompositor
extends ISchemaObject,
ISchemaRepeatable {
    public static final int ROOT = -1;
    public static final int ALL = 0;
    public static final int CHOICE = 1;
    public static final int SEQUENCE = 2;
    public static final int GROUP = 3;
    public static final String[] kindTable = new String[]{"all", "choice", "sequence", "group"};

    public int getChildCount();

    public ISchemaObject[] getChildren();

    public int getKind();
}

