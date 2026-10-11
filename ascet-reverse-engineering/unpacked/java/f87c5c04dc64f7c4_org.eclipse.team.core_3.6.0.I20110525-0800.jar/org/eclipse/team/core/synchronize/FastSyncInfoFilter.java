/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.core.synchronize;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.core.synchronize.SyncInfoFilter;

public class FastSyncInfoFilter
extends SyncInfoFilter {
    public static FastSyncInfoFilter getDirectionAndChangeFilter(int direction, int change) {
        return new AndSyncInfoFilter(new FastSyncInfoFilter[]{new SyncInfoDirectionFilter(direction), new SyncInfoChangeTypeFilter(change)});
    }

    public boolean select(SyncInfo info) {
        return info.getKind() != 0;
    }

    public final boolean select(SyncInfo info, IProgressMonitor monitor) {
        return this.select(info);
    }

    public static class AndSyncInfoFilter
    extends CompoundSyncInfoFilter {
        public AndSyncInfoFilter(FastSyncInfoFilter[] filters) {
            super(filters);
        }

        public boolean select(SyncInfo info) {
            int i = 0;
            while (i < this.filters.length) {
                FastSyncInfoFilter filter = this.filters[i];
                if (!filter.select(info)) {
                    return false;
                }
                ++i;
            }
            return true;
        }
    }

    public static class AutomergableFilter
    extends FastSyncInfoFilter {
        public boolean select(SyncInfo info) {
            return (info.getKind() & 0x20) != 0;
        }
    }

    public static abstract class CompoundSyncInfoFilter
    extends FastSyncInfoFilter {
        protected FastSyncInfoFilter[] filters;

        protected CompoundSyncInfoFilter(FastSyncInfoFilter[] filters) {
            this.filters = filters;
        }
    }

    public static class OrSyncInfoFilter
    extends CompoundSyncInfoFilter {
        public OrSyncInfoFilter(FastSyncInfoFilter[] filters) {
            super(filters);
        }

        public boolean select(SyncInfo info) {
            int i = 0;
            while (i < this.filters.length) {
                FastSyncInfoFilter filter = this.filters[i];
                if (filter.select(info)) {
                    return true;
                }
                ++i;
            }
            return false;
        }
    }

    public static class PseudoConflictFilter
    extends FastSyncInfoFilter {
        public boolean select(SyncInfo info) {
            return info.getKind() != 0 && (info.getKind() & 0x10) == 0;
        }
    }

    public static class SyncInfoChangeTypeFilter
    extends FastSyncInfoFilter {
        private int[] changeFilters = new int[]{1, 2, 3};

        public SyncInfoChangeTypeFilter(int[] changeFilters) {
            this.changeFilters = changeFilters;
        }

        public SyncInfoChangeTypeFilter(int change) {
            this(new int[]{change});
        }

        public boolean select(SyncInfo info) {
            int syncKind = info.getKind();
            int i = 0;
            while (i < this.changeFilters.length) {
                int filter = this.changeFilters[i];
                if ((syncKind & 3) == filter) {
                    return true;
                }
                ++i;
            }
            return false;
        }
    }

    public static class SyncInfoDirectionFilter
    extends FastSyncInfoFilter {
        int[] directionFilters = new int[]{4, 8, 12};

        public SyncInfoDirectionFilter(int[] directionFilters) {
            this.directionFilters = directionFilters;
        }

        public SyncInfoDirectionFilter(int direction) {
            this(new int[]{direction});
        }

        public boolean select(SyncInfo info) {
            int syncKind = info.getKind();
            int i = 0;
            while (i < this.directionFilters.length) {
                int filter = this.directionFilters[i];
                if ((syncKind & 0xC) == filter) {
                    return true;
                }
                ++i;
            }
            return false;
        }
    }
}

