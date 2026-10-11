/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.schema;

import java.io.PrintWriter;
import java.util.Vector;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaEnumeration;
import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.ischema.ISchemaRestriction;
import org.eclipse.pde.internal.core.ischema.ISchemaSimpleType;
import org.eclipse.pde.internal.core.schema.SchemaEnumeration;
import org.eclipse.pde.internal.core.schema.SchemaObject;

public class ChoiceRestriction
extends SchemaObject
implements ISchemaRestriction {
    private static final long serialVersionUID = 1L;
    private ISchemaSimpleType baseType;
    private Vector children;
    public static final String P_CHOICES = "choices";

    public ChoiceRestriction(ISchema schema) {
        super(schema, "__choice__");
    }

    public ChoiceRestriction(ChoiceRestriction source) {
        this(source.getSchema());
        this.children = new Vector();
        Object[] choices = source.getChildren();
        int i = 0;
        while (i < choices.length) {
            this.children.add(new SchemaEnumeration(this, ((ISchemaEnumeration)choices[i]).getName()));
            ++i;
        }
    }

    public ISchemaSimpleType getBaseType() {
        return this.baseType;
    }

    public Object[] getChildren() {
        return this.children != null ? this.children.toArray() : new Object[]{};
    }

    public String[] getChoicesAsStrings() {
        if (this.children == null) {
            return new String[0];
        }
        Vector<String> result = new Vector<String>();
        int i = 0;
        while (i < this.children.size()) {
            ISchemaEnumeration enumeration = (ISchemaEnumeration)this.children.get(i);
            result.addElement(enumeration.getName());
            ++i;
        }
        Object[] choices = new String[result.size()];
        result.copyInto(choices);
        return choices;
    }

    public ISchemaObject getParent() {
        if (this.baseType != null) {
            return this.baseType.getSchema();
        }
        return super.getParent();
    }

    public boolean isValueValid(Object value) {
        if (this.children == null) {
            return false;
        }
        String svalue = value.toString();
        int i = 0;
        while (i < this.children.size()) {
            ISchemaEnumeration enumeration = (ISchemaEnumeration)this.children.get(i);
            if (enumeration.getName().equals(svalue)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public void setBaseType(ISchemaSimpleType baseType) {
        this.baseType = baseType;
    }

    public void setChildren(Vector children) {
        Vector oldValue = this.children;
        this.children = children;
        if (this.getParent() != null) {
            this.getSchema().fireModelObjectChanged(this, P_CHOICES, oldValue, children);
        }
    }

    public String toString() {
        if (this.children == null) {
            return "";
        }
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < this.children.size()) {
            Object child = this.children.get(i);
            if (child instanceof ISchemaEnumeration) {
                ISchemaEnumeration enumeration = (ISchemaEnumeration)child;
                if (i > 0) {
                    buffer.append(", ");
                }
                buffer.append(enumeration.getName());
            }
            ++i;
        }
        return buffer.toString();
    }

    public void write(String indent, PrintWriter writer) {
        writer.println(String.valueOf(indent) + "<restriction base=\"" + this.baseType.getName() + "\">");
        int i = 0;
        while (i < this.children.size()) {
            Object child = this.children.get(i);
            if (child instanceof ISchemaEnumeration) {
                ISchemaEnumeration enumeration = (ISchemaEnumeration)child;
                enumeration.write(String.valueOf(indent) + "   ", writer);
            }
            ++i;
        }
        writer.println(String.valueOf(indent) + "</restriction>");
    }
}

