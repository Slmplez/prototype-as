/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gconstants.GValueSpecification
 *  gautosar.gswcomponents.gcommunication.GNonqueuedSenderComSpec
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
import autosar3x.swcomponent.communication.UnqueuedSenderComSpec;
import autosar3x.swcomponent.communication.impl.SenderComSpecImpl;
import autosar3x.swcomponent.datatype.constants.ValueSpecification;
import gautosar.gcommonstructure.gconstants.GValueSpecification;
import gautosar.gswcomponents.gcommunication.GNonqueuedSenderComSpec;
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
public class UnqueuedSenderComSpecImpl
extends SenderComSpecImpl
implements UnqueuedSenderComSpec,
IReferringClass {
    protected static final Boolean CAN_INVALIDATE_EDEFAULT = Boolean.FALSE;
    protected Boolean canInvalidate = CAN_INVALIDATE_EDEFAULT;
    protected boolean canInvalidateESet;
    protected ValueSpecification initValue;

    protected UnqueuedSenderComSpecImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.UNQUEUED_SENDER_COM_SPEC;
    }

    public GValueSpecification gGetInitValue() {
        return this.getInitValue();
    }

    public void gSetInitValue(GValueSpecification newGInitValue) {
        this.setInitValue((ValueSpecification)newGInitValue);
    }

    @Override
    public Boolean getCanInvalidate() {
        return this.canInvalidate;
    }

    @Override
    public void setCanInvalidate(Boolean newCanInvalidate) {
        Boolean oldCanInvalidate = this.canInvalidate;
        this.canInvalidate = newCanInvalidate;
        boolean oldCanInvalidateESet = this.canInvalidateESet;
        this.canInvalidateESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldCanInvalidate, (Object)this.canInvalidate, !oldCanInvalidateESet));
        }
    }

    @Override
    public void unsetCanInvalidate() {
        Boolean oldCanInvalidate = this.canInvalidate;
        boolean oldCanInvalidateESet = this.canInvalidateESet;
        this.canInvalidate = CAN_INVALIDATE_EDEFAULT;
        this.canInvalidateESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldCanInvalidate, (Object)CAN_INVALIDATE_EDEFAULT, oldCanInvalidateESet));
        }
    }

    @Override
    public boolean isSetCanInvalidate() {
        return this.canInvalidateESet;
    }

    @Override
    public ValueSpecification getInitValue() {
        if (this.initValue != null && this.initValue.eIsProxy()) {
            InternalEObject oldInitValue = (InternalEObject)this.initValue;
            this.initValue = (ValueSpecification)this.eResolveProxy(oldInitValue);
            if (this.initValue != oldInitValue && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 11, (Object)oldInitValue, (Object)this.initValue));
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
        AutosarObjectUtil.setDest((EObject)this, (int)11, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldInitValue, (Object)this.initValue));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 9: {
                return this.gGetInitValue();
            }
            case 10: {
                return this.getCanInvalidate();
            }
            case 11: {
                if (resolve) {
                    return this.getInitValue();
                }
                return this.basicGetInitValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 9: {
                this.gSetInitValue((GValueSpecification)newValue);
                return;
            }
            case 10: {
                this.setCanInvalidate((Boolean)newValue);
                return;
            }
            case 11: {
                this.setInitValue((ValueSpecification)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 9: {
                this.gSetInitValue(null);
                return;
            }
            case 10: {
                this.unsetCanInvalidate();
                return;
            }
            case 11: {
                this.setInitValue(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 9: {
                return this.gGetInitValue() != null;
            }
            case 10: {
                return this.isSetCanInvalidate();
            }
            case 11: {
                return this.initValue != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GNonqueuedSenderComSpec.class) {
            switch (derivedFeatureID) {
                case 9: {
                    return 3;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GNonqueuedSenderComSpec.class) {
            switch (baseFeatureID) {
                case 3: {
                    return 9;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    @Override
    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    @Override
    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    @Override
    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    @Override
    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (canInvalidate: ");
        if (this.canInvalidateESet) {
            result.append(this.canInvalidate);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

