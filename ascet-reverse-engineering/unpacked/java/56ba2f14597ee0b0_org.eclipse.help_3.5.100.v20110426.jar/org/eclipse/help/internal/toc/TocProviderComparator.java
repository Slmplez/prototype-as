/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.toc;

import java.util.Comparator;
import org.eclipse.help.AbstractTocProvider;

public class TocProviderComparator
implements Comparator {
    public int compare(Object obj1, Object obj2) {
        AbstractTocProvider provider1 = (AbstractTocProvider)obj1;
        AbstractTocProvider provider2 = (AbstractTocProvider)obj2;
        if (provider1.getPriority() < provider2.getPriority()) {
            return -1;
        }
        if (provider1.getPriority() > provider2.getPriority()) {
            return 1;
        }
        return 0;
    }
}

