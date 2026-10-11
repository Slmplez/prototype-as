/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ischema;

import org.eclipse.pde.internal.core.ischema.ISchemaElement;

public interface ISchemaRootElement
extends ISchemaElement {
    public static final String P_DEP_REPLACEMENT = "replacement";
    public static final String P_INTERNAL = "internal";
    public static final String P_FRIENDS = "friends";

    public void setDeprecatedSuggestion(String var1);

    public String getDeprecatedSuggestion();

    public boolean isInternal();

    public void setInternal(boolean var1);
}

