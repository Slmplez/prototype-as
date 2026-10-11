/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.swcomponent.swcinternalbehavior.dataelements.impl;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarParameterRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.ParameterAccess;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.ParameterInAtomicSWCTypeInstanceRef;
import autosar40.util.Autosar40Factory;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess;
import java.util.ArrayList;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ParameterAccessImpl
extends IdentifiableImpl
implements ParameterAccess {
    protected AutosarParameterRef accessedParameter;
    protected SwDataDefProps swDataDefProps;
    protected VariationPoint variationPoint;

    protected ParameterAccessImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DataelementsPackage.Literals.PARAMETER_ACCESS;
    }

    public GParameterInAtomicSwcIRef gGetParameter() {
        BasicEList untypedList = new BasicEList();
        AutosarParameterRef accessedParameter = this.getAccessedParameter();
        if (accessedParameter != null) {
            untypedList.add((Object)this.getAccessedParameter());
        }
        ArrayList<ParameterInAtomicSWCTypeInstanceRef> resultObjects = new ArrayList<ParameterInAtomicSWCTypeInstanceRef>();
        resultObjects.clear();
        for (Object previousObject : untypedList) {
            ParameterInAtomicSWCTypeInstanceRef resultObject = ((AutosarParameterRef)previousObject).getAutosarParameter();
            if (resultObject == null) continue;
            resultObjects.add(resultObject);
        }
        untypedList.clear();
        untypedList.addAll(resultObjects);
        if (untypedList.isEmpty()) {
            return null;
        }
        return (GParameterInAtomicSwcIRef)untypedList.get(0);
    }

    public void gSetParameter(GParameterInAtomicSwcIRef newGParameter) {
        AutosarParameterRef accessedParameter = this.getAccessedParameter();
        if (accessedParameter == null) {
            accessedParameter = Autosar40Factory.eINSTANCE.createAutosarParameterRef();
        }
        this.setAccessedParameter(accessedParameter);
        accessedParameter.setAutosarParameter((ParameterInAtomicSWCTypeInstanceRef)newGParameter);
    }

    @Override
    public RunnableEntity getRunnableEntity() {
        if (this.eContainerFeatureID() != 19) {
            return null;
        }
        return (RunnableEntity)this.eContainer();
    }

    public NotificationChain basicSetRunnableEntity(RunnableEntity newRunnableEntity, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newRunnableEntity, 19, msgs);
        return msgs;
    }

    @Override
    public void setRunnableEntity(RunnableEntity newRunnableEntity) {
        if (newRunnableEntity != this.eInternalContainer() || this.eContainerFeatureID() != 19 && newRunnableEntity != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newRunnableEntity)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newRunnableEntity != null) {
                msgs = ((InternalEObject)newRunnableEntity).eInverseAdd((InternalEObject)this, 47, RunnableEntity.class, msgs);
            }
            if ((msgs = this.basicSetRunnableEntity(newRunnableEntity, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newRunnableEntity, (Object)newRunnableEntity));
        }
    }

    @Override
    public AutosarParameterRef getAccessedParameter() {
        return this.accessedParameter;
    }

    public NotificationChain basicSetAccessedParameter(AutosarParameterRef newAccessedParameter, NotificationChain msgs) {
        AutosarParameterRef oldAccessedParameter = this.accessedParameter;
        this.accessedParameter = newAccessedParameter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldAccessedParameter, (Object)newAccessedParameter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setAccessedParameter(AutosarParameterRef newAccessedParameter) {
        if (newAccessedParameter != this.accessedParameter) {
            NotificationChain msgs = null;
            if (this.accessedParameter != null) {
                msgs = ((InternalEObject)this.accessedParameter).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newAccessedParameter != null) {
                msgs = ((InternalEObject)newAccessedParameter).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetAccessedParameter(newAccessedParameter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newAccessedParameter, (Object)newAccessedParameter));
        }
    }

    @Override
    public SwDataDefProps getSwDataDefProps() {
        return this.swDataDefProps;
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        SwDataDefProps oldSwDataDefProps = this.swDataDefProps;
        this.swDataDefProps = newSwDataDefProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldSwDataDefProps, (Object)newSwDataDefProps);
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
                msgs = ((InternalEObject)this.swDataDefProps).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetRunnableEntity((RunnableEntity)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetRunnableEntity(null, msgs);
            }
            case 20: {
                return this.basicSetAccessedParameter(null, msgs);
            }
            case 21: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
            case 22: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 19: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 47, RunnableEntity.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.gGetParameter();
            }
            case 19: {
                return this.getRunnableEntity();
            }
            case 20: {
                return this.getAccessedParameter();
            }
            case 21: {
                return this.getSwDataDefProps();
            }
            case 22: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.gSetParameter((GParameterInAtomicSwcIRef)newValue);
                return;
            }
            case 19: {
                this.setRunnableEntity((RunnableEntity)newValue);
                return;
            }
            case 20: {
                this.setAccessedParameter((AutosarParameterRef)newValue);
                return;
            }
            case 21: {
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
            case 22: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.gSetParameter(null);
                return;
            }
            case 19: {
                this.setRunnableEntity(null);
                return;
            }
            case 20: {
                this.setAccessedParameter(null);
                return;
            }
            case 21: {
                this.setSwDataDefProps(null);
                return;
            }
            case 22: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.gGetParameter() != null;
            }
            case 19: {
                return this.getRunnableEntity() != null;
            }
            case 20: {
                return this.accessedParameter != null;
            }
            case 21: {
                return this.swDataDefProps != null;
            }
            case 22: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GParameterAccess.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GParameterAccess.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 18;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

