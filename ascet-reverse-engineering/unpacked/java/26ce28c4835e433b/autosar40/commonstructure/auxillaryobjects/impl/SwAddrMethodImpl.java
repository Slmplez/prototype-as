/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.auxillaryobjects.impl;

import autosar40.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar40.commonstructure.auxillaryobjects.MemoryAllocationKeywordPolicyType;
import autosar40.commonstructure.auxillaryobjects.MemorySectionType;
import autosar40.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwAddrMethodImpl
extends ARElementImpl
implements SwAddrMethod {
    protected static final MemoryAllocationKeywordPolicyType MEMORY_ALLOCATION_KEYWORD_POLICY_EDEFAULT = MemoryAllocationKeywordPolicyType.ADDR_METHOD_SHORT_NAME;
    protected MemoryAllocationKeywordPolicyType memoryAllocationKeywordPolicy = MEMORY_ALLOCATION_KEYWORD_POLICY_EDEFAULT;
    protected boolean memoryAllocationKeywordPolicyESet;
    protected static final String OPTION_EDEFAULT = "";
    protected String option = "";
    protected boolean optionESet;
    protected static final String SECTION_INITIALIZATION_POLICY_EDEFAULT = "";
    protected String sectionInitializationPolicy = "";
    protected boolean sectionInitializationPolicyESet;
    protected static final MemorySectionType SECTION_TYPE_EDEFAULT = MemorySectionType.VAR;
    protected MemorySectionType sectionType = SECTION_TYPE_EDEFAULT;
    protected boolean sectionTypeESet;

    protected SwAddrMethodImpl() {
    }

    protected EClass eStaticClass() {
        return AuxillaryobjectsPackage.Literals.SW_ADDR_METHOD;
    }

    public MemoryAllocationKeywordPolicyType getMemoryAllocationKeywordPolicy() {
        return this.memoryAllocationKeywordPolicy;
    }

    public void setMemoryAllocationKeywordPolicy(MemoryAllocationKeywordPolicyType newMemoryAllocationKeywordPolicy) {
        MemoryAllocationKeywordPolicyType oldMemoryAllocationKeywordPolicy = this.memoryAllocationKeywordPolicy;
        this.memoryAllocationKeywordPolicy = newMemoryAllocationKeywordPolicy == null ? MEMORY_ALLOCATION_KEYWORD_POLICY_EDEFAULT : newMemoryAllocationKeywordPolicy;
        boolean oldMemoryAllocationKeywordPolicyESet = this.memoryAllocationKeywordPolicyESet;
        this.memoryAllocationKeywordPolicyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldMemoryAllocationKeywordPolicy, (Object)this.memoryAllocationKeywordPolicy, !oldMemoryAllocationKeywordPolicyESet));
        }
    }

    public void unsetMemoryAllocationKeywordPolicy() {
        MemoryAllocationKeywordPolicyType oldMemoryAllocationKeywordPolicy = this.memoryAllocationKeywordPolicy;
        boolean oldMemoryAllocationKeywordPolicyESet = this.memoryAllocationKeywordPolicyESet;
        this.memoryAllocationKeywordPolicy = MEMORY_ALLOCATION_KEYWORD_POLICY_EDEFAULT;
        this.memoryAllocationKeywordPolicyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldMemoryAllocationKeywordPolicy, (Object)MEMORY_ALLOCATION_KEYWORD_POLICY_EDEFAULT, oldMemoryAllocationKeywordPolicyESet));
        }
    }

    public boolean isSetMemoryAllocationKeywordPolicy() {
        return this.memoryAllocationKeywordPolicyESet;
    }

    public String getOption() {
        return this.option;
    }

    public void setOption(String newOption) {
        String oldOption = this.option;
        this.option = newOption;
        boolean oldOptionESet = this.optionESet;
        this.optionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldOption, (Object)this.option, !oldOptionESet));
        }
    }

    public void unsetOption() {
        String oldOption = this.option;
        boolean oldOptionESet = this.optionESet;
        this.option = "";
        this.optionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldOption, (Object)"", oldOptionESet));
        }
    }

    public boolean isSetOption() {
        return this.optionESet;
    }

    public String getSectionInitializationPolicy() {
        return this.sectionInitializationPolicy;
    }

    public void setSectionInitializationPolicy(String newSectionInitializationPolicy) {
        String oldSectionInitializationPolicy = this.sectionInitializationPolicy;
        this.sectionInitializationPolicy = newSectionInitializationPolicy;
        boolean oldSectionInitializationPolicyESet = this.sectionInitializationPolicyESet;
        this.sectionInitializationPolicyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldSectionInitializationPolicy, (Object)this.sectionInitializationPolicy, !oldSectionInitializationPolicyESet));
        }
    }

    public void unsetSectionInitializationPolicy() {
        String oldSectionInitializationPolicy = this.sectionInitializationPolicy;
        boolean oldSectionInitializationPolicyESet = this.sectionInitializationPolicyESet;
        this.sectionInitializationPolicy = "";
        this.sectionInitializationPolicyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldSectionInitializationPolicy, (Object)"", oldSectionInitializationPolicyESet));
        }
    }

    public boolean isSetSectionInitializationPolicy() {
        return this.sectionInitializationPolicyESet;
    }

    public MemorySectionType getSectionType() {
        return this.sectionType;
    }

    public void setSectionType(MemorySectionType newSectionType) {
        MemorySectionType oldSectionType = this.sectionType;
        this.sectionType = newSectionType == null ? SECTION_TYPE_EDEFAULT : newSectionType;
        boolean oldSectionTypeESet = this.sectionTypeESet;
        this.sectionTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldSectionType, (Object)this.sectionType, !oldSectionTypeESet));
        }
    }

    public void unsetSectionType() {
        MemorySectionType oldSectionType = this.sectionType;
        boolean oldSectionTypeESet = this.sectionTypeESet;
        this.sectionType = SECTION_TYPE_EDEFAULT;
        this.sectionTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldSectionType, (Object)SECTION_TYPE_EDEFAULT, oldSectionTypeESet));
        }
    }

    public boolean isSetSectionType() {
        return this.sectionTypeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getMemoryAllocationKeywordPolicy();
            }
            case 22: {
                return this.getOption();
            }
            case 23: {
                return this.getSectionInitializationPolicy();
            }
            case 24: {
                return this.getSectionType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setMemoryAllocationKeywordPolicy((MemoryAllocationKeywordPolicyType)((Object)newValue));
                return;
            }
            case 22: {
                this.setOption((String)newValue);
                return;
            }
            case 23: {
                this.setSectionInitializationPolicy((String)newValue);
                return;
            }
            case 24: {
                this.setSectionType((MemorySectionType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetMemoryAllocationKeywordPolicy();
                return;
            }
            case 22: {
                this.unsetOption();
                return;
            }
            case 23: {
                this.unsetSectionInitializationPolicy();
                return;
            }
            case 24: {
                this.unsetSectionType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetMemoryAllocationKeywordPolicy();
            }
            case 22: {
                return this.isSetOption();
            }
            case 23: {
                return this.isSetSectionInitializationPolicy();
            }
            case 24: {
                return this.isSetSectionType();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (memoryAllocationKeywordPolicy: ");
        if (this.memoryAllocationKeywordPolicyESet) {
            result.append((Object)this.memoryAllocationKeywordPolicy);
        } else {
            result.append("<unset>");
        }
        result.append(", option: ");
        if (this.optionESet) {
            result.append(this.option);
        } else {
            result.append("<unset>");
        }
        result.append(", sectionInitializationPolicy: ");
        if (this.sectionInitializationPolicyESet) {
            result.append(this.sectionInitializationPolicy);
        } else {
            result.append("<unset>");
        }
        result.append(", sectionType: ");
        if (this.sectionTypeESet) {
            result.append((Object)this.sectionType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

