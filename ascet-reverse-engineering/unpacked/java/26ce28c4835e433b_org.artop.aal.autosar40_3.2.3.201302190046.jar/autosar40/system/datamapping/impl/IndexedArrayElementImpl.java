/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.datamapping.impl;

import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationArrayElement;
import autosar40.system.datamapping.DatamappingPackage;
import autosar40.system.datamapping.IndexedArrayElement;
import org.artop.aal.common.datatypes.IntegerDatatype;
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
    protected ApplicationArrayElement applicationArrayElement;
    protected ImplementationDataTypeElement implementationArrayElement;
    protected static final IntegerDatatype INDEX_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype index = INDEX_EDEFAULT.clone();
    protected boolean indexESet;

    protected IndexedArrayElementImpl() {
    }

    protected EClass eStaticClass() {
        return DatamappingPackage.Literals.INDEXED_ARRAY_ELEMENT;
    }

    public ApplicationArrayElement getApplicationArrayElement() {
        if (this.applicationArrayElement != null && this.applicationArrayElement.eIsProxy()) {
            InternalEObject oldApplicationArrayElement = (InternalEObject)this.applicationArrayElement;
            this.applicationArrayElement = (ApplicationArrayElement)this.eResolveProxy(oldApplicationArrayElement);
            if (this.applicationArrayElement != oldApplicationArrayElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 4, (Object)oldApplicationArrayElement, (Object)this.applicationArrayElement));
            }
        }
        return this.applicationArrayElement;
    }

    public ApplicationArrayElement basicGetApplicationArrayElement() {
        return this.applicationArrayElement;
    }

    public void setApplicationArrayElement(ApplicationArrayElement newApplicationArrayElement) {
        ApplicationArrayElement oldApplicationArrayElement = this.applicationArrayElement;
        this.applicationArrayElement = newApplicationArrayElement;
        AutosarObjectUtil.setDest((EObject)this, (int)4, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldApplicationArrayElement, (Object)this.applicationArrayElement));
        }
    }

    public ImplementationDataTypeElement getImplementationArrayElement() {
        if (this.implementationArrayElement != null && this.implementationArrayElement.eIsProxy()) {
            InternalEObject oldImplementationArrayElement = (InternalEObject)this.implementationArrayElement;
            this.implementationArrayElement = (ImplementationDataTypeElement)this.eResolveProxy(oldImplementationArrayElement);
            if (this.implementationArrayElement != oldImplementationArrayElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldImplementationArrayElement, (Object)this.implementationArrayElement));
            }
        }
        return this.implementationArrayElement;
    }

    public ImplementationDataTypeElement basicGetImplementationArrayElement() {
        return this.implementationArrayElement;
    }

    public void setImplementationArrayElement(ImplementationDataTypeElement newImplementationArrayElement) {
        ImplementationDataTypeElement oldImplementationArrayElement = this.implementationArrayElement;
        this.implementationArrayElement = newImplementationArrayElement;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldImplementationArrayElement, (Object)this.implementationArrayElement));
        }
    }

    public Integer getIndex() {
        return (Integer)this.index.basicGetValue();
    }

    public void setIndex(Integer newIndex) {
        Integer oldIndex = (Integer)this.index.basicGetValue();
        this.index.basicSetValue((Object)newIndex);
        boolean oldIndexESet = this.indexESet;
        this.indexESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldIndex, (Object)newIndex, !oldIndexESet));
        }
    }

    public void unsetIndex() {
        Integer oldIndex = (Integer)this.index.basicGetValue();
        boolean oldIndexESet = this.indexESet;
        this.index = INDEX_EDEFAULT.clone();
        this.indexESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldIndex, (Object)INDEX_EDEFAULT, oldIndexESet));
        }
    }

    public boolean isSetIndex() {
        return this.indexESet;
    }

    public IntegerDatatype getIndexData() {
        return this.index.clone();
    }

    public void setIndexData(IntegerDatatype newIndex) {
        this.index.setRadix((int)newIndex.getRadix());
        this.index.setNoOfDigits((int)newIndex.getNoOfDigits());
        this.setIndex(newIndex.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                if (resolve) {
                    return this.getApplicationArrayElement();
                }
                return this.basicGetApplicationArrayElement();
            }
            case 5: {
                if (resolve) {
                    return this.getImplementationArrayElement();
                }
                return this.basicGetImplementationArrayElement();
            }
            case 6: {
                return this.getIndex();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setApplicationArrayElement((ApplicationArrayElement)newValue);
                return;
            }
            case 5: {
                this.setImplementationArrayElement((ImplementationDataTypeElement)newValue);
                return;
            }
            case 6: {
                this.setIndex((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setApplicationArrayElement(null);
                return;
            }
            case 5: {
                this.setImplementationArrayElement(null);
                return;
            }
            case 6: {
                this.unsetIndex();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.applicationArrayElement != null;
            }
            case 5: {
                return this.implementationArrayElement != null;
            }
            case 6: {
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

