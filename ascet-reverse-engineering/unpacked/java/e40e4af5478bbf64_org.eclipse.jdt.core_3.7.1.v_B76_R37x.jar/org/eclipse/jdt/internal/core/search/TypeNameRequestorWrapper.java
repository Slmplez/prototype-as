/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.core.search.TypeNameRequestor;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.core.search.IRestrictedAccessTypeRequestor;

public class TypeNameRequestorWrapper
implements IRestrictedAccessTypeRequestor {
    TypeNameRequestor requestor;

    public TypeNameRequestorWrapper(TypeNameRequestor requestor) {
        this.requestor = requestor;
    }

    public void acceptType(int modifiers, char[] packageName, char[] simpleTypeName, char[][] enclosingTypeNames, String path, AccessRestriction access) {
        this.requestor.acceptType(modifiers, packageName, simpleTypeName, enclosingTypeNames, path);
    }
}

