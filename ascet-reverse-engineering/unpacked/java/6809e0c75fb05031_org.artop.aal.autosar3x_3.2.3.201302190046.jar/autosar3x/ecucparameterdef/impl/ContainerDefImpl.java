/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GContainerDef
 *  gautosar.gecucparameterdef.GParamConfMultiplicity
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.ecucparameterdef.impl;

import autosar3x.ecucparameterdef.ContainerDef;
import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.ecucparameterdef.ParamConfMultiplicity;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.gecucparameterdef.GParamConfMultiplicity;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ContainerDefImpl
extends IdentifiableImpl
implements ContainerDef {
    protected static final String LOWER_MULTIPLICITY_EDEFAULT = "";
    protected String lowerMultiplicity = "";
    protected boolean lowerMultiplicityESet;
    protected static final String UPPER_MULTIPLICITY_EDEFAULT = "";
    protected String upperMultiplicity = "";
    protected boolean upperMultiplicityESet;
    protected static final Boolean POST_BUILD_CHANGEABLE_EDEFAULT = Boolean.FALSE;
    protected Boolean postBuildChangeable = POST_BUILD_CHANGEABLE_EDEFAULT;
    protected boolean postBuildChangeableESet;

    protected ContainerDefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.CONTAINER_DEF;
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
    public Boolean getPostBuildChangeable() {
        return this.postBuildChangeable;
    }

    @Override
    public void setPostBuildChangeable(Boolean newPostBuildChangeable) {
        Boolean oldPostBuildChangeable = this.postBuildChangeable;
        this.postBuildChangeable = newPostBuildChangeable;
        boolean oldPostBuildChangeableESet = this.postBuildChangeableESet;
        this.postBuildChangeableESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldPostBuildChangeable, (Object)this.postBuildChangeable, !oldPostBuildChangeableESet));
        }
    }

    @Override
    public void unsetPostBuildChangeable() {
        Boolean oldPostBuildChangeable = this.postBuildChangeable;
        boolean oldPostBuildChangeableESet = this.postBuildChangeableESet;
        this.postBuildChangeable = POST_BUILD_CHANGEABLE_EDEFAULT;
        this.postBuildChangeableESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldPostBuildChangeable, (Object)POST_BUILD_CHANGEABLE_EDEFAULT, oldPostBuildChangeableESet));
        }
    }

    @Override
    public boolean isSetPostBuildChangeable() {
        return this.postBuildChangeableESet;
    }

    public Boolean gGetPostBuildChangeable() {
        return this.getPostBuildChangeable();
    }

    public void gSetPostBuildChangeable(Boolean value) {
        this.setPostBuildChangeable(value);
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
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getLowerMultiplicity();
            }
            case 18: {
                return this.getUpperMultiplicity();
            }
            case 19: {
                return this.getPostBuildChangeable();
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
                this.setPostBuildChangeable((Boolean)newValue);
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
                this.unsetPostBuildChangeable();
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
                return this.isSetPostBuildChangeable();
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
        if (baseClass == GContainerDef.class) {
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
        if (baseClass == GContainerDef.class) {
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
        result.append(", postBuildChangeable: ");
        if (this.postBuildChangeableESet) {
            result.append(this.postBuildChangeable);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

