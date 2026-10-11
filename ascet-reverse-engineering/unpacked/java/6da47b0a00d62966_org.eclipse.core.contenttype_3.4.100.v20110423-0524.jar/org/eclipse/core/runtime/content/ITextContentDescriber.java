/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.content;

import java.io.IOException;
import java.io.Reader;
import org.eclipse.core.runtime.content.IContentDescriber;
import org.eclipse.core.runtime.content.IContentDescription;

public interface ITextContentDescriber
extends IContentDescriber {
    public int describe(Reader var1, IContentDescription var2) throws IOException;
}

