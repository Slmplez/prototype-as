/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 */
package org.eclipse.ui.internal.handlers;

import java.util.Iterator;
import org.eclipse.core.expressions.Expression;
import org.eclipse.ui.handlers.IHandlerActivation;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.handlers.SlaveHandlerService;
import org.eclipse.ui.internal.services.INestable;

public final class NestableHandlerService
extends SlaveHandlerService
implements INestable {
    private boolean active = false;

    public NestableHandlerService(IHandlerService parentHandlerService, Expression defaultExpression) {
        super(parentHandlerService, defaultExpression);
    }

    public final void activate() {
        if (this.active) {
            return;
        }
        Iterator localActivationItr = this.localActivationsToParentActivations.keySet().iterator();
        while (localActivationItr.hasNext()) {
            Object object = localActivationItr.next();
            if (!(object instanceof IHandlerActivation)) continue;
            IHandlerActivation localActivation = (IHandlerActivation)object;
            super.doActivation(localActivation);
        }
        this.active = true;
    }

    protected final IHandlerActivation doActivation(IHandlerActivation localActivation) {
        if (this.active) {
            return super.doActivation(localActivation);
        }
        this.localActivationsToParentActivations.put(localActivation, null);
        return localActivation;
    }

    public final void deactivate() {
        if (!this.active) {
            return;
        }
        this.deactivateHandlers(this.parentActivations);
        this.parentActivations.clear();
        Iterator localActivationItr = this.localActivationsToParentActivations.keySet().iterator();
        while (localActivationItr.hasNext()) {
            Object object = localActivationItr.next();
            this.localActivationsToParentActivations.put(object, null);
        }
        this.active = false;
    }
}

