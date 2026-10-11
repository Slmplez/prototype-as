/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.team.internal.core.subscribers;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.diff.IThreeWayDiff;
import org.eclipse.team.core.synchronize.SyncInfo;

public class DiffTreeStatistics {
    protected Map stats = Collections.synchronizedMap(new HashMap());

    public void add(int state) {
        Long count = (Long)this.stats.get(new Integer(state));
        if (count == null) {
            count = new Long(0L);
        }
        this.stats.put(new Integer(state), new Long(count + 1L));
    }

    public void remove(int state) {
        Integer kind = new Integer(state);
        Long count = (Long)this.stats.get(kind);
        if (count != null) {
            long newCount = count.intValue() - 1;
            if (newCount > 0L) {
                this.stats.put(kind, new Long(newCount));
            } else {
                this.stats.remove(kind);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public long countFor(int state, int mask) {
        if (mask == 0) {
            Long count = (Long)this.stats.get(new Integer(state));
            return count == null ? 0L : count;
        }
        Set keySet = this.stats.keySet();
        long count = 0L;
        Map map = this.stats;
        synchronized (map) {
            Iterator it = keySet.iterator();
            while (it.hasNext()) {
                Integer key = (Integer)it.next();
                if ((key & mask) != state) continue;
                count += (long)((Long)this.stats.get(key)).intValue();
            }
        }
        return count;
    }

    public void clear() {
        this.stats.clear();
    }

    public String toString() {
        StringBuffer out = new StringBuffer();
        Iterator it = this.stats.keySet().iterator();
        while (it.hasNext()) {
            Integer kind = (Integer)it.next();
            out.append(String.valueOf(SyncInfo.kindToString(kind)) + ": " + this.stats.get(kind) + "\n");
        }
        return out.toString();
    }

    public void add(IDiff delta) {
        int state = this.getState(delta);
        this.add(state);
    }

    public void remove(IDiff delta) {
        int state = this.getState(delta);
        this.remove(state);
    }

    private int getState(IDiff delta) {
        int state = delta.getKind();
        if (delta instanceof IThreeWayDiff) {
            IThreeWayDiff twd = (IThreeWayDiff)delta;
            state |= twd.getDirection();
        }
        return state;
    }
}

