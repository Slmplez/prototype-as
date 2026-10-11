/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public interface InvocationSite {
    public TypeBinding[] genericTypeArguments();

    public boolean isSuperAccess();

    public boolean isTypeAccess();

    public void setActualReceiverType(ReferenceBinding var1);

    public void setDepth(int var1);

    public void setFieldIndex(int var1);

    public int sourceEnd();

    public int sourceStart();

    public TypeBinding expectedType();
}

