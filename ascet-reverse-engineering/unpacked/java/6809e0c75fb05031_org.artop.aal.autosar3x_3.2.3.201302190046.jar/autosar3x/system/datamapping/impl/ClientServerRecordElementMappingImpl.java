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
import autosar3x.swcomponent.datatype.datatypes.RecordElement;
import autosar3x.system.datamapping.ClientServerCompositeTypeMapping;
import autosar3x.system.datamapping.ClientServerRecordElementMapping;
import autosar3x.system.datamapping.ClientServerRecordTypeMapping;
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

public class ClientServerRecordElementMappingImpl
extends ARObjectImpl
implements ClientServerRecordElementMapping,
IReferringClass {
    protected ClientServerCompositeTypeMapping complexTypeMapping;
    protected RecordElement recordElement;
    protected SystemSignal signal;

    protected ClientServerRecordElementMappingImpl() {
    }

    protected EClass eStaticClass() {
        return DatamappingPackage.Literals.CLIENT_SERVER_RECORD_ELEMENT_MAPPING;
    }

    public ClientServerRecordTypeMapping getClientServerRecordTypeMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ClientServerRecordTypeMapping)this.eContainer();
    }

    public NotificationChain basicSetClientServerRecordTypeMapping(ClientServerRecordTypeMapping newClientServerRecordTypeMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newClientServerRecordTypeMapping, 4, msgs);
        return msgs;
    }

    public void setClientServerRecordTypeMapping(ClientServerRecordTypeMapping newClientServerRecordTypeMapping) {
        if (newClientServerRecordTypeMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newClientServerRecordTypeMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newClientServerRecordTypeMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newClientServerRecordTypeMapping != null) {
                msgs = ((InternalEObject)newClientServerRecordTypeMapping).eInverseAdd((InternalEObject)this, 5, ClientServerRecordTypeMapping.class, msgs);
            }
            if ((msgs = this.basicSetClientServerRecordTypeMapping(newClientServerRecordTypeMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newClientServerRecordTypeMapping, (Object)newClientServerRecordTypeMapping));
        }
    }

    public ClientServerCompositeTypeMapping getComplexTypeMapping() {
        return this.complexTypeMapping;
    }

    public NotificationChain basicSetComplexTypeMapping(ClientServerCompositeTypeMapping newComplexTypeMapping, NotificationChain msgs) {
        ClientServerCompositeTypeMapping oldComplexTypeMapping = this.complexTypeMapping;
        this.complexTypeMapping = newComplexTypeMapping;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldComplexTypeMapping, (Object)newComplexTypeMapping);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setComplexTypeMapping(ClientServerCompositeTypeMapping newComplexTypeMapping) {
        if (newComplexTypeMapping != this.complexTypeMapping) {
            NotificationChain msgs = null;
            if (this.complexTypeMapping != null) {
                msgs = ((InternalEObject)this.complexTypeMapping).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newComplexTypeMapping != null) {
                msgs = ((InternalEObject)newComplexTypeMapping).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetComplexTypeMapping(newComplexTypeMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newComplexTypeMapping, (Object)newComplexTypeMapping));
        }
    }

    public RecordElement getRecordElement() {
        if (this.recordElement != null && this.recordElement.eIsProxy()) {
            InternalEObject oldRecordElement = (InternalEObject)this.recordElement;
            this.recordElement = (RecordElement)this.eResolveProxy(oldRecordElement);
            if (this.recordElement != oldRecordElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldRecordElement, (Object)this.recordElement));
            }
        }
        return this.recordElement;
    }

    public RecordElement basicGetRecordElement() {
        return this.recordElement;
    }

    public void setRecordElement(RecordElement newRecordElement) {
        RecordElement oldRecordElement = this.recordElement;
        this.recordElement = newRecordElement;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldRecordElement, (Object)this.recordElement));
        }
    }

    public SystemSignal getSignal() {
        if (this.signal != null && this.signal.eIsProxy()) {
            InternalEObject oldSignal = (InternalEObject)this.signal;
            this.signal = (SystemSignal)this.eResolveProxy(oldSignal);
            if (this.signal != oldSignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldSignal, (Object)this.signal));
            }
        }
        return this.signal;
    }

    public SystemSignal basicGetSignal() {
        return this.signal;
    }

    public void setSignal(SystemSignal newSignal) {
        SystemSignal oldSignal = this.signal;
        this.signal = newSignal;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSignal, (Object)this.signal));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetClientServerRecordTypeMapping((ClientServerRecordTypeMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetClientServerRecordTypeMapping(null, msgs);
            }
            case 5: {
                return this.basicSetComplexTypeMapping(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, ClientServerRecordTypeMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getClientServerRecordTypeMapping();
            }
            case 5: {
                return this.getComplexTypeMapping();
            }
            case 6: {
                if (resolve) {
                    return this.getRecordElement();
                }
                return this.basicGetRecordElement();
            }
            case 7: {
                if (resolve) {
                    return this.getSignal();
                }
                return this.basicGetSignal();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setClientServerRecordTypeMapping((ClientServerRecordTypeMapping)newValue);
                return;
            }
            case 5: {
                this.setComplexTypeMapping((ClientServerCompositeTypeMapping)newValue);
                return;
            }
            case 6: {
                this.setRecordElement((RecordElement)newValue);
                return;
            }
            case 7: {
                this.setSignal((SystemSignal)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setClientServerRecordTypeMapping(null);
                return;
            }
            case 5: {
                this.setComplexTypeMapping(null);
                return;
            }
            case 6: {
                this.setRecordElement(null);
                return;
            }
            case 7: {
                this.setSignal(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getClientServerRecordTypeMapping() != null;
            }
            case 5: {
                return this.complexTypeMapping != null;
            }
            case 6: {
                return this.recordElement != null;
            }
            case 7: {
                return this.signal != null;
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

