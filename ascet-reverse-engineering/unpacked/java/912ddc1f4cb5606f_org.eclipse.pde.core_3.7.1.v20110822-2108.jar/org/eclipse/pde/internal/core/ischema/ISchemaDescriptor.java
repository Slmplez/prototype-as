/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ischema;

import java.net.URL;
import org.eclipse.pde.internal.core.ischema.ISchema;

public interface ISchemaDescriptor {
    public String getPointId();

    public ISchema getSchema(boolean var1);

    public URL getSchemaURL();

    public boolean isStandalone();

    public long getLastModified();
}

