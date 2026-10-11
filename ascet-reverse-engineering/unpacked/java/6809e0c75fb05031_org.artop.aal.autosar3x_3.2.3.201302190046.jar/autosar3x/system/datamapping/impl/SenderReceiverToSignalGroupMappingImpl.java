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
 */
package autosar3x.system.datamapping.impl;

import autosar3x.system.datamapping.DatamappingPackage;
import autosar3x.system.datamapping.SenderRecCompositeTypeMapping;
import autosar3x.system.datamapping.SenderReceiverToSignalGroupMapping;
import autosar3x.system.datamapping.impl.DataMappingImpl;
import autosar3x.system.datamapping.instanceref.SenderReceiverToSignalGroupMappingDataElement;
import autosar3x.system.fibex.fibexcore.corecommunication.SystemSignalGroup;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SenderReceiverToSignalGroupMappingImpl
extends DataMappingImpl
implements SenderReceiverToSignalGroupMapping,
IReferringClass {
    protected SenderReceiverToSignalGroupMappingDataElement dataElement;
    protected SystemSignalGroup signalGroup;
    protected SenderRecCompositeTypeMapping typeMapping;

    protected SenderReceiverToSignalGroupMappingImpl() {
    }

    protected EClass eStaticClass() {
        return DatamappingPackage.Literals.SENDER_RECEIVER_TO_SIGNAL_GROUP_MAPPING;
    }

    public SenderReceiverToSignalGroupMappingDataElement getDataElement() {
        return this.dataElement;
    }

    public NotificationChain basicSetDataElement(SenderReceiverToSignalGroupMappingDataElement newDataElement, NotificationChain msgs) {
        SenderReceiverToSignalGroupMappingDataElement oldDataElement = this.dataElement;
        this.dataElement = newDataElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDataElement, (Object)newDataElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setDataElement(SenderReceiverToSignalGroupMappingDataElement newDataElement) {
        if (newDataElement != this.dataElement) {
            NotificationChain msgs = null;
            if (this.dataElement != null) {
                msgs = ((InternalEObject)this.dataElement).eInverseRemove((InternalEObject)this, 4, SenderReceiverToSignalGroupMappingDataElement.class, msgs);
            }
            if (newDataElement != null) {
                msgs = ((InternalEObject)newDataElement).eInverseAdd((InternalEObject)this, 4, SenderReceiverToSignalGroupMappingDataElement.class, msgs);
            }
            if ((msgs = this.basicSetDataElement(newDataElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newDataElement, (Object)newDataElement));
        }
    }

    public SystemSignalGroup getSignalGroup() {
        if (this.signalGroup != null && this.signalGroup.eIsProxy()) {
            InternalEObject oldSignalGroup = (InternalEObject)this.signalGroup;
            this.signalGroup = (SystemSignalGroup)this.eResolveProxy(oldSignalGroup);
            if (this.signalGroup != oldSignalGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldSignalGroup, (Object)this.signalGroup));
            }
        }
        return this.signalGroup;
    }

    public SystemSignalGroup basicGetSignalGroup() {
        return this.signalGroup;
    }

    public void setSignalGroup(SystemSignalGroup newSignalGroup) {
        SystemSignalGroup oldSignalGroup = this.signalGroup;
        this.signalGroup = newSignalGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSignalGroup, (Object)this.signalGroup));
        }
    }

    public SenderRecCompositeTypeMapping getTypeMapping() {
        return this.typeMapping;
    }

    public NotificationChain basicSetTypeMapping(SenderRecCompositeTypeMapping newTypeMapping, NotificationChain msgs) {
        SenderRecCompositeTypeMapping oldTypeMapping = this.typeMapping;
        this.typeMapping = newTypeMapping;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldTypeMapping, (Object)newTypeMapping);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setTypeMapping(SenderRecCompositeTypeMapping newTypeMapping) {
        if (newTypeMapping != this.typeMapping) {
            NotificationChain msgs = null;
            if (this.typeMapping != null) {
                msgs = ((InternalEObject)this.typeMapping).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newTypeMapping != null) {
                msgs = ((InternalEObject)newTypeMapping).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetTypeMapping(newTypeMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newTypeMapping, (Object)newTypeMapping));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.dataElement != null) {
                    msgs = ((InternalEObject)this.dataElement).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetDataElement((SenderReceiverToSignalGroupMappingDataElement)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetDataElement(null, msgs);
            }
            case 7: {
                return this.basicSetTypeMapping(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getDataElement();
            }
            case 6: {
                if (resolve) {
                    return this.getSignalGroup();
                }
                return this.basicGetSignalGroup();
            }
            case 7: {
                return this.getTypeMapping();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setDataElement((SenderReceiverToSignalGroupMappingDataElement)newValue);
                return;
            }
            case 6: {
                this.setSignalGroup((SystemSignalGroup)newValue);
                return;
            }
            case 7: {
                this.setTypeMapping((SenderRecCompositeTypeMapping)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setDataElement(null);
                return;
            }
            case 6: {
                this.setSignalGroup(null);
                return;
            }
            case 7: {
                this.setTypeMapping(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.dataElement != null;
            }
            case 6: {
                return this.signalGroup != null;
            }
            case 7: {
                return this.typeMapping != null;
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

