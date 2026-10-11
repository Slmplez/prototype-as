/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.IIndex;

public interface IIndexContribution {
    public String getId();

    public IIndex getIndex();

    public String getLocale();
}

