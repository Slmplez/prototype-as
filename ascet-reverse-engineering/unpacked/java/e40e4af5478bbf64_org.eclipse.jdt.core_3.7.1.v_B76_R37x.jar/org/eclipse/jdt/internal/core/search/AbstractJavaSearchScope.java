/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.core.search.AbstractSearchScope;

public abstract class AbstractJavaSearchScope
extends AbstractSearchScope {
    public abstract AccessRuleSet getAccessRuleSet(String var1, String var2);

    public abstract IPackageFragmentRoot packageFragmentRoot(String var1, int var2, String var3);
}

