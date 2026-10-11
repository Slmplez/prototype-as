/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.preferences.IScopeContext
 */
package org.eclipse.core.runtime.content;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentTypeSettings;
import org.eclipse.core.runtime.preferences.IScopeContext;

public interface IContentType
extends IContentTypeSettings {
    public static final int IGNORE_PRE_DEFINED = 1;
    public static final int IGNORE_USER_DEFINED = 2;
    public static final int FILE_NAME_SPEC = 4;
    public static final int FILE_EXTENSION_SPEC = 8;

    public IContentType getBaseType();

    public IContentDescription getDefaultDescription();

    public IContentDescription getDescriptionFor(InputStream var1, QualifiedName[] var2) throws IOException;

    public IContentDescription getDescriptionFor(Reader var1, QualifiedName[] var2) throws IOException;

    public String getDefaultCharset();

    public String[] getFileSpecs(int var1);

    public String getId();

    public String getName();

    public boolean isAssociatedWith(String var1);

    public boolean isAssociatedWith(String var1, IScopeContext var2);

    public boolean isKindOf(IContentType var1);

    public IContentTypeSettings getSettings(IScopeContext var1) throws CoreException;
}

