/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 */
package autosar40.genericstructure.varianthandling.impl;

import autosar40.genericstructure.varianthandling.AttributeValueVariationPoint;
import autosar40.genericstructure.varianthandling.BindingTimeEnum;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
import autosar40.genericstructure.varianthandling.impl.SwSystemconstDependentFormulaImpl;
import autosar40.swcomponent.swcinternalbehavior.varianthandling.VariationPointProxy;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.FeatureMap;

public abstract class AttributeValueVariationPointImpl
extends SwSystemconstDependentFormulaImpl
implements AttributeValueVariationPoint {
    protected static final BindingTimeEnum BINDING_TIME_EDEFAULT = BindingTimeEnum.SYSTEM_DESIGN_TIME;
    protected BindingTimeEnum bindingTime = BINDING_TIME_EDEFAULT;
    protected boolean bindingTimeESet;
    protected static final String BLUEPRINT_VALUE_EDEFAULT = "";
    protected String blueprintValue = "";
    protected boolean blueprintValueESet;
    protected static final String SD_EDEFAULT = "";
    protected String sd = "";
    protected boolean sdESet;
    protected static final String SHORT_LABEL_EDEFAULT = "";
    protected String shortLabel = "";
    protected boolean shortLabelESet;

    protected AttributeValueVariationPointImpl() {
    }

    protected EClass eStaticClass() {
        return VarianthandlingPackage.Literals.ATTRIBUTE_VALUE_VARIATION_POINT;
    }

    public VariationPointProxy getVariationPointProxy() {
        return (VariationPointProxy)this.getMixed().get((EStructuralFeature)VarianthandlingPackage.Literals.ATTRIBUTE_VALUE_VARIATION_POINT__VARIATION_POINT_PROXY, true);
    }

    public void setVariationPointProxy(VariationPointProxy newVariationPointProxy) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)VarianthandlingPackage.Literals.ATTRIBUTE_VALUE_VARIATION_POINT__VARIATION_POINT_PROXY, (Object)newVariationPointProxy);
    }

    public BindingTimeEnum getBindingTime() {
        return this.bindingTime;
    }

    public void setBindingTime(BindingTimeEnum newBindingTime) {
        BindingTimeEnum oldBindingTime = this.bindingTime;
        this.bindingTime = newBindingTime == null ? BINDING_TIME_EDEFAULT : newBindingTime;
        boolean oldBindingTimeESet = this.bindingTimeESet;
        this.bindingTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldBindingTime, (Object)this.bindingTime, !oldBindingTimeESet));
        }
    }

    public void unsetBindingTime() {
        BindingTimeEnum oldBindingTime = this.bindingTime;
        boolean oldBindingTimeESet = this.bindingTimeESet;
        this.bindingTime = BINDING_TIME_EDEFAULT;
        this.bindingTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldBindingTime, (Object)BINDING_TIME_EDEFAULT, oldBindingTimeESet));
        }
    }

    public boolean isSetBindingTime() {
        return this.bindingTimeESet;
    }

    public String getBlueprintValue() {
        return this.blueprintValue;
    }

    public void setBlueprintValue(String newBlueprintValue) {
        String oldBlueprintValue = this.blueprintValue;
        this.blueprintValue = newBlueprintValue;
        boolean oldBlueprintValueESet = this.blueprintValueESet;
        this.blueprintValueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldBlueprintValue, (Object)this.blueprintValue, !oldBlueprintValueESet));
        }
    }

    public void unsetBlueprintValue() {
        String oldBlueprintValue = this.blueprintValue;
        boolean oldBlueprintValueESet = this.blueprintValueESet;
        this.blueprintValue = "";
        this.blueprintValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldBlueprintValue, (Object)"", oldBlueprintValueESet));
        }
    }

    public boolean isSetBlueprintValue() {
        return this.blueprintValueESet;
    }

    public String getSd() {
        return this.sd;
    }

    public void setSd(String newSd) {
        String oldSd = this.sd;
        this.sd = newSd;
        boolean oldSdESet = this.sdESet;
        this.sdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldSd, (Object)this.sd, !oldSdESet));
        }
    }

    public void unsetSd() {
        String oldSd = this.sd;
        boolean oldSdESet = this.sdESet;
        this.sd = "";
        this.sdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldSd, (Object)"", oldSdESet));
        }
    }

    public boolean isSetSd() {
        return this.sdESet;
    }

    public String getShortLabel() {
        return this.shortLabel;
    }

    public void setShortLabel(String newShortLabel) {
        String oldShortLabel = this.shortLabel;
        this.shortLabel = newShortLabel;
        boolean oldShortLabelESet = this.shortLabelESet;
        this.shortLabelESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldShortLabel, (Object)this.shortLabel, !oldShortLabelESet));
        }
    }

    public void unsetShortLabel() {
        String oldShortLabel = this.shortLabel;
        boolean oldShortLabelESet = this.shortLabelESet;
        this.shortLabel = "";
        this.shortLabelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldShortLabel, (Object)"", oldShortLabelESet));
        }
    }

    public boolean isSetShortLabel() {
        return this.shortLabelESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.eBasicSetContainer(otherEnd, 7, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return this.eBasicSetContainer(null, 7, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 7: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, VariationPointProxy.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 7: {
                return this.getVariationPointProxy();
            }
            case 8: {
                return this.getBindingTime();
            }
            case 9: {
                return this.getBlueprintValue();
            }
            case 10: {
                return this.getSd();
            }
            case 11: {
                return this.getShortLabel();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 7: {
                this.setVariationPointProxy((VariationPointProxy)newValue);
                return;
            }
            case 8: {
                this.setBindingTime((BindingTimeEnum)((Object)newValue));
                return;
            }
            case 9: {
                this.setBlueprintValue((String)newValue);
                return;
            }
            case 10: {
                this.setSd((String)newValue);
                return;
            }
            case 11: {
                this.setShortLabel((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 7: {
                this.setVariationPointProxy(null);
                return;
            }
            case 8: {
                this.unsetBindingTime();
                return;
            }
            case 9: {
                this.unsetBlueprintValue();
                return;
            }
            case 10: {
                this.unsetSd();
                return;
            }
            case 11: {
                this.unsetShortLabel();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 7: {
                return this.getVariationPointProxy() != null;
            }
            case 8: {
                return this.isSetBindingTime();
            }
            case 9: {
                return this.isSetBlueprintValue();
            }
            case 10: {
                return this.isSetSd();
            }
            case 11: {
                return this.isSetShortLabel();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (bindingTime: ");
        if (this.bindingTimeESet) {
            result.append((Object)this.bindingTime);
        } else {
            result.append("<unset>");
        }
        result.append(", blueprintValue: ");
        if (this.blueprintValueESet) {
            result.append(this.blueprintValue);
        } else {
            result.append("<unset>");
        }
        result.append(", sd: ");
        if (this.sdESet) {
            result.append(this.sd);
        } else {
            result.append("<unset>");
        }
        result.append(", shortLabel: ");
        if (this.shortLabelESet) {
            result.append(this.shortLabel);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

