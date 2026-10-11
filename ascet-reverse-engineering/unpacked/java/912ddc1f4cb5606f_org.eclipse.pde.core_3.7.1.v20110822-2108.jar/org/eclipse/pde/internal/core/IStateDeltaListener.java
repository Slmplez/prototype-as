/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.State
 *  org.eclipse.osgi.service.resolver.StateDelta
 */
package org.eclipse.pde.internal.core;

import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateDelta;

public interface IStateDeltaListener {
    public void stateResolved(StateDelta var1);

    public void stateChanged(State var1);
}

