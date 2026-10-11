/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.services;

import org.eclipse.ui.services.AbstractServiceFactory;
import org.eclipse.ui.services.IDisposable;
import org.eclipse.ui.services.IServiceLocator;

public interface IServiceLocatorCreator {
    public IServiceLocator createServiceLocator(IServiceLocator var1, AbstractServiceFactory var2, IDisposable var3);
}

