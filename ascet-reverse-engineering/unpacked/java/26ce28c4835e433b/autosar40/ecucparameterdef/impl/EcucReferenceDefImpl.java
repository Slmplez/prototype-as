/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GParamConfContainerDef
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucParamConfContainerDef;
import autosar40.ecucparameterdef.EcucReferenceDef;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucAbstractReferenceDefImpl;
import gautosar.gecucparameterdef.GParamConfContainerDef;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class EcucReferenceDefImpl
extends EcucAbstractReferenceDefImpl
implements EcucReferenceDef,
IReferringClass {
    protected EcucParamConfContainerDef destination;

    protected EcucReferenceDefImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_REFERENCE_DEF;
    }

    public EcucParamConfContainerDef getDestination() {
        if (this.destination != null && this.destination.eIsProxy()) {
            InternalEObject oldDestination = (InternalEObject)this.destination;
            this.destination = (EcucParamConfContainerDef)this.eResolveProxy(oldDestination);
            if (this.destination != oldDestination && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 27, (Object)oldDestination, (Object)this.destination));
            }
        }
        return this.destination;
    }

    public EcucParamConfContainerDef basicGetDestination() {
        return this.destination;
    }

    public void setDestination(EcucParamConfContainerDef newDestination) {
        EcucParamConfContainerDef oldDestination = this.destination;
        this.destination = newDestination;
        AutosarObjectUtil.setDest((EObject)this, (int)27, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldDestination, (Object)this.destination));
        }
    }

    public GParamConfContainerDef gGetDestination() {
        return this.getDestination();
    }

    public void gSetDestination(GParamConfContainerDef value) {
        this.setDestination((EcucParamConfContainerDef)value);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 27: {
                if (resolve) {
                    return this.getDestination();
                }
                return this.basicGetDestination();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 27: {
                this.setDestination((EcucParamConfContainerDef)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 27: {
                this.setDestination(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 27: {
                return this.destination != null;
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

