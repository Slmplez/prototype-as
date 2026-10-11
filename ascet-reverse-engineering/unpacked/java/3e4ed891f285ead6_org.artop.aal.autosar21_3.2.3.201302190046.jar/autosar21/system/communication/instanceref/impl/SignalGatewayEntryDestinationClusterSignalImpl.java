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
package autosar21.system.communication.instanceref.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.CommunicationMatrixInstance;
import autosar21.system.communication.SignalGatewayEntry;
import autosar21.system.communication.instanceref.InstancerefPackage;
import autosar21.system.communication.instanceref.SignalGatewayEntryDestinationClusterSignal;
import autosar21.system.systemsignal.ClusterSignal;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SignalGatewayEntryDestinationClusterSignalImpl
extends ARObjectImpl
implements SignalGatewayEntryDestinationClusterSignal,
IReferringClass {
    protected CommunicationMatrixInstance communicationMatrix;
    protected ClusterSignal destinationClusterSignal;

    protected SignalGatewayEntryDestinationClusterSignalImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.SIGNAL_GATEWAY_ENTRY_DESTINATION_CLUSTER_SIGNAL;
    }

    public SignalGatewayEntry getSignalGatewayEntry() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SignalGatewayEntry)this.eContainer();
    }

    public NotificationChain basicSetSignalGatewayEntry(SignalGatewayEntry newSignalGatewayEntry, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSignalGatewayEntry, 4, msgs);
        return msgs;
    }

    public void setSignalGatewayEntry(SignalGatewayEntry newSignalGatewayEntry) {
        if (newSignalGatewayEntry != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSignalGatewayEntry != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSignalGatewayEntry)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSignalGatewayEntry != null) {
                msgs = ((InternalEObject)newSignalGatewayEntry).eInverseAdd((InternalEObject)this, 7, SignalGatewayEntry.class, msgs);
            }
            if ((msgs = this.basicSetSignalGatewayEntry(newSignalGatewayEntry, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSignalGatewayEntry, (Object)newSignalGatewayEntry));
        }
    }

    public CommunicationMatrixInstance getCommunicationMatrix() {
        if (this.communicationMatrix != null && this.communicationMatrix.eIsProxy()) {
            InternalEObject oldCommunicationMatrix = (InternalEObject)this.communicationMatrix;
            this.communicationMatrix = (CommunicationMatrixInstance)this.eResolveProxy(oldCommunicationMatrix);
            if (this.communicationMatrix != oldCommunicationMatrix && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldCommunicationMatrix, (Object)this.communicationMatrix));
            }
        }
        return this.communicationMatrix;
    }

    public CommunicationMatrixInstance basicGetCommunicationMatrix() {
        return this.communicationMatrix;
    }

    public void setCommunicationMatrix(CommunicationMatrixInstance newCommunicationMatrix) {
        CommunicationMatrixInstance oldCommunicationMatrix = this.communicationMatrix;
        this.communicationMatrix = newCommunicationMatrix;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCommunicationMatrix, (Object)this.communicationMatrix));
        }
    }

    public ClusterSignal getDestinationClusterSignal() {
        if (this.destinationClusterSignal != null && this.destinationClusterSignal.eIsProxy()) {
            InternalEObject oldDestinationClusterSignal = (InternalEObject)this.destinationClusterSignal;
            this.destinationClusterSignal = (ClusterSignal)this.eResolveProxy(oldDestinationClusterSignal);
            if (this.destinationClusterSignal != oldDestinationClusterSignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldDestinationClusterSignal, (Object)this.destinationClusterSignal));
            }
        }
        return this.destinationClusterSignal;
    }

    public ClusterSignal basicGetDestinationClusterSignal() {
        return this.destinationClusterSignal;
    }

    public void setDestinationClusterSignal(ClusterSignal newDestinationClusterSignal) {
        ClusterSignal oldDestinationClusterSignal = this.destinationClusterSignal;
        this.destinationClusterSignal = newDestinationClusterSignal;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDestinationClusterSignal, (Object)this.destinationClusterSignal));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSignalGatewayEntry((SignalGatewayEntry)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSignalGatewayEntry(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 7, SignalGatewayEntry.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSignalGatewayEntry();
            }
            case 5: {
                if (resolve) {
                    return this.getCommunicationMatrix();
                }
                return this.basicGetCommunicationMatrix();
            }
            case 6: {
                if (resolve) {
                    return this.getDestinationClusterSignal();
                }
                return this.basicGetDestinationClusterSignal();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSignalGatewayEntry((SignalGatewayEntry)newValue);
                return;
            }
            case 5: {
                this.setCommunicationMatrix((CommunicationMatrixInstance)newValue);
                return;
            }
            case 6: {
                this.setDestinationClusterSignal((ClusterSignal)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSignalGatewayEntry(null);
                return;
            }
            case 5: {
                this.setCommunicationMatrix(null);
                return;
            }
            case 6: {
                this.setDestinationClusterSignal(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSignalGatewayEntry() != null;
            }
            case 5: {
                return this.communicationMatrix != null;
            }
            case 6: {
                return this.destinationClusterSignal != null;
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

