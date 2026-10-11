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
package autosar21.system.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.CommunicationMatrixInstance;
import autosar21.system.SystemCommunication;
import autosar21.system.SystemPackage;
import autosar21.system.communication.CommunicationMatrixType;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class CommunicationMatrixInstanceImpl
extends IdentifiableImpl
implements CommunicationMatrixInstance,
IReferringClass {
    protected CommunicationMatrixType communicationMatrixType;

    protected CommunicationMatrixInstanceImpl() {
    }

    protected EClass eStaticClass() {
        return SystemPackage.Literals.COMMUNICATION_MATRIX_INSTANCE;
    }

    public SystemCommunication getSystemCommunication() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (SystemCommunication)this.eContainer();
    }

    public NotificationChain basicSetSystemCommunication(SystemCommunication newSystemCommunication, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSystemCommunication, 16, msgs);
        return msgs;
    }

    public void setSystemCommunication(SystemCommunication newSystemCommunication) {
        if (newSystemCommunication != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newSystemCommunication != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSystemCommunication)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSystemCommunication != null) {
                msgs = ((InternalEObject)newSystemCommunication).eInverseAdd((InternalEObject)this, 5, SystemCommunication.class, msgs);
            }
            if ((msgs = this.basicSetSystemCommunication(newSystemCommunication, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newSystemCommunication, (Object)newSystemCommunication));
        }
    }

    public CommunicationMatrixType getCommunicationMatrixType() {
        if (this.communicationMatrixType != null && this.communicationMatrixType.eIsProxy()) {
            InternalEObject oldCommunicationMatrixType = (InternalEObject)this.communicationMatrixType;
            this.communicationMatrixType = (CommunicationMatrixType)this.eResolveProxy(oldCommunicationMatrixType);
            if (this.communicationMatrixType != oldCommunicationMatrixType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 17, (Object)oldCommunicationMatrixType, (Object)this.communicationMatrixType));
            }
        }
        return this.communicationMatrixType;
    }

    public CommunicationMatrixType basicGetCommunicationMatrixType() {
        return this.communicationMatrixType;
    }

    public void setCommunicationMatrixType(CommunicationMatrixType newCommunicationMatrixType) {
        CommunicationMatrixType oldCommunicationMatrixType = this.communicationMatrixType;
        this.communicationMatrixType = newCommunicationMatrixType;
        AutosarObjectUtil.setDest((EObject)this, (int)17, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldCommunicationMatrixType, (Object)this.communicationMatrixType));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSystemCommunication((SystemCommunication)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetSystemCommunication(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, SystemCommunication.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getSystemCommunication();
            }
            case 17: {
                if (resolve) {
                    return this.getCommunicationMatrixType();
                }
                return this.basicGetCommunicationMatrixType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setSystemCommunication((SystemCommunication)newValue);
                return;
            }
            case 17: {
                this.setCommunicationMatrixType((CommunicationMatrixType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setSystemCommunication(null);
                return;
            }
            case 17: {
                this.setCommunicationMatrixType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getSystemCommunication() != null;
            }
            case 17: {
                return this.communicationMatrixType != null;
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

