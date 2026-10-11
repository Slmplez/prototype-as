/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.MultiplexedIPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.SignalIPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.StaticPart;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.MultiplexedPartImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class StaticPartImpl
extends MultiplexedPartImpl
implements StaticPart,
IReferringClass {
    protected SignalIPdu iPdu;

    protected StaticPartImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.STATIC_PART;
    }

    public MultiplexedIPdu getMultiplexedIPdu() {
        if (this.eContainerFeatureID() != 5) {
            return null;
        }
        return (MultiplexedIPdu)this.eContainer();
    }

    public NotificationChain basicSetMultiplexedIPdu(MultiplexedIPdu newMultiplexedIPdu, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newMultiplexedIPdu, 5, msgs);
        return msgs;
    }

    public void setMultiplexedIPdu(MultiplexedIPdu newMultiplexedIPdu) {
        if (newMultiplexedIPdu != this.eInternalContainer() || this.eContainerFeatureID() != 5 && newMultiplexedIPdu != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newMultiplexedIPdu)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newMultiplexedIPdu != null) {
                msgs = ((InternalEObject)newMultiplexedIPdu).eInverseAdd((InternalEObject)this, 25, MultiplexedIPdu.class, msgs);
            }
            if ((msgs = this.basicSetMultiplexedIPdu(newMultiplexedIPdu, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newMultiplexedIPdu, (Object)newMultiplexedIPdu));
        }
    }

    public SignalIPdu getIPdu() {
        if (this.iPdu != null && this.iPdu.eIsProxy()) {
            InternalEObject oldIPdu = (InternalEObject)this.iPdu;
            this.iPdu = (SignalIPdu)this.eResolveProxy(oldIPdu);
            if (this.iPdu != oldIPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldIPdu, (Object)this.iPdu));
            }
        }
        return this.iPdu;
    }

    public SignalIPdu basicGetIPdu() {
        return this.iPdu;
    }

    public void setIPdu(SignalIPdu newIPdu) {
        SignalIPdu oldIPdu = this.iPdu;
        this.iPdu = newIPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldIPdu, (Object)this.iPdu));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetMultiplexedIPdu((MultiplexedIPdu)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetMultiplexedIPdu(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 5: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 25, MultiplexedIPdu.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getMultiplexedIPdu();
            }
            case 6: {
                if (resolve) {
                    return this.getIPdu();
                }
                return this.basicGetIPdu();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setMultiplexedIPdu((MultiplexedIPdu)newValue);
                return;
            }
            case 6: {
                this.setIPdu((SignalIPdu)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setMultiplexedIPdu(null);
                return;
            }
            case 6: {
                this.setIPdu(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.getMultiplexedIPdu() != null;
            }
            case 6: {
                return this.iPdu != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }
}

