/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.ICriteria;
import org.eclipse.help.ITopic;

public interface ITopic2
extends ITopic {
    public ICriteria[] getCriteria();

    public String getIcon();

    public boolean isSorted();
}

