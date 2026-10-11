/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
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
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.commonstructure.axis.impl;

import autosar40.commonstructure.axis.AxisPackage;
import autosar40.commonstructure.axis.SwAxisGeneric;
import autosar40.commonstructure.axis.SwAxisIndividual;
import autosar40.commonstructure.calibrationparameter.impl.SwCalprmAxisTypePropsImpl;
import autosar40.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar40.commonstructure.globalconstraints.DataConstr;
import autosar40.genericstructure.varianthandling.IntegerValueVariationPoint;
import autosar40.swcomponent.datatype.computationmethod.CompuMethod;
import autosar40.swcomponent.datatype.datatypes.ApplicationPrimitiveDataType;
import autosar40.swcomponent.datatype.units.Unit;
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
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwAxisIndividualImpl
extends SwCalprmAxisTypePropsImpl
implements SwAxisIndividual,
IReferringClass {
    protected ApplicationPrimitiveDataType inputVariableType;
    protected EList<SwVariableRefProxy> swVariableRefs;
    protected CompuMethod compuMethod;
    protected Unit unit;
    protected IntegerValueVariationPoint swMaxAxisPoints;
    protected IntegerValueVariationPoint swMinAxisPoints;
    protected DataConstr dataConstr;
    protected SwAxisGeneric swAxisGeneric;

    protected SwAxisIndividualImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return AxisPackage.Literals.SW_AXIS_INDIVIDUAL;
    }

    @Override
    public ApplicationPrimitiveDataType getInputVariableType() {
        if (this.inputVariableType != null && this.inputVariableType.eIsProxy()) {
            InternalEObject oldInputVariableType = (InternalEObject)this.inputVariableType;
            this.inputVariableType = (ApplicationPrimitiveDataType)this.eResolveProxy(oldInputVariableType);
            if (this.inputVariableType != oldInputVariableType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldInputVariableType, (Object)this.inputVariableType));
            }
        }
        return this.inputVariableType;
    }

    public ApplicationPrimitiveDataType basicGetInputVariableType() {
        return this.inputVariableType;
    }

    @Override
    public void setInputVariableType(ApplicationPrimitiveDataType newInputVariableType) {
        ApplicationPrimitiveDataType oldInputVariableType = this.inputVariableType;
        this.inputVariableType = newInputVariableType;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldInputVariableType, (Object)this.inputVariableType));
        }
    }

    @Override
    public EList<SwVariableRefProxy> getSwVariableRefs() {
        if (this.swVariableRefs == null) {
            this.swVariableRefs = new EObjectContainmentEList(SwVariableRefProxy.class, (InternalEObject)this, 6);
        }
        return this.swVariableRefs;
    }

    @Override
    public CompuMethod getCompuMethod() {
        if (this.compuMethod != null && this.compuMethod.eIsProxy()) {
            InternalEObject oldCompuMethod = (InternalEObject)this.compuMethod;
            this.compuMethod = (CompuMethod)this.eResolveProxy(oldCompuMethod);
            if (this.compuMethod != oldCompuMethod && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldCompuMethod, (Object)this.compuMethod));
            }
        }
        return this.compuMethod;
    }

    public CompuMethod basicGetCompuMethod() {
        return this.compuMethod;
    }

    @Override
    public void setCompuMethod(CompuMethod newCompuMethod) {
        CompuMethod oldCompuMethod = this.compuMethod;
        this.compuMethod = newCompuMethod;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldCompuMethod, (Object)this.compuMethod));
        }
    }

    @Override
    public Unit getUnit() {
        if (this.unit != null && this.unit.eIsProxy()) {
            InternalEObject oldUnit = (InternalEObject)this.unit;
            this.unit = (Unit)this.eResolveProxy(oldUnit);
            if (this.unit != oldUnit && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldUnit, (Object)this.unit));
            }
        }
        return this.unit;
    }

    public Unit basicGetUnit() {
        return this.unit;
    }

    @Override
    public void setUnit(Unit newUnit) {
        Unit oldUnit = this.unit;
        this.unit = newUnit;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldUnit, (Object)this.unit));
        }
    }

    @Override
    public IntegerValueVariationPoint getSwMaxAxisPoints() {
        return this.swMaxAxisPoints;
    }

    public NotificationChain basicSetSwMaxAxisPoints(IntegerValueVariationPoint newSwMaxAxisPoints, NotificationChain msgs) {
        IntegerValueVariationPoint oldSwMaxAxisPoints = this.swMaxAxisPoints;
        this.swMaxAxisPoints = newSwMaxAxisPoints;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldSwMaxAxisPoints, (Object)newSwMaxAxisPoints);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwMaxAxisPoints(IntegerValueVariationPoint newSwMaxAxisPoints) {
        if (newSwMaxAxisPoints != this.swMaxAxisPoints) {
            NotificationChain msgs = null;
            if (this.swMaxAxisPoints != null) {
                msgs = ((InternalEObject)this.swMaxAxisPoints).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newSwMaxAxisPoints != null) {
                msgs = ((InternalEObject)newSwMaxAxisPoints).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetSwMaxAxisPoints(newSwMaxAxisPoints, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newSwMaxAxisPoints, (Object)newSwMaxAxisPoints));
        }
    }

    @Override
    public IntegerValueVariationPoint getSwMinAxisPoints() {
        return this.swMinAxisPoints;
    }

    public NotificationChain basicSetSwMinAxisPoints(IntegerValueVariationPoint newSwMinAxisPoints, NotificationChain msgs) {
        IntegerValueVariationPoint oldSwMinAxisPoints = this.swMinAxisPoints;
        this.swMinAxisPoints = newSwMinAxisPoints;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldSwMinAxisPoints, (Object)newSwMinAxisPoints);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwMinAxisPoints(IntegerValueVariationPoint newSwMinAxisPoints) {
        if (newSwMinAxisPoints != this.swMinAxisPoints) {
            NotificationChain msgs = null;
            if (this.swMinAxisPoints != null) {
                msgs = ((InternalEObject)this.swMinAxisPoints).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newSwMinAxisPoints != null) {
                msgs = ((InternalEObject)newSwMinAxisPoints).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetSwMinAxisPoints(newSwMinAxisPoints, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newSwMinAxisPoints, (Object)newSwMinAxisPoints));
        }
    }

    @Override
    public DataConstr getDataConstr() {
        if (this.dataConstr != null && this.dataConstr.eIsProxy()) {
            InternalEObject oldDataConstr = (InternalEObject)this.dataConstr;
            this.dataConstr = (DataConstr)this.eResolveProxy(oldDataConstr);
            if (this.dataConstr != oldDataConstr && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 11, (Object)oldDataConstr, (Object)this.dataConstr));
            }
        }
        return this.dataConstr;
    }

    public DataConstr basicGetDataConstr() {
        return this.dataConstr;
    }

    @Override
    public void setDataConstr(DataConstr newDataConstr) {
        DataConstr oldDataConstr = this.dataConstr;
        this.dataConstr = newDataConstr;
        AutosarObjectUtil.setDest((EObject)this, (int)11, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldDataConstr, (Object)this.dataConstr));
        }
    }

    @Override
    public SwAxisGeneric getSwAxisGeneric() {
        return this.swAxisGeneric;
    }

    public NotificationChain basicSetSwAxisGeneric(SwAxisGeneric newSwAxisGeneric, NotificationChain msgs) {
        SwAxisGeneric oldSwAxisGeneric = this.swAxisGeneric;
        this.swAxisGeneric = newSwAxisGeneric;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldSwAxisGeneric, (Object)newSwAxisGeneric);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwAxisGeneric(SwAxisGeneric newSwAxisGeneric) {
        if (newSwAxisGeneric != this.swAxisGeneric) {
            NotificationChain msgs = null;
            if (this.swAxisGeneric != null) {
                msgs = ((InternalEObject)this.swAxisGeneric).eInverseRemove((InternalEObject)this, 4, SwAxisGeneric.class, msgs);
            }
            if (newSwAxisGeneric != null) {
                msgs = ((InternalEObject)newSwAxisGeneric).eInverseAdd((InternalEObject)this, 4, SwAxisGeneric.class, msgs);
            }
            if ((msgs = this.basicSetSwAxisGeneric(newSwAxisGeneric, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newSwAxisGeneric, (Object)newSwAxisGeneric));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 12: {
                if (this.swAxisGeneric != null) {
                    msgs = ((InternalEObject)this.swAxisGeneric).eInverseRemove((InternalEObject)this, -13, null, msgs);
                }
                return this.basicSetSwAxisGeneric((SwAxisGeneric)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return ((InternalEList)this.getSwVariableRefs()).basicRemove((Object)otherEnd, msgs);
            }
            case 9: {
                return this.basicSetSwMaxAxisPoints(null, msgs);
            }
            case 10: {
                return this.basicSetSwMinAxisPoints(null, msgs);
            }
            case 12: {
                return this.basicSetSwAxisGeneric(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                if (resolve) {
                    return this.getInputVariableType();
                }
                return this.basicGetInputVariableType();
            }
            case 6: {
                return this.getSwVariableRefs();
            }
            case 7: {
                if (resolve) {
                    return this.getCompuMethod();
                }
                return this.basicGetCompuMethod();
            }
            case 8: {
                if (resolve) {
                    return this.getUnit();
                }
                return this.basicGetUnit();
            }
            case 9: {
                return this.getSwMaxAxisPoints();
            }
            case 10: {
                return this.getSwMinAxisPoints();
            }
            case 11: {
                if (resolve) {
                    return this.getDataConstr();
                }
                return this.basicGetDataConstr();
            }
            case 12: {
                return this.getSwAxisGeneric();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setInputVariableType((ApplicationPrimitiveDataType)newValue);
                return;
            }
            case 6: {
                this.getSwVariableRefs().clear();
                this.getSwVariableRefs().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.setCompuMethod((CompuMethod)newValue);
                return;
            }
            case 8: {
                this.setUnit((Unit)newValue);
                return;
            }
            case 9: {
                this.setSwMaxAxisPoints((IntegerValueVariationPoint)newValue);
                return;
            }
            case 10: {
                this.setSwMinAxisPoints((IntegerValueVariationPoint)newValue);
                return;
            }
            case 11: {
                this.setDataConstr((DataConstr)newValue);
                return;
            }
            case 12: {
                this.setSwAxisGeneric((SwAxisGeneric)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setInputVariableType(null);
                return;
            }
            case 6: {
                this.getSwVariableRefs().clear();
                return;
            }
            case 7: {
                this.setCompuMethod(null);
                return;
            }
            case 8: {
                this.setUnit(null);
                return;
            }
            case 9: {
                this.setSwMaxAxisPoints(null);
                return;
            }
            case 10: {
                this.setSwMinAxisPoints(null);
                return;
            }
            case 11: {
                this.setDataConstr(null);
                return;
            }
            case 12: {
                this.setSwAxisGeneric(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.inputVariableType != null;
            }
            case 6: {
                return this.swVariableRefs != null && !this.swVariableRefs.isEmpty();
            }
            case 7: {
                return this.compuMethod != null;
            }
            case 8: {
                return this.unit != null;
            }
            case 9: {
                return this.swMaxAxisPoints != null;
            }
            case 10: {
                return this.swMinAxisPoints != null;
            }
            case 11: {
                return this.dataConstr != null;
            }
            case 12: {
                return this.swAxisGeneric != null;
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
}

