/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import org.eclipse.osgi.service.resolver.BundleDelta;
import org.eclipse.osgi.service.resolver.ResolverHookException;
import org.eclipse.osgi.service.resolver.State;

public interface StateDelta {
    public BundleDelta[] getChanges();

    public BundleDelta[] getChanges(int var1, boolean var2);

    public State getState();

    public ResolverHookException getResovlerHookException();
}

