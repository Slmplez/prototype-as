/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal.decorators;

import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.decorators.FullDecoratorDefinition;
import org.eclipse.ui.internal.misc.StatusUtil;

abstract class FullDecoratorRunnable
implements ISafeRunnable {
    protected Object element;
    protected FullDecoratorDefinition decorator;

    FullDecoratorRunnable() {
    }

    protected void setValues(Object object, FullDecoratorDefinition definition) {
        this.element = object;
        this.decorator = definition;
    }

    public void handleException(Throwable exception) {
        IStatus status = StatusUtil.newStatus(4, exception.getMessage(), exception);
        String message = NLS.bind((String)WorkbenchMessages.DecoratorWillBeDisabled, (Object)this.decorator.getName());
        WorkbenchPlugin.log(message, status);
        this.decorator.crashDisable();
    }
}

