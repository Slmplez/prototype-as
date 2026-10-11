/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.emf.transaction.util;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.internal.EMFTransactionPlugin;
import org.eclipse.emf.transaction.internal.l10n.Messages;
import org.eclipse.osgi.util.NLS;

public interface ValidateEditSupport {
    public IStatus validateEdit(Transaction var1, Object var2);

    public void handleResourceChange(Resource var1, Notification var2);

    public void finalizeForRollback();

    public void finalizeForCommit();

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Default
    implements ValidateEditSupport {
        private final Set<Resource> resourcesToValidate = new HashSet<Resource>();

        protected final Set<Resource> getResourcesToValidate() {
            return this.resourcesToValidate;
        }

        @Override
        public IStatus validateEdit(Transaction transaction, Object context) {
            IStatus result = this.resourcesToValidate.isEmpty() ? Status.OK_STATUS : this.doValidateEdit(transaction, this.resourcesToValidate, context);
            return result;
        }

        protected IStatus doValidateEdit(Transaction transaction, Collection<? extends Resource> resources, Object context) {
            IStatus result = Status.OK_STATUS;
            TransactionalEditingDomain domain = transaction.getEditingDomain();
            Iterator<? extends Resource> iter = resources.iterator();
            while (result.isOK() && iter.hasNext()) {
                Resource next = iter.next();
                if (!domain.isReadOnly(next)) continue;
                result = new Status(4, EMFTransactionPlugin.getPluginId(), 30, NLS.bind((String)Messages.modifyReadOnlyResource, (Object)next.getURI().toString()), null);
            }
            return result;
        }

        @Override
        public void finalizeForRollback() {
            if (!this.resourcesToValidate.isEmpty()) {
                Resource[] resources;
                Resource[] resourceArray = resources = this.resourcesToValidate.toArray(new Resource[this.resourcesToValidate.size()]);
                int n = resources.length;
                int n2 = 0;
                while (n2 < n) {
                    Resource element = resourceArray[n2];
                    element.setModified(false);
                    this.resourcesToValidate.clear();
                    ++n2;
                }
            }
        }

        @Override
        public void finalizeForCommit() {
            this.resourcesToValidate.clear();
        }

        @Override
        public void handleResourceChange(Resource resource, Notification notification) {
            if (notification.getNotifier() == resource) {
                int featureID = notification.getFeatureID(Resource.class);
                if (featureID == 3) {
                    if (Boolean.TRUE.equals(notification.getNewValue())) {
                        this.resourcesToValidate.add(resource);
                    } else {
                        this.resourcesToValidate.remove(resource);
                    }
                } else if (featureID == 4 && Boolean.FALSE.equals(notification.getNewValue())) {
                    this.resourcesToValidate.remove(resource);
                }
            }
        }
    }
}

