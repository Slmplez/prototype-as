/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 */
package org.eclipse.pde.internal.core.schema;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.core.resources.IFile;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaDescriptor;
import org.eclipse.pde.internal.core.schema.EditableSchema;
import org.eclipse.pde.internal.core.schema.Schema;

public class SchemaDescriptor
implements ISchemaDescriptor {
    private String fPoint;
    private URL fSchemaURL;
    private Schema fSchema;
    private long fLastModified;
    private boolean fEditable;

    public SchemaDescriptor(String extPointID, URL schemaURL) {
        File file;
        this.fPoint = extPointID;
        this.fSchemaURL = schemaURL;
        if (this.fSchemaURL != null && (file = new File(this.fSchemaURL.getFile())).exists()) {
            this.fLastModified = file.lastModified();
        }
    }

    public SchemaDescriptor(IFile file, boolean editable) {
        this(new File(file.getLocation().toOSString()));
        this.fEditable = editable;
    }

    public SchemaDescriptor(File file) {
        try {
            if (file.exists()) {
                this.fSchemaURL = file.toURL();
                this.fLastModified = file.lastModified();
            }
        }
        catch (MalformedURLException malformedURLException) {}
    }

    public String getPointId() {
        if (this.fPoint != null) {
            return this.fPoint;
        }
        return this.fSchema == null ? null : this.fSchema.getQualifiedPointId();
    }

    public ISchema getSchema(boolean abbreviated) {
        if (this.fSchema == null && this.fSchemaURL != null) {
            this.fSchema = this.fEditable ? new EditableSchema(this, this.fSchemaURL, abbreviated) : new Schema(this, this.fSchemaURL, abbreviated);
            this.fSchema.load();
        }
        return this.fSchema;
    }

    public URL getSchemaURL() {
        return this.fSchemaURL;
    }

    public boolean isStandalone() {
        return true;
    }

    public long getLastModified() {
        return this.fLastModified;
    }
}

