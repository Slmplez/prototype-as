/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.Topic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryResultTopic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryTopic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrqueryPackage;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MsrQueryResultTopic1Impl
extends ARObjectImpl
implements MsrQueryResultTopic1 {
    protected EList<Topic1> topic1s;

    protected MsrQueryResultTopic1Impl() {
    }

    @Override
    protected EClass eStaticClass() {
        return MsrqueryPackage.Literals.MSR_QUERY_RESULT_TOPIC1;
    }

    @Override
    public MsrQueryTopic1 getMsrQueryTopic1() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (MsrQueryTopic1)this.eContainer();
    }

    public NotificationChain basicSetMsrQueryTopic1(MsrQueryTopic1 newMsrQueryTopic1, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newMsrQueryTopic1, 4, msgs);
        return msgs;
    }

    @Override
    public void setMsrQueryTopic1(MsrQueryTopic1 newMsrQueryTopic1) {
        if (newMsrQueryTopic1 != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newMsrQueryTopic1 != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newMsrQueryTopic1)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newMsrQueryTopic1 != null) {
                msgs = ((InternalEObject)newMsrQueryTopic1).eInverseAdd((InternalEObject)this, 10, MsrQueryTopic1.class, msgs);
            }
            if ((msgs = this.basicSetMsrQueryTopic1(newMsrQueryTopic1, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newMsrQueryTopic1, (Object)newMsrQueryTopic1));
        }
    }

    @Override
    public EList<Topic1> getTopic1s() {
        if (this.topic1s == null) {
            this.topic1s = new EObjectContainmentEList(Topic1.class, (InternalEObject)this, 5);
        }
        return this.topic1s;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetMsrQueryTopic1((MsrQueryTopic1)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetMsrQueryTopic1(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getTopic1s()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 10, MsrQueryTopic1.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMsrQueryTopic1();
            }
            case 5: {
                return this.getTopic1s();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setMsrQueryTopic1((MsrQueryTopic1)newValue);
                return;
            }
            case 5: {
                this.getTopic1s().clear();
                this.getTopic1s().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setMsrQueryTopic1(null);
                return;
            }
            case 5: {
                this.getTopic1s().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getMsrQueryTopic1() != null;
            }
            case 5: {
                return this.topic1s != null && !this.topic1s.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

