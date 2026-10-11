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
package autosar21.system.datamapping.instanceref.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.datatype.datatypes.DataPrototype;
import autosar21.system.datamapping.instanceref.IndexedDataPrototype;
import autosar21.system.datamapping.instanceref.InstancerefPackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class IndexedDataPrototypeImpl
extends ARObjectImpl
implements IndexedDataPrototype,
IReferringClass {
    protected static final Integer INDEX_EDEFAULT = new Integer(0);
    protected Integer index = INDEX_EDEFAULT;
    protected boolean indexESet;
    protected DataPrototype nestingDataPrototype;

    protected IndexedDataPrototypeImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.INDEXED_DATA_PROTOTYPE;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldIndex, (Object)this.index, !oldIndexESet));
        }
    }

    public void unsetIndex() {
        Integer oldIndex = this.index;
        boolean oldIndexESet = this.indexESet;
        this.index = INDEX_EDEFAULT;
        this.indexESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldIndex, (Object)INDEX_EDEFAULT, oldIndexESet));
        }
    }

    public boolean isSetIndex() {
        return this.indexESet;
    }

    public DataPrototype getNestingDataPrototype() {
        if (this.nestingDataPrototype != null && this.nestingDataPrototype.eIsProxy()) {
            InternalEObject oldNestingDataPrototype = (InternalEObject)this.nestingDataPrototype;
            this.nestingDataPrototype = (DataPrototype)this.eResolveProxy(oldNestingDataPrototype);
            if (this.nestingDataPrototype != oldNestingDataPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldNestingDataPrototype, (Object)this.nestingDataPrototype));
            }
        }
        return this.nestingDataPrototype;
    }

    public DataPrototype basicGetNestingDataPrototype() {
        return this.nestingDataPrototype;
    }

    public void setNestingDataPrototype(DataPrototype newNestingDataPrototype) {
        DataPrototype oldNestingDataPrototype = this.nestingDataPrototype;
        this.nestingDataPrototype = newNestingDataPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldNestingDataPrototype, (Object)this.nestingDataPrototype));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getIndex();
            }
            case 5: {
                if (resolve) {
                    return this.getNestingDataPrototype();
                }
                return this.basicGetNestingDataPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setIndex((Integer)newValue);
                return;
            }
            case 5: {
                this.setNestingDataPrototype((DataPrototype)newValue);
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
            case 5: {
                this.setNestingDataPrototype(null);
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
            case 5: {
                return this.nestingDataPrototype != null;
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

