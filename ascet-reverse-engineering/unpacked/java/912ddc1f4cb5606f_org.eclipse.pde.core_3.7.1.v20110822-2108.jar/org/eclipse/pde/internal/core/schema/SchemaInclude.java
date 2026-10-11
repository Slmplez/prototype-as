/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.schema;

import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaDescriptor;
import org.eclipse.pde.internal.core.ischema.ISchemaInclude;
import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.schema.IncludedSchemaDescriptor;
import org.eclipse.pde.internal.core.schema.Schema;
import org.eclipse.pde.internal.core.schema.SchemaObject;
import org.eclipse.pde.internal.core.schema.SchemaRegistry;

public class SchemaInclude
extends SchemaObject
implements ISchemaInclude {
    private static final long serialVersionUID = 1L;
    private String fLocation;
    private ISchema fIncludedSchema;
    private boolean fAbbreviated;

    public SchemaInclude(ISchemaObject parent, String location, boolean abbreviated) {
        super(parent, location);
        this.fLocation = location;
        this.fAbbreviated = abbreviated;
    }

    public String getLocation() {
        return this.fLocation;
    }

    public void setLocation(String location) throws CoreException {
        String oldValue = this.fLocation;
        this.fLocation = location;
        this.fIncludedSchema = null;
        this.getSchema().fireModelObjectChanged(this, "location", oldValue, location);
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(indent);
        writer.println("<include schemaLocation=\"" + this.fLocation + "\"/>");
    }

    public ISchema getIncludedSchema() {
        ISchemaDescriptor descriptor = this.getSchema().getSchemaDescriptor();
        if (this.fAbbreviated) {
            SchemaRegistry registry = PDECore.getDefault().getSchemaRegistry();
            this.fIncludedSchema = registry.getIncludedSchema(descriptor, this.fLocation);
        } else if (this.fIncludedSchema == null) {
            this.fIncludedSchema = this.createInternalSchema(descriptor, this.fLocation);
        }
        return this.fIncludedSchema;
    }

    private ISchema createInternalSchema(ISchemaDescriptor desc, String location) {
        URL schemaURL;
        block3: {
            try {
                schemaURL = IncludedSchemaDescriptor.computeURL(desc, location);
                if (schemaURL != null) break block3;
                return null;
            }
            catch (MalformedURLException malformedURLException) {
                return null;
            }
        }
        Schema ischema = new Schema(null, schemaURL, this.fAbbreviated);
        ischema.load();
        return ischema;
    }

    public void dispose() {
        if (this.fIncludedSchema != null && !this.fIncludedSchema.isDisposed()) {
            this.fIncludedSchema.dispose();
            this.fIncludedSchema = null;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof ISchemaInclude) {
            ISchemaInclude other = (ISchemaInclude)obj;
            if (this.fLocation != null) {
                return this.fLocation.equals(other.getLocation());
            }
            return other.getLocation() == null;
        }
        return false;
    }
}

