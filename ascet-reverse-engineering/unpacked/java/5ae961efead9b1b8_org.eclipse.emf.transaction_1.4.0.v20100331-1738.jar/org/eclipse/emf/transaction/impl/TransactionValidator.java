/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.transaction.impl;

import java.util.Collections;
import java.util.List;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.impl.InternalTransaction;
import org.eclipse.emf.transaction.impl.TransactionalEditingDomainImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface TransactionValidator {
    public static final TransactionValidator NULL = new TransactionValidator(){

        @Override
        public IStatus validate(Transaction tx) {
            return Status.OK_STATUS;
        }

        @Override
        public void add(InternalTransaction transaction) {
        }

        @Override
        public void remove(InternalTransaction transaction) {
        }

        @Override
        public List<Notification> getNotificationsForValidation(Transaction tx) {
            return Collections.emptyList();
        }

        @Override
        public List<Notification> getNotificationsForPrecommit(Transaction tx) {
            return Collections.emptyList();
        }

        @Override
        public List<Notification> getNotificationsForPostcommit(Transaction tx) {
            return Collections.emptyList();
        }

        @Override
        public void dispose() {
        }
    };

    public void add(InternalTransaction var1);

    public void remove(InternalTransaction var1);

    public IStatus validate(Transaction var1);

    public List<Notification> getNotificationsForValidation(Transaction var1);

    public List<Notification> getNotificationsForPrecommit(Transaction var1);

    public List<Notification> getNotificationsForPostcommit(Transaction var1);

    public void dispose();

    public static interface Factory {
        public static final Factory INSTANCE = new TransactionalEditingDomainImpl.ValidatorFactoryImpl();

        public TransactionValidator createReadOnlyValidator();

        public TransactionValidator createReadWriteValidator();
    }
}

