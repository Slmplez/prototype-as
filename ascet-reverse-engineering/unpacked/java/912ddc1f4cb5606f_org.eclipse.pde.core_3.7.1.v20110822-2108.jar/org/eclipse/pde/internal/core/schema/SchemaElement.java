/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.schema;

import java.io.PrintWriter;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaAttribute;
import org.eclipse.pde.internal.core.ischema.ISchemaComplexType;
import org.eclipse.pde.internal.core.ischema.ISchemaCompositor;
import org.eclipse.pde.internal.core.ischema.ISchemaElement;
import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.ischema.ISchemaRepeatable;
import org.eclipse.pde.internal.core.ischema.ISchemaType;
import org.eclipse.pde.internal.core.schema.RepeatableSchemaObject;
import org.eclipse.pde.internal.core.schema.SchemaComplexType;
import org.eclipse.pde.internal.core.schema.SchemaElementHandler;
import org.eclipse.pde.internal.core.schema.SchemaSimpleType;
import org.eclipse.pde.internal.core.util.SchemaUtil;
import org.eclipse.pde.internal.core.util.XMLComponentRegistry;

public class SchemaElement
extends RepeatableSchemaObject
implements ISchemaElement {
    private static final long serialVersionUID = 1L;
    public static final String P_ICON_NAME = "iconName";
    public static final String P_LABEL_PROPERTY = "labelProperty";
    public static final String P_TYPE = "type";
    private String labelProperty;
    private ISchemaType type;
    private String iconName;
    private boolean fTranslatable;
    private boolean fDeprecated;

    public SchemaElement(ISchemaObject parent, String name) {
        super(parent, name);
    }

    private String calculateChildRepresentation(ISchemaObject object, boolean addLinks) {
        String child = "";
        if (object instanceof ISchemaCompositor) {
            child = this.calculateCompositorRepresentation((ISchemaCompositor)object, addLinks);
            if (!child.equals("EMPTY") && child.length() > 0) {
                child = "(" + child + ")";
            }
        } else {
            child = object.getName();
            if (addLinks) {
                child = "<a href=\"#e." + child + "\">" + child + "</a>";
            }
        }
        int minOccurs = 1;
        int maxOccurs = 1;
        if (object instanceof ISchemaRepeatable) {
            minOccurs = ((ISchemaRepeatable)((Object)object)).getMinOccurs();
            maxOccurs = ((ISchemaRepeatable)((Object)object)).getMaxOccurs();
        }
        if (minOccurs == 0) {
            child = maxOccurs == 1 ? String.valueOf(child) + "?" : String.valueOf(child) + "*";
        } else if (minOccurs == 1 && maxOccurs > 1) {
            child = String.valueOf(child) + "+";
        }
        return child;
    }

    private String calculateCompositorRepresentation(ISchemaCompositor compositor, boolean addLinks) {
        int kind = compositor.getKind();
        ISchemaObject[] children = compositor.getChildren();
        if (children.length == 0) {
            return "EMPTY";
        }
        String text = kind == 3 ? "(" : "";
        int i = 0;
        while (i < children.length) {
            ISchemaObject object = children[i];
            String child = this.calculateChildRepresentation(object, addLinks);
            text = String.valueOf(text) + child;
            if (i < children.length - 1) {
                if (kind == 2) {
                    text = String.valueOf(text) + " , ";
                } else if (kind == 1) {
                    text = String.valueOf(text) + " | ";
                }
            }
            ++i;
        }
        if (kind == 3) {
            text = String.valueOf(text) + ")";
        }
        return text;
    }

    public ISchemaAttribute getAttribute(String name) {
        if (this.type != null && this.type instanceof ISchemaComplexType) {
            return ((ISchemaComplexType)this.type).getAttribute(name);
        }
        return null;
    }

    public int getAttributeCount() {
        if (this.type != null && this.type instanceof ISchemaComplexType) {
            return ((ISchemaComplexType)this.type).getAttributeCount();
        }
        return 0;
    }

    public ISchemaAttribute[] getAttributes() {
        if (this.type != null && this.type instanceof ISchemaComplexType) {
            return ((ISchemaComplexType)this.type).getAttributes();
        }
        return new ISchemaAttribute[0];
    }

    public String[] getAttributeNames() {
        ISchemaAttribute[] attributes = this.getAttributes();
        String[] names = new String[attributes.length];
        int i = 0;
        while (i < attributes.length) {
            names[i] = attributes[i].getName();
            ++i;
        }
        return names;
    }

    public String getDTDRepresentation(boolean addLinks) {
        String text = "";
        if (this.type == null) {
            text = String.valueOf(text) + "EMPTY";
        } else {
            if (this.type instanceof ISchemaComplexType) {
                ISchemaComplexType complexType = (ISchemaComplexType)this.type;
                ISchemaCompositor compositor = complexType.getCompositor();
                if (compositor != null) {
                    text = String.valueOf(text) + this.calculateChildRepresentation(compositor, addLinks);
                } else if (this.getAttributeCount() != 0) {
                    text = String.valueOf(text) + "EMPTY";
                }
            }
            if (text.length() == 0) {
                text = String.valueOf(text) + "(#PCDATA)";
            }
        }
        if (text.length() > 0 && !text.equals("EMPTY") && text.charAt(0) != '(') {
            text = "(" + text + ")";
        }
        return text;
    }

    public String getIconProperty() {
        if (this.iconName != null) {
            return this.iconName;
        }
        ISchemaAttribute[] attributes = this.getAttributes();
        int i = 0;
        while (i < attributes.length) {
            if (this.isValidIconProperty(attributes[i])) {
                return attributes[i].getName();
            }
            ++i;
        }
        return null;
    }

    public String getLabelProperty() {
        if (this.labelProperty != null) {
            return this.labelProperty;
        }
        ISchemaAttribute[] attributes = this.getAttributes();
        int i = 0;
        while (i < attributes.length) {
            if (this.isValidLabelProperty(attributes[i])) {
                return attributes[i].getName();
            }
            ++i;
        }
        return null;
    }

    private boolean isValidLabelProperty(ISchemaAttribute a) {
        return a.getKind() == 0 && a.getType().getName().equals(ISchemaAttribute.TYPES[1]) && a.isTranslatable();
    }

    private boolean isValidIconProperty(ISchemaAttribute a) {
        return a.getKind() == 2;
    }

    public ISchemaType getType() {
        return this.type;
    }

    public void setParent(ISchemaObject parent) {
        super.setParent(parent);
        if (this.type != null) {
            ISchemaComplexType ctype;
            ISchemaCompositor comp;
            this.type.setSchema(this.getSchema());
            if (this.type instanceof ISchemaComplexType && (comp = (ctype = (ISchemaComplexType)this.type).getCompositor()) != null) {
                comp.setParent(this);
            }
        }
        if (this.getAttributeCount() > 0) {
            ISchemaAttribute[] atts = this.getAttributes();
            int i = 0;
            while (i < atts.length) {
                ISchemaAttribute att = atts[i];
                att.setParent(this);
                ++i;
            }
        }
    }

    public void setIconProperty(String newIconName) {
        String oldValue = this.iconName;
        this.iconName = newIconName;
        this.getSchema().fireModelObjectChanged(this, P_ICON_NAME, oldValue, this.iconName);
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

    public void setLabelProperty(String labelProperty) {
        String oldValue = this.labelProperty;
        this.labelProperty = labelProperty;
        this.getSchema().fireModelObjectChanged(this, P_LABEL_PROPERTY, oldValue, labelProperty);
    }

    public void setType(ISchemaType newType) {
        ISchemaType oldValue = this.type;
        this.type = newType;
        this.getSchema().fireModelObjectChanged(this, P_TYPE, oldValue, this.type);
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(String.valueOf(indent) + "<element name=\"" + this.getName() + "\"");
        ISchemaType type = this.getType();
        if (type instanceof SchemaSimpleType) {
            writer.print(" type=\"" + type.getName() + "\"");
        }
        writer.println(">");
        String indent2 = String.valueOf(indent) + "   ";
        String realDescription = this.getWritableDescription();
        if (realDescription.length() == 0) {
            realDescription = null;
        }
        String extendedProperties = this.getExtendedAttributes();
        if (realDescription != null || this.iconName != null || this.labelProperty != null || extendedProperties != null || this.isDeprecated() || this.hasTranslatableContent()) {
            String indent3 = String.valueOf(indent2) + "   ";
            String indent4 = String.valueOf(indent3) + "   ";
            writer.println(String.valueOf(indent2) + "<annotation>");
            if (this.iconName != null || this.labelProperty != null || extendedProperties != null || this.isDeprecated() || this.hasTranslatableContent()) {
                writer.println(String.valueOf(indent3) + (this.getSchema().getSchemaVersion() >= 3.4 ? "<appinfo>" : "<appInfo>"));
                writer.print(String.valueOf(indent4) + "<meta.element");
                if (this.labelProperty != null) {
                    writer.print(" labelAttribute=\"" + this.labelProperty + "\"");
                }
                if (this.iconName != null) {
                    writer.print(" icon=\"" + this.iconName + "\"");
                }
                if (this.hasTranslatableContent()) {
                    writer.print(" translatable=\"true\"");
                }
                if (this.isDeprecated()) {
                    writer.print(" deprecated=\"true\"");
                }
                if (extendedProperties != null) {
                    writer.print(extendedProperties);
                }
                writer.println("/>");
                writer.println(String.valueOf(indent3) + (this.getSchema().getSchemaVersion() >= 3.4 ? "</appinfo>" : "</appInfo>"));
            }
            if (realDescription != null) {
                writer.println(String.valueOf(indent3) + "<documentation>");
                if (this.getDescription() != null) {
                    writer.println(String.valueOf(indent4) + realDescription);
                }
                writer.println(String.valueOf(indent3) + "</documentation>");
            }
            writer.println(String.valueOf(indent2) + "</annotation>");
        }
        if (type instanceof SchemaComplexType) {
            SchemaComplexType complexType = (SchemaComplexType)type;
            complexType.write(indent2, writer);
        }
        writer.println(String.valueOf(indent) + "</element>");
    }

    public boolean hasTranslatableContent() {
        return this.fTranslatable;
    }

    public boolean isDeprecated() {
        return this.fDeprecated;
    }

    public String getExtendedAttributes() {
        return null;
    }

    public String getDescription() {
        if (super.getDescription() != null) {
            return super.getDescription();
        }
        ISchema schema = this.getSchema();
        if (schema == null || schema.getURL() == null) {
            return null;
        }
        String hashkey = String.valueOf(schema.getURL().hashCode()) + "_" + this.getName();
        String description = XMLComponentRegistry.Instance().getDescription(hashkey, 4);
        if (description == null) {
            SchemaElementHandler handler = new SchemaElementHandler(this.getName());
            SchemaUtil.parseURL(schema.getURL(), handler);
            description = handler.getDescription();
            XMLComponentRegistry.Instance().putDescription(hashkey, description, 4);
        }
        return description;
    }

    public int compareTo(Object arg0) {
        if (arg0 instanceof ISchemaElement) {
            return this.getName().compareToIgnoreCase(((ISchemaElement)arg0).getName());
        }
        return -1;
    }
}

