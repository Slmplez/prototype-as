/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GPortInterface
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.portinterface.impl;

import autosar40.commonstructure.serviceneeds.ServiceProviderEnum;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpType;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.swcomponent.portinterface.PortInterface;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import gautosar.gswcomponents.gportinterface.GPortInterface;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PortInterfaceImpl
extends ARElementImpl
implements PortInterface {
    protected static final String SHORT_NAME_PATTERN_EDEFAULT = "";
    protected String shortNamePattern = "";
    protected boolean shortNamePatternESet;
    protected static final Boolean GIS_SERVICE_EDEFAULT = Boolean.FALSE;
    protected static final Boolean IS_SERVICE_EDEFAULT = Boolean.FALSE;
    protected Boolean isService = IS_SERVICE_EDEFAULT;
    protected boolean isServiceESet;
    protected static final ServiceProviderEnum SERVICE_KIND_EDEFAULT = ServiceProviderEnum.BASIC_SOFTWARE_MODE_MANAGER;
    protected ServiceProviderEnum serviceKind = SERVICE_KIND_EDEFAULT;
    protected boolean serviceKindESet;

    protected PortInterfaceImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.PORT_INTERFACE;
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

    public Boolean gGetIsService() {
        Boolean tgtFeatureValue = this.getIsService();
        return tgtFeatureValue;
    }

    public void gSetIsService(Boolean newGIsService) {
        this.setIsService(newGIsService);
    }

    public void gUnsetIsService() {
        this.unsetIsService();
    }

    public boolean gIsSetIsService() {
        return this.isSetIsService();
    }

    @Override
    public Boolean getIsService() {
        return this.isService;
    }

    @Override
    public void setIsService(Boolean newIsService) {
        Boolean oldIsService = this.isService;
        this.isService = newIsService;
        boolean oldIsServiceESet = this.isServiceESet;
        this.isServiceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldIsService, (Object)this.isService, !oldIsServiceESet));
        }
    }

    @Override
    public void unsetIsService() {
        Boolean oldIsService = this.isService;
        boolean oldIsServiceESet = this.isServiceESet;
        this.isService = IS_SERVICE_EDEFAULT;
        this.isServiceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldIsService, (Object)IS_SERVICE_EDEFAULT, oldIsServiceESet));
        }
    }

    @Override
    public boolean isSetIsService() {
        return this.isServiceESet;
    }

    @Override
    public ServiceProviderEnum getServiceKind() {
        return this.serviceKind;
    }

    @Override
    public void setServiceKind(ServiceProviderEnum newServiceKind) {
        ServiceProviderEnum oldServiceKind = this.serviceKind;
        this.serviceKind = newServiceKind == null ? SERVICE_KIND_EDEFAULT : newServiceKind;
        boolean oldServiceKindESet = this.serviceKindESet;
        this.serviceKindESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldServiceKind, (Object)this.serviceKind, !oldServiceKindESet));
        }
    }

    @Override
    public void unsetServiceKind() {
        ServiceProviderEnum oldServiceKind = this.serviceKind;
        boolean oldServiceKindESet = this.serviceKindESet;
        this.serviceKind = SERVICE_KIND_EDEFAULT;
        this.serviceKindESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldServiceKind, (Object)SERVICE_KIND_EDEFAULT, oldServiceKindESet));
        }
    }

    @Override
    public boolean isSetServiceKind() {
        return this.serviceKindESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getShortNamePattern();
            }
            case 22: {
                return this.gGetIsService();
            }
            case 23: {
                return this.getIsService();
            }
            case 24: {
                return this.getServiceKind();
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
                this.gSetIsService((Boolean)newValue);
                return;
            }
            case 23: {
                this.setIsService((Boolean)newValue);
                return;
            }
            case 24: {
                this.setServiceKind((ServiceProviderEnum)((Object)newValue));
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
                this.gUnsetIsService();
                return;
            }
            case 23: {
                this.unsetIsService();
                return;
            }
            case 24: {
                this.unsetServiceKind();
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
                return this.gIsSetIsService();
            }
            case 23: {
                return this.isSetIsService();
            }
            case 24: {
                return this.isSetServiceKind();
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
        if (baseClass == AtpType.class) {
            return -1;
        }
        if (baseClass == GPortInterface.class) {
            switch (derivedFeatureID) {
                case 22: {
                    return 7;
                }
            }
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
        if (baseClass == AtpType.class) {
            return -1;
        }
        if (baseClass == GPortInterface.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 22;
                }
            }
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
        result.append(", isService: ");
        if (this.isServiceESet) {
            result.append(this.isService);
        } else {
            result.append("<unset>");
        }
        result.append(", serviceKind: ");
        if (this.serviceKindESet) {
            result.append((Object)this.serviceKind);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

