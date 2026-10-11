/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.DiagnosticAudienceEnum;
import autosar40.commonstructure.serviceneeds.DiagnosticCapabilityElement;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.ServiceNeedsImpl;
import java.util.Collection;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class DiagnosticCapabilityElementImpl
extends ServiceNeedsImpl
implements DiagnosticCapabilityElement {
    protected EList<DiagnosticAudienceEnum> audiences;
    protected static final String DIAG_REQUIREMENT_EDEFAULT = "";
    protected String diagRequirement = "";
    protected boolean diagRequirementESet;
    protected static final PositiveIntegerDatatype SECURITY_ACCESS_LEVEL_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype securityAccessLevel = SECURITY_ACCESS_LEVEL_EDEFAULT.clone();
    protected boolean securityAccessLevelESet;

    protected DiagnosticCapabilityElementImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.DIAGNOSTIC_CAPABILITY_ELEMENT;
    }

    @Override
    public EList<DiagnosticAudienceEnum> getAudiences() {
        if (this.audiences == null) {
            this.audiences = new EDataTypeUniqueEList.Unsettable(DiagnosticAudienceEnum.class, (InternalEObject)this, 18);
        }
        return this.audiences;
    }

    @Override
    public void unsetAudiences() {
        if (this.audiences != null) {
            ((InternalEList.Unsettable)this.audiences).unset();
        }
    }

    @Override
    public boolean isSetAudiences() {
        return this.audiences != null && ((InternalEList.Unsettable)this.audiences).isSet();
    }

    @Override
    public String getDiagRequirement() {
        return this.diagRequirement;
    }

    @Override
    public void setDiagRequirement(String newDiagRequirement) {
        String oldDiagRequirement = this.diagRequirement;
        this.diagRequirement = newDiagRequirement;
        boolean oldDiagRequirementESet = this.diagRequirementESet;
        this.diagRequirementESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldDiagRequirement, (Object)this.diagRequirement, !oldDiagRequirementESet));
        }
    }

    @Override
    public void unsetDiagRequirement() {
        String oldDiagRequirement = this.diagRequirement;
        boolean oldDiagRequirementESet = this.diagRequirementESet;
        this.diagRequirement = DIAG_REQUIREMENT_EDEFAULT;
        this.diagRequirementESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldDiagRequirement, (Object)DIAG_REQUIREMENT_EDEFAULT, oldDiagRequirementESet));
        }
    }

    @Override
    public boolean isSetDiagRequirement() {
        return this.diagRequirementESet;
    }

    @Override
    public Long getSecurityAccessLevel() {
        return (Long)this.securityAccessLevel.basicGetValue();
    }

    @Override
    public void setSecurityAccessLevel(Long newSecurityAccessLevel) {
        Long oldSecurityAccessLevel = (Long)this.securityAccessLevel.basicGetValue();
        this.securityAccessLevel.basicSetValue((Object)newSecurityAccessLevel);
        boolean oldSecurityAccessLevelESet = this.securityAccessLevelESet;
        this.securityAccessLevelESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldSecurityAccessLevel, (Object)newSecurityAccessLevel, !oldSecurityAccessLevelESet));
        }
    }

    @Override
    public void unsetSecurityAccessLevel() {
        Long oldSecurityAccessLevel = (Long)this.securityAccessLevel.basicGetValue();
        boolean oldSecurityAccessLevelESet = this.securityAccessLevelESet;
        this.securityAccessLevel = SECURITY_ACCESS_LEVEL_EDEFAULT.clone();
        this.securityAccessLevelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldSecurityAccessLevel, (Object)SECURITY_ACCESS_LEVEL_EDEFAULT, oldSecurityAccessLevelESet));
        }
    }

    @Override
    public boolean isSetSecurityAccessLevel() {
        return this.securityAccessLevelESet;
    }

    @Override
    public PositiveIntegerDatatype getSecurityAccessLevelData() {
        return this.securityAccessLevel.clone();
    }

    @Override
    public void setSecurityAccessLevelData(PositiveIntegerDatatype newSecurityAccessLevel) {
        this.securityAccessLevel.setRadix((int)newSecurityAccessLevel.getRadix());
        this.securityAccessLevel.setNoOfDigits((int)newSecurityAccessLevel.getNoOfDigits());
        this.setSecurityAccessLevel(newSecurityAccessLevel.getValue());
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getAudiences();
            }
            case 19: {
                return this.getDiagRequirement();
            }
            case 20: {
                return this.getSecurityAccessLevel();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.getAudiences().clear();
                this.getAudiences().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.setDiagRequirement((String)newValue);
                return;
            }
            case 20: {
                this.setSecurityAccessLevel((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.unsetAudiences();
                return;
            }
            case 19: {
                this.unsetDiagRequirement();
                return;
            }
            case 20: {
                this.unsetSecurityAccessLevel();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.isSetAudiences();
            }
            case 19: {
                return this.isSetDiagRequirement();
            }
            case 20: {
                return this.isSetSecurityAccessLevel();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (audiences: ");
        result.append(this.audiences);
        result.append(", diagRequirement: ");
        if (this.diagRequirementESet) {
            result.append(this.diagRequirement);
        } else {
            result.append("<unset>");
        }
        result.append(", securityAccessLevel: ");
        if (this.securityAccessLevelESet) {
            result.append(this.securityAccessLevel);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

