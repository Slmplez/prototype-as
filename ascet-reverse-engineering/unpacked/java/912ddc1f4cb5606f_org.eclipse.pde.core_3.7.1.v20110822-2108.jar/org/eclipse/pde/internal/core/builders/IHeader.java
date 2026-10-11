/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.ManifestElement
 */
package org.eclipse.pde.internal.core.builders;

import org.eclipse.osgi.util.ManifestElement;

public interface IHeader {
    public ManifestElement[] getElements();

    public int getLineNumber();

    public int getLinesSpan();

    public String getName();

    public String getValue();
}

