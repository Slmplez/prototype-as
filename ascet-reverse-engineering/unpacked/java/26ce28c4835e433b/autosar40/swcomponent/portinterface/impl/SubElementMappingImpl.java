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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.portinterface.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.portinterface.DataPrototypeMapping;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.SubElementMapping;
import autosar40.swcomponent.portinterface.SubElementRef;
import autosar40.swcomponent.portinterface.TextTableMapping;
import java.util.Collection;
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
public class SubElementMappingImpl
extends ARObjectImpl
implements SubElementMapping {
    protected EList<SubElementRef> firstElements;
    protected EList<SubElementRef> secondElements;
    protected EList<TextTableMapping> textTableMappings;

    protected SubElementMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.SUB_ELEMENT_MAPPING;
    }

    @Override
    public DataPrototypeMapping getDataPrototypeMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (DataPrototypeMapping)this.eContainer();
    }

    public NotificationChain basicSetDataPrototypeMapping(DataPrototypeMapping newDataPrototypeMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDataPrototypeMapping, 4, msgs);
        return msgs;
    }

    @Override
    public void setDataPrototypeMapping(DataPrototypeMapping newDataPrototypeMapping) {
        if (newDataPrototypeMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newDataPrototypeMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDataPrototypeMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDataPrototypeMapping != null) {
                msgs = ((InternalEObject)newDataPrototypeMapping).eInverseAdd((InternalEObject)this, 6, DataPrototypeMapping.class, msgs);
            }
            if ((msgs = this.basicSetDataPrototypeMapping(newDataPrototypeMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newDataPrototypeMapping, (Object)newDataPrototypeMapping));
        }
    }

    @Override
    public EList<SubElementRef> getFirstElements() {
        if (this.firstElements == null) {
            this.firstElements = new EObjectContainmentEList(SubElementRef.class, (InternalEObject)this, 5);
        }
        return this.firstElements;
    }

    @Override
    public EList<SubElementRef> getSecondElements() {
        if (this.secondElements == null) {
            this.secondElements = new EObjectContainmentEList(SubElementRef.class, (InternalEObject)this, 6);
        }
        return this.secondElements;
    }

    @Override
    public EList<TextTableMapping> getTextTableMappings() {
        if (this.textTableMappings == null) {
            this.textTableMappings = new EObjectContainmentEList(TextTableMapping.class, (InternalEObject)this, 7);
        }
        return this.textTableMappings;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetDataPrototypeMapping((DataPrototypeMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetDataPrototypeMapping(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getFirstElements()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getSecondElements()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getTextTableMappings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, DataPrototypeMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getDataPrototypeMapping();
            }
            case 5: {
                return this.getFirstElements();
            }
            case 6: {
                return this.getSecondElements();
            }
            case 7: {
                return this.getTextTableMappings();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setDataPrototypeMapping((DataPrototypeMapping)newValue);
                return;
            }
            case 5: {
                this.getFirstElements().clear();
                this.getFirstElements().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getSecondElements().clear();
                this.getSecondElements().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getTextTableMappings().clear();
                this.getTextTableMappings().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setDataPrototypeMapping(null);
                return;
            }
            case 5: {
                this.getFirstElements().clear();
                return;
            }
            case 6: {
                this.getSecondElements().clear();
                return;
            }
            case 7: {
                this.getTextTableMappings().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getDataPrototypeMapping() != null;
            }
            case 5: {
                return this.firstElements != null && !this.firstElements.isEmpty();
            }
            case 6: {
                return this.secondElements != null && !this.secondElements.isEmpty();
            }
            case 7: {
                return this.textTableMappings != null && !this.textTableMappings.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

