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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.bswmodule.bswoverview.impl;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.bswmodule.bswinterfaces.BswModuleDependency;
import autosar40.bswmodule.bswinterfaces.BswModuleEntryRefConditional;
import autosar40.bswmodule.bswoverview.BswModuleDescription;
import autosar40.bswmodule.bswoverview.BswoverviewPackage;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.swcomponent.softwarecomponentdocumentation.SwComponentDocumentation;
import java.util.Collection;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BswModuleDescriptionImpl
extends ARElementImpl
implements BswModuleDescription {
    protected static final String SHORT_NAME_PATTERN_EDEFAULT = "";
    protected String shortNamePattern = "";
    protected boolean shortNamePatternESet;
    protected AtpClassifier atpClassifier;
    protected static final PositiveIntegerDatatype MODULE_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype moduleId = MODULE_ID_EDEFAULT.clone();
    protected boolean moduleIdESet;
    protected EList<SwComponentDocumentation> bswModuleDocumentations;
    protected EList<BswModuleEntryRefConditional> providedEntries;
    protected EList<BswModuleEntryRefConditional> outgoingCallbacks;
    protected EList<BswModuleDependency> bswModuleDependencies;
    protected EList<ModeDeclarationGroupPrototype> providedModeGroups;
    protected EList<ModeDeclarationGroupPrototype> requiredModeGroups;
    protected EList<Trigger> releasedTriggers;
    protected EList<Trigger> requiredTriggers;
    protected EList<BswInternalBehavior> internalBehaviors;

    protected BswModuleDescriptionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BswoverviewPackage.Literals.BSW_MODULE_DESCRIPTION;
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
        this.shortNamePattern = SHORT_NAME_PATTERN_EDEFAULT;
        this.shortNamePatternESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldShortNamePattern, (Object)SHORT_NAME_PATTERN_EDEFAULT, oldShortNamePatternESet));
        }
    }

    @Override
    public boolean isSetShortNamePattern() {
        return this.shortNamePatternESet;
    }

    @Override
    public AtpClassifier getAtpClassifier() {
        if (this.atpClassifier != null && this.atpClassifier.eIsProxy()) {
            InternalEObject oldAtpClassifier = (InternalEObject)this.atpClassifier;
            this.atpClassifier = (AtpClassifier)this.eResolveProxy(oldAtpClassifier);
            if (this.atpClassifier != oldAtpClassifier && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldAtpClassifier, (Object)this.atpClassifier));
            }
        }
        return this.atpClassifier;
    }

    public AtpClassifier basicGetAtpClassifier() {
        return this.atpClassifier;
    }

    @Override
    public void setAtpClassifier(AtpClassifier newAtpClassifier) {
        AtpClassifier oldAtpClassifier = this.atpClassifier;
        this.atpClassifier = newAtpClassifier;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldAtpClassifier, (Object)this.atpClassifier));
        }
    }

    @Override
    public Long getModuleId() {
        return (Long)this.moduleId.basicGetValue();
    }

    @Override
    public void setModuleId(Long newModuleId) {
        Long oldModuleId = (Long)this.moduleId.basicGetValue();
        this.moduleId.basicSetValue((Object)newModuleId);
        boolean oldModuleIdESet = this.moduleIdESet;
        this.moduleIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldModuleId, (Object)newModuleId, !oldModuleIdESet));
        }
    }

    @Override
    public void unsetModuleId() {
        Long oldModuleId = (Long)this.moduleId.basicGetValue();
        boolean oldModuleIdESet = this.moduleIdESet;
        this.moduleId = MODULE_ID_EDEFAULT.clone();
        this.moduleIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldModuleId, (Object)MODULE_ID_EDEFAULT, oldModuleIdESet));
        }
    }

    @Override
    public boolean isSetModuleId() {
        return this.moduleIdESet;
    }

    @Override
    public EList<SwComponentDocumentation> getBswModuleDocumentations() {
        if (this.bswModuleDocumentations == null) {
            this.bswModuleDocumentations = new EObjectContainmentEList(SwComponentDocumentation.class, (InternalEObject)this, 24);
        }
        return this.bswModuleDocumentations;
    }

    @Override
    public EList<BswModuleEntryRefConditional> getProvidedEntries() {
        if (this.providedEntries == null) {
            this.providedEntries = new EObjectContainmentEList(BswModuleEntryRefConditional.class, (InternalEObject)this, 25);
        }
        return this.providedEntries;
    }

    @Override
    public EList<BswModuleEntryRefConditional> getOutgoingCallbacks() {
        if (this.outgoingCallbacks == null) {
            this.outgoingCallbacks = new EObjectContainmentEList(BswModuleEntryRefConditional.class, (InternalEObject)this, 26);
        }
        return this.outgoingCallbacks;
    }

    @Override
    public EList<BswModuleDependency> getBswModuleDependencies() {
        if (this.bswModuleDependencies == null) {
            this.bswModuleDependencies = new EObjectContainmentWithInverseEList(BswModuleDependency.class, (InternalEObject)this, 27, 18);
        }
        return this.bswModuleDependencies;
    }

    @Override
    public EList<ModeDeclarationGroupPrototype> getProvidedModeGroups() {
        if (this.providedModeGroups == null) {
            this.providedModeGroups = new EObjectContainmentEList(ModeDeclarationGroupPrototype.class, (InternalEObject)this, 28);
        }
        return this.providedModeGroups;
    }

    @Override
    public EList<ModeDeclarationGroupPrototype> getRequiredModeGroups() {
        if (this.requiredModeGroups == null) {
            this.requiredModeGroups = new EObjectContainmentEList(ModeDeclarationGroupPrototype.class, (InternalEObject)this, 29);
        }
        return this.requiredModeGroups;
    }

    @Override
    public EList<Trigger> getReleasedTriggers() {
        if (this.releasedTriggers == null) {
            this.releasedTriggers = new EObjectContainmentEList(Trigger.class, (InternalEObject)this, 30);
        }
        return this.releasedTriggers;
    }

    @Override
    public EList<Trigger> getRequiredTriggers() {
        if (this.requiredTriggers == null) {
            this.requiredTriggers = new EObjectContainmentEList(Trigger.class, (InternalEObject)this, 31);
        }
        return this.requiredTriggers;
    }

    @Override
    public EList<BswInternalBehavior> getInternalBehaviors() {
        if (this.internalBehaviors == null) {
            this.internalBehaviors = new EObjectContainmentWithInverseEList(BswInternalBehavior.class, (InternalEObject)this, 32, 25);
        }
        return this.internalBehaviors;
    }

    @Override
    public PositiveIntegerDatatype getModuleIdData() {
        return this.moduleId.clone();
    }

    @Override
    public void setModuleIdData(PositiveIntegerDatatype newModuleId) {
        this.moduleId.setRadix((int)newModuleId.getRadix());
        this.moduleId.setNoOfDigits((int)newModuleId.getNoOfDigits());
        this.setModuleId(newModuleId.getValue());
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 27: {
                return ((InternalEList)this.getBswModuleDependencies()).basicAdd((Object)otherEnd, msgs);
            }
            case 32: {
                return ((InternalEList)this.getInternalBehaviors()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 24: {
                return ((InternalEList)this.getBswModuleDocumentations()).basicRemove((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getProvidedEntries()).basicRemove((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getOutgoingCallbacks()).basicRemove((Object)otherEnd, msgs);
            }
            case 27: {
                return ((InternalEList)this.getBswModuleDependencies()).basicRemove((Object)otherEnd, msgs);
            }
            case 28: {
                return ((InternalEList)this.getProvidedModeGroups()).basicRemove((Object)otherEnd, msgs);
            }
            case 29: {
                return ((InternalEList)this.getRequiredModeGroups()).basicRemove((Object)otherEnd, msgs);
            }
            case 30: {
                return ((InternalEList)this.getReleasedTriggers()).basicRemove((Object)otherEnd, msgs);
            }
            case 31: {
                return ((InternalEList)this.getRequiredTriggers()).basicRemove((Object)otherEnd, msgs);
            }
            case 32: {
                return ((InternalEList)this.getInternalBehaviors()).basicRemove((Object)otherEnd, msgs);
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
                if (resolve) {
                    return this.getAtpClassifier();
                }
                return this.basicGetAtpClassifier();
            }
            case 23: {
                return this.getModuleId();
            }
            case 24: {
                return this.getBswModuleDocumentations();
            }
            case 25: {
                return this.getProvidedEntries();
            }
            case 26: {
                return this.getOutgoingCallbacks();
            }
            case 27: {
                return this.getBswModuleDependencies();
            }
            case 28: {
                return this.getProvidedModeGroups();
            }
            case 29: {
                return this.getRequiredModeGroups();
            }
            case 30: {
                return this.getReleasedTriggers();
            }
            case 31: {
                return this.getRequiredTriggers();
            }
            case 32: {
                return this.getInternalBehaviors();
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
                this.setAtpClassifier((AtpClassifier)newValue);
                return;
            }
            case 23: {
                this.setModuleId((Long)newValue);
                return;
            }
            case 24: {
                this.getBswModuleDocumentations().clear();
                this.getBswModuleDocumentations().addAll((Collection)newValue);
                return;
            }
            case 25: {
                this.getProvidedEntries().clear();
                this.getProvidedEntries().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getOutgoingCallbacks().clear();
                this.getOutgoingCallbacks().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.getBswModuleDependencies().clear();
                this.getBswModuleDependencies().addAll((Collection)newValue);
                return;
            }
            case 28: {
                this.getProvidedModeGroups().clear();
                this.getProvidedModeGroups().addAll((Collection)newValue);
                return;
            }
            case 29: {
                this.getRequiredModeGroups().clear();
                this.getRequiredModeGroups().addAll((Collection)newValue);
                return;
            }
            case 30: {
                this.getReleasedTriggers().clear();
                this.getReleasedTriggers().addAll((Collection)newValue);
                return;
            }
            case 31: {
                this.getRequiredTriggers().clear();
                this.getRequiredTriggers().addAll((Collection)newValue);
                return;
            }
            case 32: {
                this.getInternalBehaviors().clear();
                this.getInternalBehaviors().addAll((Collection)newValue);
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
                this.setAtpClassifier(null);
                return;
            }
            case 23: {
                this.unsetModuleId();
                return;
            }
            case 24: {
                this.getBswModuleDocumentations().clear();
                return;
            }
            case 25: {
                this.getProvidedEntries().clear();
                return;
            }
            case 26: {
                this.getOutgoingCallbacks().clear();
                return;
            }
            case 27: {
                this.getBswModuleDependencies().clear();
                return;
            }
            case 28: {
                this.getProvidedModeGroups().clear();
                return;
            }
            case 29: {
                this.getRequiredModeGroups().clear();
                return;
            }
            case 30: {
                this.getReleasedTriggers().clear();
                return;
            }
            case 31: {
                this.getRequiredTriggers().clear();
                return;
            }
            case 32: {
                this.getInternalBehaviors().clear();
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
                return this.atpClassifier != null;
            }
            case 23: {
                return this.isSetModuleId();
            }
            case 24: {
                return this.bswModuleDocumentations != null && !this.bswModuleDocumentations.isEmpty();
            }
            case 25: {
                return this.providedEntries != null && !this.providedEntries.isEmpty();
            }
            case 26: {
                return this.outgoingCallbacks != null && !this.outgoingCallbacks.isEmpty();
            }
            case 27: {
                return this.bswModuleDependencies != null && !this.bswModuleDependencies.isEmpty();
            }
            case 28: {
                return this.providedModeGroups != null && !this.providedModeGroups.isEmpty();
            }
            case 29: {
                return this.requiredModeGroups != null && !this.requiredModeGroups.isEmpty();
            }
            case 30: {
                return this.releasedTriggers != null && !this.releasedTriggers.isEmpty();
            }
            case 31: {
                return this.requiredTriggers != null && !this.requiredTriggers.isEmpty();
            }
            case 32: {
                return this.internalBehaviors != null && !this.internalBehaviors.isEmpty();
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
        if (baseClass == AtpClassifier.class) {
            return -1;
        }
        if (baseClass == AtpFeature.class) {
            switch (derivedFeatureID) {
                case 22: {
                    return 18;
                }
            }
            return -1;
        }
        if (baseClass == AtpStructureElement.class) {
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
        if (baseClass == AtpClassifier.class) {
            return -1;
        }
        if (baseClass == AtpFeature.class) {
            switch (baseFeatureID) {
                case 18: {
                    return 22;
                }
            }
            return -1;
        }
        if (baseClass == AtpStructureElement.class) {
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
        result.append(", moduleId: ");
        if (this.moduleIdESet) {
            result.append(this.moduleId);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

