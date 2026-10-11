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
package autosar3x.swcomponent.portinterface.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar3x.swcomponent.portinterface.PortInterface;
import autosar3x.swcomponent.portinterface.PortinterfacePackage;
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
    protected static final Boolean GIS_SERVICE_EDEFAULT = Boolean.FALSE;
    protected static final Boolean IS_SERVICE_EDEFAULT = Boolean.FALSE;
    protected Boolean isService = IS_SERVICE_EDEFAULT;
    protected boolean isServiceESet;

    protected PortInterfaceImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.PORT_INTERFACE;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldIsService, (Object)this.isService, !oldIsServiceESet));
        }
    }

    @Override
    public void unsetIsService() {
        Boolean oldIsService = this.isService;
        boolean oldIsServiceESet = this.isServiceESet;
        this.isService = IS_SERVICE_EDEFAULT;
        this.isServiceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldIsService, (Object)IS_SERVICE_EDEFAULT, oldIsServiceESet));
        }
    }

    @Override
    public boolean isSetIsService() {
        return this.isServiceESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.gGetIsService();
            }
            case 20: {
                return this.getIsService();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.gSetIsService((Boolean)newValue);
                return;
            }
            case 20: {
                this.setIsService((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.gUnsetIsService();
                return;
            }
            case 20: {
                this.unsetIsService();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.gIsSetIsService();
            }
            case 20: {
                return this.isSetIsService();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GPortInterface.class) {
            switch (derivedFeatureID) {
                case 19: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GPortInterface.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 19;
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
        result.append(" (isService: ");
        if (this.isServiceESet) {
            result.append(this.isService);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

