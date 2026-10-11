/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.BundleContextImpl;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.internal.resolver.StateImpl;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateDelta;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;

public class SystemState
extends StateImpl {
    private final Framework framework;

    public SystemState(BundleContext context) {
        this.framework = context == null ? null : ((BundleContextImpl)context).getFramework();
    }

    boolean basicAddBundle(BundleDescription description) {
        if (this.framework != null && description.getUserObject() == null) {
            AbstractBundle bundle = this.framework.getBundle(description.getBundleId());
            description.setUserObject(bundle != null ? bundle.getBundleData() : null);
        }
        return super.basicAddBundle(description);
    }

    public StateDelta compare(State state) throws BundleException {
        throw new UnsupportedOperationException();
    }
}

