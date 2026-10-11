/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GPerInstanceMemory
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.swcomponent.swcinternalbehavior.perinstancememory.impl;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.genericstructure.abstractstructure.impl.AtpStructureElementImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerInstanceMemory;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerinstancememoryPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GPerInstanceMemory;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PerInstanceMemoryImpl
extends AtpStructureElementImpl
implements PerInstanceMemory {
    protected static final String GTYPE_EDEFAULT = null;
    protected static final String GTYPE_DEFINITION_EDEFAULT = null;
    protected static final String INIT_VALUE_EDEFAULT = "";
    protected String initValue = "";
    protected boolean initValueESet;
    protected SwDataDefProps swDataDefProps;
    protected static final String TYPE_EDEFAULT = "";
    protected String type = "";
    protected boolean typeESet;
    protected static final String TYPE_DEFINITION_EDEFAULT = "";
    protected String typeDefinition = "";
    protected boolean typeDefinitionESet;
    protected VariationPoint variationPoint;

    protected PerInstanceMemoryImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PerinstancememoryPackage.Literals.PER_INSTANCE_MEMORY;
    }

    public String gGetType() {
        String tgtFeatureValue = this.getType();
        return tgtFeatureValue;
    }

    public void gSetType(String newGType) {
        this.setType(newGType);
    }

    public void gUnsetType() {
        this.unsetType();
    }

    public boolean gIsSetType() {
        return this.isSetType();
    }

    public String gGetTypeDefinition() {
        String tgtFeatureValue = this.getTypeDefinition();
        return tgtFeatureValue;
    }

    public void gSetTypeDefinition(String newGTypeDefinition) {
        this.setTypeDefinition(newGTypeDefinition);
    }

    public void gUnsetTypeDefinition() {
        this.unsetTypeDefinition();
    }

    public boolean gIsSetTypeDefinition() {
        return this.isSetTypeDefinition();
    }

    @Override
    public SwcInternalBehavior getSwcInternalBehavior() {
        if (this.eContainerFeatureID() != 21) {
            return null;
        }
        return (SwcInternalBehavior)this.eContainer();
    }

    public NotificationChain basicSetSwcInternalBehavior(SwcInternalBehavior newSwcInternalBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwcInternalBehavior, 21, msgs);
        return msgs;
    }

    @Override
    public void setSwcInternalBehavior(SwcInternalBehavior newSwcInternalBehavior) {
        if (newSwcInternalBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 21 && newSwcInternalBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwcInternalBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwcInternalBehavior != null) {
                msgs = ((InternalEObject)newSwcInternalBehavior).eInverseAdd((InternalEObject)this, 39, SwcInternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetSwcInternalBehavior(newSwcInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newSwcInternalBehavior, (Object)newSwcInternalBehavior));
        }
    }

    @Override
    public String getInitValue() {
        return this.initValue;
    }

    @Override
    public void setInitValue(String newInitValue) {
        String oldInitValue = this.initValue;
        this.initValue = newInitValue;
        boolean oldInitValueESet = this.initValueESet;
        this.initValueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldInitValue, (Object)this.initValue, !oldInitValueESet));
        }
    }

    @Override
    public void unsetInitValue() {
        String oldInitValue = this.initValue;
        boolean oldInitValueESet = this.initValueESet;
        this.initValue = "";
        this.initValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldInitValue, (Object)"", oldInitValueESet));
        }
    }

    @Override
    public boolean isSetInitValue() {
        return this.initValueESet;
    }

    @Override
    public SwDataDefProps getSwDataDefProps() {
        return this.swDataDefProps;
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        SwDataDefProps oldSwDataDefProps = this.swDataDefProps;
        this.swDataDefProps = newSwDataDefProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldSwDataDefProps, (Object)newSwDataDefProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwDataDefProps(SwDataDefProps newSwDataDefProps) {
        if (newSwDataDefProps != this.swDataDefProps) {
            NotificationChain msgs = null;
            if (this.swDataDefProps != null) {
                msgs = ((InternalEObject)this.swDataDefProps).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
        }
    }

    @Override
    public String getType() {
        return this.type;
    }

    @Override
    public void setType(String newType) {
        String oldType = this.type;
        this.type = newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    @Override
    public void unsetType() {
        String oldType = this.type;
        boolean oldTypeESet = this.typeESet;
        this.type = "";
        this.typeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldType, (Object)"", oldTypeESet));
        }
    }

    @Override
    public boolean isSetType() {
        return this.typeESet;
    }

    @Override
    public String getTypeDefinition() {
        return this.typeDefinition;
    }

    @Override
    public void setTypeDefinition(String newTypeDefinition) {
        String oldTypeDefinition = this.typeDefinition;
        this.typeDefinition = newTypeDefinition;
        boolean oldTypeDefinitionESet = this.typeDefinitionESet;
        this.typeDefinitionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldTypeDefinition, (Object)this.typeDefinition, !oldTypeDefinitionESet));
        }
    }

    @Override
    public void unsetTypeDefinition() {
        String oldTypeDefinition = this.typeDefinition;
        boolean oldTypeDefinitionESet = this.typeDefinitionESet;
        this.typeDefinition = "";
        this.typeDefinitionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldTypeDefinition, (Object)"", oldTypeDefinitionESet));
        }
    }

    @Override
    public boolean isSetTypeDefinition() {
        return this.typeDefinitionESet;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -27, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -27, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwcInternalBehavior((SwcInternalBehavior)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return this.basicSetSwcInternalBehavior(null, msgs);
            }
            case 23: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
            case 26: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 21: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 39, SwcInternalBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.gGetType();
            }
            case 20: {
                return this.gGetTypeDefinition();
            }
            case 21: {
                return this.getSwcInternalBehavior();
            }
            case 22: {
                return this.getInitValue();
            }
            case 23: {
                return this.getSwDataDefProps();
            }
            case 24: {
                return this.getType();
            }
            case 25: {
                return this.getTypeDefinition();
            }
            case 26: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.gSetType((String)newValue);
                return;
            }
            case 20: {
                this.gSetTypeDefinition((String)newValue);
                return;
            }
            case 21: {
                this.setSwcInternalBehavior((SwcInternalBehavior)newValue);
                return;
            }
            case 22: {
                this.setInitValue((String)newValue);
                return;
            }
            case 23: {
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
            case 24: {
                this.setType((String)newValue);
                return;
            }
            case 25: {
                this.setTypeDefinition((String)newValue);
                return;
            }
            case 26: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.gUnsetType();
                return;
            }
            case 20: {
                this.gUnsetTypeDefinition();
                return;
            }
            case 21: {
                this.setSwcInternalBehavior(null);
                return;
            }
            case 22: {
                this.unsetInitValue();
                return;
            }
            case 23: {
                this.setSwDataDefProps(null);
                return;
            }
            case 24: {
                this.unsetType();
                return;
            }
            case 25: {
                this.unsetTypeDefinition();
                return;
            }
            case 26: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.gIsSetType();
            }
            case 20: {
                return this.gIsSetTypeDefinition();
            }
            case 21: {
                return this.getSwcInternalBehavior() != null;
            }
            case 22: {
                return this.isSetInitValue();
            }
            case 23: {
                return this.swDataDefProps != null;
            }
            case 24: {
                return this.isSetType();
            }
            case 25: {
                return this.isSetTypeDefinition();
            }
            case 26: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GPerInstanceMemory.class) {
            switch (derivedFeatureID) {
                case 19: {
                    return 6;
                }
                case 20: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GPerInstanceMemory.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 19;
                }
                case 7: {
                    return 20;
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
        result.append(" (initValue: ");
        if (this.initValueESet) {
            result.append(this.initValue);
        } else {
            result.append("<unset>");
        }
        result.append(", type: ");
        if (this.typeESet) {
            result.append(this.type);
        } else {
            result.append("<unset>");
        }
        result.append(", typeDefinition: ");
        if (this.typeDefinitionESet) {
            result.append(this.typeDefinition);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

