/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.jface.text.source.IAnnotationModel
 */
package org.eclipse.core.filebuffers;

import org.eclipse.core.runtime.IPath;
import org.eclipse.jface.text.source.IAnnotationModel;

public interface IAnnotationModelFactory {
    public IAnnotationModel createAnnotationModel(IPath var1);
}

