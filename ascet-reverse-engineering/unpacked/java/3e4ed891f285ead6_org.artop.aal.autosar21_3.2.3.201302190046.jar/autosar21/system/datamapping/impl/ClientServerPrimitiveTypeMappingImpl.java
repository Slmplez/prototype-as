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
package autosar21.system.datamapping.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.datamapping.ClientServerPrimitiveTypeMapping;
import autosar21.system.datamapping.ClientServerToSignalGroupMapping;
import autosar21.system.datamapping.DatamappingPackage;
import autosar21.system.datamapping.instanceref.ClientServerPrimitiveTypeMappingArgument;
import autosar21.system.systemsignal.SystemSignal;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ClientServerPrimitiveTypeMappingImpl
extends ARObjectImpl
implements ClientServerPrimitiveTypeMapping,
IReferringClass {
    protected ClientServerPrimitiveTypeMappingArgument argument;
    protected SystemSignal systemSignal;

    protected ClientServerPrimitiveTypeMappingImpl() {
    }

    protected EClass eStaticClass() {
        return DatamappingPackage.Literals.CLIENT_SERVER_PRIMITIVE_TYPE_MAPPING;
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
                msgs = ((InternalEObject)newClientServerToSignalGroupMapping).eInverseAdd((InternalEObject)this, 10, ClientServerToSignalGroupMapping.class, msgs);
            }
            if ((msgs = this.basicSetClientServerToSignalGroupMapping(newClientServerToSignalGroupMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newClientServerToSignalGroupMapping, (Object)newClientServerToSignalGroupMapping));
        }
    }

    public ClientServerPrimitiveTypeMappingArgument getArgument() {
        return this.argument;
    }

    public NotificationChain basicSetArgument(ClientServerPrimitiveTypeMappingArgument newArgument, NotificationChain msgs) {
        ClientServerPrimitiveTypeMappingArgument oldArgument = this.argument;
        this.argument = newArgument;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldArgument, (Object)newArgument);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setArgument(ClientServerPrimitiveTypeMappingArgument newArgument) {
        if (newArgument != this.argument) {
            NotificationChain msgs = null;
            if (this.argument != null) {
                msgs = ((InternalEObject)this.argument).eInverseRemove((InternalEObject)this, 4, ClientServerPrimitiveTypeMappingArgument.class, msgs);
            }
            if (newArgument != null) {
                msgs = ((InternalEObject)newArgument).eInverseAdd((InternalEObject)this, 4, ClientServerPrimitiveTypeMappingArgument.class, msgs);
            }
            if ((msgs = this.basicSetArgument(newArgument, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newArgument, (Object)newArgument));
        }
    }

    public SystemSignal getSystemSignal() {
        if (this.systemSignal != null && this.systemSignal.eIsProxy()) {
            InternalEObject oldSystemSignal = (InternalEObject)this.systemSignal;
            this.systemSignal = (SystemSignal)this.eResolveProxy(oldSystemSignal);
            if (this.systemSignal != oldSystemSignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldSystemSignal, (Object)this.systemSignal));
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
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSystemSignal, (Object)this.systemSignal));
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
            case 5: {
                if (this.argument != null) {
                    msgs = ((InternalEObject)this.argument).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetArgument((ClientServerPrimitiveTypeMappingArgument)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetClientServerToSignalGroupMapping(null, msgs);
            }
            case 5: {
                return this.basicSetArgument(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 10, ClientServerToSignalGroupMapping.class, msgs);
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
                return this.getArgument();
            }
            case 6: {
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
                this.setArgument((ClientServerPrimitiveTypeMappingArgument)newValue);
                return;
            }
            case 6: {
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
                this.setArgument(null);
                return;
            }
            case 6: {
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
                return this.argument != null;
            }
            case 6: {
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

