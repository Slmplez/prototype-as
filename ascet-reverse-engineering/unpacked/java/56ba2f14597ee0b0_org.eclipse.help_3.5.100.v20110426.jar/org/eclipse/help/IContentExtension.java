/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.IUAElement;

public interface IContentExtension
extends IUAElement {
    public static final int CONTRIBUTION = 0;
    public static final int REPLACEMENT = 1;

    public String getContent();

    public String getPath();

    public int getType();
}

