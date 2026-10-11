/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.swcomponent.datatype.dataprototypes.impl;

import autosar40.commonstructure.implementationdatatypes.ArraySizeSemanticsEnum;
import autosar40.genericstructure.varianthandling.PositiveIntegerValueVariationPoint;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationArrayElement;
import autosar40.swcomponent.datatype.dataprototypes.DataprototypesPackage;
import autosar40.swcomponent.datatype.dataprototypes.impl.ApplicationCompositeElementDataPrototypeImpl;
import autosar40.swcomponent.datatype.datatypes.ApplicationArrayDataType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ApplicationArrayElementImpl
extends ApplicationCompositeElementDataPrototypeImpl
implements ApplicationArrayElement {
    protected static final ArraySizeSemanticsEnum ARRAY_SIZE_SEMANTICS_EDEFAULT = ArraySizeSemanticsEnum.FIXED_SIZE;
    protected ArraySizeSemanticsEnum arraySizeSemantics = ARRAY_SIZE_SEMANTICS_EDEFAULT;
    protected boolean arraySizeSemanticsESet;
    protected PositiveIntegerValueVariationPoint maxNumberOfElements;

    protected ApplicationArrayElementImpl() {
    }

    protected EClass eStaticClass() {
        return DataprototypesPackage.Literals.APPLICATION_ARRAY_ELEMENT;
    }

    public ApplicationArrayDataType getApplicationArrayDataType() {
        if (this.eContainerFeatureID() != 22) {
            return null;
        }
        return (ApplicationArrayDataType)this.eContainer();
    }

    public NotificationChain basicSetApplicationArrayDataType(ApplicationArrayDataType newApplicationArrayDataType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newApplicationArrayDataType, 22, msgs);
        return msgs;
    }

    public void setApplicationArrayDataType(ApplicationArrayDataType newApplicationArrayDataType) {
        if (newApplicationArrayDataType != this.eInternalContainer() || this.eContainerFeatureID() != 22 && newApplicationArrayDataType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newApplicationArrayDataType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newApplicationArrayDataType != null) {
                msgs = ((InternalEObject)newApplicationArrayDataType).eInverseAdd((InternalEObject)this, 23, ApplicationArrayDataType.class, msgs);
            }
            if ((msgs = this.basicSetApplicationArrayDataType(newApplicationArrayDataType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newApplicationArrayDataType, (Object)newApplicationArrayDataType));
        }
    }

    public ArraySizeSemanticsEnum getArraySizeSemantics() {
        return this.arraySizeSemantics;
    }

    public void setArraySizeSemantics(ArraySizeSemanticsEnum newArraySizeSemantics) {
        ArraySizeSemanticsEnum oldArraySizeSemantics = this.arraySizeSemantics;
        this.arraySizeSemantics = newArraySizeSemantics == null ? ARRAY_SIZE_SEMANTICS_EDEFAULT : newArraySizeSemantics;
        boolean oldArraySizeSemanticsESet = this.arraySizeSemanticsESet;
        this.arraySizeSemanticsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldArraySizeSemantics, (Object)this.arraySizeSemantics, !oldArraySizeSemanticsESet));
        }
    }

    public void unsetArraySizeSemantics() {
        ArraySizeSemanticsEnum oldArraySizeSemantics = this.arraySizeSemantics;
        boolean oldArraySizeSemanticsESet = this.arraySizeSemanticsESet;
        this.arraySizeSemantics = ARRAY_SIZE_SEMANTICS_EDEFAULT;
        this.arraySizeSemanticsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldArraySizeSemantics, (Object)ARRAY_SIZE_SEMANTICS_EDEFAULT, oldArraySizeSemanticsESet));
        }
    }

    public boolean isSetArraySizeSemantics() {
        return this.arraySizeSemanticsESet;
    }

    public PositiveIntegerValueVariationPoint getMaxNumberOfElements() {
        return this.maxNumberOfElements;
    }

    public NotificationChain basicSetMaxNumberOfElements(PositiveIntegerValueVariationPoint newMaxNumberOfElements, NotificationChain msgs) {
        PositiveIntegerValueVariationPoint oldMaxNumberOfElements = this.maxNumberOfElements;
        this.maxNumberOfElements = newMaxNumberOfElements;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldMaxNumberOfElements, (Object)newMaxNumberOfElements);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMaxNumberOfElements(PositiveIntegerValueVariationPoint newMaxNumberOfElements) {
        if (newMaxNumberOfElements != this.maxNumberOfElements) {
            NotificationChain msgs = null;
            if (this.maxNumberOfElements != null) {
                msgs = ((InternalEObject)this.maxNumberOfElements).eInverseRemove((InternalEObject)this, -25, null, msgs);
            }
            if (newMaxNumberOfElements != null) {
                msgs = ((InternalEObject)newMaxNumberOfElements).eInverseAdd((InternalEObject)this, -25, null, msgs);
            }
            if ((msgs = this.basicSetMaxNumberOfElements(newMaxNumberOfElements, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newMaxNumberOfElements, (Object)newMaxNumberOfElements));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetApplicationArrayDataType((ApplicationArrayDataType)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetApplicationArrayDataType(null, msgs);
            }
            case 24: {
                return this.basicSetMaxNumberOfElements(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 22: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, ApplicationArrayDataType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getApplicationArrayDataType();
            }
            case 23: {
                return this.getArraySizeSemantics();
            }
            case 24: {
                return this.getMaxNumberOfElements();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.setApplicationArrayDataType((ApplicationArrayDataType)newValue);
                return;
            }
            case 23: {
                this.setArraySizeSemantics((ArraySizeSemanticsEnum)((Object)newValue));
                return;
            }
            case 24: {
                this.setMaxNumberOfElements((PositiveIntegerValueVariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.setApplicationArrayDataType(null);
                return;
            }
            case 23: {
                this.unsetArraySizeSemantics();
                return;
            }
            case 24: {
                this.setMaxNumberOfElements(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.getApplicationArrayDataType() != null;
            }
            case 23: {
                return this.isSetArraySizeSemantics();
            }
            case 24: {
                return this.maxNumberOfElements != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (arraySizeSemantics: ");
        if (this.arraySizeSemanticsESet) {
            result.append((Object)this.arraySizeSemantics);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

