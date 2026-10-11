/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.pde.internal.core.schema;

import java.io.PrintWriter;
import java.io.Serializable;
import java.util.Hashtable;
import java.util.Vector;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.pde.core.ISourceObject;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.ischema.IMetaElement;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaAttribute;
import org.eclipse.pde.internal.core.ischema.ISchemaCompositor;
import org.eclipse.pde.internal.core.ischema.ISchemaDescriptor;
import org.eclipse.pde.internal.core.ischema.ISchemaElement;
import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.ischema.ISchemaObjectReference;
import org.eclipse.pde.internal.core.ischema.ISchemaType;
import org.eclipse.pde.internal.core.schema.IncludedSchemaDescriptor;
import org.w3c.dom.Comment;
import org.w3c.dom.Node;

public class SchemaElementReference
extends PlatformObject
implements ISchemaElement,
IMetaElement,
ISchemaObjectReference,
ISourceObject,
Serializable {
    private static final long serialVersionUID = 1L;
    private ISchemaElement element;
    private ISchemaCompositor compositor;
    private String referenceName;
    public static final String P_MAX_OCCURS = "max_occurs";
    public static final String P_MIN_OCCURS = "min_occurs";
    public static final String P_REFERENCE_NAME = "reference_name";
    private int minOccurs = 1;
    private int maxOccurs = 1;
    private Vector comments;
    private int[] range;
    static /* synthetic */ Class class$0;

    public SchemaElementReference(ISchemaCompositor compositor, String ref) {
        this.referenceName = ref;
        this.compositor = compositor;
    }

    public ISchemaAttribute getAttribute(String name) {
        if (this.element == null) {
            return null;
        }
        return this.element.getAttribute(name);
    }

    public int getAttributeCount() {
        if (this.element == null) {
            return 0;
        }
        return this.element.getAttributeCount();
    }

    public ISchemaAttribute[] getAttributes() {
        if (this.element == null) {
            return new ISchemaAttribute[0];
        }
        return this.element.getAttributes();
    }

    public String[] getAttributeNames() {
        if (this.element == null) {
            return new String[0];
        }
        return this.element.getAttributeNames();
    }

    public ISchemaCompositor getCompositor() {
        return this.compositor;
    }

    public String getDescription() {
        if (this.element == null) {
            return "";
        }
        return this.element.getDescription();
    }

    public String getDTDRepresentation(boolean addLinks) {
        if (this.element == null) {
            return PDECoreMessages.SchemaElementReference_refElementMissing;
        }
        return this.element.getDTDRepresentation(addLinks);
    }

    public String getIconProperty() {
        if (this.element == null) {
            return "";
        }
        return this.element.getIconProperty();
    }

    public String getLabelProperty() {
        if (this.element == null) {
            return "";
        }
        return this.element.getLabelProperty();
    }

    public int getMaxOccurs() {
        return this.maxOccurs;
    }

    public int getMinOccurs() {
        return this.minOccurs;
    }

    public String getName() {
        return this.referenceName;
    }

    public ISchemaObject getParent() {
        return this.compositor;
    }

    public void setParent(ISchemaObject parent) {
    }

    public ISchemaElement getReferencedElement() {
        return this.element;
    }

    public ISchemaObject getReferencedObject() {
        return this.element;
    }

    public Class getReferencedObjectClass() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.pde.internal.core.ischema.ISchemaElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }

    public String getReferenceName() {
        return this.referenceName;
    }

    public ISchema getSchema() {
        ISchemaDescriptor desc;
        ISchema schema;
        if (this.element != null && (schema = this.element.getSchema()) != null && !((desc = schema.getSchemaDescriptor()) instanceof IncludedSchemaDescriptor)) {
            return schema;
        }
        return this.getCompositorsSchema();
    }

    public ISchema getCompositorsSchema() {
        if (this.compositor != null) {
            return this.compositor.getSchema();
        }
        return null;
    }

    public ISchemaType getType() {
        if (this.element == null) {
            return null;
        }
        return this.element.getType();
    }

    public boolean isLinked() {
        return this.getReferencedObject() != null;
    }

    public void setCompositor(ISchemaCompositor newCompositor) {
        this.compositor = newCompositor;
    }

    public void setMaxOccurs(int newMaxOccurs) {
        Integer oldValue = new Integer(this.maxOccurs);
        this.maxOccurs = newMaxOccurs;
        ISchema schema = this.getCompositorsSchema();
        if (schema != null) {
            schema.fireModelObjectChanged(this, P_MAX_OCCURS, oldValue, new Integer(this.maxOccurs));
        }
    }

    public void setMinOccurs(int newMinOccurs) {
        Integer oldValue = new Integer(this.minOccurs);
        this.minOccurs = newMinOccurs;
        ISchema schema = this.getCompositorsSchema();
        if (schema != null) {
            schema.fireModelObjectChanged(this, P_MIN_OCCURS, oldValue, new Integer(this.minOccurs));
        }
    }

    public void setReferencedObject(ISchemaObject referencedObject) {
        this.element = referencedObject instanceof ISchemaElement ? (ISchemaElement)referencedObject : null;
    }

    public void setReferenceName(String name) {
        String oldValue = this.referenceName;
        this.referenceName = name;
        ISchema schema = this.getCompositorsSchema();
        if (schema != null) {
            schema.fireModelObjectChanged(this, P_REFERENCE_NAME, oldValue, name);
        }
    }

    public void write(String indent, PrintWriter writer) {
        this.writeComments(writer);
        writer.print(String.valueOf(indent) + "<element");
        writer.print(" ref=\"" + this.getReferenceName() + "\"");
        if (this.getMinOccurs() != 1 || this.getMaxOccurs() != 1) {
            String min = "" + this.getMinOccurs();
            String max = this.getMaxOccurs() == Integer.MAX_VALUE ? "unbounded" : "" + this.getMaxOccurs();
            writer.print(" minOccurs=\"" + min + "\" maxOccurs=\"" + max + "\"");
        }
        writer.println("/>");
    }

    public void addComments(Node node) {
        this.comments = this.addComments(node, this.comments);
    }

    public Vector addComments(Node node, Vector result) {
        Node prev = node.getPreviousSibling();
        while (prev != null) {
            if (prev.getNodeType() != 3) {
                if (!(prev instanceof Comment)) break;
                String comment = prev.getNodeValue();
                if (result == null) {
                    result = new Vector<String>();
                }
                result.add(comment);
            }
            prev = prev.getPreviousSibling();
        }
        return result;
    }

    void writeComments(PrintWriter writer) {
        this.writeComments(writer, this.comments);
    }

    void writeComments(PrintWriter writer, Vector source) {
        if (source == null) {
            return;
        }
        int i = 0;
        while (i < source.size()) {
            String comment = (String)source.elementAt(i);
            writer.println("<!--" + comment + "-->");
            ++i;
        }
    }

    public int getStartLine() {
        return this.range == null ? -1 : this.range[0];
    }

    public int getStopLine() {
        return this.range == null ? -1 : this.range[1];
    }

    void bindSourceLocation(Node node, Hashtable lineTable) {
        if (lineTable == null) {
            return;
        }
        Integer[] data = (Integer[])lineTable.get(node);
        if (data != null) {
            this.range = new int[]{data[0], data[1]};
        }
    }

    public boolean hasTranslatableContent() {
        return false;
    }

    public boolean isDeprecated() {
        return false;
    }

    public int compareTo(Object arg0) {
        if (this.element == null) {
            return -1;
        }
        if (arg0 == null) {
            return -1;
        }
        return this.element.compareTo(arg0);
    }
}

