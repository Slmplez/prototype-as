/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.util;

import java.util.Comparator;
import java.util.TreeMap;

public class HeaderMap
extends TreeMap {
    private static final long serialVersionUID = 1L;

    public HeaderMap() {
        super(new HeaderComparator());
    }

    private static class HeaderComparator
    implements Comparator {
        private HeaderComparator() {
        }

        public int compare(Object arg0, Object arg1) {
            String header0 = (String)arg0;
            String header1 = (String)arg1;
            return header0.compareToIgnoreCase(header1);
        }
    }
}

