/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.ICriteria;
import org.eclipse.help.IToc;
import org.eclipse.help.ITopic;

public abstract class AbstractCriteriaProvider {
    public abstract ICriteria[] getCriteria(ITopic var1);

    public abstract ICriteria[] getCriteria(IToc var1);
}

