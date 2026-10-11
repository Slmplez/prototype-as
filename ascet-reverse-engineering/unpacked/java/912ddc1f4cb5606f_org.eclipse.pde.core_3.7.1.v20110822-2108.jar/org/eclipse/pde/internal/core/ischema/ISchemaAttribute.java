/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ischema;

import org.eclipse.pde.internal.core.ischema.IMetaAttribute;
import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.ischema.ISchemaSimpleType;

public interface ISchemaAttribute
extends ISchemaObject,
IMetaAttribute {
    public static final int OPTIONAL = 0;
    public static final int REQUIRED = 1;
    public static final int DEFAULT = 2;
    public static final String[] USE_TABLE = new String[]{"optional", "required", "default"};
    public static final int BOOL_IND = 0;
    public static final int STR_IND = 1;
    public static final int JAVA_IND = 2;
    public static final int RES_IND = 3;
    public static final int ID_IND = 4;
    public static final String[] TYPES = new String[]{"boolean", "string", "java", "resource", "identifier"};

    public ISchemaSimpleType getType();

    public int getUse();

    public Object getValue();
}

