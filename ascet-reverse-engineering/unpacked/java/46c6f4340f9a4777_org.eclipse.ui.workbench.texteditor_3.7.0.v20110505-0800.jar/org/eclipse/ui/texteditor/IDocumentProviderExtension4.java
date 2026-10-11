/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.content.IContentType
 */
package org.eclipse.ui.texteditor;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.content.IContentType;

public interface IDocumentProviderExtension4 {
    public IContentType getContentType(Object var1) throws CoreException;
}

