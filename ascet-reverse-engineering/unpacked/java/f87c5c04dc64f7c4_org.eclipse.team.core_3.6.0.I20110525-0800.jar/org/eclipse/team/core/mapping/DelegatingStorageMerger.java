/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IStorage
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.core.runtime.content.IContentTypeManager
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.core.mapping;

import java.io.IOException;
import java.io.OutputStream;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IStorage;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.content.IContentTypeManager;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.Team;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.mapping.IStorageMerger;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.StorageMergerRegistry;
import org.eclipse.team.internal.core.TeamPlugin;
import org.eclipse.team.internal.core.mapping.IStreamMergerDelegate;

public class DelegatingStorageMerger
implements IStorageMerger {
    private static DelegatingStorageMerger instance;

    public static IStorageMerger createTextMerger() {
        return Team.createMerger(Platform.getContentTypeManager().getContentType("org.eclipse.core.runtime.text"));
    }

    public static IStorageMerger getInstance() {
        if (instance == null) {
            instance = new DelegatingStorageMerger();
        }
        return instance;
    }

    public IStatus merge(OutputStream output, String outputEncoding, IStorage ancestor, IStorage target, IStorage other, IProgressMonitor monitor) throws CoreException {
        IStorageMerger merger = this.createDelegateMerger(target);
        if (merger == null) {
            return new Status(2, "org.eclipse.team.core", 1, Messages.DelegatingStorageMerger_0, null);
        }
        if (ancestor == null && !merger.canMergeWithoutAncestor()) {
            return new Status(2, "org.eclipse.team.core", 1, NLS.bind((String)Messages.MergeContext_1, (Object[])new String[]{target.getFullPath().toString()}), null);
        }
        return merger.merge(output, outputEncoding, ancestor, target, other, monitor);
    }

    protected IStorageMerger createDelegateMerger(IStorage target) throws CoreException {
        IStorageMerger merger = null;
        CoreException exception = null;
        try {
            IContentType type = DelegatingStorageMerger.getContentType(target);
            if (type != null) {
                merger = this.getMerger(type);
            }
        }
        catch (CoreException e) {
            exception = e;
        }
        if (merger == null && (merger = this.getMerger(target.getName())) == null) {
            int type = this.getType(target);
            if (type == 1) {
                merger = DelegatingStorageMerger.createTextMerger();
            }
            if (merger == null) {
                merger = this.findAndWrapStreamMerger(target);
            }
        }
        if (exception != null) {
            if (merger == null) {
                throw exception;
            }
            TeamPlugin.log(exception);
        }
        return merger;
    }

    protected int getType(IStorage target) {
        return Team.getFileContentManager().getType(target);
    }

    private IStorageMerger findAndWrapStreamMerger(IStorage target) {
        IStreamMergerDelegate mergerDelegate = TeamPlugin.getPlugin().getMergerDelegate();
        if (mergerDelegate != null) {
            IStorageMerger merger = mergerDelegate.findMerger(target);
            return merger;
        }
        return null;
    }

    private IStorageMerger getMerger(String name) {
        String extension = DelegatingStorageMerger.getExtension(name);
        if (extension != null) {
            return StorageMergerRegistry.getInstance().createStreamMerger(extension);
        }
        return null;
    }

    public static String getExtension(String name) {
        int index = name.lastIndexOf(46);
        if (index == -1) {
            return null;
        }
        return name.substring(index + 1);
    }

    private IStorageMerger getMerger(IContentType type) {
        return Team.createMerger(type);
    }

    public static IContentType getContentType(IStorage target) throws CoreException {
        if (target instanceof IFile) {
            IFile file = (IFile)target;
            IContentDescription contentDescription = file.getContentDescription();
            if (contentDescription != null) {
                IContentType contentType = contentDescription.getContentType();
                return contentType;
            }
        } else {
            IContentTypeManager manager = Platform.getContentTypeManager();
            try {
                IContentType type = manager.findContentTypeFor(target.getContents(), target.getName());
                return type;
            }
            catch (IOException e) {
                String name = target.getName();
                if (target.getFullPath() != null) {
                    name = target.getFullPath().toString();
                }
                throw new TeamException((IStatus)new Status(4, "org.eclipse.team.core", 2, NLS.bind((String)Messages.DelegatingStorageMerger_1, (Object)name), (Throwable)e));
            }
        }
        return null;
    }

    public boolean canMergeWithoutAncestor() {
        return false;
    }
}

