/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IStorage
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.schema;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import org.eclipse.core.resources.IStorage;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaDescriptor;
import org.eclipse.pde.internal.core.schema.Schema;

public class StorageSchemaDescriptor
implements ISchemaDescriptor {
    private IStorage fStorage;
    private Schema fSchema;

    public StorageSchemaDescriptor(IStorage storage) {
        this.fStorage = storage;
    }

    public URL getSchemaURL() {
        return this.fSchema != null ? this.fSchema.getURL() : null;
    }

    public String getPointId() {
        return this.fSchema == null ? null : this.fSchema.getQualifiedPointId();
    }

    protected void loadSchema(boolean abbreviated) {
        this.fSchema = new Schema(this, null, false);
        try {
            InputStream stream = this.fStorage.getContents();
            this.fSchema.load(this.fStorage.getContents());
            stream.close();
        }
        catch (CoreException e) {
            PDECore.logException(e);
        }
        catch (IOException e) {
            PDECore.logException(e);
        }
    }

    public void reload() {
        if (this.fSchema != null) {
            this.fSchema.reload();
        }
    }

    public boolean isEnabled() {
        return true;
    }

    public ISchema getSchema(boolean abbreviated) {
        if (this.fSchema == null) {
            this.loadSchema(abbreviated);
        }
        return this.fSchema;
    }

    public boolean isStandalone() {
        return true;
    }

    public long getLastModified() {
        return 0L;
    }
}

