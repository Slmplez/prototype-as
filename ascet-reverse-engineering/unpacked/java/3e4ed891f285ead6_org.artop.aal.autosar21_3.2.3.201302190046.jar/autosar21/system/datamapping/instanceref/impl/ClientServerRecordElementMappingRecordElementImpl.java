/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.datamapping.instanceref.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.components.PortPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;
import autosar21.swcomponent.datatype.datatypes.RecordElement;
import autosar21.swcomponent.portinterface.ArgumentPrototype;
import autosar21.system.SoftwareComposition;
import autosar21.system.datamapping.ClientServerRecordElementMapping;
import autosar21.system.datamapping.instanceref.ClientServerRecordElementMappingRecordElement;
import autosar21.system.datamapping.instanceref.IndexedDataPrototype;
import autosar21.system.datamapping.instanceref.InstancerefPackage;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ClientServerRecordElementMappingRecordElementImpl
extends ARObjectImpl
implements ClientServerRecordElementMappingRecordElement,
IReferringClass {
    protected SoftwareComposition softwareComposition;
    protected EList<ComponentPrototype> componentPrototypes;
    protected PortPrototype portPrototype;
    protected ArgumentPrototype argumentPrototype;
    protected EList<IndexedDataPrototype> nestingDataPrototypes;
    protected RecordElement recordElement;

    protected ClientServerRecordElementMappingRecordElementImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.CLIENT_SERVER_RECORD_ELEMENT_MAPPING_RECORD_ELEMENT;
    }

    @Override
    public ClientServerRecordElementMapping getClientServerRecordElementMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ClientServerRecordElementMapping)this.eContainer();
    }

    public NotificationChain basicSetClientServerRecordElementMapping(ClientServerRecordElementMapping newClientServerRecordElementMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newClientServerRecordElementMapping, 4, msgs);
        return msgs;
    }

    @Override
    public void setClientServerRecordElementMapping(ClientServerRecordElementMapping newClientServerRecordElementMapping) {
        if (newClientServerRecordElementMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newClientServerRecordElementMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newClientServerRecordElementMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newClientServerRecordElementMapping != null) {
                msgs = ((InternalEObject)newClientServerRecordElementMapping).eInverseAdd((InternalEObject)this, 6, ClientServerRecordElementMapping.class, msgs);
            }
            if ((msgs = this.basicSetClientServerRecordElementMapping(newClientServerRecordElementMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newClientServerRecordElementMapping, (Object)newClientServerRecordElementMapping));
        }
    }

    @Override
    public SoftwareComposition getSoftwareComposition() {
        if (this.softwareComposition != null && this.softwareComposition.eIsProxy()) {
            InternalEObject oldSoftwareComposition = (InternalEObject)this.softwareComposition;
            this.softwareComposition = (SoftwareComposition)this.eResolveProxy(oldSoftwareComposition);
            if (this.softwareComposition != oldSoftwareComposition && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldSoftwareComposition, (Object)this.softwareComposition));
            }
        }
        return this.softwareComposition;
    }

    public SoftwareComposition basicGetSoftwareComposition() {
        return this.softwareComposition;
    }

    @Override
    public void setSoftwareComposition(SoftwareComposition newSoftwareComposition) {
        SoftwareComposition oldSoftwareComposition = this.softwareComposition;
        this.softwareComposition = newSoftwareComposition;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSoftwareComposition, (Object)this.softwareComposition));
        }
    }

    @Override
    public EList<ComponentPrototype> getComponentPrototypes() {
        if (this.componentPrototypes == null) {
            this.componentPrototypes = new EObjectResolvingReferringEList(ComponentPrototype.class, (InternalEObject)this, 6);
        }
        return this.componentPrototypes;
    }

    @Override
    public PortPrototype getPortPrototype() {
        if (this.portPrototype != null && this.portPrototype.eIsProxy()) {
            InternalEObject oldPortPrototype = (InternalEObject)this.portPrototype;
            this.portPrototype = (PortPrototype)this.eResolveProxy(oldPortPrototype);
            if (this.portPrototype != oldPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldPortPrototype, (Object)this.portPrototype));
            }
        }
        return this.portPrototype;
    }

    public PortPrototype basicGetPortPrototype() {
        return this.portPrototype;
    }

    @Override
    public void setPortPrototype(PortPrototype newPortPrototype) {
        PortPrototype oldPortPrototype = this.portPrototype;
        this.portPrototype = newPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldPortPrototype, (Object)this.portPrototype));
        }
    }

    @Override
    public ArgumentPrototype getArgumentPrototype() {
        if (this.argumentPrototype != null && this.argumentPrototype.eIsProxy()) {
            InternalEObject oldArgumentPrototype = (InternalEObject)this.argumentPrototype;
            this.argumentPrototype = (ArgumentPrototype)this.eResolveProxy(oldArgumentPrototype);
            if (this.argumentPrototype != oldArgumentPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldArgumentPrototype, (Object)this.argumentPrototype));
            }
        }
        return this.argumentPrototype;
    }

    public ArgumentPrototype basicGetArgumentPrototype() {
        return this.argumentPrototype;
    }

    @Override
    public void setArgumentPrototype(ArgumentPrototype newArgumentPrototype) {
        ArgumentPrototype oldArgumentPrototype = this.argumentPrototype;
        this.argumentPrototype = newArgumentPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldArgumentPrototype, (Object)this.argumentPrototype));
        }
    }

    @Override
    public EList<IndexedDataPrototype> getNestingDataPrototypes() {
        if (this.nestingDataPrototypes == null) {
            this.nestingDataPrototypes = new EObjectContainmentEList(IndexedDataPrototype.class, (InternalEObject)this, 9);
        }
        return this.nestingDataPrototypes;
    }

    @Override
    public RecordElement getRecordElement() {
        if (this.recordElement != null && this.recordElement.eIsProxy()) {
            InternalEObject oldRecordElement = (InternalEObject)this.recordElement;
            this.recordElement = (RecordElement)this.eResolveProxy(oldRecordElement);
            if (this.recordElement != oldRecordElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 10, (Object)oldRecordElement, (Object)this.recordElement));
            }
        }
        return this.recordElement;
    }

    public RecordElement basicGetRecordElement() {
        return this.recordElement;
    }

    @Override
    public void setRecordElement(RecordElement newRecordElement) {
        RecordElement oldRecordElement = this.recordElement;
        this.recordElement = newRecordElement;
        AutosarObjectUtil.setDest((EObject)this, (int)10, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldRecordElement, (Object)this.recordElement));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetClientServerRecordElementMapping((ClientServerRecordElementMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetClientServerRecordElementMapping(null, msgs);
            }
            case 9: {
                return ((InternalEList)this.getNestingDataPrototypes()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, ClientServerRecordElementMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getClientServerRecordElementMapping();
            }
            case 5: {
                if (resolve) {
                    return this.getSoftwareComposition();
                }
                return this.basicGetSoftwareComposition();
            }
            case 6: {
                return this.getComponentPrototypes();
            }
            case 7: {
                if (resolve) {
                    return this.getPortPrototype();
                }
                return this.basicGetPortPrototype();
            }
            case 8: {
                if (resolve) {
                    return this.getArgumentPrototype();
                }
                return this.basicGetArgumentPrototype();
            }
            case 9: {
                return this.getNestingDataPrototypes();
            }
            case 10: {
                if (resolve) {
                    return this.getRecordElement();
                }
                return this.basicGetRecordElement();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setClientServerRecordElementMapping((ClientServerRecordElementMapping)newValue);
                return;
            }
            case 5: {
                this.setSoftwareComposition((SoftwareComposition)newValue);
                return;
            }
            case 6: {
                this.getComponentPrototypes().clear();
                this.getComponentPrototypes().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.setPortPrototype((PortPrototype)newValue);
                return;
            }
            case 8: {
                this.setArgumentPrototype((ArgumentPrototype)newValue);
                return;
            }
            case 9: {
                this.getNestingDataPrototypes().clear();
                this.getNestingDataPrototypes().addAll((Collection)newValue);
                return;
            }
            case 10: {
                this.setRecordElement((RecordElement)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setClientServerRecordElementMapping(null);
                return;
            }
            case 5: {
                this.setSoftwareComposition(null);
                return;
            }
            case 6: {
                this.getComponentPrototypes().clear();
                return;
            }
            case 7: {
                this.setPortPrototype(null);
                return;
            }
            case 8: {
                this.setArgumentPrototype(null);
                return;
            }
            case 9: {
                this.getNestingDataPrototypes().clear();
                return;
            }
            case 10: {
                this.setRecordElement(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getClientServerRecordElementMapping() != null;
            }
            case 5: {
                return this.softwareComposition != null;
            }
            case 6: {
                return this.componentPrototypes != null && !this.componentPrototypes.isEmpty();
            }
            case 7: {
                return this.portPrototype != null;
            }
            case 8: {
                return this.argumentPrototype != null;
            }
            case 9: {
                return this.nestingDataPrototypes != null && !this.nestingDataPrototypes.isEmpty();
            }
            case 10: {
                return this.recordElement != null;
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

