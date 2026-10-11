/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl.PaginateableImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicContent;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicContentOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryP1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryProps;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrqueryPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class MsrQueryP1Impl
extends PaginateableImpl
implements MsrQueryP1 {
    protected MsrQueryProps msrQueryProps;
    protected TopicContent msrQueryResultP1;

    protected MsrQueryP1Impl() {
    }

    protected EClass eStaticClass() {
        return MsrqueryPackage.Literals.MSR_QUERY_P1;
    }

    public TopicContentOrMsrQuery getTopicContentOrMsrQuery() {
        if (this.eContainerFeatureID() != 8) {
            return null;
        }
        return (TopicContentOrMsrQuery)this.eContainer();
    }

    public NotificationChain basicSetTopicContentOrMsrQuery(TopicContentOrMsrQuery newTopicContentOrMsrQuery, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTopicContentOrMsrQuery, 8, msgs);
        return msgs;
    }

    public void setTopicContentOrMsrQuery(TopicContentOrMsrQuery newTopicContentOrMsrQuery) {
        if (newTopicContentOrMsrQuery != this.eInternalContainer() || this.eContainerFeatureID() != 8 && newTopicContentOrMsrQuery != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTopicContentOrMsrQuery)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTopicContentOrMsrQuery != null) {
                msgs = ((InternalEObject)newTopicContentOrMsrQuery).eInverseAdd((InternalEObject)this, 4, TopicContentOrMsrQuery.class, msgs);
            }
            if ((msgs = this.basicSetTopicContentOrMsrQuery(newTopicContentOrMsrQuery, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newTopicContentOrMsrQuery, (Object)newTopicContentOrMsrQuery));
        }
    }

    public MsrQueryProps getMsrQueryProps() {
        return this.msrQueryProps;
    }

    public NotificationChain basicSetMsrQueryProps(MsrQueryProps newMsrQueryProps, NotificationChain msgs) {
        MsrQueryProps oldMsrQueryProps = this.msrQueryProps;
        this.msrQueryProps = newMsrQueryProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldMsrQueryProps, (Object)newMsrQueryProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMsrQueryProps(MsrQueryProps newMsrQueryProps) {
        if (newMsrQueryProps != this.msrQueryProps) {
            NotificationChain msgs = null;
            if (this.msrQueryProps != null) {
                msgs = ((InternalEObject)this.msrQueryProps).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newMsrQueryProps != null) {
                msgs = ((InternalEObject)newMsrQueryProps).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetMsrQueryProps(newMsrQueryProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newMsrQueryProps, (Object)newMsrQueryProps));
        }
    }

    public TopicContent getMsrQueryResultP1() {
        return this.msrQueryResultP1;
    }

    public NotificationChain basicSetMsrQueryResultP1(TopicContent newMsrQueryResultP1, NotificationChain msgs) {
        TopicContent oldMsrQueryResultP1 = this.msrQueryResultP1;
        this.msrQueryResultP1 = newMsrQueryResultP1;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldMsrQueryResultP1, (Object)newMsrQueryResultP1);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMsrQueryResultP1(TopicContent newMsrQueryResultP1) {
        if (newMsrQueryResultP1 != this.msrQueryResultP1) {
            NotificationChain msgs = null;
            if (this.msrQueryResultP1 != null) {
                msgs = ((InternalEObject)this.msrQueryResultP1).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newMsrQueryResultP1 != null) {
                msgs = ((InternalEObject)newMsrQueryResultP1).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetMsrQueryResultP1(newMsrQueryResultP1, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newMsrQueryResultP1, (Object)newMsrQueryResultP1));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTopicContentOrMsrQuery((TopicContentOrMsrQuery)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                return this.basicSetTopicContentOrMsrQuery(null, msgs);
            }
            case 9: {
                return this.basicSetMsrQueryProps(null, msgs);
            }
            case 10: {
                return this.basicSetMsrQueryResultP1(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 8: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, TopicContentOrMsrQuery.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getTopicContentOrMsrQuery();
            }
            case 9: {
                return this.getMsrQueryProps();
            }
            case 10: {
                return this.getMsrQueryResultP1();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setTopicContentOrMsrQuery((TopicContentOrMsrQuery)newValue);
                return;
            }
            case 9: {
                this.setMsrQueryProps((MsrQueryProps)newValue);
                return;
            }
            case 10: {
                this.setMsrQueryResultP1((TopicContent)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.setTopicContentOrMsrQuery(null);
                return;
            }
            case 9: {
                this.setMsrQueryProps(null);
                return;
            }
            case 10: {
                this.setMsrQueryResultP1(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.getTopicContentOrMsrQuery() != null;
            }
            case 9: {
                return this.msrQueryProps != null;
            }
            case 10: {
                return this.msrQueryResultP1 != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

