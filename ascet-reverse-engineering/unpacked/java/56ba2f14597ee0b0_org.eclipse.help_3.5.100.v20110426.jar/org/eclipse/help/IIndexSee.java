/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.IIndexSubpath;
import org.eclipse.help.IUAElement;

public interface IIndexSee
extends IUAElement {
    public String getKeyword();

    public boolean isSeeAlso();

    public IIndexSubpath[] getSubpathElements();
}

