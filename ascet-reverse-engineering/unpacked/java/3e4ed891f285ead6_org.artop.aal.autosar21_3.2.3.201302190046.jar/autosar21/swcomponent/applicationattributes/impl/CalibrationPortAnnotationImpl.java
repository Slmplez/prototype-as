/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.applicationattributes.impl;

import autosar21.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar21.swcomponent.applicationattributes.CalibrationPortAnnotation;
import autosar21.swcomponent.applicationattributes.impl.PortAnnotationImpl;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import java.util.Map;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CalibrationPortAnnotationImpl
extends PortAnnotationImpl
implements CalibrationPortAnnotation,
IReferringClass {
    protected CalprmElementPrototype calprmElement;

    protected CalibrationPortAnnotationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ApplicationattributesPackage.Literals.CALIBRATION_PORT_ANNOTATION;
    }

    @Override
    public CalprmElementPrototype getCalprmElement() {
        if (this.calprmElement != null && this.calprmElement.eIsProxy()) {
            InternalEObject oldCalprmElement = (InternalEObject)this.calprmElement;
            this.calprmElement = (CalprmElementPrototype)this.eResolveProxy(oldCalprmElement);
            if (this.calprmElement != oldCalprmElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldCalprmElement, (Object)this.calprmElement));
            }
        }
        return this.calprmElement;
    }

    public CalprmElementPrototype basicGetCalprmElement() {
        return this.calprmElement;
    }

    @Override
    public void setCalprmElement(CalprmElementPrototype newCalprmElement) {
        CalprmElementPrototype oldCalprmElement = this.calprmElement;
        this.calprmElement = newCalprmElement;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCalprmElement, (Object)this.calprmElement));
        }
    }

    @Override
    public boolean _ThecorrespondingportinterfacemustbeaCalprmInterface(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                if (resolve) {
                    return this.getCalprmElement();
                }
                return this.basicGetCalprmElement();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setCalprmElement((CalprmElementPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.setCalprmElement(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.calprmElement != null;
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

