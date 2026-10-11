/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.schema;

import java.io.PrintWriter;
import java.util.Vector;
import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.ischema.ISchemaCompositor;
import org.eclipse.pde.internal.core.ischema.ISchemaElement;
import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.schema.RepeatableSchemaObject;
import org.eclipse.pde.internal.core.schema.SchemaElementReference;

public class SchemaCompositor
extends RepeatableSchemaObject
implements ISchemaCompositor {
    private static final long serialVersionUID = 1L;
    public static final String P_KIND = "p_kind";
    private int kind;
    private Vector children = new Vector();

    public SchemaCompositor(ISchemaObject parent, int kind) {
        super(parent, "");
        this.kind = kind;
        switch (kind) {
            case 0: {
                this.fName = PDECoreMessages.SchemaCompositor_all;
                break;
            }
            case 1: {
                this.fName = PDECoreMessages.SchemaCompositor_choice;
                break;
            }
            case 3: {
                this.fName = PDECoreMessages.SchemaCompositor_group;
                break;
            }
            case 2: {
                this.fName = PDECoreMessages.SchemaCompositor_sequence;
            }
        }
    }

    public SchemaCompositor(ISchemaObject parent, String id, int kind) {
        super(parent, id);
        this.kind = kind;
    }

    public void addChild(ISchemaObject child) {
        this.children.addElement(child);
        child.setParent(this);
        this.getSchema().fireModelChanged(new ModelChangedEvent(this.getSchema(), 1, new Object[]{child}, null));
    }

    public void moveChildToSibling(ISchemaObject element, ISchemaObject sibling) {
        int newIndex;
        int index = this.children.indexOf(element);
        if (index > (newIndex = sibling != null && this.children.contains(sibling) ? this.children.indexOf(sibling) : this.children.size() - 1)) {
            int i = index;
            while (i > newIndex) {
                this.children.set(i, this.children.elementAt(i - 1));
                --i;
            }
        } else if (index < newIndex) {
            int i = index;
            while (i < newIndex) {
                this.children.set(i, this.children.elementAt(i + 1));
                ++i;
            }
        } else {
            return;
        }
        this.children.set(newIndex, element);
        this.getSchema().fireModelChanged(new ModelChangedEvent(this.getSchema(), 3, new Object[]{this}, null));
    }

    public void addChild(ISchemaObject newChild, ISchemaObject afterSibling) {
        int index = -1;
        if (afterSibling != null) {
            index = this.children.indexOf(afterSibling);
        }
        if (index != -1) {
            this.children.add(index + 1, newChild);
        } else {
            this.children.addElement(newChild);
        }
        this.getSchema().fireModelChanged(new ModelChangedEvent(this.getSchema(), 1, new Object[]{newChild}, null));
    }

    public int getChildCount() {
        return this.children.size();
    }

    public ISchemaObject[] getChildren() {
        Object[] result = new ISchemaObject[this.children.size()];
        this.children.copyInto(result);
        return result;
    }

    public void setParent(ISchemaObject parent) {
        super.setParent(parent);
        int i = 0;
        while (i < this.children.size()) {
            ISchemaObject child = (ISchemaObject)this.children.get(i);
            child.setParent(this);
            ++i;
        }
    }

    public int getKind() {
        return this.kind;
    }

    public void removeChild(ISchemaObject child) {
        this.children.removeElement(child);
        this.getSchema().fireModelChanged(new ModelChangedEvent(this.getSchema(), 2, new Object[]{child}, null));
    }

    public void setKind(int kind) {
        if (this.kind != kind) {
            Integer oldValue = new Integer(this.kind);
            this.kind = kind;
            switch (kind) {
                case 0: {
                    this.fName = PDECoreMessages.SchemaCompositor_all;
                    break;
                }
                case 1: {
                    this.fName = PDECoreMessages.SchemaCompositor_choice;
                    break;
                }
                case 3: {
                    this.fName = PDECoreMessages.SchemaCompositor_group;
                    break;
                }
                case 2: {
                    this.fName = PDECoreMessages.SchemaCompositor_sequence;
                }
            }
            this.getSchema().fireModelObjectChanged(this, P_KIND, oldValue, new Integer(kind));
        }
    }

    public void updateReferencesFor(ISchemaElement element, int kind) {
        int i = this.children.size() - 1;
        while (i >= 0) {
            block13: {
                Object child;
                block12: {
                    child = this.children.elementAt(i);
                    if (!(child instanceof SchemaElementReference)) break block12;
                    SchemaElementReference ref = (SchemaElementReference)child;
                    String refName = ref.getReferenceName();
                    switch (kind) {
                        case 1: {
                            if (element.getName().equals(refName)) {
                                ref.setReferencedObject(element);
                                this.getSchema().fireModelObjectChanged(ref, null, null, null);
                                break;
                            }
                            break block13;
                        }
                        case 2: {
                            if (element.getName().equals(refName)) {
                                this.removeChild(ref);
                                this.getSchema().fireModelObjectChanged(this, null, ref, null);
                                break;
                            }
                            break block13;
                        }
                        case 3: {
                            if (ref.getReferencedElement() == element) {
                                ref.setReferenceName(element.getName());
                                break;
                            }
                            if (!element.getName().equals(refName)) break block13;
                            ref.setReferencedObject(element);
                            this.getSchema().fireModelObjectChanged(ref, null, null, null);
                        }
                        default: {
                            break;
                        }
                        {
                        }
                    }
                    break block13;
                }
                SchemaCompositor compositor = (SchemaCompositor)child;
                compositor.updateReferencesFor(element, kind);
            }
            --i;
        }
    }

    public void write(String indent, PrintWriter writer) {
        String tag = null;
        switch (this.kind) {
            case 1: {
                tag = "choice";
                break;
            }
            case 0: 
            case 2: 
            case 3: {
                tag = "sequence";
            }
        }
        if (tag == null) {
            return;
        }
        writer.print(String.valueOf(indent) + "<" + tag);
        if (this.getMinOccurs() != 1 || this.getMaxOccurs() != 1) {
            String min = "" + this.getMinOccurs();
            String max = this.getMaxOccurs() == Integer.MAX_VALUE ? "unbounded" : "" + this.getMaxOccurs();
            writer.print(" minOccurs=\"" + min + "\" maxOccurs=\"" + max + "\"");
        }
        writer.println(">");
        String indent2 = String.valueOf(indent) + "   ";
        int i = 0;
        while (i < this.children.size()) {
            Object obj = this.children.elementAt(i);
            if (obj instanceof IWritable) {
                ((IWritable)obj).write(indent2, writer);
            }
            ++i;
        }
        writer.println(String.valueOf(indent) + "</" + tag + ">");
    }
}

