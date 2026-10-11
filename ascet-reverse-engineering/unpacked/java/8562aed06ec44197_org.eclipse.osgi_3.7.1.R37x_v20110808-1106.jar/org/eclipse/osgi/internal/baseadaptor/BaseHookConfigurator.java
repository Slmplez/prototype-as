/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor;

import org.eclipse.osgi.baseadaptor.HookConfigurator;
import org.eclipse.osgi.baseadaptor.HookRegistry;
import org.eclipse.osgi.internal.baseadaptor.BaseClassLoadingHook;
import org.eclipse.osgi.internal.baseadaptor.BaseStorage;
import org.eclipse.osgi.internal.baseadaptor.BaseStorageHook;

public class BaseHookConfigurator
implements HookConfigurator {
    public void addHooks(HookRegistry registry) {
        BaseStorageHook hook = new BaseStorageHook(new BaseStorage());
        registry.addStorageHook(hook);
        registry.addAdaptorHook(hook);
        registry.addClassLoadingHook(new BaseClassLoadingHook());
    }
}

