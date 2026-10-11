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
package autosar40.commonstructure.constants.impl;

import autosar40.commonstructure.constants.ConstantsPackage;
import autosar40.commonstructure.constants.ReferenceValueSpecification;
import autosar40.commonstructure.constants.impl.ValueSpecificationImpl;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ReferenceValueSpecificationImpl
extends ValueSpecificationImpl
implements ReferenceValueSpecification,
IReferringClass {
    protected DataPrototype referenceValue;

    protected ReferenceValueSpecificationImpl() {
    }

    protected EClass eStaticClass() {
        return ConstantsPackage.Literals.REFERENCE_VALUE_SPECIFICATION;
    }

    public DataPrototype getReferenceValue() {
        if (this.referenceValue != null && this.referenceValue.eIsProxy()) {
            InternalEObject oldReferenceValue = (InternalEObject)this.referenceValue;
            this.referenceValue = (DataPrototype)this.eResolveProxy(oldReferenceValue);
            if (this.referenceValue != oldReferenceValue && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldReferenceValue, (Object)this.referenceValue));
            }
        }
        return this.referenceValue;
    }

    public DataPrototype basicGetReferenceValue() {
        return this.referenceValue;
    }

    public void setReferenceValue(DataPrototype newReferenceValue) {
        DataPrototype oldReferenceValue = this.referenceValue;
        this.referenceValue = newReferenceValue;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldReferenceValue, (Object)this.referenceValue));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                if (resolve) {
                    return this.getReferenceValue();
                }
                return this.basicGetReferenceValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setReferenceValue((DataPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.setReferenceValue(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.referenceValue != null;
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

