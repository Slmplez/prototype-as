/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.ecucparameterdef.impl;

import autosar3x.ecucparameterdef.CommonConfigurationAttributes;
import autosar3x.ecucparameterdef.ConfigurationAffection;
import autosar3x.ecucparameterdef.ConfigurationClassAffection;
import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ConfigurationClassAffectionImpl
extends ARObjectImpl
implements ConfigurationClassAffection,
IReferringClass {
    protected EList<CommonConfigurationAttributes> affecteds;
    protected static final ConfigurationAffection AFFECTION_KIND_EDEFAULT = ConfigurationAffection.PC_AFFECTS_PB;
    protected ConfigurationAffection affectionKind = AFFECTION_KIND_EDEFAULT;
    protected boolean affectionKindESet;

    protected ConfigurationClassAffectionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.CONFIGURATION_CLASS_AFFECTION;
    }

    @Override
    public CommonConfigurationAttributes getCommonConfigurationAttributes() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (CommonConfigurationAttributes)this.eContainer();
    }

    public NotificationChain basicSetCommonConfigurationAttributes(CommonConfigurationAttributes newCommonConfigurationAttributes, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommonConfigurationAttributes, 4, msgs);
        return msgs;
    }

    @Override
    public void setCommonConfigurationAttributes(CommonConfigurationAttributes newCommonConfigurationAttributes) {
        if (newCommonConfigurationAttributes != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCommonConfigurationAttributes != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommonConfigurationAttributes)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommonConfigurationAttributes != null) {
                msgs = ((InternalEObject)newCommonConfigurationAttributes).eInverseAdd((InternalEObject)this, 19, CommonConfigurationAttributes.class, msgs);
            }
            if ((msgs = this.basicSetCommonConfigurationAttributes(newCommonConfigurationAttributes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCommonConfigurationAttributes, (Object)newCommonConfigurationAttributes));
        }
    }

    @Override
    public EList<CommonConfigurationAttributes> getAffecteds() {
        if (this.affecteds == null) {
            this.affecteds = new EObjectResolvingReferringEList(CommonConfigurationAttributes.class, (InternalEObject)this, 5);
        }
        return this.affecteds;
    }

    @Override
    public ConfigurationAffection getAffectionKind() {
        return this.affectionKind;
    }

    @Override
    public void setAffectionKind(ConfigurationAffection newAffectionKind) {
        ConfigurationAffection oldAffectionKind = this.affectionKind;
        this.affectionKind = newAffectionKind == null ? AFFECTION_KIND_EDEFAULT : newAffectionKind;
        boolean oldAffectionKindESet = this.affectionKindESet;
        this.affectionKindESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldAffectionKind, (Object)this.affectionKind, !oldAffectionKindESet));
        }
    }

    @Override
    public void unsetAffectionKind() {
        ConfigurationAffection oldAffectionKind = this.affectionKind;
        boolean oldAffectionKindESet = this.affectionKindESet;
        this.affectionKind = AFFECTION_KIND_EDEFAULT;
        this.affectionKindESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldAffectionKind, (Object)AFFECTION_KIND_EDEFAULT, oldAffectionKindESet));
        }
    }

    @Override
    public boolean isSetAffectionKind() {
        return this.affectionKindESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCommonConfigurationAttributes((CommonConfigurationAttributes)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCommonConfigurationAttributes(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, CommonConfigurationAttributes.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCommonConfigurationAttributes();
            }
            case 5: {
                return this.getAffecteds();
            }
            case 6: {
                return this.getAffectionKind();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCommonConfigurationAttributes((CommonConfigurationAttributes)newValue);
                return;
            }
            case 5: {
                this.getAffecteds().clear();
                this.getAffecteds().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setAffectionKind((ConfigurationAffection)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCommonConfigurationAttributes(null);
                return;
            }
            case 5: {
                this.getAffecteds().clear();
                return;
            }
            case 6: {
                this.unsetAffectionKind();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getCommonConfigurationAttributes() != null;
            }
            case 5: {
                return this.affecteds != null && !this.affecteds.isEmpty();
            }
            case 6: {
                return this.isSetAffectionKind();
            }
        }
        return super.eIsSet(featureID);
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (affectionKind: ");
        if (this.affectionKindESet) {
            result.append((Object)this.affectionKind);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

