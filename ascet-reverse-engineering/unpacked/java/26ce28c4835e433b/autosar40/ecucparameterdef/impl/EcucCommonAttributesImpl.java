/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucCommonAttributes;
import autosar40.ecucparameterdef.EcucConfigurationClassAffection;
import autosar40.ecucparameterdef.EcucImplementationConfigurationClass;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucDefinitionElementImpl;
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
public class EcucCommonAttributesImpl
extends EcucDefinitionElementImpl
implements EcucCommonAttributes {
    protected EcucConfigurationClassAffection configurationClassAffection;
    protected EList<EcucImplementationConfigurationClass> implementationConfigClass;
    protected static final String ORIGIN_EDEFAULT = "";
    protected String origin = "";
    protected boolean originESet;
    protected static final Boolean REQUIRES_INDEX_EDEFAULT = Boolean.FALSE;
    protected Boolean requiresIndex = REQUIRES_INDEX_EDEFAULT;
    protected boolean requiresIndexESet;

    protected EcucCommonAttributesImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_COMMON_ATTRIBUTES;
    }

    @Override
    public EcucConfigurationClassAffection getConfigurationClassAffection() {
        return this.configurationClassAffection;
    }

    public NotificationChain basicSetConfigurationClassAffection(EcucConfigurationClassAffection newConfigurationClassAffection, NotificationChain msgs) {
        EcucConfigurationClassAffection oldConfigurationClassAffection = this.configurationClassAffection;
        this.configurationClassAffection = newConfigurationClassAffection;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldConfigurationClassAffection, (Object)newConfigurationClassAffection);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setConfigurationClassAffection(EcucConfigurationClassAffection newConfigurationClassAffection) {
        if (newConfigurationClassAffection != this.configurationClassAffection) {
            NotificationChain msgs = null;
            if (this.configurationClassAffection != null) {
                msgs = ((InternalEObject)this.configurationClassAffection).eInverseRemove((InternalEObject)this, 4, EcucConfigurationClassAffection.class, msgs);
            }
            if (newConfigurationClassAffection != null) {
                msgs = ((InternalEObject)newConfigurationClassAffection).eInverseAdd((InternalEObject)this, 4, EcucConfigurationClassAffection.class, msgs);
            }
            if ((msgs = this.basicSetConfigurationClassAffection(newConfigurationClassAffection, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newConfigurationClassAffection, (Object)newConfigurationClassAffection));
        }
    }

    @Override
    public EList<EcucImplementationConfigurationClass> getImplementationConfigClass() {
        if (this.implementationConfigClass == null) {
            this.implementationConfigClass = new EObjectContainmentWithInverseEList(EcucImplementationConfigurationClass.class, (InternalEObject)this, 23, 4);
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldOrigin, (Object)this.origin, !oldOriginESet));
        }
    }

    @Override
    public void unsetOrigin() {
        String oldOrigin = this.origin;
        boolean oldOriginESet = this.originESet;
        this.origin = ORIGIN_EDEFAULT;
        this.originESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldOrigin, (Object)ORIGIN_EDEFAULT, oldOriginESet));
        }
    }

    @Override
    public boolean isSetOrigin() {
        return this.originESet;
    }

    @Override
    public Boolean getRequiresIndex() {
        return this.requiresIndex;
    }

    @Override
    public void setRequiresIndex(Boolean newRequiresIndex) {
        Boolean oldRequiresIndex = this.requiresIndex;
        this.requiresIndex = newRequiresIndex;
        boolean oldRequiresIndexESet = this.requiresIndexESet;
        this.requiresIndexESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldRequiresIndex, (Object)this.requiresIndex, !oldRequiresIndexESet));
        }
    }

    @Override
    public void unsetRequiresIndex() {
        Boolean oldRequiresIndex = this.requiresIndex;
        boolean oldRequiresIndexESet = this.requiresIndexESet;
        this.requiresIndex = REQUIRES_INDEX_EDEFAULT;
        this.requiresIndexESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldRequiresIndex, (Object)REQUIRES_INDEX_EDEFAULT, oldRequiresIndexESet));
        }
    }

    @Override
    public boolean isSetRequiresIndex() {
        return this.requiresIndexESet;
    }

    public String gGetOrigin() {
        return this.getOrigin();
    }

    public void gSetOrigin(String value) {
        this.setOrigin(value);
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                if (this.configurationClassAffection != null) {
                    msgs = ((InternalEObject)this.configurationClassAffection).eInverseRemove((InternalEObject)this, -23, null, msgs);
                }
                return this.basicSetConfigurationClassAffection((EcucConfigurationClassAffection)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getImplementationConfigClass()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetConfigurationClassAffection(null, msgs);
            }
            case 23: {
                return ((InternalEList)this.getImplementationConfigClass()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getConfigurationClassAffection();
            }
            case 23: {
                return this.getImplementationConfigClass();
            }
            case 24: {
                return this.getOrigin();
            }
            case 25: {
                return this.getRequiresIndex();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.setConfigurationClassAffection((EcucConfigurationClassAffection)newValue);
                return;
            }
            case 23: {
                this.getImplementationConfigClass().clear();
                this.getImplementationConfigClass().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.setOrigin((String)newValue);
                return;
            }
            case 25: {
                this.setRequiresIndex((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.setConfigurationClassAffection(null);
                return;
            }
            case 23: {
                this.getImplementationConfigClass().clear();
                return;
            }
            case 24: {
                this.unsetOrigin();
                return;
            }
            case 25: {
                this.unsetRequiresIndex();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.configurationClassAffection != null;
            }
            case 23: {
                return this.implementationConfigClass != null && !this.implementationConfigClass.isEmpty();
            }
            case 24: {
                return this.isSetOrigin();
            }
            case 25: {
                return this.isSetRequiresIndex();
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
        result.append(" (origin: ");
        if (this.originESet) {
            result.append(this.origin);
        } else {
            result.append("<unset>");
        }
        result.append(", requiresIndex: ");
        if (this.requiresIndexESet) {
            result.append(this.requiresIndex);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

