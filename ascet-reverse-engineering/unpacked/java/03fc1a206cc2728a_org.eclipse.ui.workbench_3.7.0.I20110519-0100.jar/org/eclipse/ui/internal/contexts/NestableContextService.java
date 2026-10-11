/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 */
package org.eclipse.ui.internal.contexts;

import java.util.Iterator;
import org.eclipse.core.expressions.Expression;
import org.eclipse.ui.contexts.IContextActivation;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.internal.contexts.SlaveContextService;
import org.eclipse.ui.internal.services.INestable;

public class NestableContextService
extends SlaveContextService
implements INestable {
    private boolean fActive = false;

    public NestableContextService(IContextService parentService, Expression defaultExpression) {
        super(parentService, defaultExpression);
    }

    protected IContextActivation doActivateContext(IContextActivation activation) {
        if (this.fActive) {
            return super.doActivateContext(activation);
        }
        this.fLocalActivations.put(activation, null);
        return activation;
    }

    public void activate() {
        if (this.fActive) {
            return;
        }
        Iterator c = this.fLocalActivations.keySet().iterator();
        while (c.hasNext()) {
            IContextActivation activation = (IContextActivation)c.next();
            super.doActivateContext(activation);
        }
        this.fActive = true;
    }

    public void deactivate() {
        if (!this.fActive) {
            return;
        }
        this.deactivateContexts(this.fParentActivations);
        this.fParentActivations.clear();
        Iterator c = this.fLocalActivations.keySet().iterator();
        while (c.hasNext()) {
            this.fLocalActivations.put(c.next(), null);
        }
        this.fActive = false;
    }
}

