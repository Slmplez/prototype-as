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
package autosar3x.swcomponent.communication.impl;

import autosar3x.swcomponent.communication.CommunicationPackage;
import autosar3x.swcomponent.communication.ParameterRequireComSpec;
import autosar3x.swcomponent.communication.impl.RPortComSpecImpl;
import autosar3x.swcomponent.datatype.constants.ValueSpecification;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.InitValueAssignment;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ParameterRequireComSpecImpl
extends RPortComSpecImpl
implements ParameterRequireComSpec,
IReferringClass {
    protected ValueSpecification initValue;
    protected CalprmElementPrototype parameter;

    protected ParameterRequireComSpecImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.PARAMETER_REQUIRE_COM_SPEC;
    }

    @Override
    public ValueSpecification getInitValue() {
        if (this.initValue != null && this.initValue.eIsProxy()) {
            InternalEObject oldInitValue = (InternalEObject)this.initValue;
            this.initValue = (ValueSpecification)this.eResolveProxy(oldInitValue);
            if (this.initValue != oldInitValue && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldInitValue, (Object)this.initValue));
            }
        }
        return this.initValue;
    }

    public ValueSpecification basicGetInitValue() {
        return this.initValue;
    }

    @Override
    public void setInitValue(ValueSpecification newInitValue) {
        ValueSpecification oldInitValue = this.initValue;
        this.initValue = newInitValue;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldInitValue, (Object)this.initValue));
        }
    }

    @Override
    public CalprmElementPrototype getParameter() {
        if (this.parameter != null && this.parameter.eIsProxy()) {
            InternalEObject oldParameter = (InternalEObject)this.parameter;
            this.parameter = (CalprmElementPrototype)this.eResolveProxy(oldParameter);
            if (this.parameter != oldParameter && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldParameter, (Object)this.parameter));
            }
        }
        return this.parameter;
    }

    public CalprmElementPrototype basicGetParameter() {
        return this.parameter;
    }

    @Override
    public void setParameter(CalprmElementPrototype newParameter) {
        CalprmElementPrototype oldParameter = this.parameter;
        this.parameter = newParameter;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldParameter, (Object)this.parameter));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                if (resolve) {
                    return this.getInitValue();
                }
                return this.basicGetInitValue();
            }
            case 6: {
                if (resolve) {
                    return this.getParameter();
                }
                return this.basicGetParameter();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setInitValue((ValueSpecification)newValue);
                return;
            }
            case 6: {
                this.setParameter((CalprmElementPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setInitValue(null);
                return;
            }
            case 6: {
                this.setParameter(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.initValue != null;
            }
            case 6: {
                return this.parameter != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == InitValueAssignment.class) {
            switch (derivedFeatureID) {
                case 5: {
                    return 4;
                }
                case 6: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == InitValueAssignment.class) {
            switch (baseFeatureID) {
                case 4: {
                    return 5;
                }
                case 5: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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

