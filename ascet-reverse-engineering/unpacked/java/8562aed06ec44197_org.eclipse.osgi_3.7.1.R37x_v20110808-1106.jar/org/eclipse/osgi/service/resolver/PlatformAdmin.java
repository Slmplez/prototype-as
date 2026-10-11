/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import org.eclipse.osgi.service.resolver.DisabledInfo;
import org.eclipse.osgi.service.resolver.Resolver;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateHelper;
import org.eclipse.osgi.service.resolver.StateObjectFactory;
import org.osgi.framework.BundleException;

public interface PlatformAdmin {
    public State getState();

    public State getState(boolean var1);

    public StateHelper getStateHelper();

    public void commit(State var1) throws BundleException;

    public Resolver getResolver();

    public Resolver createResolver();

    public StateObjectFactory getFactory();

    public void addDisabledInfo(DisabledInfo var1);

    public void removeDisabledInfo(DisabledInfo var1);
}

