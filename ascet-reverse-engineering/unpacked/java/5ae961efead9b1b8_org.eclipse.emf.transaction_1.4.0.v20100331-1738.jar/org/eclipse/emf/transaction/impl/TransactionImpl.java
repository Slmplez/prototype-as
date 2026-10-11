/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.BasicEList$FastCompare
 */
package org.eclipse.emf.transaction.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.transaction.RollbackException;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.TransactionChangeDescription;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.InternalLifecycle;
import org.eclipse.emf.transaction.impl.InternalTransaction;
import org.eclipse.emf.transaction.impl.InternalTransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.PrivilegedRunnable;
import org.eclipse.emf.transaction.impl.TransactionChangeRecorder;
import org.eclipse.emf.transaction.impl.TransactionalEditingDomainImpl;
import org.eclipse.emf.transaction.internal.EMFTransactionDebugOptions;
import org.eclipse.emf.transaction.internal.EMFTransactionPlugin;
import org.eclipse.emf.transaction.internal.Tracing;
import org.eclipse.emf.transaction.internal.l10n.Messages;
import org.eclipse.emf.transaction.util.CommandChangeDescription;
import org.eclipse.emf.transaction.util.CompositeChangeDescription;
import org.eclipse.emf.transaction.util.ConditionalRedoCommand;
import org.eclipse.emf.transaction.util.TransactionUtil;
import org.eclipse.emf.transaction.util.TriggerCommand;
import org.eclipse.emf.transaction.util.ValidateEditSupport;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TransactionImpl
implements InternalTransaction {
    public static final String ALLOW_CHANGE_PROPAGATION_BLOCKING = "allow_block_cd_prop";
    public static final String BLOCK_CHANGE_PROPAGATION = "block_cd_prop";
    public static final String OPTION_IS_TRIGGER_TRANSACTION = "is_trigger_transaction";
    public static final String OPTION_EXECUTING_COMMAND = "executing_command";
    public static final Map<Object, Object> DEFAULT_UNDO_REDO_OPTIONS;
    private static long nextId;
    final long id;
    private final TransactionalEditingDomain domain;
    private Thread owner;
    private final boolean readOnly;
    private final Map<Object, Object> options;
    private final Map<Object, Object> mutableOptions;
    private InternalTransaction parent;
    private InternalTransaction root;
    private boolean active;
    private boolean closing;
    private boolean rollingBack;
    protected List<Notification> notifications;
    protected final CompositeChangeDescription change;
    private boolean aborted;
    private IStatus status = Status.OK_STATUS;
    private Command triggers;
    private CommandChangeDescription triggerChange;

    static {
        HashMap<String, Boolean> map = new HashMap<String, Boolean>();
        map.put("no_triggers", Boolean.TRUE);
        map.put("no_undo", Boolean.TRUE);
        map.put("no_validation", Boolean.TRUE);
        map.put("is_undo_redo_transaction", Boolean.TRUE);
        DEFAULT_UNDO_REDO_OPTIONS = Collections.unmodifiableMap(map);
        nextId = 0L;
    }

    public TransactionImpl(TransactionalEditingDomain domain, boolean readOnly) {
        this(domain, readOnly, null);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public TransactionImpl(TransactionalEditingDomain domain, boolean readOnly, Map<?, ?> options) {
        this.domain = domain;
        this.readOnly = readOnly;
        this.owner = Thread.currentThread();
        this.mutableOptions = new HashMap<Object, Object>();
        this.options = Collections.unmodifiableMap(this.mutableOptions);
        if (options != null) {
            this.mutableOptions.putAll(options);
        }
        Class<TransactionImpl> clazz = TransactionImpl.class;
        synchronized (TransactionImpl.class) {
            this.id = nextId++;
            // ** MonitorExit[var4_4] (shouldn't be in output)
            this.change = new CompositeChangeDescription();
            this.notifications = TransactionImpl.collectsNotifications(this) ? new BasicEList.FastCompare() : null;
            return;
        }
    }

    @Override
    public synchronized void start() throws InterruptedException {
        InternalLifecycle lifecycle;
        if (Thread.currentThread() != this.getOwner()) {
            IllegalStateException exc = new IllegalStateException("Not transaction owner");
            Tracing.throwing(TransactionImpl.class, "start", exc);
            throw exc;
        }
        if (this.isActive()) {
            IllegalStateException exc = new IllegalStateException("Transaction is already active");
            Tracing.throwing(TransactionImpl.class, "start", exc);
            throw exc;
        }
        if (this.getInternalDomain().getActiveTransaction() == null && (lifecycle = this.getLifecycle()) != null) {
            lifecycle.transactionStarting(this);
        }
        try {
            this.getInternalDomain().activate(this);
        }
        catch (InterruptedException e) {
            InternalLifecycle lifecycle2;
            if (this.getInternalDomain().getActiveTransaction() == null && (lifecycle2 = this.getLifecycle()) != null) {
                lifecycle2.transactionInterrupted(this);
            }
            throw e;
        }
        this.active = true;
        if (this != this.getInternalDomain().getActiveTransaction()) {
            IllegalStateException exc = new IllegalStateException("Activated transaction while another is active");
            Tracing.throwing(TransactionImpl.class, "start", exc);
            throw exc;
        }
        if (Tracing.shouldTrace(EMFTransactionDebugOptions.TRANSACTIONS)) {
            int depth = 1;
            Transaction tx = this.getParent();
            while (tx != null) {
                ++depth;
                tx = tx.getParent();
            }
            Tracing.trace("*** Started " + TransactionalEditingDomainImpl.getDebugID(this) + " read-only=" + this.isReadOnly() + " owner=" + this.getOwner().getName() + " depth=" + depth + " options=" + this.getOptions() + " at " + Tracing.now());
        }
        if (this.parent != null) {
            this.parent.pause();
        }
        if (this.getRoot() == this) {
            Object validateEdit = this.getOptions().get("validate_edit");
            if (Boolean.TRUE.equals(validateEdit)) {
                validateEdit = new ValidateEditSupport.Default();
            }
            if (validateEdit instanceof ValidateEditSupport) {
                this.getInternalDomain().getChangeRecorder().setValidateEditSupport((ValidateEditSupport)validateEdit);
            }
        }
        this.startRecording();
        if (this.getParent() == null && (lifecycle = this.getLifecycle()) != null) {
            lifecycle.transactionStarted(this);
        }
    }

    @Override
    public final TransactionalEditingDomain getEditingDomain() {
        return this.domain;
    }

    protected InternalLifecycle getLifecycle() {
        return TransactionUtil.getAdapter(this.getEditingDomain(), InternalLifecycle.class);
    }

    @Override
    public final Transaction getParent() {
        return this.parent;
    }

    @Override
    public final void setParent(InternalTransaction parent) {
        this.parent = parent;
        this.root = parent == null ? this : parent.getRoot();
        this.inheritOptions(parent);
    }

    @Override
    public final InternalTransaction getRoot() {
        return this.root;
    }

    @Override
    public final Thread getOwner() {
        return this.owner;
    }

    @Override
    public final boolean isReadOnly() {
        return this.readOnly;
    }

    public final Map<Object, Object> getOptions() {
        return this.options;
    }

    @Override
    public synchronized boolean isActive() {
        return this.active;
    }

    @Override
    public IStatus getStatus() {
        return this.status;
    }

    @Override
    public void setStatus(IStatus status) {
        if (status == null) {
            status = Status.OK_STATUS;
        }
        this.status = status;
    }

    @Override
    public synchronized void abort(IStatus status) {
        assert (status != null);
        this.aborted = true;
        this.status = status;
        if (this.parent != null) {
            this.parent.abort(status);
        }
    }

    protected boolean isAborted() {
        return this.aborted;
    }

    @Override
    public void commit() throws RollbackException {
        if (Thread.currentThread() != this.getOwner()) {
            IllegalStateException exc = new IllegalStateException("Not transaction owner");
            Tracing.throwing(TransactionImpl.class, "commit", exc);
            throw exc;
        }
        if (this.closing) {
            IllegalStateException exc = new IllegalStateException("Transaction is already closing");
            Tracing.throwing(TransactionImpl.class, "commit", exc);
            throw exc;
        }
        if (!this.isActive()) {
            IllegalStateException exc = new IllegalStateException("Transaction is already closed");
            Tracing.throwing(TransactionImpl.class, "commit", exc);
            throw exc;
        }
        if (Tracing.shouldTrace(EMFTransactionDebugOptions.TRANSACTIONS)) {
            Tracing.trace("*** Committing " + TransactionalEditingDomainImpl.getDebugID(this) + " at " + Tracing.now());
        }
        try {
            InternalLifecycle lifecycle;
            if (this.getParent() == null && (lifecycle = this.getLifecycle()) != null) {
                lifecycle.transactionClosing(this);
            }
            if (this.isAborted()) {
                this.doRollback();
                RollbackException exc = new RollbackException(this.getStatus());
                Tracing.throwing(TransactionImpl.class, "commit", exc);
                throw exc;
            }
            this.closing = true;
            if (TransactionImpl.isTriggerEnabled(this)) {
                try {
                    this.getInternalDomain().precommit(this);
                }
                catch (RollbackException e) {
                    Tracing.catching(TransactionImpl.class, "commit", e);
                    this.doRollback();
                    Tracing.throwing(TransactionImpl.class, "commit", e);
                    throw e;
                }
            }
            if (this.getRoot() == this) {
                ValidateEditSupport validateEdit;
                IStatus validationStatus = null;
                if (TransactionImpl.isValidationEnabled(this)) {
                    validationStatus = this.validate();
                }
                if ((validationStatus == null || validationStatus.getSeverity() < 4) && (validateEdit = this.getInternalDomain().getChangeRecorder().getValidateEditSupport()) != null) {
                    Object context = this.getOptions().get("validate_edit_context");
                    IStatus editStatus = validateEdit.validateEdit(this, context);
                    validationStatus = this.combine(validationStatus, editStatus);
                }
                if (validationStatus != null) {
                    this.setStatus(validationStatus);
                    if (validationStatus.getSeverity() >= 4) {
                        this.doRollback();
                        RollbackException exc = new RollbackException(validationStatus);
                        Tracing.throwing(TransactionImpl.class, "commit", exc);
                        throw exc;
                    }
                }
                if ((validateEdit = this.getInternalDomain().getChangeRecorder().getValidateEditSupport()) != null) {
                    validateEdit.finalizeForCommit();
                }
            }
        }
        finally {
            this.stopRecording();
            if (this.getRoot() == this) {
                this.getInternalDomain().getChangeRecorder().setValidateEditSupport(null);
            }
            this.close();
        }
    }

    private IStatus combine(IStatus validationStatus, IStatus editStatus) {
        Object result = validationStatus == null || validationStatus.isOK() ? (editStatus == null || editStatus.isOK() ? Status.OK_STATUS : editStatus) : (editStatus == null || editStatus.isOK() ? validationStatus : (editStatus.getSeverity() > validationStatus.getSeverity() ? new MultiStatus(EMFTransactionPlugin.getPluginId(), editStatus.getCode(), new IStatus[]{editStatus, validationStatus}, editStatus.getMessage(), null) : new MultiStatus(EMFTransactionPlugin.getPluginId(), validationStatus.getCode(), new IStatus[]{validationStatus, editStatus}, validationStatus.getMessage(), null)));
        return result;
    }

    @Override
    public void rollback() {
        InternalLifecycle lifecycle;
        if (Thread.currentThread() != this.getOwner()) {
            IllegalStateException exc = new IllegalStateException("Not transaction owner");
            Tracing.throwing(TransactionImpl.class, "rollback", exc);
            throw exc;
        }
        if (this.closing) {
            IllegalStateException exc = new IllegalStateException("Transaction is already closing");
            Tracing.throwing(TransactionImpl.class, "rollback", exc);
            throw exc;
        }
        if (!this.isActive()) {
            IllegalStateException exc = new IllegalStateException("Transaction is already closed");
            Tracing.throwing(TransactionImpl.class, "rollback", exc);
            throw exc;
        }
        if (this.getParent() == null && (lifecycle = this.getLifecycle()) != null) {
            lifecycle.transactionClosing(this);
        }
        this.closing = true;
        this.doRollback();
    }

    private void doRollback() {
        this.rollingBack = true;
        if (Tracing.shouldTrace(EMFTransactionDebugOptions.TRANSACTIONS)) {
            Tracing.trace("*** Rolling back " + TransactionalEditingDomainImpl.getDebugID(this) + " at " + Tracing.now());
        }
        try {
            IStatus status;
            ValidateEditSupport validateEdit;
            if (!this.isReadOnly()) {
                this.getInternalDomain().getValidator().remove(this);
                this.notifications = null;
                this.stopRecording();
                if (TransactionImpl.isUndoEnabled(this)) {
                    this.change.apply();
                    this.change.clear();
                }
            }
            if (this.getRoot() == this && (validateEdit = this.getInternalDomain().getChangeRecorder().getValidateEditSupport()) != null) {
                validateEdit.finalizeForRollback();
            }
            if ((status = this.getStatus()) == null || status.isOK()) {
                this.setStatus((IStatus)new Status(4, EMFTransactionPlugin.getPluginId(), Messages.rollbackRequested));
            } else if (status.getSeverity() < 4) {
                Status rbStatus = new Status(4, EMFTransactionPlugin.getPluginId(), Messages.rollbackRequested);
                this.setStatus((IStatus)new MultiStatus(EMFTransactionPlugin.getPluginId(), rbStatus.getCode(), new IStatus[]{rbStatus, status}, rbStatus.getMessage(), null));
            }
        }
        finally {
            this.rollingBack = false;
            this.close();
        }
    }

    @Override
    public void yield() {
        this.getEditingDomain().yield();
    }

    @Override
    public TransactionChangeDescription getChangeDescription() {
        return this.isActive() && !this.closing ? null : this.change;
    }

    protected InternalTransactionalEditingDomain getInternalDomain() {
        return (InternalTransactionalEditingDomain)this.getEditingDomain();
    }

    private void startRecording() {
        TransactionChangeRecorder recorder = this.getInternalDomain().getChangeRecorder();
        if (TransactionImpl.isUndoEnabled(this)) {
            if (!recorder.isRecording()) {
                recorder.beginRecording();
            } else if (recorder.isPaused()) {
                recorder.resume();
            }
        }
    }

    private void stopRecording() {
        TransactionChangeRecorder recorder = this.getInternalDomain().getChangeRecorder();
        if (TransactionImpl.isUndoEnabled(this) && recorder.isRecording()) {
            InternalTransaction active = this.getInternalDomain().getActiveTransaction();
            if (active != null && !TransactionImpl.isUndoEnabled(active)) {
                recorder.pause();
            } else {
                this.change.add(recorder.endRecording());
            }
        }
    }

    @Override
    public void pause() {
        if (!this.isRollingBack()) {
            this.stopRecording();
        }
    }

    @Override
    public void resume(TransactionChangeDescription nestedChanges) {
        if (!this.isRollingBack()) {
            if (TransactionImpl.isUndoEnabled(this) && nestedChanges != null) {
                this.change.add(nestedChanges);
            }
            this.startRecording();
        }
    }

    @Override
    public boolean isRollingBack() {
        return this.rollingBack || this.parent != null && this.parent.isRollingBack();
    }

    protected synchronized void close() {
        if (this.isActive()) {
            this.active = false;
            this.closing = false;
            this.getInternalDomain().deactivate(this);
            if (this.parent != null) {
                if (TransactionImpl.hasOption(this, BLOCK_CHANGE_PROPAGATION) && TransactionImpl.hasOption(this.parent, ALLOW_CHANGE_PROPAGATION_BLOCKING)) {
                    this.parent.resume(null);
                } else {
                    this.parent.resume(this.change);
                }
            } else {
                this.notifications = null;
                InternalLifecycle lifecycle = this.getLifecycle();
                if (lifecycle != null) {
                    lifecycle.transactionClosed(this);
                }
            }
            if (Tracing.shouldTrace(EMFTransactionDebugOptions.TRANSACTIONS)) {
                Tracing.trace("*** Closed " + TransactionalEditingDomainImpl.getDebugID(this) + " at " + Tracing.now());
            }
        }
    }

    @Override
    public void add(Notification notification) {
        if (!this.rollingBack && this.notifications != null) {
            this.notifications.add(notification);
        }
    }

    @Override
    public List<Notification> getNotifications() {
        return this.notifications == null ? Collections.emptyList() : this.notifications;
    }

    protected IStatus validate() {
        if (Tracing.shouldTrace(EMFTransactionDebugOptions.TRANSACTIONS)) {
            Tracing.trace("*** Validating " + TransactionalEditingDomainImpl.getDebugID(this) + " at " + Tracing.now());
        }
        return this.getInternalDomain().getValidator().validate(this);
    }

    @Override
    public Command getTriggers() {
        return this.triggers;
    }

    @Override
    public void addTriggers(TriggerCommand triggers) {
        List<Command> triggerCommands = triggers.getTriggers();
        if (triggerCommands.isEmpty()) {
            return;
        }
        ConditionalRedoCommand.Compound triggerCommand = new ConditionalRedoCommand.Compound(new ArrayList<Command>(triggerCommands));
        if (this.triggers == null) {
            this.triggers = triggerCommand;
            this.triggerChange = new CommandChangeDescription(triggerCommand);
            this.change.add(this.triggerChange);
        } else {
            this.triggers = this.triggerChange.chain(triggerCommand);
        }
    }

    @Override
    public void startPrivileged(PrivilegedRunnable<?> runnable) {
        if (runnable.getTransaction() != this) {
            throw new IllegalArgumentException("runnable has no privileges on this transaction");
        }
        InternalTransactionalEditingDomain internalDomain = (InternalTransactionalEditingDomain)this.getEditingDomain();
        if (!this.isActive() || internalDomain.getActiveTransaction() != this) {
            throw new IllegalStateException("transaction is not the domain's current transaction");
        }
        internalDomain.startPrivileged(runnable);
        this.owner = Thread.currentThread();
    }

    @Override
    public void endPrivileged(PrivilegedRunnable<?> runnable) {
        if (runnable.getTransaction() != this) {
            throw new IllegalArgumentException("runnable has no privileges on this transaction");
        }
        InternalTransactionalEditingDomain internalDomain = (InternalTransactionalEditingDomain)this.getEditingDomain();
        if (!this.isActive() || internalDomain.getActiveTransaction() != this) {
            throw new IllegalStateException("transaction is not the domain's current transaction");
        }
        this.owner = runnable.getOwner();
        internalDomain.endPrivileged(runnable);
    }

    private void inheritOptions(Transaction parent) {
        Map<?, ?> parentOptions;
        boolean isRoot = parent == null;
        Map<?, ?> map = parentOptions = isRoot ? TransactionImpl.getDefaultOptions(this.getEditingDomain()) : parent.getOptions();
        if (parentOptions != null) {
            Transaction.OptionMetadata.Registry reg = TransactionUtil.getTransactionOptionRegistry(this.getEditingDomain());
            for (Object option : parentOptions.keySet()) {
                reg.getOptionMetadata(option).inherit(parentOptions, this.mutableOptions, isRoot);
            }
        }
    }

    public String toString() {
        return "Transaction[active=" + this.isActive() + ", read-only=" + this.isReadOnly() + ", owner=" + this.getOwner().getName() + ']';
    }

    protected static boolean isUndoEnabled(Transaction tx) {
        return !tx.isReadOnly() && !TransactionImpl.hasOption(tx, "no_undo") && !TransactionImpl.hasOption(tx, "unprotected");
    }

    protected static boolean isValidationEnabled(Transaction tx) {
        return !tx.isReadOnly() && !TransactionImpl.hasOption(tx, "no_validation") && !TransactionImpl.hasOption(tx, "unprotected");
    }

    protected static boolean isTriggerEnabled(Transaction tx) {
        return !tx.isReadOnly() && !TransactionImpl.hasOption(tx, "no_triggers") && !TransactionImpl.hasOption(tx, "unprotected");
    }

    protected static boolean isNotificationEnabled(Transaction tx) {
        return !TransactionImpl.hasOption(tx, "silent");
    }

    protected static boolean isUnprotected(Transaction tx) {
        return !tx.isReadOnly() && TransactionImpl.hasOption(tx, "unprotected");
    }

    protected static boolean collectsNotifications(Transaction tx) {
        return TransactionImpl.isNotificationEnabled(tx) || TransactionImpl.isTriggerEnabled(tx) || TransactionImpl.isValidationEnabled(tx);
    }

    protected static boolean hasOption(Transaction tx, String option) {
        return Boolean.TRUE.equals(tx.getOptions().get(option));
    }

    protected static Map<?, ?> getDefaultOptions(TransactionalEditingDomain domain) {
        TransactionalEditingDomain.DefaultOptions defaults = TransactionUtil.getAdapter(domain, TransactionalEditingDomain.DefaultOptions.class);
        return defaults == null ? Collections.EMPTY_MAP : defaults.getDefaultTransactionOptions();
    }
}

