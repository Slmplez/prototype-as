/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ischema;

import org.eclipse.pde.internal.core.ischema.ISchemaObject;

public interface IDocumentSection
extends ISchemaObject {
    public static final String MARKUP = "markup";
    public static final String EXAMPLES = "examples";
    public static final String IMPLEMENTATION = "implementation";
    public static final String API_INFO = "apiinfo";
    public static final String COPYRIGHT = "copyright";
    public static final String SINCE = "since";

    public String getSectionId();
}

