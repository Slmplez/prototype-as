/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.schema;

import java.io.PrintWriter;
import java.util.Vector;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaAttribute;
import org.eclipse.pde.internal.core.ischema.ISchemaComplexType;
import org.eclipse.pde.internal.core.ischema.ISchemaCompositor;
import org.eclipse.pde.internal.core.schema.SchemaCompositor;
import org.eclipse.pde.internal.core.schema.SchemaType;

public class SchemaComplexType
extends SchemaType
implements ISchemaComplexType {
    private static final long serialVersionUID = 1L;
    public static final String P_COMPOSITOR = "compositorProperty";
    private boolean mixed;
    private ISchemaCompositor compositor;
    private Vector attributes = new Vector();

    public SchemaComplexType(ISchema schema) {
        this(schema, null);
    }

    public SchemaComplexType(ISchema schema, String typeName) {
        super(schema, typeName != null ? typeName : "__anonymous__");
    }

    public void addAttribute(ISchemaAttribute attribute) {
        this.addAttribute(attribute, null);
    }

    public void addAttribute(ISchemaAttribute attribute, ISchemaAttribute afterSibling) {
        int index = -1;
        if (afterSibling != null) {
            index = this.attributes.indexOf(afterSibling);
        }
        if (index != -1) {
            this.attributes.add(index + 1, attribute);
        } else {
            this.attributes.addElement(attribute);
        }
        this.getSchema().fireModelChanged(new ModelChangedEvent(this.getSchema(), 1, new Object[]{attribute}, null));
    }

    public void moveAttributeTo(ISchemaAttribute attribute, ISchemaAttribute sibling) {
        int newIndex;
        int index = this.attributes.indexOf(attribute);
        if (index > (newIndex = sibling != null && this.attributes.contains(sibling) ? this.attributes.indexOf(sibling) : this.attributes.size() - 1)) {
            int i = index;
            while (i > newIndex) {
                this.attributes.set(i, this.attributes.elementAt(i - 1));
                --i;
            }
        } else if (index < newIndex) {
            int i = index;
            while (i < newIndex) {
                this.attributes.set(i, this.attributes.elementAt(i + 1));
                ++i;
            }
        } else {
            return;
        }
        this.attributes.set(newIndex, attribute);
        this.getSchema().fireModelChanged(new ModelChangedEvent(this.getSchema(), 3, new Object[]{attribute.getParent()}, null));
    }

    public ISchemaAttribute getAttribute(String name) {
        int i = 0;
        while (i < this.attributes.size()) {
            ISchemaAttribute attribute = (ISchemaAttribute)this.attributes.elementAt(i);
            if (attribute.getName().equals(name)) {
                return attribute;
            }
            ++i;
        }
        return null;
    }

    public int getAttributeCount() {
        return this.attributes.size();
    }

    public ISchemaAttribute[] getAttributes() {
        Object[] result = new ISchemaAttribute[this.attributes.size()];
        this.attributes.copyInto(result);
        return result;
    }

    public ISchemaCompositor getCompositor() {
        return this.compositor;
    }

    public boolean isMixed() {
        return this.mixed;
    }

    public void removeAttribute(ISchemaAttribute attribute) {
        this.attributes.removeElement(attribute);
        this.getSchema().fireModelChanged(new ModelChangedEvent(this.getSchema(), 2, new Object[]{attribute}, null));
    }

    public void setCompositor(ISchemaCompositor newCompositor) {
        ISchemaCompositor oldValue = this.compositor;
        this.compositor = newCompositor;
        this.getSchema().fireModelObjectChanged(this, P_COMPOSITOR, oldValue, this.compositor);
    }

    public void setMixed(boolean newMixed) {
        this.mixed = newMixed;
    }

    public void write(String indent, PrintWriter writer) {
        writer.println(String.valueOf(indent) + "<complexType>");
        String indent2 = String.valueOf(indent) + "   ";
        SchemaCompositor compositor = (SchemaCompositor)this.getCompositor();
        if (compositor != null) {
            compositor.write(indent2, writer);
        }
        int i = 0;
        while (i < this.attributes.size()) {
            ISchemaAttribute attribute = (ISchemaAttribute)this.attributes.elementAt(i);
            attribute.write(indent2, writer);
            ++i;
        }
        writer.println(String.valueOf(indent) + "</complexType>");
    }
}

