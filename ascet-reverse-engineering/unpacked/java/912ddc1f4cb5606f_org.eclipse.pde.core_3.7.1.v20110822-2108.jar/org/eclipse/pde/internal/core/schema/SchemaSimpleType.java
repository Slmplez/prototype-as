/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.schema;

import java.io.PrintWriter;
import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaRestriction;
import org.eclipse.pde.internal.core.ischema.ISchemaSimpleType;
import org.eclipse.pde.internal.core.schema.ChoiceRestriction;
import org.eclipse.pde.internal.core.schema.SchemaType;

public class SchemaSimpleType
extends SchemaType
implements ISchemaSimpleType,
IWritable {
    private static final long serialVersionUID = 1L;
    private ISchemaRestriction restriction;
    public static final String P_RESTRICTION = "restriction";

    public SchemaSimpleType(ISchema schema, String typeName) {
        super(schema, typeName);
    }

    public SchemaSimpleType(ISchemaSimpleType type) {
        super(type.getSchema(), type.getName());
        ISchemaRestriction rest = type.getRestriction();
        if (rest != null && rest instanceof ChoiceRestriction) {
            this.restriction = new ChoiceRestriction((ChoiceRestriction)rest);
            this.restriction.setBaseType(this);
        }
    }

    public ISchemaRestriction getRestriction() {
        return this.restriction;
    }

    public void setSchema(ISchema schema) {
        super.setSchema(schema);
        if (this.restriction != null) {
            this.restriction.setParent(schema);
        }
    }

    public void setRestriction(ISchemaRestriction restriction) {
        ISchemaRestriction oldValue = this.restriction;
        this.restriction = restriction;
        if (restriction != null) {
            restriction.setBaseType(this);
        }
        this.getSchema().fireModelObjectChanged(this, P_RESTRICTION, oldValue, restriction);
    }

    public void write(String indent, PrintWriter writer) {
        writer.println(String.valueOf(indent) + "<simpleType>");
        if (this.restriction != null) {
            this.restriction.write(String.valueOf(indent) + "   ", writer);
        }
        writer.println(String.valueOf(indent) + "</simpleType>");
    }
}

