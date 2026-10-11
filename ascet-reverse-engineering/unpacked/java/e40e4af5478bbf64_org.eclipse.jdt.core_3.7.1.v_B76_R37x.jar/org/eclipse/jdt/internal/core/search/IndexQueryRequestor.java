/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;

public abstract class IndexQueryRequestor {
    public abstract boolean acceptIndexMatch(String var1, SearchPattern var2, SearchParticipant var3, AccessRuleSet var4);
}

