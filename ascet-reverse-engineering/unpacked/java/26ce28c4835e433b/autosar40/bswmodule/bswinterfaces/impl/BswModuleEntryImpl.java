/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.bswmodule.bswinterfaces.impl;

import autosar40.bswmodule.bswinterfaces.BswCallType;
import autosar40.bswmodule.bswinterfaces.BswExecutionContext;
import autosar40.bswmodule.bswinterfaces.BswModuleEntry;
import autosar40.bswmodule.bswinterfaces.BswinterfacesPackage;
import autosar40.commonstructure.serviceprocesstask.SwServiceArg;
import autosar40.commonstructure.serviceprocesstask.SwServiceImplPolicyEnum;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import java.util.Collection;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BswModuleEntryImpl
extends ARElementImpl
implements BswModuleEntry {
    protected static final String SHORT_NAME_PATTERN_EDEFAULT = "";
    protected String shortNamePattern = "";
    protected boolean shortNamePatternESet;
    protected static final PositiveIntegerDatatype SERVICE_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype serviceId = SERVICE_ID_EDEFAULT.clone();
    protected boolean serviceIdESet;
    protected static final String ROLE_EDEFAULT = "";
    protected String role = "";
    protected boolean roleESet;
    protected static final Boolean IS_REENTRANT_EDEFAULT = Boolean.FALSE;
    protected Boolean isReentrant = IS_REENTRANT_EDEFAULT;
    protected boolean isReentrantESet;
    protected static final Boolean IS_SYNCHRONOUS_EDEFAULT = Boolean.FALSE;
    protected Boolean isSynchronous = IS_SYNCHRONOUS_EDEFAULT;
    protected boolean isSynchronousESet;
    protected static final BswCallType CALL_TYPE_EDEFAULT = BswCallType.REGULAR;
    protected BswCallType callType = CALL_TYPE_EDEFAULT;
    protected boolean callTypeESet;
    protected static final BswExecutionContext EXECUTION_CONTEXT_EDEFAULT = BswExecutionContext.TASK;
    protected BswExecutionContext executionContext = EXECUTION_CONTEXT_EDEFAULT;
    protected boolean executionContextESet;
    protected static final SwServiceImplPolicyEnum SW_SERVICE_IMPL_POLICY_EDEFAULT = SwServiceImplPolicyEnum.STANDARD;
    protected SwServiceImplPolicyEnum swServiceImplPolicy = SW_SERVICE_IMPL_POLICY_EDEFAULT;
    protected boolean swServiceImplPolicyESet;
    protected SwServiceArg returnType;
    protected EList<SwServiceArg> arguments;

    protected BswModuleEntryImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BswinterfacesPackage.Literals.BSW_MODULE_ENTRY;
    }

    @Override
    public String getShortNamePattern() {
        return this.shortNamePattern;
    }

    @Override
    public void setShortNamePattern(String newShortNamePattern) {
        String oldShortNamePattern = this.shortNamePattern;
        this.shortNamePattern = newShortNamePattern;
        boolean oldShortNamePatternESet = this.shortNamePatternESet;
        this.shortNamePatternESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldShortNamePattern, (Object)this.shortNamePattern, !oldShortNamePatternESet));
        }
    }

    @Override
    public void unsetShortNamePattern() {
        String oldShortNamePattern = this.shortNamePattern;
        boolean oldShortNamePatternESet = this.shortNamePatternESet;
        this.shortNamePattern = "";
        this.shortNamePatternESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldShortNamePattern, (Object)"", oldShortNamePatternESet));
        }
    }

    @Override
    public boolean isSetShortNamePattern() {
        return this.shortNamePatternESet;
    }

    @Override
    public Long getServiceId() {
        return (Long)this.serviceId.basicGetValue();
    }

    @Override
    public void setServiceId(Long newServiceId) {
        Long oldServiceId = (Long)this.serviceId.basicGetValue();
        this.serviceId.basicSetValue((Object)newServiceId);
        boolean oldServiceIdESet = this.serviceIdESet;
        this.serviceIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldServiceId, (Object)newServiceId, !oldServiceIdESet));
        }
    }

    @Override
    public void unsetServiceId() {
        Long oldServiceId = (Long)this.serviceId.basicGetValue();
        boolean oldServiceIdESet = this.serviceIdESet;
        this.serviceId = SERVICE_ID_EDEFAULT.clone();
        this.serviceIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldServiceId, (Object)SERVICE_ID_EDEFAULT, oldServiceIdESet));
        }
    }

    @Override
    public boolean isSetServiceId() {
        return this.serviceIdESet;
    }

    @Override
    public String getRole() {
        return this.role;
    }

    @Override
    public void setRole(String newRole) {
        String oldRole = this.role;
        this.role = newRole;
        boolean oldRoleESet = this.roleESet;
        this.roleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldRole, (Object)this.role, !oldRoleESet));
        }
    }

    @Override
    public void unsetRole() {
        String oldRole = this.role;
        boolean oldRoleESet = this.roleESet;
        this.role = "";
        this.roleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldRole, (Object)"", oldRoleESet));
        }
    }

    @Override
    public boolean isSetRole() {
        return this.roleESet;
    }

    @Override
    public Boolean getIsReentrant() {
        return this.isReentrant;
    }

    @Override
    public void setIsReentrant(Boolean newIsReentrant) {
        Boolean oldIsReentrant = this.isReentrant;
        this.isReentrant = newIsReentrant;
        boolean oldIsReentrantESet = this.isReentrantESet;
        this.isReentrantESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldIsReentrant, (Object)this.isReentrant, !oldIsReentrantESet));
        }
    }

    @Override
    public void unsetIsReentrant() {
        Boolean oldIsReentrant = this.isReentrant;
        boolean oldIsReentrantESet = this.isReentrantESet;
        this.isReentrant = IS_REENTRANT_EDEFAULT;
        this.isReentrantESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldIsReentrant, (Object)IS_REENTRANT_EDEFAULT, oldIsReentrantESet));
        }
    }

    @Override
    public boolean isSetIsReentrant() {
        return this.isReentrantESet;
    }

    @Override
    public Boolean getIsSynchronous() {
        return this.isSynchronous;
    }

    @Override
    public void setIsSynchronous(Boolean newIsSynchronous) {
        Boolean oldIsSynchronous = this.isSynchronous;
        this.isSynchronous = newIsSynchronous;
        boolean oldIsSynchronousESet = this.isSynchronousESet;
        this.isSynchronousESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldIsSynchronous, (Object)this.isSynchronous, !oldIsSynchronousESet));
        }
    }

    @Override
    public void unsetIsSynchronous() {
        Boolean oldIsSynchronous = this.isSynchronous;
        boolean oldIsSynchronousESet = this.isSynchronousESet;
        this.isSynchronous = IS_SYNCHRONOUS_EDEFAULT;
        this.isSynchronousESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldIsSynchronous, (Object)IS_SYNCHRONOUS_EDEFAULT, oldIsSynchronousESet));
        }
    }

    @Override
    public boolean isSetIsSynchronous() {
        return this.isSynchronousESet;
    }

    @Override
    public BswCallType getCallType() {
        return this.callType;
    }

    @Override
    public void setCallType(BswCallType newCallType) {
        BswCallType oldCallType = this.callType;
        this.callType = newCallType == null ? CALL_TYPE_EDEFAULT : newCallType;
        boolean oldCallTypeESet = this.callTypeESet;
        this.callTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldCallType, (Object)this.callType, !oldCallTypeESet));
        }
    }

    @Override
    public void unsetCallType() {
        BswCallType oldCallType = this.callType;
        boolean oldCallTypeESet = this.callTypeESet;
        this.callType = CALL_TYPE_EDEFAULT;
        this.callTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldCallType, (Object)CALL_TYPE_EDEFAULT, oldCallTypeESet));
        }
    }

    @Override
    public boolean isSetCallType() {
        return this.callTypeESet;
    }

    @Override
    public BswExecutionContext getExecutionContext() {
        return this.executionContext;
    }

    @Override
    public void setExecutionContext(BswExecutionContext newExecutionContext) {
        BswExecutionContext oldExecutionContext = this.executionContext;
        this.executionContext = newExecutionContext == null ? EXECUTION_CONTEXT_EDEFAULT : newExecutionContext;
        boolean oldExecutionContextESet = this.executionContextESet;
        this.executionContextESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldExecutionContext, (Object)this.executionContext, !oldExecutionContextESet));
        }
    }

    @Override
    public void unsetExecutionContext() {
        BswExecutionContext oldExecutionContext = this.executionContext;
        boolean oldExecutionContextESet = this.executionContextESet;
        this.executionContext = EXECUTION_CONTEXT_EDEFAULT;
        this.executionContextESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldExecutionContext, (Object)EXECUTION_CONTEXT_EDEFAULT, oldExecutionContextESet));
        }
    }

    @Override
    public boolean isSetExecutionContext() {
        return this.executionContextESet;
    }

    @Override
    public SwServiceImplPolicyEnum getSwServiceImplPolicy() {
        return this.swServiceImplPolicy;
    }

    @Override
    public void setSwServiceImplPolicy(SwServiceImplPolicyEnum newSwServiceImplPolicy) {
        SwServiceImplPolicyEnum oldSwServiceImplPolicy = this.swServiceImplPolicy;
        this.swServiceImplPolicy = newSwServiceImplPolicy == null ? SW_SERVICE_IMPL_POLICY_EDEFAULT : newSwServiceImplPolicy;
        boolean oldSwServiceImplPolicyESet = this.swServiceImplPolicyESet;
        this.swServiceImplPolicyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldSwServiceImplPolicy, (Object)this.swServiceImplPolicy, !oldSwServiceImplPolicyESet));
        }
    }

    @Override
    public void unsetSwServiceImplPolicy() {
        SwServiceImplPolicyEnum oldSwServiceImplPolicy = this.swServiceImplPolicy;
        boolean oldSwServiceImplPolicyESet = this.swServiceImplPolicyESet;
        this.swServiceImplPolicy = SW_SERVICE_IMPL_POLICY_EDEFAULT;
        this.swServiceImplPolicyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldSwServiceImplPolicy, (Object)SW_SERVICE_IMPL_POLICY_EDEFAULT, oldSwServiceImplPolicyESet));
        }
    }

    @Override
    public boolean isSetSwServiceImplPolicy() {
        return this.swServiceImplPolicyESet;
    }

    @Override
    public SwServiceArg getReturnType() {
        return this.returnType;
    }

    public NotificationChain basicSetReturnType(SwServiceArg newReturnType, NotificationChain msgs) {
        SwServiceArg oldReturnType = this.returnType;
        this.returnType = newReturnType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldReturnType, (Object)newReturnType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setReturnType(SwServiceArg newReturnType) {
        if (newReturnType != this.returnType) {
            NotificationChain msgs = null;
            if (this.returnType != null) {
                msgs = ((InternalEObject)this.returnType).eInverseRemove((InternalEObject)this, -30, null, msgs);
            }
            if (newReturnType != null) {
                msgs = ((InternalEObject)newReturnType).eInverseAdd((InternalEObject)this, -30, null, msgs);
            }
            if ((msgs = this.basicSetReturnType(newReturnType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)newReturnType, (Object)newReturnType));
        }
    }

    @Override
    public EList<SwServiceArg> getArguments() {
        if (this.arguments == null) {
            this.arguments = new EObjectContainmentEList(SwServiceArg.class, (InternalEObject)this, 30);
        }
        return this.arguments;
    }

    @Override
    public PositiveIntegerDatatype getServiceIdData() {
        return this.serviceId.clone();
    }

    @Override
    public void setServiceIdData(PositiveIntegerDatatype newServiceId) {
        this.serviceId.setRadix((int)newServiceId.getRadix());
        this.serviceId.setNoOfDigits((int)newServiceId.getNoOfDigits());
        this.setServiceId(newServiceId.getValue());
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 29: {
                return this.basicSetReturnType(null, msgs);
            }
            case 30: {
                return ((InternalEList)this.getArguments()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getShortNamePattern();
            }
            case 22: {
                return this.getServiceId();
            }
            case 23: {
                return this.getRole();
            }
            case 24: {
                return this.getIsReentrant();
            }
            case 25: {
                return this.getIsSynchronous();
            }
            case 26: {
                return this.getCallType();
            }
            case 27: {
                return this.getExecutionContext();
            }
            case 28: {
                return this.getSwServiceImplPolicy();
            }
            case 29: {
                return this.getReturnType();
            }
            case 30: {
                return this.getArguments();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setShortNamePattern((String)newValue);
                return;
            }
            case 22: {
                this.setServiceId((Long)newValue);
                return;
            }
            case 23: {
                this.setRole((String)newValue);
                return;
            }
            case 24: {
                this.setIsReentrant((Boolean)newValue);
                return;
            }
            case 25: {
                this.setIsSynchronous((Boolean)newValue);
                return;
            }
            case 26: {
                this.setCallType((BswCallType)((Object)newValue));
                return;
            }
            case 27: {
                this.setExecutionContext((BswExecutionContext)((Object)newValue));
                return;
            }
            case 28: {
                this.setSwServiceImplPolicy((SwServiceImplPolicyEnum)((Object)newValue));
                return;
            }
            case 29: {
                this.setReturnType((SwServiceArg)newValue);
                return;
            }
            case 30: {
                this.getArguments().clear();
                this.getArguments().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetShortNamePattern();
                return;
            }
            case 22: {
                this.unsetServiceId();
                return;
            }
            case 23: {
                this.unsetRole();
                return;
            }
            case 24: {
                this.unsetIsReentrant();
                return;
            }
            case 25: {
                this.unsetIsSynchronous();
                return;
            }
            case 26: {
                this.unsetCallType();
                return;
            }
            case 27: {
                this.unsetExecutionContext();
                return;
            }
            case 28: {
                this.unsetSwServiceImplPolicy();
                return;
            }
            case 29: {
                this.setReturnType(null);
                return;
            }
            case 30: {
                this.getArguments().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetShortNamePattern();
            }
            case 22: {
                return this.isSetServiceId();
            }
            case 23: {
                return this.isSetRole();
            }
            case 24: {
                return this.isSetIsReentrant();
            }
            case 25: {
                return this.isSetIsSynchronous();
            }
            case 26: {
                return this.isSetCallType();
            }
            case 27: {
                return this.isSetExecutionContext();
            }
            case 28: {
                return this.isSetSwServiceImplPolicy();
            }
            case 29: {
                return this.returnType != null;
            }
            case 30: {
                return this.arguments != null && !this.arguments.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == AtpBlueprint.class) {
            switch (derivedFeatureID) {
                case 21: {
                    return 18;
                }
            }
            return -1;
        }
        if (baseClass == AtpBlueprintable.class) {
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == AtpBlueprint.class) {
            switch (baseFeatureID) {
                case 18: {
                    return 21;
                }
            }
            return -1;
        }
        if (baseClass == AtpBlueprintable.class) {
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (shortNamePattern: ");
        if (this.shortNamePatternESet) {
            result.append(this.shortNamePattern);
        } else {
            result.append("<unset>");
        }
        result.append(", serviceId: ");
        if (this.serviceIdESet) {
            result.append(this.serviceId);
        } else {
            result.append("<unset>");
        }
        result.append(", role: ");
        if (this.roleESet) {
            result.append(this.role);
        } else {
            result.append("<unset>");
        }
        result.append(", isReentrant: ");
        if (this.isReentrantESet) {
            result.append(this.isReentrant);
        } else {
            result.append("<unset>");
        }
        result.append(", isSynchronous: ");
        if (this.isSynchronousESet) {
            result.append(this.isSynchronous);
        } else {
            result.append("<unset>");
        }
        result.append(", callType: ");
        if (this.callTypeESet) {
            result.append((Object)this.callType);
        } else {
            result.append("<unset>");
        }
        result.append(", executionContext: ");
        if (this.executionContextESet) {
            result.append((Object)this.executionContext);
        } else {
            result.append("<unset>");
        }
        result.append(", swServiceImplPolicy: ");
        if (this.swServiceImplPolicyESet) {
            result.append((Object)this.swServiceImplPolicy);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

