/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.schema;

import java.io.PrintWriter;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaAttribute;
import org.eclipse.pde.internal.core.ischema.ISchemaElement;
import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.ischema.ISchemaSimpleType;
import org.eclipse.pde.internal.core.schema.SchemaAttributeHandler;
import org.eclipse.pde.internal.core.schema.SchemaObject;
import org.eclipse.pde.internal.core.schema.SchemaSimpleType;
import org.eclipse.pde.internal.core.util.SchemaUtil;
import org.eclipse.pde.internal.core.util.XMLComponentRegistry;

public class SchemaAttribute
extends SchemaObject
implements ISchemaAttribute {
    private static final long serialVersionUID = 1L;
    private int kind = 0;
    private int use = 0;
    private String valueFilter;
    private ISchemaSimpleType type;
    private String basedOn;
    private Object value;
    public static final String P_USE = "useProperty";
    public static final String P_VALUE_FILTER = "valueFilterProperty";
    public static final String P_VALUE = "value";
    public static final String P_KIND = "kindProperty";
    public static final String P_TYPE = "typeProperty";
    public static final String P_BASED_ON = "basedOnProperty";
    private boolean fTranslatable;
    private boolean fDeprecated;

    public SchemaAttribute(ISchemaAttribute att, String newName) {
        super(att.getParent(), newName);
        this.kind = att.getKind();
        this.use = att.getUse();
        this.value = att.getValue();
        this.type = new SchemaSimpleType(att.getType());
        this.basedOn = att.getBasedOn();
    }

    public SchemaAttribute(ISchemaObject parent, String name) {
        super(parent, name);
    }

    public String getBasedOn() {
        if (this.getKind() == 1 || this.getKind() == 3) {
            return this.basedOn;
        }
        return null;
    }

    public int getKind() {
        return this.kind;
    }

    public ISchemaSimpleType getType() {
        return this.type;
    }

    public int getUse() {
        return this.use;
    }

    public Object getValue() {
        return this.value;
    }

    public String getValueFilter() {
        return this.valueFilter;
    }

    public void setBasedOn(String newBasedOn) {
        String oldValue = this.basedOn;
        this.basedOn = newBasedOn;
        this.getSchema().fireModelObjectChanged(this, P_BASED_ON, oldValue, this.basedOn);
    }

    public void setKind(int newKind) {
        Integer oldValue = new Integer(this.kind);
        this.kind = newKind;
        this.getSchema().fireModelObjectChanged(this, P_KIND, oldValue, new Integer(this.kind));
    }

    public void setTranslatableProperty(boolean translatable) {
        boolean oldValue = this.fTranslatable;
        this.fTranslatable = translatable;
        this.getSchema().fireModelObjectChanged(this, "translatable", oldValue, translatable);
    }

    public void setDeprecatedProperty(boolean deprecated) {
        boolean oldValue = this.fDeprecated;
        this.fDeprecated = deprecated;
        this.getSchema().fireModelObjectChanged(this, "deprecated", oldValue, deprecated);
    }

    public void setType(ISchemaSimpleType newType) {
        ISchemaSimpleType oldValue = this.type;
        this.type = newType;
        this.getSchema().fireModelObjectChanged(this, P_TYPE, oldValue, this.type);
    }

    public void setParent(ISchemaObject obj) {
        super.setParent(obj);
        if (this.type != null) {
            this.type.setSchema(this.getSchema());
        }
    }

    public void setUse(int newUse) {
        Integer oldValue = new Integer(this.use);
        this.use = newUse;
        this.getSchema().fireModelObjectChanged(this, P_USE, oldValue, new Integer(this.use));
    }

    public void setValue(String value) {
        String oldValue = (String)this.value;
        this.value = value;
        this.getSchema().fireModelObjectChanged(this, P_VALUE, oldValue, value);
    }

    public void setValueFilter(String valueFilter) {
        String oldValue = this.valueFilter;
        this.valueFilter = valueFilter;
        this.getSchema().fireModelObjectChanged(this, P_VALUE_FILTER, oldValue, valueFilter);
    }

    public void write(String indent, PrintWriter writer) {
        String documentation;
        boolean annotation = false;
        ISchemaSimpleType type = this.getType();
        String typeName = type.getName();
        writer.print(indent);
        writer.print("<attribute name=\"" + this.getName() + "\"");
        if (type.getRestriction() == null) {
            writer.print(" type=\"" + typeName + "\"");
        }
        String useString = null;
        switch (this.getUse()) {
            case 0: {
                break;
            }
            case 2: {
                useString = "default";
                break;
            }
            case 1: {
                useString = "required";
            }
        }
        if (useString != null) {
            writer.print(" use=\"" + useString + "\"");
        }
        if (this.value != null && this.getUse() == 2) {
            writer.print(" value=\"" + this.value + "\"");
        }
        if ((documentation = this.getWritableDescription()) != null || this.getBasedOn() != null || this.getKind() != 0) {
            annotation = true;
            writer.println(">");
            String annIndent = String.valueOf(indent) + "   ";
            String indent2 = String.valueOf(annIndent) + "   ";
            String indent3 = String.valueOf(indent2) + "   ";
            writer.print(annIndent);
            writer.println("<annotation>");
            if (documentation != null) {
                writer.println(String.valueOf(indent2) + "<documentation>");
                writer.println(String.valueOf(indent3) + documentation);
                writer.println(String.valueOf(indent2) + "</documentation>");
            }
            if (this.getBasedOn() != null || this.getKind() != 0 || this.isDeprecated() || this.isTranslatable()) {
                writer.println(String.valueOf(indent2) + (this.getSchema().getSchemaVersion() >= 3.4 ? "<appinfo>" : "<appInfo>"));
                writer.print(String.valueOf(indent3) + "<meta.attribute");
                String kindValue = null;
                switch (this.getKind()) {
                    case 1: {
                        kindValue = "java";
                        break;
                    }
                    case 2: {
                        kindValue = "resource";
                        break;
                    }
                    case 3: {
                        kindValue = "identifier";
                    }
                }
                if (kindValue != null) {
                    writer.print(" kind=\"" + kindValue + "\"");
                }
                if (this.getBasedOn() != null) {
                    writer.print(" basedOn=\"" + this.getBasedOn() + "\"");
                }
                if (this.isTranslatable()) {
                    writer.print(" translatable=\"true\"");
                }
                if (this.isDeprecated()) {
                    writer.print(" deprecated=\"true\"");
                }
                writer.println("/>");
                writer.println(String.valueOf(indent2) + (this.getSchema().getSchemaVersion() >= 3.4 ? "</appinfo>" : "</appInfo>"));
            }
            writer.println(String.valueOf(annIndent) + "</annotation>");
        }
        if (type.getRestriction() != null) {
            type.write(String.valueOf(indent) + "   ", writer);
        }
        if (annotation || type.getRestriction() != null) {
            writer.println(String.valueOf(indent) + "</attribute>");
        } else {
            writer.println("/>");
        }
    }

    public boolean isTranslatable() {
        if (this.getKind() == 0 && this.fTranslatable) {
            return this.type == null || "string".equals(this.type.getName());
        }
        return false;
    }

    public boolean isDeprecated() {
        return this.fDeprecated;
    }

    public String getDescription() {
        if (super.getDescription() != null) {
            return super.getDescription();
        }
        ISchema schema = this.getSchema();
        if (schema == null || schema.getURL() == null) {
            return null;
        }
        String elementName = null;
        if (this.getParent() instanceof ISchemaElement && (elementName = ((ISchemaElement)this.getParent()).getName()) == null) {
            return null;
        }
        String hashkey = String.valueOf(schema.getURL().hashCode()) + "_" + elementName + "_" + this.getName();
        String description = XMLComponentRegistry.Instance().getDescription(hashkey, 8);
        if (description == null) {
            SchemaAttributeHandler handler = new SchemaAttributeHandler(elementName, this.getName());
            SchemaUtil.parseURL(schema.getURL(), handler);
            description = handler.getDescription();
            XMLComponentRegistry.Instance().putDescription(hashkey, description, 8);
        }
        return description;
    }
}

