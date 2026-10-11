/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.services;

import org.eclipse.ui.internal.services.IServiceLocatorCreator;
import org.eclipse.ui.internal.services.ServiceLocator;
import org.eclipse.ui.services.AbstractServiceFactory;
import org.eclipse.ui.services.IDisposable;
import org.eclipse.ui.services.IServiceLocator;

public class ServiceLocatorCreator
implements IServiceLocatorCreator {
    public IServiceLocator createServiceLocator(IServiceLocator parent, AbstractServiceFactory factory, IDisposable owner) {
        return new ServiceLocator(parent, factory, owner);
    }
}

