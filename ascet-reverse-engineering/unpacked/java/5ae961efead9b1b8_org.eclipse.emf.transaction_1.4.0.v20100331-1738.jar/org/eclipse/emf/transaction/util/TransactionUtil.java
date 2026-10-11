/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.change.ChangeDescription
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.edit.domain.EditingDomain
 *  org.eclipse.emf.edit.domain.IEditingDomainProvider
 */
package org.eclipse.emf.transaction.util;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.change.ChangeDescription;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.domain.IEditingDomainProvider;
import org.eclipse.emf.transaction.RunnableWithResult;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.InternalTransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.TransactionChangeRecorder;
import org.eclipse.emf.transaction.util.Adaptable;
import org.eclipse.emf.transaction.util.CommandChangeDescription;
import org.eclipse.emf.transaction.util.CompositeChangeDescription;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TransactionUtil {
    private TransactionUtil() {
    }

    public static TransactionalEditingDomain getEditingDomain(EObject eObject) {
        TransactionalEditingDomain result = null;
        Resource res = eObject.eResource();
        if (res != null) {
            result = TransactionUtil.getEditingDomain(res);
        }
        return result;
    }

    public static TransactionalEditingDomain getEditingDomain(Resource resource) {
        TransactionalEditingDomain result = null;
        ResourceSet rset = resource.getResourceSet();
        if (rset != null) {
            result = TransactionUtil.getEditingDomain(rset);
        }
        return result;
    }

    public static TransactionalEditingDomain getEditingDomain(ResourceSet rset) {
        return TransactionalEditingDomain.Factory.INSTANCE.getEditingDomain(rset);
    }

    public static TransactionalEditingDomain getEditingDomain(Object object) {
        EditingDomain domain;
        TransactionalEditingDomain result = null;
        if (object instanceof EObject) {
            result = TransactionUtil.getEditingDomain((EObject)object);
        } else if (object instanceof Resource) {
            result = TransactionUtil.getEditingDomain((Resource)object);
        } else if (object instanceof ResourceSet) {
            result = TransactionUtil.getEditingDomain((ResourceSet)object);
        } else if (object instanceof Transaction) {
            result = ((Transaction)object).getEditingDomain();
        } else if (object instanceof TransactionalEditingDomain) {
            result = (TransactionalEditingDomain)object;
        } else if (object instanceof IEditingDomainProvider && (domain = ((IEditingDomainProvider)object).getEditingDomain()) instanceof TransactionalEditingDomain) {
            result = (TransactionalEditingDomain)domain;
        }
        return result;
    }

    public static void disconnectFromEditingDomain(Resource resource) {
        TransactionUtil.disconnectFromEditingDomain0((Notifier)resource);
    }

    public static void disconnectFromEditingDomain(EObject eobject) {
        TransactionUtil.disconnectFromEditingDomain0((Notifier)eobject);
    }

    private static void disconnectFromEditingDomain0(Notifier notifier) {
        Set<TransactionChangeRecorder> recorders = TransactionUtil.getExistingChangeRecorders(notifier);
        if (!recorders.isEmpty()) {
            InternalTransactionalEditingDomain domain = (InternalTransactionalEditingDomain)TransactionUtil.getEditingDomain(notifier);
            if (domain != null && recorders.contains((Object)domain.getChangeRecorder())) {
                throw new IllegalArgumentException("resource is still in the domain's resource set");
            }
            TreeIterator iter = EcoreUtil.getAllProperContents(Collections.singleton(notifier), (boolean)false);
            while (iter.hasNext()) {
                ((Notifier)iter.next()).eAdapters().removeAll(recorders);
            }
        }
    }

    private static Set<TransactionChangeRecorder> getExistingChangeRecorders(Notifier notifier) {
        Object[] adapters;
        HashSet<TransactionChangeRecorder> result = null;
        Object[] objectArray = adapters = notifier.eAdapters().toArray();
        int n = adapters.length;
        int n2 = 0;
        while (n2 < n) {
            TransactionChangeRecorder next;
            Object element = objectArray[n2];
            if (element instanceof TransactionChangeRecorder && (next = (TransactionChangeRecorder)((Object)element)).getEditingDomain() != null) {
                if (result == null) {
                    result = new HashSet<TransactionChangeRecorder>();
                }
                result.add(next);
            }
            ++n2;
        }
        return result == null ? Collections.emptySet() : result;
    }

    public static void dispose(ChangeDescription change) {
        if (change instanceof CompositeChangeDescription) {
            ((CompositeChangeDescription)change).dispose();
        } else if (change instanceof CommandChangeDescription) {
            ((CommandChangeDescription)change).dispose();
        } else {
            TreeIterator iter = change.eAllContents();
            while (iter.hasNext()) {
                ((EObject)iter.next()).eAdapters().clear();
            }
        }
    }

    public static <T> T getAdapter(TransactionalEditingDomain domain, Class<? extends T> adapterType) {
        T result = domain instanceof Adaptable ? (T)((Adaptable)((Object)domain)).getAdapter(adapterType) : null;
        return result;
    }

    public static <T> T runExclusive(TransactionalEditingDomain domain, RunnableWithResult<? extends T> runnable) throws InterruptedException {
        return (T)domain.runExclusive(runnable);
    }

    public static <T> RunnableWithResult<T> createPrivilegedRunnable(TransactionalEditingDomain domain, RunnableWithResult<? extends T> runnable) throws InterruptedException {
        return domain.createPrivilegedRunnable(runnable);
    }

    public static Transaction.OptionMetadata.Registry getTransactionOptionRegistry(TransactionalEditingDomain domain) {
        Transaction.OptionMetadata.Registry result = TransactionUtil.getAdapter(domain, Transaction.OptionMetadata.Registry.class);
        if (result == null) {
            result = Transaction.OptionMetadata.Registry.INSTANCE;
        }
        return result;
    }
}

