/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.content;

import org.eclipse.core.internal.content.ContentType;

public interface ContentTypeVisitor {
    public static final int CONTINUE = 0;
    public static final int RETURN = 1;
    public static final int STOP = 2;

    public int visit(ContentType var1);
}

