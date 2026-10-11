/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.ui.internal.texteditor.rulers;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.Assert;

public final class StringSetSerializer {
    private static final String DELIM = "\u0000";

    private StringSetSerializer() {
    }

    public static String serialize(Set strings) {
        Assert.isLegal((strings != null ? 1 : 0) != 0);
        StringBuffer buf = new StringBuffer(strings.size() * 20);
        Iterator it = strings.iterator();
        while (it.hasNext()) {
            buf.append((String)it.next());
            if (!it.hasNext()) continue;
            buf.append(DELIM);
        }
        return buf.toString();
    }

    public static Set deserialize(String serialized) {
        Assert.isLegal((serialized != null ? 1 : 0) != 0);
        HashSet<String> marked = new HashSet<String>();
        StringTokenizer tok = new StringTokenizer(serialized, DELIM);
        while (tok.hasMoreTokens()) {
            marked.add(tok.nextToken());
        }
        return marked;
    }

    public static String[] getDifference(String oldValue, String newValue) {
        Set oldSet = StringSetSerializer.deserialize(oldValue);
        Set newSet = StringSetSerializer.deserialize(newValue);
        HashSet intersection = new HashSet(oldSet);
        intersection.retainAll(newSet);
        oldSet.removeAll(intersection);
        newSet.removeAll(intersection);
        oldSet.addAll(newSet);
        return oldSet.toArray(new String[oldSet.size()]);
    }
}

