/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.services;

import org.eclipse.ui.internal.services.SlaveEvaluationService;
import org.eclipse.ui.services.AbstractServiceFactory;
import org.eclipse.ui.services.IEvaluationService;
import org.eclipse.ui.services.IServiceLocator;

public class EvaluationServiceFactory
extends AbstractServiceFactory {
    static /* synthetic */ Class class$0;

    public Object create(Class serviceInterface, IServiceLocator parentLocator, IServiceLocator locator) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.services.IEvaluationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (!clazz.equals(serviceInterface)) {
            return null;
        }
        Object parent = parentLocator.getService(serviceInterface);
        if (parent == null) {
            return null;
        }
        return new SlaveEvaluationService((IEvaluationService)parent);
    }
}

