/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.communicationprotocol.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar21.system.communicationprotocol.CommProtocolElement;
import autosar21.system.communicationprotocol.CommProtocolType;
import autosar21.system.communicationprotocol.CommunicationprotocolPackage;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CommProtocolTypeImpl
extends ARElementImpl
implements CommProtocolType {
    protected EList<CommProtocolElement> protocolElements;

    protected CommProtocolTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationprotocolPackage.Literals.COMM_PROTOCOL_TYPE;
    }

    @Override
    public EList<CommProtocolElement> getProtocolElements() {
        if (this.protocolElements == null) {
            this.protocolElements = new EObjectContainmentWithInverseEList(CommProtocolElement.class, (InternalEObject)this, 18, 16);
        }
        return this.protocolElements;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return ((InternalEList)this.getProtocolElements()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return ((InternalEList)this.getProtocolElements()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getProtocolElements();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.getProtocolElements().clear();
                this.getProtocolElements().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.getProtocolElements().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.protocolElements != null && !this.protocolElements.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

