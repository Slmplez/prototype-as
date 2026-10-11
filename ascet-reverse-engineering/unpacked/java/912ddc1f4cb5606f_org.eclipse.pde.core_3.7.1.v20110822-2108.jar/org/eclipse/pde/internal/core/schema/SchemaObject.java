/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.pde.internal.core.schema;

import java.io.Serializable;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.util.PDEXMLHelper;

public abstract class SchemaObject
extends PlatformObject
implements ISchemaObject,
Serializable {
    private static final long serialVersionUID = 1L;
    protected String fName;
    private String fDescription;
    private transient ISchemaObject fParent;

    public SchemaObject(ISchemaObject parent, String name) {
        this.fParent = parent;
        this.fName = name;
    }

    public String getDescription() {
        return this.fDescription;
    }

    public String getName() {
        return this.fName;
    }

    public ISchemaObject getParent() {
        return this.fParent;
    }

    public void setParent(ISchemaObject parent) {
        this.fParent = parent;
    }

    public ISchema getSchema() {
        ISchemaObject object = this;
        while (object.getParent() != null) {
            object = object.getParent();
        }
        return (ISchema)object;
    }

    public String getWritableDescription() {
        String lineDelimiter = System.getProperty("line.separator");
        String description = PDEXMLHelper.getWritableString(this.getDescription());
        String platformDescription = description.replaceAll("\\r\\n|\\r|\\n", lineDelimiter);
        return platformDescription;
    }

    public void setDescription(String newDescription) {
        String oldValue = this.fDescription;
        this.fDescription = newDescription;
        this.getSchema().fireModelObjectChanged(this, "description", oldValue, this.fDescription);
    }

    public void setName(String newName) {
        String oldValue = this.fName;
        this.fName = newName;
        this.getSchema().fireModelObjectChanged(this, "name", oldValue, this.fName);
    }

    public String toString() {
        if (this.fName != null) {
            return this.fName;
        }
        return super.toString();
    }
}

