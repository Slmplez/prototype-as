/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.internal.core.commands;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.commands.IDebugCommandRequest;
import org.eclipse.debug.core.commands.IStepFiltersHandler;
import org.eclipse.debug.core.model.IDebugElement;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.debug.core.model.IStepFilters;
import org.eclipse.debug.internal.core.commands.ForEachCommand;

public class StepFiltersCommand
extends ForEachCommand
implements IStepFiltersHandler {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    protected Object getTarget(Object element) {
        IDebugTarget[] targets = this.getDebugTargets(element);
        if (targets.length > 0) {
            IStepFilters[] filters = new IStepFilters[targets.length];
            int i = 0;
            while (i < targets.length) {
                IDebugTarget target = targets[i];
                if (target instanceof IStepFilters) {
                    filters[i] = (IStepFilters)((Object)target);
                } else {
                    Class<?> clazz = class$0;
                    if (clazz == null) {
                        try {
                            clazz = Class.forName("org.eclipse.debug.core.model.IStepFilters");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    filters[i] = (IStepFilters)this.getAdapter(element, clazz);
                }
                if (filters[i] == null) {
                    return null;
                }
                ++i;
            }
            return filters;
        }
        return null;
    }

    private IDebugTarget[] getDebugTargets(Object element) {
        if (element instanceof IDebugElement) {
            IDebugElement debugElement = (IDebugElement)element;
            return new IDebugTarget[]{debugElement.getDebugTarget()};
        }
        if (element instanceof ILaunch) {
            ILaunch launch = (ILaunch)element;
            return launch.getDebugTargets();
        }
        if (element instanceof IProcess) {
            IProcess process = (IProcess)element;
            return process.getLaunch().getDebugTargets();
        }
        return new IDebugTarget[0];
    }

    protected void execute(Object target) throws CoreException {
        if (target == null) {
            return;
        }
        IStepFilters[] filters = (IStepFilters[])target;
        int i = 0;
        while (i < filters.length) {
            IStepFilters filter = filters[i];
            filter.setStepFiltersEnabled(DebugPlugin.isUseStepFilters());
            ++i;
        }
    }

    protected boolean isExecutable(Object target) {
        IStepFilters[] filters = (IStepFilters[])target;
        int i = 0;
        while (i < filters.length) {
            IStepFilters filter = filters[i];
            if (filter == null || !filter.supportsStepFilters()) {
                return false;
            }
            ++i;
        }
        return true;
    }

    protected Object getEnabledStateJobFamily(IDebugCommandRequest request) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.debug.core.commands.IStepFiltersHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }
}

