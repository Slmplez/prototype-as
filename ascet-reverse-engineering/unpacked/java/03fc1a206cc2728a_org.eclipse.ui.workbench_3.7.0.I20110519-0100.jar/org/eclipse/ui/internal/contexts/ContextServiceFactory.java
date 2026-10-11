/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 */
package org.eclipse.ui.internal.contexts;

import org.eclipse.core.expressions.Expression;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.internal.contexts.NestableContextService;
import org.eclipse.ui.internal.contexts.SlaveContextService;
import org.eclipse.ui.internal.expressions.ActivePartExpression;
import org.eclipse.ui.internal.expressions.WorkbenchWindowExpression;
import org.eclipse.ui.internal.services.IWorkbenchLocationService;
import org.eclipse.ui.services.AbstractServiceFactory;
import org.eclipse.ui.services.IServiceLocator;

public class ContextServiceFactory
extends AbstractServiceFactory {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public Object create(Class serviceInterface, IServiceLocator parentLocator, IServiceLocator locator) {
        Expression exp;
        IWorkbenchLocationService wls;
        IWorkbench wb;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (!clazz.equals(serviceInterface)) {
            return null;
        }
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.ui.internal.services.IWorkbenchLocationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((wb = (wls = (IWorkbenchLocationService)locator.getService(clazz2)).getWorkbench()) == null) {
            return null;
        }
        Object parent = parentLocator.getService(serviceInterface);
        if (parent == null) {
            return null;
        }
        IWorkbenchWindow window = wls.getWorkbenchWindow();
        IWorkbenchPartSite site = wls.getPartSite();
        if (site == null) {
            WorkbenchWindowExpression exp2 = new WorkbenchWindowExpression(window);
            return new SlaveContextService((IContextService)parent, exp2);
        }
        if (parent instanceof SlaveContextService && (exp = ((SlaveContextService)parent).fDefaultExpression) instanceof ActivePartExpression) {
            return new NestableContextService((IContextService)parent, exp);
        }
        exp = new ActivePartExpression(site.getPart());
        return new SlaveContextService((IContextService)parent, exp);
    }
}

