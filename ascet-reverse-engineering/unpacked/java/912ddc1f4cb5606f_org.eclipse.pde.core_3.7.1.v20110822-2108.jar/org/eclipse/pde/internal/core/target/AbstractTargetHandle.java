/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.target;

import java.io.InputStream;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.target.TargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.ITargetHandle;

public abstract class AbstractTargetHandle
implements ITargetHandle {
    public ITargetDefinition getTargetDefinition() throws CoreException {
        TargetDefinition definition = new TargetDefinition(this);
        if (this.exists()) {
            definition.setContents(this.getInputStream());
        }
        return definition;
    }

    protected abstract InputStream getInputStream() throws CoreException;

    abstract void delete() throws CoreException;

    abstract void save(ITargetDefinition var1) throws CoreException;
}

