/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.services;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.ui.AbstractSourceProvider;
import org.eclipse.ui.ISourceProvider;
import org.eclipse.ui.internal.services.WorkbenchServiceRegistry;
import org.eclipse.ui.services.IDisposable;
import org.eclipse.ui.services.IServiceLocator;
import org.eclipse.ui.services.ISourceProviderService;

public final class SourceProviderService
implements ISourceProviderService,
IDisposable {
    private final Map sourceProvidersByName = new HashMap();
    private final Set sourceProviders = new HashSet();
    private IServiceLocator locator;

    public SourceProviderService(IServiceLocator locator) {
        this.locator = locator;
    }

    public final void dispose() {
        Iterator sourceProviderItr = this.sourceProviders.iterator();
        while (sourceProviderItr.hasNext()) {
            ISourceProvider sourceProvider = (ISourceProvider)sourceProviderItr.next();
            sourceProvider.dispose();
        }
        this.sourceProviders.clear();
        this.sourceProvidersByName.clear();
    }

    public final ISourceProvider getSourceProvider(String sourceName) {
        return (ISourceProvider)this.sourceProvidersByName.get(sourceName);
    }

    public final ISourceProvider[] getSourceProviders() {
        return this.sourceProviders.toArray(new ISourceProvider[this.sourceProviders.size()]);
    }

    public final void registerProvider(ISourceProvider sourceProvider) {
        if (sourceProvider == null) {
            throw new NullPointerException("The source provider cannot be null");
        }
        String[] sourceNames = sourceProvider.getProvidedSourceNames();
        int i = 0;
        while (i < sourceNames.length) {
            String sourceName = sourceNames[i];
            this.sourceProvidersByName.put(sourceName, sourceProvider);
            ++i;
        }
        this.sourceProviders.add(sourceProvider);
    }

    public final void unregisterProvider(ISourceProvider sourceProvider) {
        if (sourceProvider == null) {
            throw new NullPointerException("The source provider cannot be null");
        }
        String[] sourceNames = sourceProvider.getProvidedSourceNames();
        int i = 0;
        while (i < sourceNames.length) {
            this.sourceProvidersByName.remove(sourceNames[i]);
            ++i;
        }
        this.sourceProviders.remove(sourceProvider);
    }

    public final void readRegistry() {
        AbstractSourceProvider[] sp = WorkbenchServiceRegistry.getRegistry().getSourceProviders();
        int i = 0;
        while (i < sp.length) {
            sp[i].initialize(this.locator);
            this.registerProvider(sp[i]);
            ++i;
        }
    }
}

