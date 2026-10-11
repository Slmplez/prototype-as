/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.core.diff;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.diff.DiffFilter;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.diff.provider.Diff;

public abstract class FastDiffFilter
extends DiffFilter {
    public static final FastDiffFilter getStateFilter(final int[] states, final int mask) {
        return new FastDiffFilter(){

            public boolean select(IDiff node) {
                int status = ((Diff)node).getStatus();
                int i = 0;
                while (i < states.length) {
                    int state = states[i];
                    if ((status & mask) == state) {
                        return true;
                    }
                    ++i;
                }
                return false;
            }
        };
    }

    public final boolean select(IDiff diff, IProgressMonitor monitor) {
        return this.select(diff);
    }

    public abstract boolean select(IDiff var1);
}

