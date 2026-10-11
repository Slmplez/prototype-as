/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GCommonConfigurationAttributes
 *  gautosar.gecucparameterdef.GParamConfMultiplicity
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.ecucparameterdef.impl;

import autosar3x.ecucparameterdef.CommonConfigurationAttributes;
import autosar3x.ecucparameterdef.ConfigurationClassAffection;
import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.ecucparameterdef.ImplementationConfigClass;
import autosar3x.ecucparameterdef.ParamConfMultiplicity;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import gautosar.gecucparameterdef.GCommonConfigurationAttributes;
import gautosar.gecucparameterdef.GParamConfMultiplicity;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CommonConfigurationAttributesImpl
extends IdentifiableImpl
implements CommonConfigurationAttributes {
    protected static final String LOWER_MULTIPLICITY_EDEFAULT = "";
    protected String lowerMultiplicity = "";
    protected boolean lowerMultiplicityESet;
    protected static final String UPPER_MULTIPLICITY_EDEFAULT = "";
    protected String upperMultiplicity = "";
    protected boolean upperMultiplicityESet;
    protected ConfigurationClassAffection configurationClassAffection;
    protected EList<ImplementationConfigClass> implementationConfigClass;
    protected static final String ORIGIN_EDEFAULT = "";
    protected String origin = "";
    protected boolean originESet;

    protected CommonConfigurationAttributesImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.COMMON_CONFIGURATION_ATTRIBUTES;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldLowerMultiplicity, (Object)this.lowerMultiplicity, !oldLowerMultiplicityESet));
        }
    }

    @Override
    public void unsetLowerMultiplicity() {
        String oldLowerMultiplicity = this.lowerMultiplicity;
        boolean oldLowerMultiplicityESet = this.lowerMultiplicityESet;
        this.lowerMultiplicity = "";
        this.lowerMultiplicityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldLowerMultiplicity, (Object)"", oldLowerMultiplicityESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldUpperMultiplicity, (Object)this.upperMultiplicity, !oldUpperMultiplicityESet));
        }
    }

    @Override
    public void unsetUpperMultiplicity() {
        String oldUpperMultiplicity = this.upperMultiplicity;
        boolean oldUpperMultiplicityESet = this.upperMultiplicityESet;
        this.upperMultiplicity = "";
        this.upperMultiplicityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldUpperMultiplicity, (Object)"", oldUpperMultiplicityESet));
        }
    }

    @Override
    public boolean isSetUpperMultiplicity() {
        return this.upperMultiplicityESet;
    }

    @Override
    public ConfigurationClassAffection getConfigurationClassAffection() {
        return this.configurationClassAffection;
    }

    public NotificationChain basicSetConfigurationClassAffection(ConfigurationClassAffection newConfigurationClassAffection, NotificationChain msgs) {
        ConfigurationClassAffection oldConfigurationClassAffection = this.configurationClassAffection;
        this.configurationClassAffection = newConfigurationClassAffection;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldConfigurationClassAffection, (Object)newConfigurationClassAffection);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setConfigurationClassAffection(ConfigurationClassAffection newConfigurationClassAffection) {
        if (newConfigurationClassAffection != this.configurationClassAffection) {
            NotificationChain msgs = null;
            if (this.configurationClassAffection != null) {
                msgs = ((InternalEObject)this.configurationClassAffection).eInverseRemove((InternalEObject)this, 4, ConfigurationClassAffection.class, msgs);
            }
            if (newConfigurationClassAffection != null) {
                msgs = ((InternalEObject)newConfigurationClassAffection).eInverseAdd((InternalEObject)this, 4, ConfigurationClassAffection.class, msgs);
            }
            if ((msgs = this.basicSetConfigurationClassAffection(newConfigurationClassAffection, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newConfigurationClassAffection, (Object)newConfigurationClassAffection));
        }
    }

    @Override
    public EList<ImplementationConfigClass> getImplementationConfigClass() {
        if (this.implementationConfigClass == null) {
            this.implementationConfigClass = new EObjectContainmentWithInverseEList(ImplementationConfigClass.class, (InternalEObject)this, 20, 4);
        }
        return this.implementationConfigClass;
    }

    @Override
    public String getOrigin() {
        return this.origin;
    }

    @Override
    public void setOrigin(String newOrigin) {
        String oldOrigin = this.origin;
        this.origin = newOrigin;
        boolean oldOriginESet = this.originESet;
        this.originESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldOrigin, (Object)this.origin, !oldOriginESet));
        }
    }

    @Override
    public void unsetOrigin() {
        String oldOrigin = this.origin;
        boolean oldOriginESet = this.originESet;
        this.origin = "";
        this.originESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldOrigin, (Object)"", oldOriginESet));
        }
    }

    @Override
    public boolean isSetOrigin() {
        return this.originESet;
    }

    public String gGetOrigin() {
        return this.getOrigin();
    }

    public void gSetOrigin(String value) {
        this.setOrigin(value);
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
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                if (this.configurationClassAffection != null) {
                    msgs = ((InternalEObject)this.configurationClassAffection).eInverseRemove((InternalEObject)this, -20, null, msgs);
                }
                return this.basicSetConfigurationClassAffection((ConfigurationClassAffection)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getImplementationConfigClass()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetConfigurationClassAffection(null, msgs);
            }
            case 20: {
                return ((InternalEList)this.getImplementationConfigClass()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getLowerMultiplicity();
            }
            case 18: {
                return this.getUpperMultiplicity();
            }
            case 19: {
                return this.getConfigurationClassAffection();
            }
            case 20: {
                return this.getImplementationConfigClass();
            }
            case 21: {
                return this.getOrigin();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setLowerMultiplicity((String)newValue);
                return;
            }
            case 18: {
                this.setUpperMultiplicity((String)newValue);
                return;
            }
            case 19: {
                this.setConfigurationClassAffection((ConfigurationClassAffection)newValue);
                return;
            }
            case 20: {
                this.getImplementationConfigClass().clear();
                this.getImplementationConfigClass().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.setOrigin((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.unsetLowerMultiplicity();
                return;
            }
            case 18: {
                this.unsetUpperMultiplicity();
                return;
            }
            case 19: {
                this.setConfigurationClassAffection(null);
                return;
            }
            case 20: {
                this.getImplementationConfigClass().clear();
                return;
            }
            case 21: {
                this.unsetOrigin();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.isSetLowerMultiplicity();
            }
            case 18: {
                return this.isSetUpperMultiplicity();
            }
            case 19: {
                return this.configurationClassAffection != null;
            }
            case 20: {
                return this.implementationConfigClass != null && !this.implementationConfigClass.isEmpty();
            }
            case 21: {
                return this.isSetOrigin();
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
                case 17: {
                    return 4;
                }
                case 18: {
                    return 5;
                }
            }
            return -1;
        }
        if (baseClass == GCommonConfigurationAttributes.class) {
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
                    return 17;
                }
                case 5: {
                    return 18;
                }
            }
            return -1;
        }
        if (baseClass == GCommonConfigurationAttributes.class) {
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
        result.append(", origin: ");
        if (this.originESet) {
            result.append(this.origin);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

