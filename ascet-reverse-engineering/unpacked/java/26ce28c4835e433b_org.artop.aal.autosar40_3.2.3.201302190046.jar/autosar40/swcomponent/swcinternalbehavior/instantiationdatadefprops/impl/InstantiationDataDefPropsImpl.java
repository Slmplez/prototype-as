/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.impl;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarParameterRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarVariableRef;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationDataDefProps;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationdatadefpropsPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class InstantiationDataDefPropsImpl
extends ARObjectImpl
implements InstantiationDataDefProps {
    protected AutosarParameterRef parameterInstance;
    protected SwDataDefProps swDataDefProps;
    protected AutosarVariableRef variableInstance;
    protected VariationPoint variationPoint;

    protected InstantiationDataDefPropsImpl() {
    }

    protected EClass eStaticClass() {
        return InstantiationdatadefpropsPackage.Literals.INSTANTIATION_DATA_DEF_PROPS;
    }

    public AutosarParameterRef getParameterInstance() {
        return this.parameterInstance;
    }

    public NotificationChain basicSetParameterInstance(AutosarParameterRef newParameterInstance, NotificationChain msgs) {
        AutosarParameterRef oldParameterInstance = this.parameterInstance;
        this.parameterInstance = newParameterInstance;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldParameterInstance, (Object)newParameterInstance);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setParameterInstance(AutosarParameterRef newParameterInstance) {
        if (newParameterInstance != this.parameterInstance) {
            NotificationChain msgs = null;
            if (this.parameterInstance != null) {
                msgs = ((InternalEObject)this.parameterInstance).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newParameterInstance != null) {
                msgs = ((InternalEObject)newParameterInstance).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetParameterInstance(newParameterInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newParameterInstance, (Object)newParameterInstance));
        }
    }

    public SwDataDefProps getSwDataDefProps() {
        return this.swDataDefProps;
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        SwDataDefProps oldSwDataDefProps = this.swDataDefProps;
        this.swDataDefProps = newSwDataDefProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSwDataDefProps, (Object)newSwDataDefProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwDataDefProps(SwDataDefProps newSwDataDefProps) {
        if (newSwDataDefProps != this.swDataDefProps) {
            NotificationChain msgs = null;
            if (this.swDataDefProps != null) {
                msgs = ((InternalEObject)this.swDataDefProps).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
        }
    }

    public AutosarVariableRef getVariableInstance() {
        return this.variableInstance;
    }

    public NotificationChain basicSetVariableInstance(AutosarVariableRef newVariableInstance, NotificationChain msgs) {
        AutosarVariableRef oldVariableInstance = this.variableInstance;
        this.variableInstance = newVariableInstance;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldVariableInstance, (Object)newVariableInstance);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariableInstance(AutosarVariableRef newVariableInstance) {
        if (newVariableInstance != this.variableInstance) {
            NotificationChain msgs = null;
            if (this.variableInstance != null) {
                msgs = ((InternalEObject)this.variableInstance).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newVariableInstance != null) {
                msgs = ((InternalEObject)newVariableInstance).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetVariableInstance(newVariableInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newVariableInstance, (Object)newVariableInstance));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetParameterInstance(null, msgs);
            }
            case 5: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
            case 6: {
                return this.basicSetVariableInstance(null, msgs);
            }
            case 7: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getParameterInstance();
            }
            case 5: {
                return this.getSwDataDefProps();
            }
            case 6: {
                return this.getVariableInstance();
            }
            case 7: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setParameterInstance((AutosarParameterRef)newValue);
                return;
            }
            case 5: {
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
            case 6: {
                this.setVariableInstance((AutosarVariableRef)newValue);
                return;
            }
            case 7: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setParameterInstance(null);
                return;
            }
            case 5: {
                this.setSwDataDefProps(null);
                return;
            }
            case 6: {
                this.setVariableInstance(null);
                return;
            }
            case 7: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.parameterInstance != null;
            }
            case 5: {
                return this.swDataDefProps != null;
            }
            case 6: {
                return this.variableInstance != null;
            }
            case 7: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

