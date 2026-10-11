/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.ecucdescription.impl;

import autosar40.ecucdescription.EcucIndexableValue;
import autosar40.ecucdescription.EcucdescriptionPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class EcucIndexableValueImpl
extends ARObjectImpl
implements EcucIndexableValue {
    protected static final PositiveIntegerDatatype INDEX_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype index = INDEX_EDEFAULT.clone();
    protected boolean indexESet;

    protected EcucIndexableValueImpl() {
    }

    protected EClass eStaticClass() {
        return EcucdescriptionPackage.Literals.ECUC_INDEXABLE_VALUE;
    }

    public Long getIndex() {
        return (Long)this.index.basicGetValue();
    }

    public void setIndex(Long newIndex) {
        Long oldIndex = (Long)this.index.basicGetValue();
        this.index.basicSetValue((Object)newIndex);
        boolean oldIndexESet = this.indexESet;
        this.indexESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldIndex, (Object)newIndex, !oldIndexESet));
        }
    }

    public void unsetIndex() {
        Long oldIndex = (Long)this.index.basicGetValue();
        boolean oldIndexESet = this.indexESet;
        this.index = INDEX_EDEFAULT.clone();
        this.indexESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldIndex, (Object)INDEX_EDEFAULT, oldIndexESet));
        }
    }

    public boolean isSetIndex() {
        return this.indexESet;
    }

    public PositiveIntegerDatatype getIndexData() {
        return this.index.clone();
    }

    public void setIndexData(PositiveIntegerDatatype newIndex) {
        this.index.setRadix((int)newIndex.getRadix());
        this.index.setNoOfDigits((int)newIndex.getNoOfDigits());
        this.setIndex(newIndex.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getIndex();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setIndex((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetIndex();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetIndex();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (index: ");
        if (this.indexESet) {
            result.append(this.index);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

