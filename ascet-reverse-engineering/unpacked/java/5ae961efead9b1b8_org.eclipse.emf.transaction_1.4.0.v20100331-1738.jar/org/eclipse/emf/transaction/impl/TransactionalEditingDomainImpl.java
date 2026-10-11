/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.EMFPlugin
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CommandStack
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.impl.AdapterImpl
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain
 *  org.eclipse.emf.edit.domain.EditingDomain
 *  org.eclipse.emf.edit.domain.IEditingDomainProvider
 *  org.eclipse.emf.edit.provider.ComposedAdapterFactory
 *  org.eclipse.emf.edit.provider.ComposedAdapterFactory$Descriptor$Registry
 */
package org.eclipse.emf.transaction.impl;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CommandStack;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.impl.AdapterImpl;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.domain.IEditingDomainProvider;
import org.eclipse.emf.edit.provider.ComposedAdapterFactory;
import org.eclipse.emf.transaction.ResourceSetChangeEvent;
import org.eclipse.emf.transaction.ResourceSetListener;
import org.eclipse.emf.transaction.RollbackException;
import org.eclipse.emf.transaction.RunnableWithResult;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.TransactionalCommandStack;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.TransactionalEditingDomainEvent;
import org.eclipse.emf.transaction.TransactionalEditingDomainListener;
import org.eclipse.emf.transaction.impl.EMFCommandTransaction;
import org.eclipse.emf.transaction.impl.EditingDomainManager;
import org.eclipse.emf.transaction.impl.FilterManager;
import org.eclipse.emf.transaction.impl.InternalLifecycle;
import org.eclipse.emf.transaction.impl.InternalTransaction;
import org.eclipse.emf.transaction.impl.InternalTransactionalCommandStack;
import org.eclipse.emf.transaction.impl.InternalTransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.PrivilegedRunnable;
import org.eclipse.emf.transaction.impl.ReadOnlyValidatorImpl;
import org.eclipse.emf.transaction.impl.ReadWriteValidatorImpl;
import org.eclipse.emf.transaction.impl.TransactionChangeRecorder;
import org.eclipse.emf.transaction.impl.TransactionImpl;
import org.eclipse.emf.transaction.impl.TransactionValidator;
import org.eclipse.emf.transaction.impl.TransactionalCommandStackImpl;
import org.eclipse.emf.transaction.internal.EMFTransactionDebugOptions;
import org.eclipse.emf.transaction.internal.EMFTransactionPlugin;
import org.eclipse.emf.transaction.internal.ITransactionLock;
import org.eclipse.emf.transaction.internal.Tracing;
import org.eclipse.emf.transaction.internal.l10n.Messages;
import org.eclipse.emf.transaction.util.Adaptable;
import org.eclipse.emf.transaction.util.BasicTransactionOptionMetadataRegistry;
import org.eclipse.emf.transaction.util.EmptyLock;
import org.eclipse.emf.transaction.util.Lock;
import org.eclipse.emf.transaction.util.TransactionUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TransactionalEditingDomainImpl
extends AdapterFactoryEditingDomain
implements InternalTransactionalEditingDomain,
Adaptable,
TransactionalEditingDomain.DefaultOptions {
    private String id;
    private TransactionChangeRecorder recorder;
    private volatile InternalTransaction activeTransaction;
    private TransactionValidator validator;
    private TransactionValidator.Factory validatorFactory = null;
    private final Map<Object, Object> defaultTransactionOptions = new HashMap<Object, Object>();
    private final Map<Object, Object> defaultTransactionOptionsRO = Collections.unmodifiableMap(this.defaultTransactionOptions);
    private ITransactionLock transactionLock = null;
    private ITransactionLock writeLock = null;
    private final List<ResourceSetListener> precommitListeners = new ArrayList<ResourceSetListener>();
    private final List<ResourceSetListener> aggregatePrecommitListeners = new ArrayList<ResourceSetListener>();
    private final List<ResourceSetListener> postcommitListeners = new ArrayList<ResourceSetListener>();
    private final List<Notification> unbatchedNotifications = new ArrayList<Notification>(1);
    private final ResourceSetChangeEvent unbatchedChangeEvent = new ResourceSetChangeEvent(this, null, this.unbatchedNotifications);
    private final Map<Object, Object> undoRedoOptions = new HashMap<Object, Object>(TransactionImpl.DEFAULT_UNDO_REDO_OPTIONS);
    private LifecycleImpl lifecycle;
    private Transaction.OptionMetadata.Registry optionMetadata;
    private boolean disposed = false;

    public TransactionalEditingDomainImpl(AdapterFactory adapterFactory, TransactionalCommandStack stack, ResourceSet resourceSet) {
        super(adapterFactory, (CommandStack)stack, resourceSet);
        this.initialize();
    }

    public TransactionalEditingDomainImpl(AdapterFactory adapterFactory, TransactionalCommandStack stack) {
        super(adapterFactory, (CommandStack)stack);
        this.initialize();
    }

    public TransactionalEditingDomainImpl(AdapterFactory adapterFactory, ResourceSet resourceSet) {
        this(adapterFactory, new TransactionalCommandStackImpl(), resourceSet);
    }

    public TransactionalEditingDomainImpl(AdapterFactory adapterFactory) {
        this(adapterFactory, new TransactionalCommandStackImpl());
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void initialize() {
        TransactionalEditingDomainImpl transactionalEditingDomainImpl = this;
        synchronized (transactionalEditingDomainImpl) {
            if (EMFPlugin.IS_ECLIPSE_RUNNING) {
                this.transactionLock = new Lock();
                this.writeLock = new Lock();
            } else {
                this.transactionLock = new EmptyLock();
                this.writeLock = new EmptyLock();
            }
        }
        ((InternalTransactionalCommandStack)this.commandStack).setEditingDomain(this);
        this.recorder = this.createChangeRecorder(this.resourceSet);
        this.validator = TransactionValidator.NULL;
        this.resourceToReadOnlyMap = new WeakHashMap();
    }

    protected TransactionChangeRecorder createChangeRecorder(ResourceSet rset) {
        return new TransactionChangeRecorder(this, rset);
    }

    @Override
    public final synchronized String getID() {
        return this.id;
    }

    @Override
    public final synchronized void setID(String id) {
        boolean reregister = false;
        if (id != this.id && this.id != null) {
            boolean bl = reregister = TransactionalEditingDomain.Registry.INSTANCE.remove(this.id) == this;
        }
        if (reregister && id != null) {
            TransactionalEditingDomain.Registry.INSTANCE.add(id, this);
        }
        this.id = id;
    }

    protected static String getDebugID(TransactionalEditingDomain domain) {
        return domain.getID() == null ? "<anonymous>" : domain.getID();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void addResourceSetListener(ResourceSetListener l) {
        if (l.isPrecommitOnly() && l.isPostcommitOnly()) {
            throw new IllegalArgumentException("conflicting isPrecommitOnly() and isPostcommitOnly()");
        }
        List<ResourceSetListener> list = this.precommitListeners;
        synchronized (list) {
            List<ResourceSetListener> list2 = this.aggregatePrecommitListeners;
            synchronized (list2) {
                List<ResourceSetListener> list3 = this.postcommitListeners;
                synchronized (list3) {
                    boolean wasAdded = false;
                    if (!l.isPostcommitOnly()) {
                        if (!l.isAggregatePrecommitListener() && !this.precommitListeners.contains(l)) {
                            wasAdded |= this.precommitListeners.add(l);
                        } else if (l.isAggregatePrecommitListener() && !this.aggregatePrecommitListeners.contains(l)) {
                            wasAdded |= this.aggregatePrecommitListeners.add(l);
                        }
                    }
                    if (!l.isPrecommitOnly() && !this.postcommitListeners.contains(l)) {
                        wasAdded |= this.postcommitListeners.add(l);
                    }
                    if (wasAdded && l instanceof ResourceSetListener.Internal) {
                        ((ResourceSetListener.Internal)l).setTarget(this);
                    }
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void removeResourceSetListener(ResourceSetListener l) {
        List<ResourceSetListener> list = this.precommitListeners;
        synchronized (list) {
            List<ResourceSetListener> list2 = this.aggregatePrecommitListeners;
            synchronized (list2) {
                List<ResourceSetListener> list3 = this.postcommitListeners;
                synchronized (list3) {
                    boolean wasRemoved = false;
                    wasRemoved |= this.precommitListeners.remove(l);
                    wasRemoved |= this.aggregatePrecommitListeners.remove(l);
                    if ((wasRemoved |= this.postcommitListeners.remove(l)) && l instanceof ResourceSetListener.Internal) {
                        ((ResourceSetListener.Internal)l).unsetTarget(this);
                    }
                }
            }
        }
    }

    protected InternalTransactionalCommandStack getTransactionalCommandStack() {
        return (InternalTransactionalCommandStack)this.getCommandStack();
    }

    @Override
    public Object runExclusive(Runnable read) throws InterruptedException {
        RunnableWithResult rwr;
        block12: {
            InternalTransaction active = this.getActiveTransaction();
            InternalTransaction tx = null;
            if (active == null || !active.isActive() || !active.isReadOnly() || active.getOwner() != Thread.currentThread()) {
                tx = this.startTransaction(true, null);
            }
            rwr = read instanceof RunnableWithResult ? (RunnableWithResult)read : null;
            try {
                read.run();
            }
            catch (Throwable throwable) {
                block11: {
                    if (tx != null && tx.isActive()) {
                        try {
                            tx.commit();
                            if (rwr != null) {
                                rwr.setStatus(Status.OK_STATUS);
                            }
                        }
                        catch (RollbackException e) {
                            Tracing.catching(TransactionalEditingDomainImpl.class, "runExclusive", e);
                            EMFTransactionPlugin.INSTANCE.log(new MultiStatus(EMFTransactionPlugin.getPluginId(), 41, new IStatus[]{e.getStatus()}, Messages.readTxRollback, null));
                            if (rwr == null) break block11;
                            rwr.setStatus(e.getStatus());
                        }
                    }
                }
                throw throwable;
            }
            if (tx != null && tx.isActive()) {
                try {
                    tx.commit();
                    if (rwr != null) {
                        rwr.setStatus(Status.OK_STATUS);
                    }
                }
                catch (RollbackException e) {
                    Tracing.catching(TransactionalEditingDomainImpl.class, "runExclusive", e);
                    EMFTransactionPlugin.INSTANCE.log(new MultiStatus(EMFTransactionPlugin.getPluginId(), 41, new IStatus[]{e.getStatus()}, Messages.readTxRollback, null));
                    if (rwr == null) break block12;
                    rwr.setStatus(e.getStatus());
                }
            }
        }
        return rwr != null ? rwr.getResult() : null;
    }

    @Override
    public void yield() {
        Thread current = Thread.currentThread();
        if (this.transactionLock.getOwner() != current) {
            IllegalStateException exc = new IllegalStateException("Only the active transaction may yield");
            Tracing.throwing(TransactionalEditingDomainImpl.class, "yield", exc);
            throw exc;
        }
        if (this.writeLock.getOwner() == null && this.transactionLock.yield()) {
            if (Tracing.shouldTrace(EMFTransactionDebugOptions.TRANSACTIONS)) {
                Tracing.trace(">>> Yielding " + TransactionalEditingDomainImpl.getDebugID(this.activeTransaction) + " at " + Tracing.now());
            }
            InternalTransaction transactionToRestore = this.activeTransaction;
            TransactionValidator validatorToRestore = this.validator;
            this.activeTransaction = null;
            this.validator = TransactionValidator.NULL;
            int depth = this.transactionLock.getDepth();
            int i = 0;
            while (i < depth) {
                this.transactionLock.release();
                ++i;
            }
            i = 0;
            while (i < depth) {
                while (true) {
                    try {
                        this.transactionLock.uiSafeAcquire(false);
                    }
                    catch (InterruptedException e) {
                        Tracing.catching(TransactionalEditingDomainImpl.class, "yield", e);
                        continue;
                    }
                    break;
                }
                ++i;
            }
            this.activeTransaction = transactionToRestore;
            this.validator = validatorToRestore;
            assert (this.activeTransaction != null);
            if (Tracing.shouldTrace(EMFTransactionDebugOptions.TRANSACTIONS)) {
                Tracing.trace(">>> Resuming " + TransactionalEditingDomainImpl.getDebugID(this.activeTransaction) + " at " + Tracing.now());
            }
        }
    }

    @Override
    public InternalTransaction startTransaction(boolean readOnly, Map<?, ?> options) throws InterruptedException {
        TransactionImpl result = new TransactionImpl(this, readOnly, options);
        result.start();
        return result;
    }

    protected static String getDebugID(Transaction tx) {
        return String.valueOf(TransactionalEditingDomainImpl.getDebugID(tx.getEditingDomain())) + "::" + (tx instanceof TransactionImpl ? Long.toString(((TransactionImpl)tx).id) : "<anonymous>");
    }

    @Override
    public TransactionChangeRecorder getChangeRecorder() {
        return this.recorder;
    }

    @Override
    public TransactionValidator getValidator() {
        return this.validator;
    }

    protected void setValidator(TransactionValidator newValidator) {
        this.validator = newValidator;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected final ResourceSetListener[] getPrecommitListeners() {
        List<ResourceSetListener> list = this.precommitListeners;
        synchronized (list) {
            return this.precommitListeners.toArray(new ResourceSetListener[this.precommitListeners.size()]);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected final ResourceSetListener[] getAggregatePrecommitListeners() {
        List<ResourceSetListener> list = this.aggregatePrecommitListeners;
        synchronized (list) {
            return this.aggregatePrecommitListeners.toArray(new ResourceSetListener[this.aggregatePrecommitListeners.size()]);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected final ResourceSetListener[] getPostcommitListeners() {
        List<ResourceSetListener> list = this.postcommitListeners;
        synchronized (list) {
            return this.postcommitListeners.toArray(new ResourceSetListener[this.postcommitListeners.size()]);
        }
    }

    @Override
    public InternalTransaction getActiveTransaction() {
        return this.activeTransaction;
    }

    @Override
    public void activate(InternalTransaction tx) throws InterruptedException {
        assert (tx != null) : "Cannot activate a null transaction";
        if (Tracing.shouldTrace(EMFTransactionDebugOptions.TRANSACTIONS)) {
            Tracing.trace(">>> Activating   " + TransactionalEditingDomainImpl.getDebugID(tx) + " at " + Tracing.now());
        }
        this.acquire(tx);
        tx.setParent(this.activeTransaction);
        if (this.activeTransaction == null) {
            this.validator = tx.isReadOnly() ? this.getValidatorFactory().createReadOnlyValidator() : this.getValidatorFactory().createReadWriteValidator();
        }
        this.activeTransaction = tx;
        this.validator.add(tx);
    }

    @Override
    public void deactivate(InternalTransaction tx) {
        assert (tx != null) : "Cannot deactivate a null transaction";
        if (Tracing.shouldTrace(EMFTransactionDebugOptions.TRANSACTIONS)) {
            Tracing.trace(">>> Deactivating " + TransactionalEditingDomainImpl.getDebugID(tx) + " at " + Tracing.now());
        }
        if (this.activeTransaction != tx) {
            IllegalArgumentException exc = new IllegalArgumentException("Can only deactivate the active transaction");
            Tracing.throwing(TransactionalEditingDomainImpl.class, "deactivate", exc);
            throw exc;
        }
        this.activeTransaction = (InternalTransaction)tx.getParent();
        try {
            if (this.activeTransaction == null) {
                this.postcommit(tx);
                this.validator.dispose();
                this.validator = TransactionValidator.NULL;
            } else {
                this.validator.remove(tx);
            }
        }
        finally {
            this.release(tx);
        }
    }

    private void acquire(InternalTransaction tx) throws InterruptedException {
        Thread current = Thread.currentThread();
        if (this.transactionLock.getOwner() == current && this.activeTransaction != null && this.activeTransaction.getOwner() == current && this.activeTransaction.isReadOnly() && !tx.isReadOnly() && !TransactionImpl.isUnprotected(tx)) {
            throw new IllegalStateException("Cannot activate read/write transaction in read-only transaction context");
        }
        this.transactionLock.uiSafeAcquire(!tx.isReadOnly());
        if (!tx.isReadOnly()) {
            while (true) {
                try {
                    this.writeLock.acquire(false);
                }
                catch (InterruptedException interruptedException) {
                    Thread.interrupted();
                    continue;
                }
                break;
            }
        }
    }

    private void release(InternalTransaction tx) {
        if (!tx.isReadOnly()) {
            this.writeLock.release();
        }
        this.transactionLock.release();
    }

    @Override
    public void precommit(final InternalTransaction tx) throws RollbackException {
        if (Tracing.shouldTrace(EMFTransactionDebugOptions.TRANSACTIONS)) {
            Tracing.trace(">>> Precommitting " + TransactionalEditingDomainImpl.getDebugID(tx) + " at " + Tracing.now());
        }
        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        class PrecommitRunnable
        extends RunnableWithResult.Impl<List<Command>> {
            private final List<Notification> notifications;
            private final ResourceSetListener[] listeners;
            private RollbackException rollback;

            PrecommitRunnable(ResourceSetListener[] listeners, List<Notification> notifications) {
                this.listeners = listeners;
                this.notifications = notifications;
            }

            List<Command> runExclusive() throws InterruptedException {
                if (this.listeners.length > 0 && !this.notifications.isEmpty()) {
                    return TransactionUtil.runExclusive(this, this);
                }
                return Collections.emptyList();
            }

            RollbackException getRollback() {
                return this.rollback;
            }

            @Override
            public void run() {
                ArrayList<Command> triggers = new ArrayList<Command>();
                this.setResult(triggers);
                ArrayList<Notification> cache = new ArrayList<Notification>(this.notifications.size());
                ResourceSetListener[] resourceSetListenerArray = this.listeners;
                int n = this.listeners.length;
                int n2 = 0;
                while (n2 < n) {
                    block4: {
                        ResourceSetListener element = resourceSetListenerArray[n2];
                        try {
                            Command cmd;
                            List<Notification> filtered = FilterManager.getInstance().select(this.notifications, element.getFilter(), cache);
                            if (filtered.isEmpty() || (cmd = element.transactionAboutToCommit(new ResourceSetChangeEvent(this, tx, filtered))) == null) break block4;
                            triggers.add(cmd);
                        }
                        catch (RollbackException e) {
                            this.rollback = e;
                            Tracing.catching(TransactionalEditingDomainImpl.class, "precommit", e);
                            break;
                        }
                        catch (Exception e) {
                            Tracing.catching(TransactionalEditingDomainImpl.class, "precommit", e);
                            Status status = new Status(4, EMFTransactionPlugin.getPluginId(), 43, Messages.precommitFailed, (Throwable)e);
                            EMFTransactionPlugin.INSTANCE.log(status);
                            this.rollback = new RollbackException((IStatus)status);
                            break;
                        }
                    }
                    ++n2;
                }
            }
        }
        PrecommitRunnable runnable = new PrecommitRunnable(this.getPrecommitListeners(), tx.getNotifications());
        while (runnable != null) {
            try {
                List<Notification> notifications;
                List<Command> triggers = runnable.runExclusive();
                if (runnable.getRollback() != null) {
                    Tracing.throwing(TransactionalEditingDomainImpl.class, "precommit", runnable.getRollback());
                    throw runnable.getRollback();
                }
                Command command = tx instanceof EMFCommandTransaction ? ((EMFCommandTransaction)tx).getCommand() : null;
                if (!triggers.isEmpty()) {
                    this.getTransactionalCommandStack().executeTriggers(command, triggers, tx.getOptions());
                }
                if ((notifications = this.validator.getNotificationsForPrecommit(tx)) == null || notifications.isEmpty()) {
                    runnable = null;
                    continue;
                }
                runnable = new PrecommitRunnable(this.getAggregatePrecommitListeners(), notifications);
            }
            catch (InterruptedException e) {
                Tracing.catching(TransactionalEditingDomainImpl.class, "precommit", e);
                Status status = new Status(4, EMFTransactionPlugin.getPluginId(), 42, Messages.precommitInterrupted, (Throwable)e);
                EMFTransactionPlugin.INSTANCE.log(status);
                RollbackException exc = new RollbackException((IStatus)status);
                Tracing.throwing(TransactionalEditingDomainImpl.class, "precommit", exc);
                throw exc;
            }
        }
    }

    protected void postcommit(final InternalTransaction tx) {
        List<Notification> notifications;
        if (Tracing.shouldTrace(EMFTransactionDebugOptions.TRANSACTIONS)) {
            Tracing.trace(">>> Postcommitting " + TransactionalEditingDomainImpl.getDebugID(tx) + " at " + Tracing.now());
        }
        if ((notifications = this.validator.getNotificationsForPostcommit(tx)) == null || notifications.isEmpty()) {
            return;
        }
        final ArrayList cache = new ArrayList(notifications.size());
        this.validator.dispose();
        final ResourceSetListener[] listeners = this.getPostcommitListeners();
        try {
            this.runExclusive(new Runnable(){

                public void run() {
                    ResourceSetListener[] resourceSetListenerArray = listeners;
                    int n = listeners.length;
                    int n2 = 0;
                    while (n2 < n) {
                        ResourceSetListener element = resourceSetListenerArray[n2];
                        try {
                            List<Notification> filtered = FilterManager.getInstance().select(notifications, element.getFilter(), cache);
                            if (!filtered.isEmpty()) {
                                element.resourceSetChanged(new ResourceSetChangeEvent(TransactionalEditingDomainImpl.this, tx, filtered));
                            }
                        }
                        catch (Exception e) {
                            Tracing.catching(TransactionalEditingDomainImpl.class, "postcommit", e);
                            Status status = new Status(4, EMFTransactionPlugin.getPluginId(), 45, Messages.postcommitFailed, (Throwable)e);
                            EMFTransactionPlugin.INSTANCE.log(status);
                        }
                        ++n2;
                    }
                }
            });
        }
        catch (InterruptedException e) {
            Tracing.catching(TransactionalEditingDomainImpl.class, "postcommit", e);
            Status status = new Status(4, EMFTransactionPlugin.getPluginId(), 44, Messages.postcommitInterrupted, (Throwable)e);
            EMFTransactionPlugin.INSTANCE.log(status);
        }
    }

    @Override
    public void broadcastUnbatched(Notification notification) {
        final ResourceSetListener[] listeners = this.getPostcommitListeners();
        this.unbatchedNotifications.add(notification);
        try {
            try {
                this.runExclusive(new Runnable(){

                    public void run() {
                        ResourceSetListener[] resourceSetListenerArray = listeners;
                        int n = listeners.length;
                        int n2 = 0;
                        while (n2 < n) {
                            ResourceSetListener element = resourceSetListenerArray[n2];
                            try {
                                List<Notification> filtered = FilterManager.getInstance().selectUnbatched(TransactionalEditingDomainImpl.this.unbatchedNotifications, element.getFilter());
                                if (!filtered.isEmpty()) {
                                    element.resourceSetChanged(TransactionalEditingDomainImpl.this.unbatchedChangeEvent);
                                }
                            }
                            catch (Exception e) {
                                Tracing.catching(TransactionalEditingDomainImpl.class, "broadcastUnbatched", e);
                                Status status = new Status(4, EMFTransactionPlugin.getPluginId(), 45, Messages.postcommitFailed, (Throwable)e);
                                EMFTransactionPlugin.INSTANCE.log(status);
                            }
                            ++n2;
                        }
                    }
                });
            }
            catch (InterruptedException e) {
                Tracing.catching(TransactionalEditingDomainImpl.class, "broadcastUnbatched", e);
                Status status = new Status(4, EMFTransactionPlugin.getPluginId(), 44, Messages.postcommitInterrupted, (Throwable)e);
                EMFTransactionPlugin.INSTANCE.log(status);
                this.unbatchedNotifications.remove(0);
            }
        }
        finally {
            this.unbatchedNotifications.remove(0);
        }
    }

    public final RunnableWithResult<Object> createPrivilegedRunnable(Runnable runnable) {
        InternalTransaction tx = this.getActiveTransaction();
        if (tx == null || tx.getOwner() != Thread.currentThread()) {
            throw new IllegalStateException("active transaction not owned by caller");
        }
        return new PrivilegedRunnable<Object>(tx, runnable);
    }

    @Override
    public void startPrivileged(PrivilegedRunnable<?> runnable) {
        if (runnable.getTransaction().getEditingDomain() != this) {
            throw new IllegalArgumentException("runnable has no privileges on this editing domain");
        }
        Thread current = Thread.currentThread();
        this.transactionLock.checkedTransfer(current);
        this.writeLock.checkedTransfer(current);
    }

    @Override
    public void endPrivileged(PrivilegedRunnable<?> runnable) {
        if (runnable.getTransaction().getEditingDomain() != this) {
            throw new IllegalArgumentException("runnable has no privileges on this editing domain");
        }
        Thread owner = runnable.getOwner();
        this.transactionLock.checkedTransfer(owner);
        this.writeLock.checkedTransfer(owner);
    }

    @Override
    public void dispose() {
        if (!this.disposed) {
            if (this.getID() != null) {
                EditingDomainManager.getInstance().assertDynamicallyRegistered(this.getID());
            }
            this.disposed = true;
            this.getLifecycle().fireLifecycleEvent(32, null);
            HashSet<ResourceSetListener> rsetListeners = new HashSet<ResourceSetListener>();
            rsetListeners.addAll(this.aggregatePrecommitListeners);
            rsetListeners.addAll(this.precommitListeners);
            rsetListeners.addAll(this.postcommitListeners);
            for (ResourceSetListener next : rsetListeners) {
                if (!(next instanceof ResourceSetListener.Internal)) continue;
                ((ResourceSetListener.Internal)next).unsetTarget(this);
            }
            this.aggregatePrecommitListeners.clear();
            this.precommitListeners.clear();
            this.postcommitListeners.clear();
            this.getLifecycle().dispose();
            this.setID(null);
            this.activeTransaction = null;
            this.recorder.dispose();
            this.recorder = null;
            this.validator = null;
            this.getTransactionalCommandStack().dispose();
            this.commandStack = null;
            ((FactoryImpl)TransactionalEditingDomain.Factory.INSTANCE).unmapResourceSet(this);
        }
    }

    @Override
    public Map<Object, Object> getUndoRedoOptions() {
        return this.undoRedoOptions;
    }

    @Override
    public <T> T getAdapter(Class<? extends T> adapterType) {
        Object result = adapterType == Transaction.OptionMetadata.Registry.class ? this.getOptionMetadata() : (adapterType == TransactionalEditingDomain.DefaultOptions.class ? this : (adapterType == TransactionalEditingDomain.Lifecycle.class ? this.getLifecycle() : (adapterType == InternalLifecycle.class ? this.getLifecycle() : null)));
        return (T)result;
    }

    @Override
    public Map<?, ?> getDefaultTransactionOptions() {
        return this.defaultTransactionOptionsRO;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void setDefaultTransactionOptions(Map<?, ?> options) {
        Map<Object, Object> map = this.defaultTransactionOptions;
        synchronized (map) {
            this.defaultTransactionOptions.clear();
            this.defaultTransactionOptions.putAll(options);
        }
    }

    public void setValidatorFactory(TransactionValidator.Factory validatorFactory) {
        this.validatorFactory = validatorFactory;
    }

    public TransactionValidator.Factory getValidatorFactory() {
        if (this.validatorFactory == null) {
            return TransactionValidator.Factory.INSTANCE;
        }
        return this.validatorFactory;
    }

    protected final synchronized LifecycleImpl getLifecycle() {
        if (this.lifecycle == null) {
            this.lifecycle = this.createLifecycle();
        }
        return this.lifecycle;
    }

    protected LifecycleImpl createLifecycle() {
        return new LifecycleImpl();
    }

    protected final synchronized Transaction.OptionMetadata.Registry getOptionMetadata() {
        if (this.optionMetadata == null) {
            this.optionMetadata = this.createOptionMetadataRegistry();
        }
        return this.optionMetadata;
    }

    protected Transaction.OptionMetadata.Registry createOptionMetadataRegistry() {
        return new BasicTransactionOptionMetadataRegistry();
    }

    public static class FactoryImpl
    implements TransactionalEditingDomain.Factory {
        public synchronized TransactionalEditingDomain createEditingDomain() {
            TransactionalEditingDomainImpl result = new TransactionalEditingDomainImpl((AdapterFactory)new ComposedAdapterFactory(ComposedAdapterFactory.Descriptor.Registry.INSTANCE));
            this.mapResourceSet(result);
            return result;
        }

        public synchronized TransactionalEditingDomain createEditingDomain(ResourceSet rset) {
            TransactionalEditingDomainImpl result = new TransactionalEditingDomainImpl((AdapterFactory)new ComposedAdapterFactory(ComposedAdapterFactory.Descriptor.Registry.INSTANCE), rset);
            this.mapResourceSet(result);
            return result;
        }

        public TransactionalEditingDomain getEditingDomain(ResourceSet rset) {
            TransactionalEditingDomain result = null;
            ResourceSetDomainLink link = (ResourceSetDomainLink)EcoreUtil.getAdapter((List)rset.eAdapters(), ResourceSetDomainLink.class);
            if (link != null) {
                result = link.getDomain();
            }
            return result;
        }

        public synchronized void mapResourceSet(TransactionalEditingDomain domain) {
            domain.getResourceSet().eAdapters().add((Object)new ResourceSetDomainLink(domain));
        }

        public synchronized void unmapResourceSet(TransactionalEditingDomain domain) {
            Iterator iter = domain.getResourceSet().eAdapters().iterator();
            while (iter.hasNext()) {
                Adapter next = (Adapter)iter.next();
                if (!next.isAdapterForType(ResourceSetDomainLink.class)) continue;
                iter.remove();
            }
        }

        private static class ResourceSetDomainLink
        extends AdapterImpl
        implements IEditingDomainProvider {
            private final Reference<TransactionalEditingDomain> domain;

            ResourceSetDomainLink(TransactionalEditingDomain domain) {
                this.domain = new WeakReference<TransactionalEditingDomain>(domain);
            }

            public boolean isAdapterForType(Object type) {
                return type == ResourceSetDomainLink.class || type == IEditingDomainProvider.class;
            }

            final TransactionalEditingDomain getDomain() {
                TransactionalEditingDomain result = this.domain.get();
                if (result == null) {
                    this.getTarget().eAdapters().remove((Object)this);
                }
                return result;
            }

            public final EditingDomain getEditingDomain() {
                return this.getDomain();
            }
        }
    }

    protected final class LifecycleImpl
    implements InternalLifecycle {
        private final List<TransactionalEditingDomainListener> lifecycleListeners = new ArrayList<TransactionalEditingDomainListener>();

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void addTransactionalEditingDomainListener(TransactionalEditingDomainListener l) {
            List<TransactionalEditingDomainListener> list = this.lifecycleListeners;
            synchronized (list) {
                if (!this.lifecycleListeners.contains(l)) {
                    this.lifecycleListeners.add(l);
                }
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void removeTransactionalEditingDomainListener(TransactionalEditingDomainListener l) {
            List<TransactionalEditingDomainListener> list = this.lifecycleListeners;
            synchronized (list) {
                this.lifecycleListeners.remove(l);
            }
        }

        public void dispose() {
            this.lifecycleListeners.clear();
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        protected final TransactionalEditingDomainListener[] getLifecycleListeners() {
            List<TransactionalEditingDomainListener> list = this.lifecycleListeners;
            synchronized (list) {
                return this.lifecycleListeners.toArray(new TransactionalEditingDomainListener[this.lifecycleListeners.size()]);
            }
        }

        protected void fireLifecycleEvent(int type, Transaction transaction) {
            if (this.lifecycleListeners.isEmpty()) {
                return;
            }
            TransactionalEditingDomainEvent event = new TransactionalEditingDomainEvent(TransactionalEditingDomainImpl.this, type, transaction);
            TransactionalEditingDomainListener[] transactionalEditingDomainListenerArray = this.getLifecycleListeners();
            int n = transactionalEditingDomainListenerArray.length;
            int n2 = 0;
            while (n2 < n) {
                TransactionalEditingDomainListener next = transactionalEditingDomainListenerArray[n2];
                try {
                    switch (type) {
                        case 1: {
                            next.transactionStarting(event);
                            break;
                        }
                        case 2: {
                            next.transactionInterrupted(event);
                            break;
                        }
                        case 4: {
                            next.transactionStarted(event);
                            break;
                        }
                        case 8: {
                            next.transactionClosing(event);
                            break;
                        }
                        case 16: {
                            next.transactionClosed(event);
                            break;
                        }
                        case 32: {
                            next.editingDomainDisposing(event);
                        }
                    }
                }
                catch (Exception e) {
                    Tracing.catching(TransactionalEditingDomainImpl.class, "fireLifecycleEvent", e);
                    EMFTransactionPlugin.getPlugin().getLog().log((IStatus)new Status(4, EMFTransactionPlugin.getPluginId(), Messages.lifecycleListener, (Throwable)e));
                }
                ++n2;
            }
        }

        public void transactionClosed(InternalTransaction transaction) {
            this.fireLifecycleEvent(16, transaction);
        }

        public void transactionClosing(InternalTransaction transaction) {
            this.fireLifecycleEvent(8, transaction);
        }

        public void transactionInterrupted(InternalTransaction transaction) {
            this.fireLifecycleEvent(2, transaction);
        }

        public void transactionStarted(InternalTransaction transaction) {
            this.fireLifecycleEvent(4, transaction);
        }

        public void transactionStarting(InternalTransaction transaction) {
            this.fireLifecycleEvent(1, transaction);
        }
    }

    public static final class RegistryImpl
    implements TransactionalEditingDomain.Registry {
        private final Map<String, TransactionalEditingDomain> domains = new HashMap<String, TransactionalEditingDomain>();

        public synchronized TransactionalEditingDomain getEditingDomain(String id) {
            TransactionalEditingDomain result = this.domains.get(id);
            if (result == null && (result = EditingDomainManager.getInstance().createEditingDomain(id)) != null) {
                this.addImpl(id, result);
            }
            return result;
        }

        public synchronized void add(String id, TransactionalEditingDomain domain) {
            this.remove(id);
            this.addImpl(id, domain);
        }

        void addImpl(String id, TransactionalEditingDomain domain) {
            if (!id.equals(domain.getID())) {
                domain.setID(id);
            }
            this.domains.put(id, domain);
            EditingDomainManager.getInstance().configureListeners(id, domain);
        }

        public synchronized TransactionalEditingDomain remove(String id) {
            EditingDomainManager.getInstance().assertDynamicallyRegistered(id);
            TransactionalEditingDomain result = this.domains.remove(id);
            if (result != null) {
                EditingDomainManager.getInstance().deconfigureListeners(id, result);
            }
            return result;
        }
    }

    public static class ValidatorFactoryImpl
    implements TransactionValidator.Factory {
        public TransactionValidator createReadOnlyValidator() {
            return new ReadOnlyValidatorImpl();
        }

        public TransactionValidator createReadWriteValidator() {
            return new ReadWriteValidatorImpl();
        }
    }
}

