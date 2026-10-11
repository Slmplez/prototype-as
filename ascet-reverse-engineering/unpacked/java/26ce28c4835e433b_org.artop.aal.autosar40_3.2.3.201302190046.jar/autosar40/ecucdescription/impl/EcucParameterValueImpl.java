/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GConfigParameter
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
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.ecucdescription.impl;

import autosar40.ecucdescription.EcucContainerValue;
import autosar40.ecucdescription.EcucParameterValue;
import autosar40.ecucdescription.EcucdescriptionPackage;
import autosar40.ecucdescription.impl.EcucIndexableValueImpl;
import autosar40.ecucparameterdef.EcucParameterDef;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.Annotation;
import autosar40.genericstructure.varianthandling.VariationPoint;
import gautosar.gecucparameterdef.GConfigParameter;
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
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class EcucParameterValueImpl
extends EcucIndexableValueImpl
implements EcucParameterValue,
IReferringClass {
    protected EcucParameterDef definition;
    protected EList<Annotation> annotations;
    protected static final Boolean IS_AUTO_VALUE_EDEFAULT = Boolean.FALSE;
    protected Boolean isAutoValue = IS_AUTO_VALUE_EDEFAULT;
    protected boolean isAutoValueESet;
    protected VariationPoint variationPoint;

    protected EcucParameterValueImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucdescriptionPackage.Literals.ECUC_PARAMETER_VALUE;
    }

    @Override
    public EcucContainerValue getEcucContainerValue() {
        if (this.eContainerFeatureID() != 5) {
            return null;
        }
        return (EcucContainerValue)this.eContainer();
    }

    public NotificationChain basicSetEcucContainerValue(EcucContainerValue newEcucContainerValue, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEcucContainerValue, 5, msgs);
        return msgs;
    }

    @Override
    public void setEcucContainerValue(EcucContainerValue newEcucContainerValue) {
        if (newEcucContainerValue != this.eInternalContainer() || this.eContainerFeatureID() != 5 && newEcucContainerValue != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEcucContainerValue)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEcucContainerValue != null) {
                msgs = ((InternalEObject)newEcucContainerValue).eInverseAdd((InternalEObject)this, 19, EcucContainerValue.class, msgs);
            }
            if ((msgs = this.basicSetEcucContainerValue(newEcucContainerValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newEcucContainerValue, (Object)newEcucContainerValue));
        }
    }

    @Override
    public EcucParameterDef getDefinition() {
        if (this.definition != null && this.definition.eIsProxy()) {
            InternalEObject oldDefinition = (InternalEObject)this.definition;
            this.definition = (EcucParameterDef)this.eResolveProxy(oldDefinition);
            if (this.definition != oldDefinition && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldDefinition, (Object)this.definition));
            }
        }
        return this.definition;
    }

    public EcucParameterDef basicGetDefinition() {
        return this.definition;
    }

    @Override
    public void setDefinition(EcucParameterDef newDefinition) {
        EcucParameterDef oldDefinition = this.definition;
        this.definition = newDefinition;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDefinition, (Object)this.definition));
        }
    }

    @Override
    public EList<Annotation> getAnnotations() {
        if (this.annotations == null) {
            this.annotations = new EObjectContainmentEList(Annotation.class, (InternalEObject)this, 7);
        }
        return this.annotations;
    }

    @Override
    public Boolean getIsAutoValue() {
        return this.isAutoValue;
    }

    @Override
    public void setIsAutoValue(Boolean newIsAutoValue) {
        Boolean oldIsAutoValue = this.isAutoValue;
        this.isAutoValue = newIsAutoValue;
        boolean oldIsAutoValueESet = this.isAutoValueESet;
        this.isAutoValueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldIsAutoValue, (Object)this.isAutoValue, !oldIsAutoValueESet));
        }
    }

    @Override
    public void unsetIsAutoValue() {
        Boolean oldIsAutoValue = this.isAutoValue;
        boolean oldIsAutoValueESet = this.isAutoValueESet;
        this.isAutoValue = IS_AUTO_VALUE_EDEFAULT;
        this.isAutoValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldIsAutoValue, (Object)IS_AUTO_VALUE_EDEFAULT, oldIsAutoValueESet));
        }
    }

    @Override
    public boolean isSetIsAutoValue() {
        return this.isAutoValueESet;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public GConfigParameter gGetDefinition() {
        return this.getDefinition();
    }

    public void gSetDefinition(GConfigParameter value) {
        this.setDefinition((EcucParameterDef)value);
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEcucContainerValue((EcucContainerValue)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetEcucContainerValue(null, msgs);
            }
            case 7: {
                return ((InternalEList)this.getAnnotations()).basicRemove((Object)otherEnd, msgs);
            }
            case 9: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 5: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, EcucContainerValue.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getEcucContainerValue();
            }
            case 6: {
                if (resolve) {
                    return this.getDefinition();
                }
                return this.basicGetDefinition();
            }
            case 7: {
                return this.getAnnotations();
            }
            case 8: {
                return this.getIsAutoValue();
            }
            case 9: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setEcucContainerValue((EcucContainerValue)newValue);
                return;
            }
            case 6: {
                this.setDefinition((EcucParameterDef)newValue);
                return;
            }
            case 7: {
                this.getAnnotations().clear();
                this.getAnnotations().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.setIsAutoValue((Boolean)newValue);
                return;
            }
            case 9: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setEcucContainerValue(null);
                return;
            }
            case 6: {
                this.setDefinition(null);
                return;
            }
            case 7: {
                this.getAnnotations().clear();
                return;
            }
            case 8: {
                this.unsetIsAutoValue();
                return;
            }
            case 9: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.getEcucContainerValue() != null;
            }
            case 6: {
                return this.definition != null;
            }
            case 7: {
                return this.annotations != null && !this.annotations.isEmpty();
            }
            case 8: {
                return this.isSetIsAutoValue();
            }
            case 9: {
                return this.variationPoint != null;
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (isAutoValue: ");
        if (this.isAutoValueESet) {
            result.append(this.isAutoValue);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

