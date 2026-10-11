/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.datamapping.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.datatype.datatypes.ArrayElement;
import autosar3x.system.datamapping.DatamappingPackage;
import autosar3x.system.datamapping.IndexedArrayElement;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class IndexedArrayElementImpl
extends ARObjectImpl
implements IndexedArrayElement,
IReferringClass {
    protected ArrayElement arrayElement;
    protected static final Integer INDEX_EDEFAULT = new Integer(0);
    protected Integer index = INDEX_EDEFAULT;
    protected boolean indexESet;

    protected IndexedArrayElementImpl() {
    }

    protected EClass eStaticClass() {
        return DatamappingPackage.Literals.INDEXED_ARRAY_ELEMENT;
    }

    public ArrayElement getArrayElement() {
        if (this.arrayElement != null && this.arrayElement.eIsProxy()) {
            InternalEObject oldArrayElement = (InternalEObject)this.arrayElement;
            this.arrayElement = (ArrayElement)this.eResolveProxy(oldArrayElement);
            if (this.arrayElement != oldArrayElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 4, (Object)oldArrayElement, (Object)this.arrayElement));
            }
        }
        return this.arrayElement;
    }

    public ArrayElement basicGetArrayElement() {
        return this.arrayElement;
    }

    public void setArrayElement(ArrayElement newArrayElement) {
        ArrayElement oldArrayElement = this.arrayElement;
        this.arrayElement = newArrayElement;
        AutosarObjectUtil.setDest((EObject)this, (int)4, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldArrayElement, (Object)this.arrayElement));
        }
    }

    public Integer getIndex() {
        return this.index;
    }

    public void setIndex(Integer newIndex) {
        Integer oldIndex = this.index;
        this.index = newIndex;
        boolean oldIndexESet = this.indexESet;
        this.indexESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldIndex, (Object)this.index, !oldIndexESet));
        }
    }

    public void unsetIndex() {
        Integer oldIndex = this.index;
        boolean oldIndexESet = this.indexESet;
        this.index = INDEX_EDEFAULT;
        this.indexESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldIndex, (Object)INDEX_EDEFAULT, oldIndexESet));
        }
    }

    public boolean isSetIndex() {
        return this.indexESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                if (resolve) {
                    return this.getArrayElement();
                }
                return this.basicGetArrayElement();
            }
            case 5: {
                return this.getIndex();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setArrayElement((ArrayElement)newValue);
                return;
            }
            case 5: {
                this.setIndex((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setArrayElement(null);
                return;
            }
            case 5: {
                this.unsetIndex();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.arrayElement != null;
            }
            case 5: {
                return this.isSetIndex();
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

