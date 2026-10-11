/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.workspace.util.WorkspaceSynchronizer$Delegate
 */
package org.eclipse.sphinx.emf.saving;

import java.util.Collection;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.workspace.util.WorkspaceSynchronizer;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IResourceSaveIndicator
extends WorkspaceSynchronizer.Delegate {
    public boolean isDirty(Resource var1);

    public void setDirty(Resource var1);

    public Collection<Resource> getDirtyResources();

    public boolean isSaved(URI var1);

    public void setSaved(Resource var1);

    public void setSaved(Collection<Resource> var1);
}

