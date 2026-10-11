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
package autosar40.system.datamapping.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.datamapping.ClientServerArrayElementMapping;
import autosar40.system.datamapping.ClientServerArrayTypeMapping;
import autosar40.system.datamapping.ClientServerCompositeTypeMapping;
import autosar40.system.datamapping.DatamappingPackage;
import autosar40.system.datamapping.IndexedArrayElement;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignal;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ClientServerArrayElementMappingImpl
extends ARObjectImpl
implements ClientServerArrayElementMapping,
IReferringClass {
    protected ClientServerCompositeTypeMapping complexTypeMapping;
    protected IndexedArrayElement indexedArrayElement;
    protected SystemSignal systemSignal;

    protected ClientServerArrayElementMappingImpl() {
    }

    protected EClass eStaticClass() {
        return DatamappingPackage.Literals.CLIENT_SERVER_ARRAY_ELEMENT_MAPPING;
    }

    public ClientServerArrayTypeMapping getClientServerArrayTypeMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ClientServerArrayTypeMapping)this.eContainer();
    }

    public NotificationChain basicSetClientServerArrayTypeMapping(ClientServerArrayTypeMapping newClientServerArrayTypeMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newClientServerArrayTypeMapping, 4, msgs);
        return msgs;
    }

    public void setClientServerArrayTypeMapping(ClientServerArrayTypeMapping newClientServerArrayTypeMapping) {
        if (newClientServerArrayTypeMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newClientServerArrayTypeMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newClientServerArrayTypeMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newClientServerArrayTypeMapping != null) {
                msgs = ((InternalEObject)newClientServerArrayTypeMapping).eInverseAdd((InternalEObject)this, 5, ClientServerArrayTypeMapping.class, msgs);
            }
            if ((msgs = this.basicSetClientServerArrayTypeMapping(newClientServerArrayTypeMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newClientServerArrayTypeMapping, (Object)newClientServerArrayTypeMapping));
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

    public IndexedArrayElement getIndexedArrayElement() {
        return this.indexedArrayElement;
    }

    public NotificationChain basicSetIndexedArrayElement(IndexedArrayElement newIndexedArrayElement, NotificationChain msgs) {
        IndexedArrayElement oldIndexedArrayElement = this.indexedArrayElement;
        this.indexedArrayElement = newIndexedArrayElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldIndexedArrayElement, (Object)newIndexedArrayElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setIndexedArrayElement(IndexedArrayElement newIndexedArrayElement) {
        if (newIndexedArrayElement != this.indexedArrayElement) {
            NotificationChain msgs = null;
            if (this.indexedArrayElement != null) {
                msgs = ((InternalEObject)this.indexedArrayElement).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newIndexedArrayElement != null) {
                msgs = ((InternalEObject)newIndexedArrayElement).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetIndexedArrayElement(newIndexedArrayElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newIndexedArrayElement, (Object)newIndexedArrayElement));
        }
    }

    public SystemSignal getSystemSignal() {
        if (this.systemSignal != null && this.systemSignal.eIsProxy()) {
            InternalEObject oldSystemSignal = (InternalEObject)this.systemSignal;
            this.systemSignal = (SystemSignal)this.eResolveProxy(oldSystemSignal);
            if (this.systemSignal != oldSystemSignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldSystemSignal, (Object)this.systemSignal));
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
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSystemSignal, (Object)this.systemSignal));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetClientServerArrayTypeMapping((ClientServerArrayTypeMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetClientServerArrayTypeMapping(null, msgs);
            }
            case 5: {
                return this.basicSetComplexTypeMapping(null, msgs);
            }
            case 6: {
                return this.basicSetIndexedArrayElement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, ClientServerArrayTypeMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getClientServerArrayTypeMapping();
            }
            case 5: {
                return this.getComplexTypeMapping();
            }
            case 6: {
                return this.getIndexedArrayElement();
            }
            case 7: {
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
                this.setClientServerArrayTypeMapping((ClientServerArrayTypeMapping)newValue);
                return;
            }
            case 5: {
                this.setComplexTypeMapping((ClientServerCompositeTypeMapping)newValue);
                return;
            }
            case 6: {
                this.setIndexedArrayElement((IndexedArrayElement)newValue);
                return;
            }
            case 7: {
                this.setSystemSignal((SystemSignal)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setClientServerArrayTypeMapping(null);
                return;
            }
            case 5: {
                this.setComplexTypeMapping(null);
                return;
            }
            case 6: {
                this.setIndexedArrayElement(null);
                return;
            }
            case 7: {
                this.setSystemSignal(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getClientServerArrayTypeMapping() != null;
            }
            case 5: {
                return this.complexTypeMapping != null;
            }
            case 6: {
                return this.indexedArrayElement != null;
            }
            case 7: {
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

