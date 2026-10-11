/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.transaction.Transaction
 *  org.eclipse.emf.transaction.util.ValidateEditSupport$Default
 */
package org.eclipse.emf.workspace.util;

import java.util.ArrayList;
import java.util.Collection;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.util.ValidateEditSupport;
import org.eclipse.emf.workspace.util.WorkspaceSynchronizer;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class WorkspaceValidateEditSupport
extends ValidateEditSupport.Default {
    protected IStatus doValidateEdit(Transaction transaction, Collection<? extends Resource> resources, Object context) {
        IFile[] files = this.getFiles(resources);
        return ResourcesPlugin.getWorkspace().validateEdit(files, context);
    }

    protected IFile[] getFiles(Collection<? extends Resource> resources) {
        ArrayList<IFile> result = new ArrayList<IFile>();
        for (Resource resource : resources) {
            IFile file = WorkspaceSynchronizer.getFile(resource);
            if (file == null) continue;
            result.add(file);
        }
        return result.toArray(new IFile[result.size()]);
    }
}

