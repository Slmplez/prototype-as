/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.runtime.content;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentType;

public interface IContentTypeMatcher {
    public IContentType findContentTypeFor(InputStream var1, String var2) throws IOException;

    public IContentType findContentTypeFor(String var1);

    public IContentType[] findContentTypesFor(InputStream var1, String var2) throws IOException;

    public IContentType[] findContentTypesFor(String var1);

    public IContentDescription getDescriptionFor(InputStream var1, String var2, QualifiedName[] var3) throws IOException;

    public IContentDescription getDescriptionFor(Reader var1, String var2, QualifiedName[] var3) throws IOException;
}

