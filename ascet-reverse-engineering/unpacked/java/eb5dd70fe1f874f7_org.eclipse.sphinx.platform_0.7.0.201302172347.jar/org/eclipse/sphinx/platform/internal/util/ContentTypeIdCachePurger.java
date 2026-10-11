/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.sphinx.platform.internal.util;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.sphinx.platform.internal.Activator;
import org.eclipse.sphinx.platform.resources.DefaultResourceChangeHandler;
import org.eclipse.sphinx.platform.resources.ResourceDeltaVisitor;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

public class ContentTypeIdCachePurger
implements IResourceChangeListener {
    public void resourceChanged(IResourceChangeEvent event) {
        try {
            IResourceDelta delta = event.getDelta();
            if (delta != null) {
                ResourceDeltaVisitor visitor = new ResourceDeltaVisitor(event.getType(), new DefaultResourceChangeHandler(){

                    public void handleFileChanged(int eventType, IFile file) {
                        ExtendedPlatform.removeCachedContentTypeId(file);
                    }

                    public void handleFileMoved(int eventType, IFile oldFile, IFile newFile) {
                        ExtendedPlatform.removeCachedContentTypeId(newFile);
                    }
                });
                delta.accept((IResourceDeltaVisitor)visitor);
            }
        }
        catch (CoreException ex) {
            PlatformLogUtil.logAsError(Activator.getDefault(), (Object)ex);
        }
    }
}

