/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.internal.content;

import org.eclipse.core.internal.content.BasicDescription;
import org.eclipse.core.internal.content.IContentTypeInfo;
import org.eclipse.core.runtime.QualifiedName;

public final class DefaultDescription
extends BasicDescription {
    public DefaultDescription(IContentTypeInfo contentTypeInfo) {
        super(contentTypeInfo);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DefaultDescription)) {
            return false;
        }
        return this.contentTypeInfo.equals(((DefaultDescription)obj).contentTypeInfo);
    }

    public String getCharset() {
        return (String)this.getProperty(CHARSET);
    }

    public Object getProperty(QualifiedName key) {
        return this.contentTypeInfo.getDefaultProperty(key);
    }

    public int hashCode() {
        return this.contentTypeInfo.getContentType().hashCode();
    }

    public boolean isRequested(QualifiedName key) {
        return false;
    }

    public void setProperty(QualifiedName key, Object value) {
        throw new IllegalStateException();
    }

    public String toString() {
        return "{default} : " + this.contentTypeInfo.getContentType();
    }
}

