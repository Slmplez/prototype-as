/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.schema;

import java.io.PrintWriter;
import java.net.URL;
import org.eclipse.pde.core.IEditable;
import org.eclipse.pde.core.IModelChangedEvent;
import org.eclipse.pde.internal.core.ischema.ISchemaDescriptor;
import org.eclipse.pde.internal.core.schema.Schema;

public class EditableSchema
extends Schema
implements IEditable {
    private boolean dirty;

    public EditableSchema(ISchemaDescriptor schemaDescriptor, URL url, boolean abbreviated) {
        super(schemaDescriptor, url, abbreviated);
    }

    public EditableSchema(String pluginId, String pointId, String name, boolean abbreviated) {
        super(pluginId, pointId, name, abbreviated);
    }

    public void fireModelChanged(IModelChangedEvent event) {
        if (this.isNotificationEnabled()) {
            this.dirty = true;
        }
        super.fireModelChanged(event);
    }

    public boolean isDirty() {
        return this.dirty;
    }

    public boolean isEditable() {
        return true;
    }

    public void save(PrintWriter writer) {
        this.write("", writer);
        this.dirty = false;
    }

    public void setDirty(boolean newDirty) {
        this.dirty = newDirty;
    }
}

