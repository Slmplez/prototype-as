/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IMethodBinding;

public interface IMemberValuePairBinding
extends IBinding {
    public String getName();

    public IMethodBinding getMethodBinding();

    public Object getValue();

    public boolean isDefault();
}

