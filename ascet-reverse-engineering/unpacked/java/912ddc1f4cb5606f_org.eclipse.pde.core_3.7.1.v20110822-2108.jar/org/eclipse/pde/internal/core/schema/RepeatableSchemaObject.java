/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.schema;

import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.ischema.ISchemaRepeatable;
import org.eclipse.pde.internal.core.schema.SchemaObject;

public abstract class RepeatableSchemaObject
extends SchemaObject
implements ISchemaRepeatable {
    private static final long serialVersionUID = 1L;
    public static final String P_MIN_OCCURS = "min_occurs";
    public static final String P_MAX_OCCURS = "max_occurs";
    private int minOccurs = 1;
    private int maxOccurs = 1;

    public RepeatableSchemaObject(ISchemaObject parent, String name) {
        super(parent, name);
    }

    public int getMaxOccurs() {
        return this.maxOccurs;
    }

    public int getMinOccurs() {
        return this.minOccurs;
    }

    public boolean isRequired() {
        return this.minOccurs > 0;
    }

    public boolean isUnbounded() {
        return this.maxOccurs == Integer.MAX_VALUE;
    }

    public void setMaxOccurs(int newMaxOccurs) {
        Integer oldValue = new Integer(this.maxOccurs);
        this.maxOccurs = newMaxOccurs;
        this.getSchema().fireModelObjectChanged(this, P_MAX_OCCURS, oldValue, new Integer(this.maxOccurs));
    }

    public void setMinOccurs(int newMinOccurs) {
        Integer oldValue = new Integer(this.minOccurs);
        this.minOccurs = newMinOccurs;
        this.getSchema().fireModelObjectChanged(this, P_MIN_OCCURS, oldValue, new Integer(this.minOccurs));
    }
}

