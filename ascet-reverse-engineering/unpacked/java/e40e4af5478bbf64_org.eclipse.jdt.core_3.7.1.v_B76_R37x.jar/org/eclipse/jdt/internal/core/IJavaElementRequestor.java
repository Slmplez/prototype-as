/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IType;

public interface IJavaElementRequestor {
    public void acceptField(IField var1);

    public void acceptInitializer(IInitializer var1);

    public void acceptMemberType(IType var1);

    public void acceptMethod(IMethod var1);

    public void acceptPackageFragment(IPackageFragment var1);

    public void acceptType(IType var1);

    public boolean isCanceled();
}

