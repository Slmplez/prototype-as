/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search;

import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;

public class PathCollector
extends IndexQueryRequestor {
    public HashSet paths = new HashSet(5);

    public boolean acceptIndexMatch(String documentPath, SearchPattern indexRecord, SearchParticipant participant, AccessRuleSet access) {
        this.paths.add(documentPath);
        return true;
    }

    public String[] getPaths() {
        String[] result = new String[this.paths.size()];
        int i = 0;
        Iterator iter = this.paths.iterator();
        while (iter.hasNext()) {
            result[i++] = (String)iter.next();
        }
        return result;
    }
}

