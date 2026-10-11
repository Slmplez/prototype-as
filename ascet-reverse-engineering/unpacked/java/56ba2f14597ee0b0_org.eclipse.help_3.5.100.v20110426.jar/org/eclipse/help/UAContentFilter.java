/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.EvaluationContext
 *  org.eclipse.core.expressions.IEvaluationContext
 */
package org.eclipse.help;

import org.eclipse.core.expressions.EvaluationContext;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.help.IUAElement;
import org.eclipse.help.internal.HelpPlugin;

public class UAContentFilter {
    private static final String VARIABLE_PLATFORM = "platform";
    private static IEvaluationContext defaultContext;
    static /* synthetic */ Class class$0;

    public static boolean isFiltered(Object element) {
        if (defaultContext == null) {
            defaultContext = UAContentFilter.createDefaultContext();
        }
        return UAContentFilter.isFiltered(element, defaultContext);
    }

    private static IEvaluationContext createDefaultContext() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.Platform");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        EvaluationContext context = new EvaluationContext(null, (Object)clazz);
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.core.runtime.Platform");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        context.addVariable(VARIABLE_PLATFORM, (Object)clazz2);
        return context;
    }

    public static boolean isFiltered(Object element, IEvaluationContext context) {
        if (element instanceof IUAElement) {
            try {
                return !((IUAElement)element).isEnabled(context);
            }
            catch (Throwable t) {
                String msg = "Error while checking element filter";
                HelpPlugin.logError(msg, t);
            }
        }
        return false;
    }
}

