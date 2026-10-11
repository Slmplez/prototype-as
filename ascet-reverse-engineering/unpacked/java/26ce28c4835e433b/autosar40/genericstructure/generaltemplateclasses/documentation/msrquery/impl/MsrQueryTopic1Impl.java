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
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryProps;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryResultTopic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryTopic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrqueryPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class MsrQueryTopic1Impl
extends PaginateableImpl
implements MsrQueryTopic1 {
    protected MsrQueryProps msrQueryProps;
    protected MsrQueryResultTopic1 msrQueryResultTopic1;

    protected MsrQueryTopic1Impl() {
    }

    protected EClass eStaticClass() {
        return MsrqueryPackage.Literals.MSR_QUERY_TOPIC1;
    }

    public TopicOrMsrQuery getTopicOrMsrQuery() {
        if (this.eContainerFeatureID() != 8) {
            return null;
        }
        return (TopicOrMsrQuery)this.eContainer();
    }

    public NotificationChain basicSetTopicOrMsrQuery(TopicOrMsrQuery newTopicOrMsrQuery, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTopicOrMsrQuery, 8, msgs);
        return msgs;
    }

    public void setTopicOrMsrQuery(TopicOrMsrQuery newTopicOrMsrQuery) {
        if (newTopicOrMsrQuery != this.eInternalContainer() || this.eContainerFeatureID() != 8 && newTopicOrMsrQuery != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTopicOrMsrQuery)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTopicOrMsrQuery != null) {
                msgs = ((InternalEObject)newTopicOrMsrQuery).eInverseAdd((InternalEObject)this, 6, TopicOrMsrQuery.class, msgs);
            }
            if ((msgs = this.basicSetTopicOrMsrQuery(newTopicOrMsrQuery, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newTopicOrMsrQuery, (Object)newTopicOrMsrQuery));
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

    public MsrQueryResultTopic1 getMsrQueryResultTopic1() {
        return this.msrQueryResultTopic1;
    }

    public NotificationChain basicSetMsrQueryResultTopic1(MsrQueryResultTopic1 newMsrQueryResultTopic1, NotificationChain msgs) {
        MsrQueryResultTopic1 oldMsrQueryResultTopic1 = this.msrQueryResultTopic1;
        this.msrQueryResultTopic1 = newMsrQueryResultTopic1;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldMsrQueryResultTopic1, (Object)newMsrQueryResultTopic1);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMsrQueryResultTopic1(MsrQueryResultTopic1 newMsrQueryResultTopic1) {
        if (newMsrQueryResultTopic1 != this.msrQueryResultTopic1) {
            NotificationChain msgs = null;
            if (this.msrQueryResultTopic1 != null) {
                msgs = ((InternalEObject)this.msrQueryResultTopic1).eInverseRemove((InternalEObject)this, 4, MsrQueryResultTopic1.class, msgs);
            }
            if (newMsrQueryResultTopic1 != null) {
                msgs = ((InternalEObject)newMsrQueryResultTopic1).eInverseAdd((InternalEObject)this, 4, MsrQueryResultTopic1.class, msgs);
            }
            if ((msgs = this.basicSetMsrQueryResultTopic1(newMsrQueryResultTopic1, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newMsrQueryResultTopic1, (Object)newMsrQueryResultTopic1));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTopicOrMsrQuery((TopicOrMsrQuery)otherEnd, msgs);
            }
            case 10: {
                if (this.msrQueryResultTopic1 != null) {
                    msgs = ((InternalEObject)this.msrQueryResultTopic1).eInverseRemove((InternalEObject)this, -11, null, msgs);
                }
                return this.basicSetMsrQueryResultTopic1((MsrQueryResultTopic1)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                return this.basicSetTopicOrMsrQuery(null, msgs);
            }
            case 9: {
                return this.basicSetMsrQueryProps(null, msgs);
            }
            case 10: {
                return this.basicSetMsrQueryResultTopic1(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 8: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, TopicOrMsrQuery.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getTopicOrMsrQuery();
            }
            case 9: {
                return this.getMsrQueryProps();
            }
            case 10: {
                return this.getMsrQueryResultTopic1();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setTopicOrMsrQuery((TopicOrMsrQuery)newValue);
                return;
            }
            case 9: {
                this.setMsrQueryProps((MsrQueryProps)newValue);
                return;
            }
            case 10: {
                this.setMsrQueryResultTopic1((MsrQueryResultTopic1)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.setTopicOrMsrQuery(null);
                return;
            }
            case 9: {
                this.setMsrQueryProps(null);
                return;
            }
            case 10: {
                this.setMsrQueryResultTopic1(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.getTopicOrMsrQuery() != null;
            }
            case 9: {
                return this.msrQueryProps != null;
            }
            case 10: {
                return this.msrQueryResultTopic1 != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

