/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.ICriteria;
import org.eclipse.help.IToc;

public interface IToc2
extends IToc {
    public ICriteria[] getCriteria();

    public String getIcon();

    public boolean isSorted();
}

