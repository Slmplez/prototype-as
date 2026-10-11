/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GSwBaseType
 *  gautosar.gcommonstructure.gconstants.GValueSpecification
 *  gautosar.gcommonstructure.gdatadefproperties.GSwDataDefPropsConditional
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.commonstructure.datadefproperties.impl;

import autosar40.commonstructure.basetypes.SwBaseType;
import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsConditional;
import autosar40.commonstructure.datadefproperties.impl.SwDataDefPropsContentImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.datatype.computationmethod.CompuMethod;
import gautosar.gcommonstructure.gbasetypes.GSwBaseType;
import gautosar.gcommonstructure.gconstants.GValueSpecification;
import gautosar.gcommonstructure.gdatadefproperties.GSwDataDefPropsConditional;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod;
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
public class SwDataDefPropsConditionalImpl
extends SwDataDefPropsContentImpl
implements SwDataDefPropsConditional {
    protected VariationPoint variationPoint;

    protected SwDataDefPropsConditionalImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatadefpropertiesPackage.Literals.SW_DATA_DEF_PROPS_CONDITIONAL;
    }

    public GSwBaseType gGetBaseType() {
        return this.getBaseType();
    }

    public void gSetBaseType(GSwBaseType newGBaseType) {
        this.setBaseType((SwBaseType)newGBaseType);
    }

    public GValueSpecification gGetInvalidValue() {
        return this.getInvalidValue();
    }

    public void gSetInvalidValue(GValueSpecification newGInvalidValue) {
        this.setInvalidValue((ValueSpecification)newGInvalidValue);
    }

    public GCompuMethod gGetCompuMethod() {
        return this.getCompuMethod();
    }

    public void gSetCompuMethod(GCompuMethod newGCompuMethod) {
        this.setCompuMethod((CompuMethod)newGCompuMethod);
    }

    @Override
    public SwDataDefProps getSwDataDefProps() {
        if (this.eContainerFeatureID() != 35) {
            return null;
        }
        return (SwDataDefProps)this.eContainer();
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwDataDefProps, 35, msgs);
        return msgs;
    }

    @Override
    public void setSwDataDefProps(SwDataDefProps newSwDataDefProps) {
        if (newSwDataDefProps != this.eInternalContainer() || this.eContainerFeatureID() != 35 && newSwDataDefProps != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwDataDefProps)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, 4, SwDataDefProps.class, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
        }
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 36, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -37, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -37, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 36, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 35: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwDataDefProps((SwDataDefProps)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 35: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
            case 36: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 35: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, SwDataDefProps.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 32: {
                return this.gGetBaseType();
            }
            case 33: {
                return this.gGetInvalidValue();
            }
            case 34: {
                return this.gGetCompuMethod();
            }
            case 35: {
                return this.getSwDataDefProps();
            }
            case 36: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 32: {
                this.gSetBaseType((GSwBaseType)newValue);
                return;
            }
            case 33: {
                this.gSetInvalidValue((GValueSpecification)newValue);
                return;
            }
            case 34: {
                this.gSetCompuMethod((GCompuMethod)newValue);
                return;
            }
            case 35: {
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
            case 36: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 32: {
                this.gSetBaseType(null);
                return;
            }
            case 33: {
                this.gSetInvalidValue(null);
                return;
            }
            case 34: {
                this.gSetCompuMethod(null);
                return;
            }
            case 35: {
                this.setSwDataDefProps(null);
                return;
            }
            case 36: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 32: {
                return this.gGetBaseType() != null;
            }
            case 33: {
                return this.gGetInvalidValue() != null;
            }
            case 34: {
                return this.gGetCompuMethod() != null;
            }
            case 35: {
                return this.getSwDataDefProps() != null;
            }
            case 36: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GSwDataDefPropsConditional.class) {
            switch (derivedFeatureID) {
                case 32: {
                    return 2;
                }
                case 33: {
                    return 3;
                }
                case 34: {
                    return 4;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GSwDataDefPropsConditional.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 32;
                }
                case 3: {
                    return 33;
                }
                case 4: {
                    return 34;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

