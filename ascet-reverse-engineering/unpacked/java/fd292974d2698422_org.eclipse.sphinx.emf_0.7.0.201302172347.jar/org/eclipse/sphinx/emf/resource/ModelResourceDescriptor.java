/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.sphinx.emf.resource;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.emf.ecore.EObject;

public class ModelResourceDescriptor {
    EObject modelRoot;
    IPath path;
    String contentTypeId;

    public ModelResourceDescriptor(EObject modelRoot, IPath path, String contentTypeId) {
        Assert.isNotNull((Object)modelRoot);
        Assert.isNotNull((Object)path);
        this.modelRoot = modelRoot;
        this.path = path;
        this.contentTypeId = contentTypeId;
    }

    public EObject getModelRoot() {
        return this.modelRoot;
    }

    public IPath getPath() {
        return this.path;
    }

    public String getContentTypeId() {
        return this.contentTypeId;
    }
}

