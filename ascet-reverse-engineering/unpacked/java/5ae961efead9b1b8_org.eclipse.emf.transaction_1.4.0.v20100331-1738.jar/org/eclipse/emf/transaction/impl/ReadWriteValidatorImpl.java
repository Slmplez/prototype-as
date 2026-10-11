/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.BasicEList$FastCompare
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.validation.model.EvaluationMode
 *  org.eclipse.emf.validation.service.IValidator
 *  org.eclipse.emf.validation.service.ModelValidationService
 */
package org.eclipse.emf.transaction.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.impl.InternalTransaction;
import org.eclipse.emf.transaction.impl.TransactionImpl;
import org.eclipse.emf.transaction.impl.TransactionValidator;
import org.eclipse.emf.transaction.internal.EMFTransactionPlugin;
import org.eclipse.emf.transaction.internal.Tracing;
import org.eclipse.emf.transaction.internal.l10n.Messages;
import org.eclipse.emf.validation.model.EvaluationMode;
import org.eclipse.emf.validation.service.IValidator;
import org.eclipse.emf.validation.service.ModelValidationService;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ReadWriteValidatorImpl
implements TransactionValidator {
    static final byte VALIDATION = 1;
    static final byte PRECOMMIT = 2;
    static final byte POSTCOMMIT = 4;
    private NotificationTree tree = null;
    private NotificationTree transactionToPrecommit = null;
    private final Map<InternalTransaction, NotificationTree> txToNode = new HashMap<InternalTransaction, NotificationTree>();

    @Override
    public void add(InternalTransaction transaction) {
        byte notificationMask = ReadWriteValidatorImpl.computeNotificationMask(transaction);
        if (notificationMask > 0) {
            NotificationTree parent = this.findTree(transaction.getParent());
            NotificationTree newTree = null;
            if (transaction.getParent() == null) {
                newTree = this.tree = new NotificationTree(transaction, null, notificationMask);
            } else if (parent != null) {
                newTree = parent.addChild(transaction, notificationMask);
            }
            if (newTree != null) {
                this.txToNode.put(transaction, newTree);
                if (this.transactionToPrecommit == null && !transaction.isReadOnly()) {
                    this.transactionToPrecommit = newTree;
                }
            }
        }
    }

    @Override
    public void remove(InternalTransaction transaction) {
        NotificationTree node = this.findTree(transaction);
        if (node != null) {
            if (transaction.isRollingBack()) {
                node.setRolledBack();
            } else {
                this.txToNode.remove(transaction);
                node.detachTransaction();
            }
        }
    }

    @Override
    public synchronized List<Notification> getNotificationsForValidation(Transaction tx) {
        NotificationTree nested;
        List<Notification> result = null;
        if (this.tree != null && (nested = this.findTree(tx)) != null) {
            result = nested.collectNotifications((byte)1);
        }
        return result;
    }

    @Override
    public synchronized List<Notification> getNotificationsForPrecommit(Transaction tx) {
        List<Notification> result = null;
        if (this.transactionToPrecommit != null && this.transactionToPrecommit == this.findTree(tx)) {
            result = this.transactionToPrecommit.collectNotifications((byte)2);
            this.transactionToPrecommit = null;
        }
        return result;
    }

    @Override
    public synchronized List<Notification> getNotificationsForPostcommit(Transaction tx) {
        NotificationTree nested;
        List<Notification> result = null;
        if (this.tree != null && (nested = this.findTree(tx)) != null) {
            result = nested.collectNotifications((byte)4);
        }
        return result;
    }

    private NotificationTree findTree(Transaction tx) {
        NotificationTree result = null;
        if (this.tree != null) {
            result = this.txToNode.get(tx);
        }
        return result;
    }

    @Override
    public IStatus validate(Transaction tx) {
        IStatus result;
        try {
            IValidator<Notification> validator = this.createValidator();
            result = validator.validate(this.getNotificationsForValidation(tx));
        }
        catch (Exception e) {
            Tracing.catching(ReadWriteValidatorImpl.class, "validate", e);
            result = new Status(4, EMFTransactionPlugin.getPluginId(), 30, Messages.validationFailure, (Throwable)e);
        }
        return result;
    }

    protected IValidator<Notification> createValidator() {
        return ModelValidationService.getInstance().newValidator(EvaluationMode.LIVE);
    }

    @Override
    public void dispose() {
        this.tree = null;
        this.txToNode.clear();
        this.transactionToPrecommit = null;
    }

    private static byte computeNotificationMask(Transaction transaction) {
        byte result = 0;
        if (TransactionImpl.isNotificationEnabled(transaction)) {
            result = (byte)(result | 4);
        }
        if (TransactionImpl.isTriggerEnabled(transaction)) {
            result = (byte)(result | 2);
        }
        if (TransactionImpl.isValidationEnabled(transaction)) {
            result = (byte)(result | 1);
        }
        return result;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class NotificationTree {
        private final List<NotificationTree> children = new BasicEList.FastCompare();
        private int parentNotificationCount;
        private InternalTransaction transaction;
        private List<Notification> notifications;
        private final byte notificationMask;

        NotificationTree(InternalTransaction transaction, NotificationTree parent, byte notificationMask) {
            assert (notificationMask > 0) : "transaction must be collecting notifications";
            this.transaction = transaction;
            this.parentNotificationCount = parent == null ? 0 : parent.getNotifications().size();
            this.notificationMask = notificationMask;
        }

        NotificationTree addChild(InternalTransaction child, byte notificationMask) {
            NotificationTree result = new NotificationTree(child, this, notificationMask);
            this.children.add(result);
            return result;
        }

        List<NotificationTree> getChildren() {
            return this.children;
        }

        List<Notification> collectNotifications(byte purpose) {
            List<Notification> result;
            if ((this.notificationMask & purpose) == purpose) {
                result = new ArrayList();
                this.collectNotifications(result, purpose);
            } else {
                result = Collections.emptyList();
            }
            return result;
        }

        private void collectNotifications(List<? super Notification> notifications, byte purpose) {
            if ((this.notificationMask & purpose) == purpose) {
                int lastIndex = 0;
                List<Notification> parentNotifications = this.getNotifications();
                for (NotificationTree next : this.children) {
                    notifications.addAll(parentNotifications.subList(lastIndex, next.parentNotificationCount));
                    lastIndex = next.parentNotificationCount;
                    next.collectNotifications(notifications, purpose);
                }
                notifications.addAll(parentNotifications.subList(lastIndex, parentNotifications.size()));
            }
        }

        /*
         * Unable to fully structure code
         */
        void setRolledBack() {
            block10: {
                children = this.getChildren().iterator();
                v0 = inPlace = this.transaction == null;
                if (inPlace) {
                    iter = this.notifications.listIterator();
                } else {
                    iter = this.transaction.getNotifications().listIterator();
                    this.notifications = new BasicEList.FastCompare();
                }
                i = 0;
                while (children.hasNext()) {
                    block9: {
                        child = children.next();
                        parentNotificationCount = child.parentNotificationCount;
                        if (!inPlace) ** GOTO lbl25
                        while (i < parentNotificationCount && iter.hasNext()) {
                            if (this.isUndoableObjectChange(iter.next())) {
                                iter.remove();
                            }
                            ++i;
                        }
                        child.parentNotificationCount = iter.nextIndex();
                        break block9;
lbl-1000:
                        // 1 sources

                        {
                            next = iter.next();
                            if (!this.isUndoableObjectChange(next)) {
                                this.notifications.add(next);
                            }
                            ++i;
lbl25:
                            // 2 sources

                            ** while (i < parentNotificationCount && iter.hasNext())
                        }
lbl26:
                        // 1 sources

                        child.parentNotificationCount = this.notifications.size();
                    }
                    child.setRolledBack();
                }
                if (!inPlace) ** GOTO lbl40
                while (iter.hasNext()) {
                    if (!this.isUndoableObjectChange(iter.next())) continue;
                    iter.remove();
                }
                break block10;
lbl-1000:
                // 1 sources

                {
                    next = iter.next();
                    if (this.isUndoableObjectChange(next)) continue;
                    this.notifications.add(next);
lbl40:
                    // 3 sources

                    ** while (iter.hasNext())
                }
            }
        }

        private boolean isUndoableObjectChange(Notification notification) {
            return notification.getNotifier() instanceof EObject || notification.getNotifier() instanceof Resource && notification.getFeatureID(Resource.class) == 2;
        }

        List<Notification> getNotifications() {
            return this.notifications != null ? this.notifications : this.transaction.getNotifications();
        }

        void detachTransaction() {
            if (this.notifications == null) {
                this.notifications = this.transaction.getNotifications();
            }
            this.transaction = null;
        }
    }
}

