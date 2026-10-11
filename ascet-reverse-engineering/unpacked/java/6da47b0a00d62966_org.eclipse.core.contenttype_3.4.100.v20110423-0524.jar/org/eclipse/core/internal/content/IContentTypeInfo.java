/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.internal.content;

import org.eclipse.core.internal.content.ContentType;
import org.eclipse.core.runtime.QualifiedName;

public interface IContentTypeInfo {
    public ContentType getContentType();

    public String getDefaultProperty(QualifiedName var1);
}

