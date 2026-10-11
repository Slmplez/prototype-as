/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text;

public interface IDocumentXMLNode {
    public static final int F_TYPE_ELEMENT = 0;
    public static final int F_TYPE_ATTRIBUTE = 1;
    public static final int F_TYPE_TEXT = 2;

    public int getXMLType();
}

