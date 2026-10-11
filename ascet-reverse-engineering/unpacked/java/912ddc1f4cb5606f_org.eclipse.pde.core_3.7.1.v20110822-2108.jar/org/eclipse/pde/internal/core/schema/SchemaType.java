/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.schema;

import java.io.Serializable;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaType;

public abstract class SchemaType
implements ISchemaType,
Serializable {
    private static final long serialVersionUID = 1L;
    private String name;
    private transient ISchema schema;

    public SchemaType(ISchema schema, String typeName) {
        this.schema = schema;
        this.name = typeName;
    }

    public String getName() {
        return this.name;
    }

    public ISchema getSchema() {
        return this.schema;
    }

    public void setSchema(ISchema schema) {
        this.schema = schema;
    }

    public String toString() {
        return this.name;
    }
}

