/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.commonstructure.implementationdatatypes.impl;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.implementationdatatypes.ArraySizeSemanticsEnum;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.commonstructure.implementationdatatypes.ImplementationdatatypesPackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.PositiveIntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.VariationPoint;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ImplementationDataTypeElementImpl
extends IdentifiableImpl
implements ImplementationDataTypeElement {
    protected PositiveIntegerValueVariationPoint arraySize;
    protected static final ArraySizeSemanticsEnum ARRAY_SIZE_SEMANTICS_EDEFAULT = ArraySizeSemanticsEnum.FIXED_SIZE;
    protected ArraySizeSemanticsEnum arraySizeSemantics = ARRAY_SIZE_SEMANTICS_EDEFAULT;
    protected boolean arraySizeSemanticsESet;
    protected EList<ImplementationDataTypeElement> subElements;
    protected SwDataDefProps swDataDefProps;
    protected VariationPoint variationPoint;

    protected ImplementationDataTypeElementImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ImplementationdatatypesPackage.Literals.IMPLEMENTATION_DATA_TYPE_ELEMENT;
    }

    @Override
    public PositiveIntegerValueVariationPoint getArraySize() {
        return this.arraySize;
    }

    public NotificationChain basicSetArraySize(PositiveIntegerValueVariationPoint newArraySize, NotificationChain msgs) {
        PositiveIntegerValueVariationPoint oldArraySize = this.arraySize;
        this.arraySize = newArraySize;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldArraySize, (Object)newArraySize);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setArraySize(PositiveIntegerValueVariationPoint newArraySize) {
        if (newArraySize != this.arraySize) {
            NotificationChain msgs = null;
            if (this.arraySize != null) {
                msgs = ((InternalEObject)this.arraySize).eInverseRemove((InternalEObject)this, -19, null, msgs);
            }
            if (newArraySize != null) {
                msgs = ((InternalEObject)newArraySize).eInverseAdd((InternalEObject)this, -19, null, msgs);
            }
            if ((msgs = this.basicSetArraySize(newArraySize, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newArraySize, (Object)newArraySize));
        }
    }

    @Override
    public ArraySizeSemanticsEnum getArraySizeSemantics() {
        return this.arraySizeSemantics;
    }

    @Override
    public void setArraySizeSemantics(ArraySizeSemanticsEnum newArraySizeSemantics) {
        ArraySizeSemanticsEnum oldArraySizeSemantics = this.arraySizeSemantics;
        this.arraySizeSemantics = newArraySizeSemantics == null ? ARRAY_SIZE_SEMANTICS_EDEFAULT : newArraySizeSemantics;
        boolean oldArraySizeSemanticsESet = this.arraySizeSemanticsESet;
        this.arraySizeSemanticsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldArraySizeSemantics, (Object)this.arraySizeSemantics, !oldArraySizeSemanticsESet));
        }
    }

    @Override
    public void unsetArraySizeSemantics() {
        ArraySizeSemanticsEnum oldArraySizeSemantics = this.arraySizeSemantics;
        boolean oldArraySizeSemanticsESet = this.arraySizeSemanticsESet;
        this.arraySizeSemantics = ARRAY_SIZE_SEMANTICS_EDEFAULT;
        this.arraySizeSemanticsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldArraySizeSemantics, (Object)ARRAY_SIZE_SEMANTICS_EDEFAULT, oldArraySizeSemanticsESet));
        }
    }

    @Override
    public boolean isSetArraySizeSemantics() {
        return this.arraySizeSemanticsESet;
    }

    @Override
    public EList<ImplementationDataTypeElement> getSubElements() {
        if (this.subElements == null) {
            this.subElements = new EObjectContainmentEList(ImplementationDataTypeElement.class, (InternalEObject)this, 20);
        }
        return this.subElements;
    }

    @Override
    public SwDataDefProps getSwDataDefProps() {
        return this.swDataDefProps;
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        SwDataDefProps oldSwDataDefProps = this.swDataDefProps;
        this.swDataDefProps = newSwDataDefProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldSwDataDefProps, (Object)newSwDataDefProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwDataDefProps(SwDataDefProps newSwDataDefProps) {
        if (newSwDataDefProps != this.swDataDefProps) {
            NotificationChain msgs = null;
            if (this.swDataDefProps != null) {
                msgs = ((InternalEObject)this.swDataDefProps).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
        }
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetArraySize(null, msgs);
            }
            case 20: {
                return ((InternalEList)this.getSubElements()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
            case 22: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getArraySize();
            }
            case 19: {
                return this.getArraySizeSemantics();
            }
            case 20: {
                return this.getSubElements();
            }
            case 21: {
                return this.getSwDataDefProps();
            }
            case 22: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setArraySize((PositiveIntegerValueVariationPoint)newValue);
                return;
            }
            case 19: {
                this.setArraySizeSemantics((ArraySizeSemanticsEnum)((Object)newValue));
                return;
            }
            case 20: {
                this.getSubElements().clear();
                this.getSubElements().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
            case 22: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setArraySize(null);
                return;
            }
            case 19: {
                this.unsetArraySizeSemantics();
                return;
            }
            case 20: {
                this.getSubElements().clear();
                return;
            }
            case 21: {
                this.setSwDataDefProps(null);
                return;
            }
            case 22: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.arraySize != null;
            }
            case 19: {
                return this.isSetArraySizeSemantics();
            }
            case 20: {
                return this.subElements != null && !this.subElements.isEmpty();
            }
            case 21: {
                return this.swDataDefProps != null;
            }
            case 22: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
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

