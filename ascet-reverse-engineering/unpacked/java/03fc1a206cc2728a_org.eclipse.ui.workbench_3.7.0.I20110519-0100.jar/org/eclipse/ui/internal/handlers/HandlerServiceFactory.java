/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.expressions.Expression;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.expressions.ActivePartExpression;
import org.eclipse.ui.internal.expressions.WorkbenchWindowExpression;
import org.eclipse.ui.internal.handlers.HandlerService;
import org.eclipse.ui.internal.handlers.NestableHandlerService;
import org.eclipse.ui.internal.handlers.SlaveHandlerService;
import org.eclipse.ui.internal.services.IWorkbenchLocationService;
import org.eclipse.ui.services.AbstractServiceFactory;
import org.eclipse.ui.services.IEvaluationService;
import org.eclipse.ui.services.IServiceLocator;

public class HandlerServiceFactory
extends AbstractServiceFactory {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    public Object create(Class serviceInterface, IServiceLocator parentLocator, IServiceLocator locator) {
        Expression parentExp;
        IWorkbenchLocationService wls;
        IWorkbench wb;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
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
            Class<?> clazz3 = class$2;
            if (clazz3 == null) {
                try {
                    clazz3 = class$2 = Class.forName("org.eclipse.ui.commands.ICommandService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            ICommandService commands = (ICommandService)locator.getService(clazz3);
            Class<?> clazz4 = class$3;
            if (clazz4 == null) {
                try {
                    clazz4 = class$3 = Class.forName("org.eclipse.ui.services.IEvaluationService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IEvaluationService evals = (IEvaluationService)locator.getService(clazz4);
            HandlerService handlerService = new HandlerService(commands, evals, locator);
            handlerService.readRegistry();
            return handlerService;
        }
        IWorkbenchWindow window = wls.getWorkbenchWindow();
        IWorkbenchPartSite site = wls.getPartSite();
        if (site == null) {
            WorkbenchWindowExpression exp = new WorkbenchWindowExpression(window);
            return new SlaveHandlerService((IHandlerService)parent, exp);
        }
        if (parent instanceof SlaveHandlerService && (parentExp = ((SlaveHandlerService)parent).getDefaultExpression()) instanceof ActivePartExpression) {
            return new NestableHandlerService((IHandlerService)parent, parentExp);
        }
        ActivePartExpression exp = new ActivePartExpression(site.getPart());
        return new SlaveHandlerService((IHandlerService)parent, exp);
    }
}

