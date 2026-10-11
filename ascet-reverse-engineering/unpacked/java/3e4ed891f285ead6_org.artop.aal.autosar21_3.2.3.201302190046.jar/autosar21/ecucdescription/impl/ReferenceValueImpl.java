/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.ecucdescription.impl;

import autosar21.ecucdescription.EcucdescriptionPackage;
import autosar21.ecucdescription.ReferenceValue;
import autosar21.ecucdescription.impl.ConfigReferenceValueImpl;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ReferenceValueImpl
extends ConfigReferenceValueImpl
implements ReferenceValue,
IReferringClass {
    protected Identifiable value;

    protected ReferenceValueImpl() {
    }

    protected EClass eStaticClass() {
        return EcucdescriptionPackage.Literals.REFERENCE_VALUE;
    }

    public Identifiable getValue() {
        if (this.value != null && this.value.eIsProxy()) {
            InternalEObject oldValue = (InternalEObject)this.value;
            this.value = (Identifiable)this.eResolveProxy(oldValue);
            if (this.value != oldValue && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldValue, (Object)this.value));
            }
        }
        return this.value;
    }

    public Identifiable basicGetValue() {
        return this.value;
    }

    public void setValue(Identifiable newValue) {
        Identifiable oldValue = this.value;
        this.value = newValue;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldValue, (Object)this.value));
        }
    }

    public GIdentifiable gGetValue() {
        return this.getValue();
    }

    public void gSetValue(GIdentifiable value) {
        this.setValue((Identifiable)value);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                if (resolve) {
                    return this.getValue();
                }
                return this.basicGetValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setValue((Identifiable)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.setValue(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.value != null;
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

