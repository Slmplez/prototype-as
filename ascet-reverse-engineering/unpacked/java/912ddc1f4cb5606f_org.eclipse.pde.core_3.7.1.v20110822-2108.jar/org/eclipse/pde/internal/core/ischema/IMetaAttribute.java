/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ischema;

public interface IMetaAttribute {
    public static final int STRING = 0;
    public static final int JAVA = 1;
    public static final int RESOURCE = 2;
    public static final int IDENTIFIER = 3;
    public static final String P_TRANSLATABLE = "translatable";
    public static final String P_DEPRECATED = "deprecated";

    public String getBasedOn();

    public boolean isTranslatable();

    public boolean isDeprecated();

    public int getKind();
}

