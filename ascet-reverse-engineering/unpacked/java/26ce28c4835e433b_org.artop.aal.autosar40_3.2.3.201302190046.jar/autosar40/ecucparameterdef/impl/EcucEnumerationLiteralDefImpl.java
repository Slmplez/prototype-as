/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucConditionSpecification;
import autosar40.ecucparameterdef.EcucEnumerationLiteralDef;
import autosar40.ecucparameterdef.EcucEnumerationParamDef;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class EcucEnumerationLiteralDefImpl
extends IdentifiableImpl
implements EcucEnumerationLiteralDef {
    protected EcucConditionSpecification ecucCond;
    protected static final String ORIGIN_EDEFAULT = "";
    protected String origin = "";
    protected boolean originESet;

    protected EcucEnumerationLiteralDefImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_ENUMERATION_LITERAL_DEF;
    }

    public EcucEnumerationParamDef getEcucEnumerationParamDef() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (EcucEnumerationParamDef)this.eContainer();
    }

    public NotificationChain basicSetEcucEnumerationParamDef(EcucEnumerationParamDef newEcucEnumerationParamDef, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEcucEnumerationParamDef, 18, msgs);
        return msgs;
    }

    public void setEcucEnumerationParamDef(EcucEnumerationParamDef newEcucEnumerationParamDef) {
        if (newEcucEnumerationParamDef != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newEcucEnumerationParamDef != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEcucEnumerationParamDef)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEcucEnumerationParamDef != null) {
                msgs = ((InternalEObject)newEcucEnumerationParamDef).eInverseAdd((InternalEObject)this, 31, EcucEnumerationParamDef.class, msgs);
            }
            if ((msgs = this.basicSetEcucEnumerationParamDef(newEcucEnumerationParamDef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newEcucEnumerationParamDef, (Object)newEcucEnumerationParamDef));
        }
    }

    public EcucConditionSpecification getEcucCond() {
        return this.ecucCond;
    }

    public NotificationChain basicSetEcucCond(EcucConditionSpecification newEcucCond, NotificationChain msgs) {
        EcucConditionSpecification oldEcucCond = this.ecucCond;
        this.ecucCond = newEcucCond;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldEcucCond, (Object)newEcucCond);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setEcucCond(EcucConditionSpecification newEcucCond) {
        if (newEcucCond != this.ecucCond) {
            NotificationChain msgs = null;
            if (this.ecucCond != null) {
                msgs = ((InternalEObject)this.ecucCond).eInverseRemove((InternalEObject)this, -20, null, msgs);
            }
            if (newEcucCond != null) {
                msgs = ((InternalEObject)newEcucCond).eInverseAdd((InternalEObject)this, -20, null, msgs);
            }
            if ((msgs = this.basicSetEcucCond(newEcucCond, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newEcucCond, (Object)newEcucCond));
        }
    }

    public String getOrigin() {
        return this.origin;
    }

    public void setOrigin(String newOrigin) {
        String oldOrigin = this.origin;
        this.origin = newOrigin;
        boolean oldOriginESet = this.originESet;
        this.originESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldOrigin, (Object)this.origin, !oldOriginESet));
        }
    }

    public void unsetOrigin() {
        String oldOrigin = this.origin;
        boolean oldOriginESet = this.originESet;
        this.origin = ORIGIN_EDEFAULT;
        this.originESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldOrigin, (Object)ORIGIN_EDEFAULT, oldOriginESet));
        }
    }

    public boolean isSetOrigin() {
        return this.originESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEcucEnumerationParamDef((EcucEnumerationParamDef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetEcucEnumerationParamDef(null, msgs);
            }
            case 19: {
                return this.basicSetEcucCond(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 31, EcucEnumerationParamDef.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getEcucEnumerationParamDef();
            }
            case 19: {
                return this.getEcucCond();
            }
            case 20: {
                return this.getOrigin();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setEcucEnumerationParamDef((EcucEnumerationParamDef)newValue);
                return;
            }
            case 19: {
                this.setEcucCond((EcucConditionSpecification)newValue);
                return;
            }
            case 20: {
                this.setOrigin((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setEcucEnumerationParamDef(null);
                return;
            }
            case 19: {
                this.setEcucCond(null);
                return;
            }
            case 20: {
                this.unsetOrigin();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getEcucEnumerationParamDef() != null;
            }
            case 19: {
                return this.ecucCond != null;
            }
            case 20: {
                return this.isSetOrigin();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (origin: ");
        if (this.originESet) {
            result.append(this.origin);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

