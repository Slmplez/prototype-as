/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.transaction.impl;

import java.util.Map;
import org.eclipse.emf.transaction.impl.EMFCommandTransaction;
import org.eclipse.emf.transaction.impl.InternalTransaction;
import org.eclipse.emf.transaction.impl.InternalTransactionalEditingDomain;
import org.eclipse.emf.transaction.util.TriggerCommand;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TriggerCommandTransaction
extends EMFCommandTransaction {
    public TriggerCommandTransaction(TriggerCommand command, InternalTransactionalEditingDomain domain, Map<?, ?> options) {
        super(command, domain, options);
    }

    @Override
    protected synchronized void close() {
        this.change.clear();
        super.close();
    }

    @Override
    public void addTriggers(TriggerCommand triggers) {
        ((InternalTransaction)this.getParent()).addTriggers(triggers);
    }
}

