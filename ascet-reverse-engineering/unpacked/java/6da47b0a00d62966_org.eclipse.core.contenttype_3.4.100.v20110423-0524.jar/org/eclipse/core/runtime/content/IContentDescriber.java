/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.runtime.content;

import java.io.IOException;
import java.io.InputStream;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.content.IContentDescription;

public interface IContentDescriber {
    public static final int INDETERMINATE = 1;
    public static final int INVALID = 0;
    public static final int VALID = 2;

    public int describe(InputStream var1, IContentDescription var2) throws IOException;

    public QualifiedName[] getSupportedOptions();
}

