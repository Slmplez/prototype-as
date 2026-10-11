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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.ecucparameterdef.impl;

import autosar21.ecucparameterdef.ContainerDef;
import autosar21.ecucparameterdef.EcucparameterdefPackage;
import autosar21.ecucparameterdef.ModuleDef;
import autosar21.ecucparameterdef.ParamConfMultiplicity;
import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
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
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModuleDefImpl
extends ARElementImpl
implements ModuleDef,
IReferringClass {
    protected static final String LOWER_MULTIPLICITY_EDEFAULT = "";
    protected String lowerMultiplicity = "";
    protected boolean lowerMultiplicityESet;
    protected static final String UPPER_MULTIPLICITY_EDEFAULT = "";
    protected String upperMultiplicity = "";
    protected boolean upperMultiplicityESet;
    protected static final String IMPLEMENTATION_CONFIG_VARIANT_EDEFAULT = "";
    protected String implementationConfigVariant = "";
    protected boolean implementationConfigVariantESet;
    protected ModuleDef refinedModuleDef;
    protected EList<ContainerDef> containers;

    protected ModuleDefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.MODULE_DEF;
    }

    @Override
    public String getLowerMultiplicity() {
        return this.lowerMultiplicity;
    }

    @Override
    public void setLowerMultiplicity(String newLowerMultiplicity) {
        String oldLowerMultiplicity = this.lowerMultiplicity;
        this.lowerMultiplicity = newLowerMultiplicity;
        boolean oldLowerMultiplicityESet = this.lowerMultiplicityESet;
        this.lowerMultiplicityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldLowerMultiplicity, (Object)this.lowerMultiplicity, !oldLowerMultiplicityESet));
        }
    }

    @Override
    public void unsetLowerMultiplicity() {
        String oldLowerMultiplicity = this.lowerMultiplicity;
        boolean oldLowerMultiplicityESet = this.lowerMultiplicityESet;
        this.lowerMultiplicity = "";
        this.lowerMultiplicityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldLowerMultiplicity, (Object)"", oldLowerMultiplicityESet));
        }
    }

    @Override
    public boolean isSetLowerMultiplicity() {
        return this.lowerMultiplicityESet;
    }

    @Override
    public String getUpperMultiplicity() {
        return this.upperMultiplicity;
    }

    @Override
    public void setUpperMultiplicity(String newUpperMultiplicity) {
        String oldUpperMultiplicity = this.upperMultiplicity;
        this.upperMultiplicity = newUpperMultiplicity;
        boolean oldUpperMultiplicityESet = this.upperMultiplicityESet;
        this.upperMultiplicityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldUpperMultiplicity, (Object)this.upperMultiplicity, !oldUpperMultiplicityESet));
        }
    }

    @Override
    public void unsetUpperMultiplicity() {
        String oldUpperMultiplicity = this.upperMultiplicity;
        boolean oldUpperMultiplicityESet = this.upperMultiplicityESet;
        this.upperMultiplicity = "";
        this.upperMultiplicityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldUpperMultiplicity, (Object)"", oldUpperMultiplicityESet));
        }
    }

    @Override
    public boolean isSetUpperMultiplicity() {
        return this.upperMultiplicityESet;
    }

    @Override
    public String getImplementationConfigVariant() {
        return this.implementationConfigVariant;
    }

    @Override
    public void setImplementationConfigVariant(String newImplementationConfigVariant) {
        String oldImplementationConfigVariant = this.implementationConfigVariant;
        this.implementationConfigVariant = newImplementationConfigVariant;
        boolean oldImplementationConfigVariantESet = this.implementationConfigVariantESet;
        this.implementationConfigVariantESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldImplementationConfigVariant, (Object)this.implementationConfigVariant, !oldImplementationConfigVariantESet));
        }
    }

    @Override
    public void unsetImplementationConfigVariant() {
        String oldImplementationConfigVariant = this.implementationConfigVariant;
        boolean oldImplementationConfigVariantESet = this.implementationConfigVariantESet;
        this.implementationConfigVariant = "";
        this.implementationConfigVariantESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldImplementationConfigVariant, (Object)"", oldImplementationConfigVariantESet));
        }
    }

    @Override
    public boolean isSetImplementationConfigVariant() {
        return this.implementationConfigVariantESet;
    }

    @Override
    public ModuleDef getRefinedModuleDef() {
        if (this.refinedModuleDef != null && this.refinedModuleDef.eIsProxy()) {
            InternalEObject oldRefinedModuleDef = (InternalEObject)this.refinedModuleDef;
            this.refinedModuleDef = (ModuleDef)this.eResolveProxy(oldRefinedModuleDef);
            if (this.refinedModuleDef != oldRefinedModuleDef && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldRefinedModuleDef, (Object)this.refinedModuleDef));
            }
        }
        return this.refinedModuleDef;
    }

    public ModuleDef basicGetRefinedModuleDef() {
        return this.refinedModuleDef;
    }

    @Override
    public void setRefinedModuleDef(ModuleDef newRefinedModuleDef) {
        ModuleDef oldRefinedModuleDef = this.refinedModuleDef;
        this.refinedModuleDef = newRefinedModuleDef;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldRefinedModuleDef, (Object)this.refinedModuleDef));
        }
    }

    @Override
    public EList<ContainerDef> getContainers() {
        if (this.containers == null) {
            this.containers = new EObjectContainmentEList(ContainerDef.class, (InternalEObject)this, 22);
        }
        return this.containers;
    }

    public GModuleDef gGetRefinedModuleDef() {
        return this.getRefinedModuleDef();
    }

    public void gSetRefinedModuleDef(GModuleDef value) {
        this.setRefinedModuleDef((ModuleDef)value);
    }

    public EList<GContainerDef> gGetContainers() {
        EList<ContainerDef> untypedList = this.getContainers();
        return untypedList;
    }

    public String gGetLowerMultiplicityAsString() {
        return this.getLowerMultiplicity();
    }

    public void gSetLowerMultiplicityAsString(String value) {
        this.setLowerMultiplicity(value);
    }

    public String gGetUpperMultiplicityAsString() {
        return this.getUpperMultiplicity();
    }

    public void gSetUpperMultiplicityAsString(String value) {
        this.setUpperMultiplicity(value);
    }

    public Boolean gGetUpperMultiplicityInfinite() {
        return "*".equals(this.upperMultiplicity);
    }

    public void gSetUpperMultiplicityInfinite(Boolean value) {
        if (Boolean.TRUE.equals(value)) {
            this.setUpperMultiplicity("*");
        } else {
            this.setUpperMultiplicity("1");
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getContainers()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getLowerMultiplicity();
            }
            case 19: {
                return this.getUpperMultiplicity();
            }
            case 20: {
                return this.getImplementationConfigVariant();
            }
            case 21: {
                if (resolve) {
                    return this.getRefinedModuleDef();
                }
                return this.basicGetRefinedModuleDef();
            }
            case 22: {
                return this.getContainers();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setLowerMultiplicity((String)newValue);
                return;
            }
            case 19: {
                this.setUpperMultiplicity((String)newValue);
                return;
            }
            case 20: {
                this.setImplementationConfigVariant((String)newValue);
                return;
            }
            case 21: {
                this.setRefinedModuleDef((ModuleDef)newValue);
                return;
            }
            case 22: {
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
            case 18: {
                this.unsetLowerMultiplicity();
                return;
            }
            case 19: {
                this.unsetUpperMultiplicity();
                return;
            }
            case 20: {
                this.unsetImplementationConfigVariant();
                return;
            }
            case 21: {
                this.setRefinedModuleDef(null);
                return;
            }
            case 22: {
                this.getContainers().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.isSetLowerMultiplicity();
            }
            case 19: {
                return this.isSetUpperMultiplicity();
            }
            case 20: {
                return this.isSetImplementationConfigVariant();
            }
            case 21: {
                return this.refinedModuleDef != null;
            }
            case 22: {
                return this.containers != null && !this.containers.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GParamConfMultiplicity.class) {
            return -1;
        }
        if (baseClass == ParamConfMultiplicity.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 4;
                }
                case 19: {
                    return 5;
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
        if (baseClass == GParamConfMultiplicity.class) {
            return -1;
        }
        if (baseClass == ParamConfMultiplicity.class) {
            switch (baseFeatureID) {
                case 4: {
                    return 18;
                }
                case 5: {
                    return 19;
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
        result.append(" (lowerMultiplicity: ");
        if (this.lowerMultiplicityESet) {
            result.append(this.lowerMultiplicity);
        } else {
            result.append("<unset>");
        }
        result.append(", upperMultiplicity: ");
        if (this.upperMultiplicityESet) {
            result.append(this.upperMultiplicity);
        } else {
            result.append("<unset>");
        }
        result.append(", implementationConfigVariant: ");
        if (this.implementationConfigVariantESet) {
            result.append(this.implementationConfigVariant);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

