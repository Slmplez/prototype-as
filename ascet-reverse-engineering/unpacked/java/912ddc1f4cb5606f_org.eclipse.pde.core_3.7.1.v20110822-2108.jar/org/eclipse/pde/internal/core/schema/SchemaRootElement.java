/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.schema;

import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.ischema.ISchemaRootElement;
import org.eclipse.pde.internal.core.schema.SchemaElement;

public class SchemaRootElement
extends SchemaElement
implements ISchemaRootElement {
    private static final long serialVersionUID = 1L;
    private String fDeperecatedReplacement;
    private boolean fInternal;

    public SchemaRootElement(ISchemaObject parent, String name) {
        super(parent, name);
    }

    public void setDeprecatedSuggestion(String value) {
        String oldValue = this.fDeperecatedReplacement;
        this.fDeperecatedReplacement = value;
        this.getSchema().fireModelObjectChanged(this, "replacement", oldValue, this.fDeperecatedReplacement);
    }

    public String getDeprecatedSuggestion() {
        return this.fDeperecatedReplacement;
    }

    public String getExtendedAttributes() {
        StringBuffer buffer = new StringBuffer();
        buffer.append(" ");
        if (this.fDeperecatedReplacement != null) {
            buffer.append("replacement=\"" + this.fDeperecatedReplacement + "\" ");
        }
        if (this.fInternal) {
            buffer.append("internal=\"true\" ");
        }
        return buffer.toString();
    }

    public boolean isInternal() {
        return this.fInternal;
    }

    public void setInternal(boolean value) {
        boolean oldValue = this.fInternal;
        this.fInternal = value;
        this.getSchema().fireModelObjectChanged(this, "internal", oldValue, this.fInternal);
    }
}

