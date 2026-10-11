/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GContainerDef
 *  gautosar.gecucparameterdef.GModuleDef
 *  gautosar.gecucparameterdef.GParamConfMultiplicity
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucConditionSpecification;
import autosar40.ecucparameterdef.EcucConfigurationVariantEnum;
import autosar40.ecucparameterdef.EcucContainerDef;
import autosar40.ecucparameterdef.EcucDefinitionElement;
import autosar40.ecucparameterdef.EcucModuleDef;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.genericstructure.varianthandling.BooleanValueVariationPoint;
import autosar40.genericstructure.varianthandling.PositiveIntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.VarianthandlingFactory;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.gecucparameterdef.GModuleDef;
import gautosar.gecucparameterdef.GParamConfMultiplicity;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcucModuleDefImpl
extends ARElementImpl
implements EcucModuleDef,
IReferringClass {
    protected static final String SHORT_NAME_PATTERN_EDEFAULT = "";
    protected String shortNamePattern = "";
    protected boolean shortNamePatternESet;
    protected EcucConditionSpecification ecucCond;
    protected PositiveIntegerValueVariationPoint lowerMultiplicity;
    protected PositiveIntegerValueVariationPoint upperMultiplicity;
    protected BooleanValueVariationPoint upperMultiplicityInfinite;
    protected static final String API_SERVICE_PREFIX_EDEFAULT = "";
    protected String apiServicePrefix = "";
    protected boolean apiServicePrefixESet;
    protected EcucModuleDef refinedModuleDef;
    protected EList<EcucConfigurationVariantEnum> supportedConfigVariants;
    protected EList<EcucContainerDef> containers;

    protected EcucModuleDefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_MODULE_DEF;
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
    public EcucConditionSpecification getEcucCond() {
        return this.ecucCond;
    }

    public NotificationChain basicSetEcucCond(EcucConditionSpecification newEcucCond, NotificationChain msgs) {
        EcucConditionSpecification oldEcucCond = this.ecucCond;
        this.ecucCond = newEcucCond;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldEcucCond, (Object)newEcucCond);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setEcucCond(EcucConditionSpecification newEcucCond) {
        if (newEcucCond != this.ecucCond) {
            NotificationChain msgs = null;
            if (this.ecucCond != null) {
                msgs = ((InternalEObject)this.ecucCond).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newEcucCond != null) {
                msgs = ((InternalEObject)newEcucCond).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetEcucCond(newEcucCond, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newEcucCond, (Object)newEcucCond));
        }
    }

    @Override
    public PositiveIntegerValueVariationPoint getLowerMultiplicity() {
        return this.lowerMultiplicity;
    }

    public NotificationChain basicSetLowerMultiplicity(PositiveIntegerValueVariationPoint newLowerMultiplicity, NotificationChain msgs) {
        PositiveIntegerValueVariationPoint oldLowerMultiplicity = this.lowerMultiplicity;
        this.lowerMultiplicity = newLowerMultiplicity;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldLowerMultiplicity, (Object)newLowerMultiplicity);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setLowerMultiplicity(PositiveIntegerValueVariationPoint newLowerMultiplicity) {
        if (newLowerMultiplicity != this.lowerMultiplicity) {
            NotificationChain msgs = null;
            if (this.lowerMultiplicity != null) {
                msgs = ((InternalEObject)this.lowerMultiplicity).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newLowerMultiplicity != null) {
                msgs = ((InternalEObject)newLowerMultiplicity).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetLowerMultiplicity(newLowerMultiplicity, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newLowerMultiplicity, (Object)newLowerMultiplicity));
        }
    }

    @Override
    public PositiveIntegerValueVariationPoint getUpperMultiplicity() {
        return this.upperMultiplicity;
    }

    public NotificationChain basicSetUpperMultiplicity(PositiveIntegerValueVariationPoint newUpperMultiplicity, NotificationChain msgs) {
        PositiveIntegerValueVariationPoint oldUpperMultiplicity = this.upperMultiplicity;
        this.upperMultiplicity = newUpperMultiplicity;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldUpperMultiplicity, (Object)newUpperMultiplicity);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setUpperMultiplicity(PositiveIntegerValueVariationPoint newUpperMultiplicity) {
        if (newUpperMultiplicity != this.upperMultiplicity) {
            NotificationChain msgs = null;
            if (this.upperMultiplicity != null) {
                msgs = ((InternalEObject)this.upperMultiplicity).eInverseRemove((InternalEObject)this, -25, null, msgs);
            }
            if (newUpperMultiplicity != null) {
                msgs = ((InternalEObject)newUpperMultiplicity).eInverseAdd((InternalEObject)this, -25, null, msgs);
            }
            if ((msgs = this.basicSetUpperMultiplicity(newUpperMultiplicity, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newUpperMultiplicity, (Object)newUpperMultiplicity));
        }
    }

    @Override
    public BooleanValueVariationPoint getUpperMultiplicityInfinite() {
        return this.upperMultiplicityInfinite;
    }

    public NotificationChain basicSetUpperMultiplicityInfinite(BooleanValueVariationPoint newUpperMultiplicityInfinite, NotificationChain msgs) {
        BooleanValueVariationPoint oldUpperMultiplicityInfinite = this.upperMultiplicityInfinite;
        this.upperMultiplicityInfinite = newUpperMultiplicityInfinite;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldUpperMultiplicityInfinite, (Object)newUpperMultiplicityInfinite);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setUpperMultiplicityInfinite(BooleanValueVariationPoint newUpperMultiplicityInfinite) {
        if (newUpperMultiplicityInfinite != this.upperMultiplicityInfinite) {
            NotificationChain msgs = null;
            if (this.upperMultiplicityInfinite != null) {
                msgs = ((InternalEObject)this.upperMultiplicityInfinite).eInverseRemove((InternalEObject)this, -26, null, msgs);
            }
            if (newUpperMultiplicityInfinite != null) {
                msgs = ((InternalEObject)newUpperMultiplicityInfinite).eInverseAdd((InternalEObject)this, -26, null, msgs);
            }
            if ((msgs = this.basicSetUpperMultiplicityInfinite(newUpperMultiplicityInfinite, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)newUpperMultiplicityInfinite, (Object)newUpperMultiplicityInfinite));
        }
    }

    @Override
    public String getApiServicePrefix() {
        return this.apiServicePrefix;
    }

    @Override
    public void setApiServicePrefix(String newApiServicePrefix) {
        String oldApiServicePrefix = this.apiServicePrefix;
        this.apiServicePrefix = newApiServicePrefix;
        boolean oldApiServicePrefixESet = this.apiServicePrefixESet;
        this.apiServicePrefixESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldApiServicePrefix, (Object)this.apiServicePrefix, !oldApiServicePrefixESet));
        }
    }

    @Override
    public void unsetApiServicePrefix() {
        String oldApiServicePrefix = this.apiServicePrefix;
        boolean oldApiServicePrefixESet = this.apiServicePrefixESet;
        this.apiServicePrefix = "";
        this.apiServicePrefixESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldApiServicePrefix, (Object)"", oldApiServicePrefixESet));
        }
    }

    @Override
    public boolean isSetApiServicePrefix() {
        return this.apiServicePrefixESet;
    }

    @Override
    public EcucModuleDef getRefinedModuleDef() {
        if (this.refinedModuleDef != null && this.refinedModuleDef.eIsProxy()) {
            InternalEObject oldRefinedModuleDef = (InternalEObject)this.refinedModuleDef;
            this.refinedModuleDef = (EcucModuleDef)this.eResolveProxy(oldRefinedModuleDef);
            if (this.refinedModuleDef != oldRefinedModuleDef && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 27, (Object)oldRefinedModuleDef, (Object)this.refinedModuleDef));
            }
        }
        return this.refinedModuleDef;
    }

    public EcucModuleDef basicGetRefinedModuleDef() {
        return this.refinedModuleDef;
    }

    @Override
    public void setRefinedModuleDef(EcucModuleDef newRefinedModuleDef) {
        EcucModuleDef oldRefinedModuleDef = this.refinedModuleDef;
        this.refinedModuleDef = newRefinedModuleDef;
        AutosarObjectUtil.setDest((EObject)this, (int)27, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldRefinedModuleDef, (Object)this.refinedModuleDef));
        }
    }

    @Override
    public EList<EcucConfigurationVariantEnum> getSupportedConfigVariants() {
        if (this.supportedConfigVariants == null) {
            this.supportedConfigVariants = new EDataTypeUniqueEList.Unsettable(EcucConfigurationVariantEnum.class, (InternalEObject)this, 28);
        }
        return this.supportedConfigVariants;
    }

    @Override
    public void unsetSupportedConfigVariants() {
        if (this.supportedConfigVariants != null) {
            ((InternalEList.Unsettable)this.supportedConfigVariants).unset();
        }
    }

    @Override
    public boolean isSetSupportedConfigVariants() {
        return this.supportedConfigVariants != null && ((InternalEList.Unsettable)this.supportedConfigVariants).isSet();
    }

    @Override
    public EList<EcucContainerDef> getContainers() {
        if (this.containers == null) {
            this.containers = new EObjectContainmentEList(EcucContainerDef.class, (InternalEObject)this, 29);
        }
        return this.containers;
    }

    public GModuleDef gGetRefinedModuleDef() {
        return this.getRefinedModuleDef();
    }

    public void gSetRefinedModuleDef(GModuleDef value) {
        this.setRefinedModuleDef((EcucModuleDef)value);
    }

    public EList<GContainerDef> gGetContainers() {
        EList<EcucContainerDef> untypedList = this.getContainers();
        return untypedList;
    }

    public String gGetLowerMultiplicityAsString() {
        if (this.lowerMultiplicity == null) {
            return null;
        }
        return this.lowerMultiplicity.getMixedText();
    }

    public void gSetLowerMultiplicityAsString(String value) {
        if (this.lowerMultiplicity == null) {
            PositiveIntegerValueVariationPoint newLowerMultiplicity = VarianthandlingFactory.eINSTANCE.createPositiveIntegerValueVariationPoint();
            newLowerMultiplicity.setMixedText(value);
            this.setLowerMultiplicity(newLowerMultiplicity);
        } else {
            this.lowerMultiplicity.setMixedText(value);
        }
    }

    public String gGetUpperMultiplicityAsString() {
        if (this.upperMultiplicity == null) {
            return null;
        }
        return this.upperMultiplicity.getMixedText();
    }

    public void gSetUpperMultiplicityAsString(String value) {
        if (this.upperMultiplicity == null) {
            PositiveIntegerValueVariationPoint newUpperMultiplicity = VarianthandlingFactory.eINSTANCE.createPositiveIntegerValueVariationPoint();
            newUpperMultiplicity.setMixedText(value);
            this.setUpperMultiplicity(newUpperMultiplicity);
        } else {
            this.upperMultiplicity.setMixedText(value);
        }
    }

    public Boolean gGetUpperMultiplicityInfinite() {
        if (this.upperMultiplicityInfinite != null) {
            return Boolean.TRUE.toString().equals(this.upperMultiplicityInfinite.getMixedText());
        }
        return false;
    }

    public void gSetUpperMultiplicityInfinite(Boolean value) {
        if (this.upperMultiplicityInfinite == null) {
            BooleanValueVariationPoint newUpperMultiplicityInfinite = VarianthandlingFactory.eINSTANCE.createBooleanValueVariationPoint();
            newUpperMultiplicityInfinite.setMixedText(value.toString());
            this.setUpperMultiplicityInfinite(newUpperMultiplicityInfinite);
        } else {
            this.upperMultiplicityInfinite.setMixedText(value.toString());
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetEcucCond(null, msgs);
            }
            case 23: {
                return this.basicSetLowerMultiplicity(null, msgs);
            }
            case 24: {
                return this.basicSetUpperMultiplicity(null, msgs);
            }
            case 25: {
                return this.basicSetUpperMultiplicityInfinite(null, msgs);
            }
            case 29: {
                return ((InternalEList)this.getContainers()).basicRemove((Object)otherEnd, msgs);
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
                return this.getEcucCond();
            }
            case 23: {
                return this.getLowerMultiplicity();
            }
            case 24: {
                return this.getUpperMultiplicity();
            }
            case 25: {
                return this.getUpperMultiplicityInfinite();
            }
            case 26: {
                return this.getApiServicePrefix();
            }
            case 27: {
                if (resolve) {
                    return this.getRefinedModuleDef();
                }
                return this.basicGetRefinedModuleDef();
            }
            case 28: {
                return this.getSupportedConfigVariants();
            }
            case 29: {
                return this.getContainers();
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
                this.setEcucCond((EcucConditionSpecification)newValue);
                return;
            }
            case 23: {
                this.setLowerMultiplicity((PositiveIntegerValueVariationPoint)newValue);
                return;
            }
            case 24: {
                this.setUpperMultiplicity((PositiveIntegerValueVariationPoint)newValue);
                return;
            }
            case 25: {
                this.setUpperMultiplicityInfinite((BooleanValueVariationPoint)newValue);
                return;
            }
            case 26: {
                this.setApiServicePrefix((String)newValue);
                return;
            }
            case 27: {
                this.setRefinedModuleDef((EcucModuleDef)newValue);
                return;
            }
            case 28: {
                this.getSupportedConfigVariants().clear();
                this.getSupportedConfigVariants().addAll((Collection)newValue);
                return;
            }
            case 29: {
                this.getContainers().clear();
                this.getContainers().addAll((Collection)newValue);
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
                this.setEcucCond(null);
                return;
            }
            case 23: {
                this.setLowerMultiplicity(null);
                return;
            }
            case 24: {
                this.setUpperMultiplicity(null);
                return;
            }
            case 25: {
                this.setUpperMultiplicityInfinite(null);
                return;
            }
            case 26: {
                this.unsetApiServicePrefix();
                return;
            }
            case 27: {
                this.setRefinedModuleDef(null);
                return;
            }
            case 28: {
                this.unsetSupportedConfigVariants();
                return;
            }
            case 29: {
                this.getContainers().clear();
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
                return this.ecucCond != null;
            }
            case 23: {
                return this.lowerMultiplicity != null;
            }
            case 24: {
                return this.upperMultiplicity != null;
            }
            case 25: {
                return this.upperMultiplicityInfinite != null;
            }
            case 26: {
                return this.isSetApiServicePrefix();
            }
            case 27: {
                return this.refinedModuleDef != null;
            }
            case 28: {
                return this.isSetSupportedConfigVariants();
            }
            case 29: {
                return this.containers != null && !this.containers.isEmpty();
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
        if (baseClass == GParamConfMultiplicity.class) {
            return -1;
        }
        if (baseClass == EcucDefinitionElement.class) {
            switch (derivedFeatureID) {
                case 22: {
                    return 18;
                }
                case 23: {
                    return 19;
                }
                case 24: {
                    return 20;
                }
                case 25: {
                    return 21;
                }
            }
            return -1;
        }
        if (baseClass == GModuleDef.class) {
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
        if (baseClass == GParamConfMultiplicity.class) {
            return -1;
        }
        if (baseClass == EcucDefinitionElement.class) {
            switch (baseFeatureID) {
                case 18: {
                    return 22;
                }
                case 19: {
                    return 23;
                }
                case 20: {
                    return 24;
                }
                case 21: {
                    return 25;
                }
            }
            return -1;
        }
        if (baseClass == GModuleDef.class) {
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
        result.append(", apiServicePrefix: ");
        if (this.apiServicePrefixESet) {
            result.append(this.apiServicePrefix);
        } else {
            result.append("<unset>");
        }
        result.append(", supportedConfigVariants: ");
        result.append(this.supportedConfigVariants);
        result.append(')');
        return result.toString();
    }
}

