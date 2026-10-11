/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.team.internal.core.subscribers;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.team.core.synchronize.SyncInfo;

public class SyncInfoStatistics {
    protected Map stats = new HashMap();

    public void add(SyncInfo info) {
        Long count = (Long)this.stats.get(new Integer(info.getKind()));
        if (count == null) {
            count = new Long(0L);
        }
        this.stats.put(new Integer(info.getKind()), new Long(count + 1L));
    }

    public void remove(SyncInfo info) {
        Integer kind = new Integer(info.getKind());
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

    public long countFor(int kind, int mask) {
        if (mask == 0) {
            Long count = (Long)this.stats.get(new Integer(kind));
            return count == null ? 0L : count;
        }
        Iterator it = this.stats.keySet().iterator();
        long count = 0L;
        while (it.hasNext()) {
            Integer key = (Integer)it.next();
            if ((key & mask) != kind) continue;
            count += (long)((Long)this.stats.get(key)).intValue();
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
}

