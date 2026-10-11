/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IMemberValuePairBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;

public interface IAnnotationBinding
extends IBinding {
    public IMemberValuePairBinding[] getAllMemberValuePairs();

    public ITypeBinding getAnnotationType();

    public IMemberValuePairBinding[] getDeclaredMemberValuePairs();

    public String getName();
}

