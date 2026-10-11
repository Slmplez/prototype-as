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
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar21.ecuresource.peripherals.impl;

import autosar21.ecuresource.peripherals.CommunicationPeripheral;
import autosar21.ecuresource.peripherals.CommunicationProtocol;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CommunicationProtocolImpl
extends IdentifiableImpl
implements CommunicationProtocol {
    protected EList<String> versions;

    protected CommunicationProtocolImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.COMMUNICATION_PROTOCOL;
    }

    @Override
    public CommunicationPeripheral getCommunicationPeripheral() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (CommunicationPeripheral)this.eContainer();
    }

    public NotificationChain basicSetCommunicationPeripheral(CommunicationPeripheral newCommunicationPeripheral, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommunicationPeripheral, 16, msgs);
        return msgs;
    }

    @Override
    public void setCommunicationPeripheral(CommunicationPeripheral newCommunicationPeripheral) {
        if (newCommunicationPeripheral != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newCommunicationPeripheral != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommunicationPeripheral)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommunicationPeripheral != null) {
                msgs = ((InternalEObject)newCommunicationPeripheral).eInverseAdd((InternalEObject)this, 32, CommunicationPeripheral.class, msgs);
            }
            if ((msgs = this.basicSetCommunicationPeripheral(newCommunicationPeripheral, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newCommunicationPeripheral, (Object)newCommunicationPeripheral));
        }
    }

    @Override
    public EList<String> getVersions() {
        if (this.versions == null) {
            this.versions = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 17);
        }
        return this.versions;
    }

    @Override
    public void unsetVersions() {
        if (this.versions != null) {
            ((InternalEList.Unsettable)this.versions).unset();
        }
    }

    @Override
    public boolean isSetVersions() {
        return this.versions != null && ((InternalEList.Unsettable)this.versions).isSet();
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCommunicationPeripheral((CommunicationPeripheral)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetCommunicationPeripheral(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 32, CommunicationPeripheral.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getCommunicationPeripheral();
            }
            case 17: {
                return this.getVersions();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setCommunicationPeripheral((CommunicationPeripheral)newValue);
                return;
            }
            case 17: {
                this.getVersions().clear();
                this.getVersions().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setCommunicationPeripheral(null);
                return;
            }
            case 17: {
                this.unsetVersions();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getCommunicationPeripheral() != null;
            }
            case 17: {
                return this.isSetVersions();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (versions: ");
        result.append(this.versions);
        result.append(')');
        return result.toString();
    }
}

