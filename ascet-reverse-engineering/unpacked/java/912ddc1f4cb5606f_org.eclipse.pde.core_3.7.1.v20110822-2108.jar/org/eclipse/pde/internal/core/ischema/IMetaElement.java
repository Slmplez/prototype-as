/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ischema;

public interface IMetaElement {
    public static final String P_TRANSLATABLE = "translatable";
    public static final String P_DEPRECATED = "deprecated";

    public String getIconProperty();

    public String getLabelProperty();

    public boolean hasTranslatableContent();

    public boolean isDeprecated();
}

