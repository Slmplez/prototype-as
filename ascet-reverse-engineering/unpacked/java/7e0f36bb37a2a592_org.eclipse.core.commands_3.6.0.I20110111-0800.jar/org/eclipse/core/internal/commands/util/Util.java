/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.commands.util;

import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

public final class Util {
    public static final SortedMap EMPTY_SORTED_MAP = Collections.unmodifiableSortedMap(new TreeMap());
    public static final SortedSet EMPTY_SORTED_SET = Collections.unmodifiableSortedSet(new TreeSet());
    public static final String ZERO_LENGTH_STRING = "";

    public static final void assertInstance(Object object, Class c, boolean allowNull) {
        if (object == null && allowNull) {
            return;
        }
        if (object == null || c == null) {
            throw new NullPointerException();
        }
        if (!c.isInstance(object)) {
            throw new IllegalArgumentException();
        }
    }

    public static final int compare(boolean left, boolean right) {
        return !left ? (right ? -1 : 0) : (right ? 0 : 1);
    }

    public static final int compare(Comparable left, Comparable right) {
        if (left == null && right == null) {
            return 0;
        }
        if (left == null) {
            return -1;
        }
        if (right == null) {
            return 1;
        }
        return left.compareTo(right);
    }

    public static final int compare(int left, int right) {
        return left - right;
    }

    public static final int compare(Object left, Object right) {
        if (left == null && right == null) {
            return 0;
        }
        if (left == null) {
            return -1;
        }
        if (right == null) {
            return 1;
        }
        return left.toString().compareTo(right.toString());
    }

    public static final boolean equals(boolean left, boolean right) {
        return left == right;
    }

    public static final boolean equals(Object left, Object right) {
        return left == null ? right == null : right != null && left.equals(right);
    }

    public static final boolean equals(Object[] leftArray, Object[] rightArray) {
        if (leftArray == null) {
            return rightArray == null;
        }
        if (rightArray == null) {
            return false;
        }
        if (leftArray.length != rightArray.length) {
            return false;
        }
        int i = 0;
        while (i < leftArray.length) {
            boolean equal;
            Object left = leftArray[i];
            Object right = rightArray[i];
            boolean bl = left == null ? right == null : (equal = left.equals(right));
            if (!equal) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static final int hashCode(int i) {
        return i;
    }

    public static final int hashCode(Object object) {
        return object != null ? object.hashCode() : 0;
    }

    public static final Map safeCopy(Map map, Class keyClass, Class valueClass, boolean allowNullKeys, boolean allowNullValues) {
        if (map == null || keyClass == null || valueClass == null) {
            throw new NullPointerException();
        }
        Map copy = Collections.unmodifiableMap(new HashMap(map));
        Iterator iterator = copy.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            Util.assertInstance(entry.getKey(), keyClass, allowNullKeys);
            Util.assertInstance(entry.getValue(), valueClass, allowNullValues);
        }
        return map;
    }

    public static final Set safeCopy(Set set, Class c) {
        return Util.safeCopy(set, c, false);
    }

    public static final Set safeCopy(Set set, Class c, boolean allowNullElements) {
        if (set == null || c == null) {
            throw new NullPointerException();
        }
        Set copy = Collections.unmodifiableSet(new HashSet(set));
        Iterator iterator = copy.iterator();
        while (iterator.hasNext()) {
            Util.assertInstance(iterator.next(), c, allowNullElements);
        }
        return set;
    }

    private Util() {
    }
}

