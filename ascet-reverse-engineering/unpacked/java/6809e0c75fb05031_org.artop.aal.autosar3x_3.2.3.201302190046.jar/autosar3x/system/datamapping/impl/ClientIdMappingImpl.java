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
package autosar3x.system.datamapping.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.datamapping.ClientIdMapping;
import autosar3x.system.datamapping.ClientServerToSignalGroupMapping;
import autosar3x.system.datamapping.DatamappingPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.SystemSignal;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ClientIdMappingImpl
extends ARObjectImpl
implements ClientIdMapping,
IReferringClass {
    protected SystemSignal systemSignal;

    protected ClientIdMappingImpl() {
    }

    protected EClass eStaticClass() {
        return DatamappingPackage.Literals.CLIENT_ID_MAPPING;
    }

    public ClientServerToSignalGroupMapping getClientServerToSignalGroupMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ClientServerToSignalGroupMapping)this.eContainer();
    }

    public NotificationChain basicSetClientServerToSignalGroupMapping(ClientServerToSignalGroupMapping newClientServerToSignalGroupMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newClientServerToSignalGroupMapping, 4, msgs);
        return msgs;
    }

    public void setClientServerToSignalGroupMapping(ClientServerToSignalGroupMapping newClientServerToSignalGroupMapping) {
        if (newClientServerToSignalGroupMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newClientServerToSignalGroupMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newClientServerToSignalGroupMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newClientServerToSignalGroupMapping != null) {
                msgs = ((InternalEObject)newClientServerToSignalGroupMapping).eInverseAdd((InternalEObject)this, 6, ClientServerToSignalGroupMapping.class, msgs);
            }
            if ((msgs = this.basicSetClientServerToSignalGroupMapping(newClientServerToSignalGroupMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newClientServerToSignalGroupMapping, (Object)newClientServerToSignalGroupMapping));
        }
    }

    public SystemSignal getSystemSignal() {
        if (this.systemSignal != null && this.systemSignal.eIsProxy()) {
            InternalEObject oldSystemSignal = (InternalEObject)this.systemSignal;
            this.systemSignal = (SystemSignal)this.eResolveProxy(oldSystemSignal);
            if (this.systemSignal != oldSystemSignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldSystemSignal, (Object)this.systemSignal));
            }
        }
        return this.systemSignal;
    }

    public SystemSignal basicGetSystemSignal() {
        return this.systemSignal;
    }

    public void setSystemSignal(SystemSignal newSystemSignal) {
        SystemSignal oldSystemSignal = this.systemSignal;
        this.systemSignal = newSystemSignal;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSystemSignal, (Object)this.systemSignal));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetClientServerToSignalGroupMapping((ClientServerToSignalGroupMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetClientServerToSignalGroupMapping(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, ClientServerToSignalGroupMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getClientServerToSignalGroupMapping();
            }
            case 5: {
                if (resolve) {
                    return this.getSystemSignal();
                }
                return this.basicGetSystemSignal();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setClientServerToSignalGroupMapping((ClientServerToSignalGroupMapping)newValue);
                return;
            }
            case 5: {
                this.setSystemSignal((SystemSignal)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setClientServerToSignalGroupMapping(null);
                return;
            }
            case 5: {
                this.setSystemSignal(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getClientServerToSignalGroupMapping() != null;
            }
            case 5: {
                return this.systemSignal != null;
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

