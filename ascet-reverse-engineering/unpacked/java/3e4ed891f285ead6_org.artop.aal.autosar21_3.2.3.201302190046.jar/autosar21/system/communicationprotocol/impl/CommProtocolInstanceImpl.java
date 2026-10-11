/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.communicationprotocol.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.SystemCommunication;
import autosar21.system.communicationprotocol.CommProtocolFrameRole;
import autosar21.system.communicationprotocol.CommProtocolInstance;
import autosar21.system.communicationprotocol.CommProtocolSignalGroupRole;
import autosar21.system.communicationprotocol.CommProtocolSignalRole;
import autosar21.system.communicationprotocol.CommProtocolType;
import autosar21.system.communicationprotocol.CommunicationprotocolPackage;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CommProtocolInstanceImpl
extends IdentifiableImpl
implements CommProtocolInstance,
IReferringClass {
    protected EList<CommProtocolFrameRole> protocolFrames;
    protected EList<CommProtocolSignalRole> protocolSignals;
    protected EList<CommProtocolSignalGroupRole> protocolSignalGroups;
    protected CommProtocolType protocolType;

    protected CommProtocolInstanceImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationprotocolPackage.Literals.COMM_PROTOCOL_INSTANCE;
    }

    @Override
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

    @Override
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
                msgs = ((InternalEObject)newSystemCommunication).eInverseAdd((InternalEObject)this, 6, SystemCommunication.class, msgs);
            }
            if ((msgs = this.basicSetSystemCommunication(newSystemCommunication, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newSystemCommunication, (Object)newSystemCommunication));
        }
    }

    @Override
    public EList<CommProtocolFrameRole> getProtocolFrames() {
        if (this.protocolFrames == null) {
            this.protocolFrames = new EObjectContainmentWithInverseEList(CommProtocolFrameRole.class, (InternalEObject)this, 17, 16);
        }
        return this.protocolFrames;
    }

    @Override
    public EList<CommProtocolSignalRole> getProtocolSignals() {
        if (this.protocolSignals == null) {
            this.protocolSignals = new EObjectContainmentWithInverseEList(CommProtocolSignalRole.class, (InternalEObject)this, 18, 16);
        }
        return this.protocolSignals;
    }

    @Override
    public EList<CommProtocolSignalGroupRole> getProtocolSignalGroups() {
        if (this.protocolSignalGroups == null) {
            this.protocolSignalGroups = new EObjectContainmentWithInverseEList(CommProtocolSignalGroupRole.class, (InternalEObject)this, 19, 16);
        }
        return this.protocolSignalGroups;
    }

    @Override
    public CommProtocolType getProtocolType() {
        if (this.protocolType != null && this.protocolType.eIsProxy()) {
            InternalEObject oldProtocolType = (InternalEObject)this.protocolType;
            this.protocolType = (CommProtocolType)this.eResolveProxy(oldProtocolType);
            if (this.protocolType != oldProtocolType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldProtocolType, (Object)this.protocolType));
            }
        }
        return this.protocolType;
    }

    public CommProtocolType basicGetProtocolType() {
        return this.protocolType;
    }

    @Override
    public void setProtocolType(CommProtocolType newProtocolType) {
        CommProtocolType oldProtocolType = this.protocolType;
        this.protocolType = newProtocolType;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldProtocolType, (Object)this.protocolType));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSystemCommunication((SystemCommunication)otherEnd, msgs);
            }
            case 17: {
                return ((InternalEList)this.getProtocolFrames()).basicAdd((Object)otherEnd, msgs);
            }
            case 18: {
                return ((InternalEList)this.getProtocolSignals()).basicAdd((Object)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getProtocolSignalGroups()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetSystemCommunication(null, msgs);
            }
            case 17: {
                return ((InternalEList)this.getProtocolFrames()).basicRemove((Object)otherEnd, msgs);
            }
            case 18: {
                return ((InternalEList)this.getProtocolSignals()).basicRemove((Object)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getProtocolSignalGroups()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, SystemCommunication.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getSystemCommunication();
            }
            case 17: {
                return this.getProtocolFrames();
            }
            case 18: {
                return this.getProtocolSignals();
            }
            case 19: {
                return this.getProtocolSignalGroups();
            }
            case 20: {
                if (resolve) {
                    return this.getProtocolType();
                }
                return this.basicGetProtocolType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setSystemCommunication((SystemCommunication)newValue);
                return;
            }
            case 17: {
                this.getProtocolFrames().clear();
                this.getProtocolFrames().addAll((Collection)newValue);
                return;
            }
            case 18: {
                this.getProtocolSignals().clear();
                this.getProtocolSignals().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.getProtocolSignalGroups().clear();
                this.getProtocolSignalGroups().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.setProtocolType((CommProtocolType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setSystemCommunication(null);
                return;
            }
            case 17: {
                this.getProtocolFrames().clear();
                return;
            }
            case 18: {
                this.getProtocolSignals().clear();
                return;
            }
            case 19: {
                this.getProtocolSignalGroups().clear();
                return;
            }
            case 20: {
                this.setProtocolType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getSystemCommunication() != null;
            }
            case 17: {
                return this.protocolFrames != null && !this.protocolFrames.isEmpty();
            }
            case 18: {
                return this.protocolSignals != null && !this.protocolSignals.isEmpty();
            }
            case 19: {
                return this.protocolSignalGroups != null && !this.protocolSignalGroups.isEmpty();
            }
            case 20: {
                return this.protocolType != null;
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

