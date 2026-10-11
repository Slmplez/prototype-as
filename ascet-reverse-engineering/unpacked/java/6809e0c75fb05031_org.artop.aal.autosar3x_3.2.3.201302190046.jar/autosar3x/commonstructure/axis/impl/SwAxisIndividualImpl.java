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
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.commonstructure.axis.impl;

import autosar3x.commonstructure.axis.AxisPackage;
import autosar3x.commonstructure.axis.SwAxisGeneric;
import autosar3x.commonstructure.axis.SwAxisIndividual;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisIndividualAxis;
import autosar3x.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar3x.commonstructure.globalconstraints.DataConstr;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.datatype.computationmethod.CompuMethod;
import autosar3x.swcomponent.datatype.units.Unit;
import autosar3x.swcomponent.datatype.valuemodel.Vf;
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
public class SwAxisIndividualImpl
extends ARObjectImpl
implements SwAxisIndividual,
IReferringClass {
    protected EList<SwVariableRefProxy> swVariableRefs;
    protected CompuMethod compuMethod;
    protected Unit unit;
    protected Vf swMaxAxisPoints;
    protected Vf swMinAxisPoints;
    protected DataConstr dataConstr;
    protected SwAxisGeneric swAxisGeneric;

    protected SwAxisIndividualImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return AxisPackage.Literals.SW_AXIS_INDIVIDUAL;
    }

    @Override
    public SwCalprmAxisIndividualAxis getSwCalprmAxisIndividualAxis() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwCalprmAxisIndividualAxis)this.eContainer();
    }

    public NotificationChain basicSetSwCalprmAxisIndividualAxis(SwCalprmAxisIndividualAxis newSwCalprmAxisIndividualAxis, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwCalprmAxisIndividualAxis, 4, msgs);
        return msgs;
    }

    @Override
    public void setSwCalprmAxisIndividualAxis(SwCalprmAxisIndividualAxis newSwCalprmAxisIndividualAxis) {
        if (newSwCalprmAxisIndividualAxis != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwCalprmAxisIndividualAxis != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwCalprmAxisIndividualAxis)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwCalprmAxisIndividualAxis != null) {
                msgs = ((InternalEObject)newSwCalprmAxisIndividualAxis).eInverseAdd((InternalEObject)this, 5, SwCalprmAxisIndividualAxis.class, msgs);
            }
            if ((msgs = this.basicSetSwCalprmAxisIndividualAxis(newSwCalprmAxisIndividualAxis, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwCalprmAxisIndividualAxis, (Object)newSwCalprmAxisIndividualAxis));
        }
    }

    @Override
    public EList<SwVariableRefProxy> getSwVariableRefs() {
        if (this.swVariableRefs == null) {
            this.swVariableRefs = new EObjectContainmentEList(SwVariableRefProxy.class, (InternalEObject)this, 5);
        }
        return this.swVariableRefs;
    }

    @Override
    public CompuMethod getCompuMethod() {
        if (this.compuMethod != null && this.compuMethod.eIsProxy()) {
            InternalEObject oldCompuMethod = (InternalEObject)this.compuMethod;
            this.compuMethod = (CompuMethod)this.eResolveProxy(oldCompuMethod);
            if (this.compuMethod != oldCompuMethod && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldCompuMethod, (Object)this.compuMethod));
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
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCompuMethod, (Object)this.compuMethod));
        }
    }

    @Override
    public Unit getUnit() {
        if (this.unit != null && this.unit.eIsProxy()) {
            InternalEObject oldUnit = (InternalEObject)this.unit;
            this.unit = (Unit)this.eResolveProxy(oldUnit);
            if (this.unit != oldUnit && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldUnit, (Object)this.unit));
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
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldUnit, (Object)this.unit));
        }
    }

    @Override
    public Vf getSwMaxAxisPoints() {
        return this.swMaxAxisPoints;
    }

    public NotificationChain basicSetSwMaxAxisPoints(Vf newSwMaxAxisPoints, NotificationChain msgs) {
        Vf oldSwMaxAxisPoints = this.swMaxAxisPoints;
        this.swMaxAxisPoints = newSwMaxAxisPoints;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSwMaxAxisPoints, (Object)newSwMaxAxisPoints);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwMaxAxisPoints(Vf newSwMaxAxisPoints) {
        if (newSwMaxAxisPoints != this.swMaxAxisPoints) {
            NotificationChain msgs = null;
            if (this.swMaxAxisPoints != null) {
                msgs = ((InternalEObject)this.swMaxAxisPoints).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newSwMaxAxisPoints != null) {
                msgs = ((InternalEObject)newSwMaxAxisPoints).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetSwMaxAxisPoints(newSwMaxAxisPoints, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newSwMaxAxisPoints, (Object)newSwMaxAxisPoints));
        }
    }

    @Override
    public Vf getSwMinAxisPoints() {
        return this.swMinAxisPoints;
    }

    public NotificationChain basicSetSwMinAxisPoints(Vf newSwMinAxisPoints, NotificationChain msgs) {
        Vf oldSwMinAxisPoints = this.swMinAxisPoints;
        this.swMinAxisPoints = newSwMinAxisPoints;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldSwMinAxisPoints, (Object)newSwMinAxisPoints);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwMinAxisPoints(Vf newSwMinAxisPoints) {
        if (newSwMinAxisPoints != this.swMinAxisPoints) {
            NotificationChain msgs = null;
            if (this.swMinAxisPoints != null) {
                msgs = ((InternalEObject)this.swMinAxisPoints).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newSwMinAxisPoints != null) {
                msgs = ((InternalEObject)newSwMinAxisPoints).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetSwMinAxisPoints(newSwMinAxisPoints, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newSwMinAxisPoints, (Object)newSwMinAxisPoints));
        }
    }

    @Override
    public DataConstr getDataConstr() {
        if (this.dataConstr != null && this.dataConstr.eIsProxy()) {
            InternalEObject oldDataConstr = (InternalEObject)this.dataConstr;
            this.dataConstr = (DataConstr)this.eResolveProxy(oldDataConstr);
            if (this.dataConstr != oldDataConstr && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 10, (Object)oldDataConstr, (Object)this.dataConstr));
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
        AutosarObjectUtil.setDest((EObject)this, (int)10, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldDataConstr, (Object)this.dataConstr));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldSwAxisGeneric, (Object)newSwAxisGeneric);
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newSwAxisGeneric, (Object)newSwAxisGeneric));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwCalprmAxisIndividualAxis((SwCalprmAxisIndividualAxis)otherEnd, msgs);
            }
            case 11: {
                if (this.swAxisGeneric != null) {
                    msgs = ((InternalEObject)this.swAxisGeneric).eInverseRemove((InternalEObject)this, -12, null, msgs);
                }
                return this.basicSetSwAxisGeneric((SwAxisGeneric)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwCalprmAxisIndividualAxis(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getSwVariableRefs()).basicRemove((Object)otherEnd, msgs);
            }
            case 8: {
                return this.basicSetSwMaxAxisPoints(null, msgs);
            }
            case 9: {
                return this.basicSetSwMinAxisPoints(null, msgs);
            }
            case 11: {
                return this.basicSetSwAxisGeneric(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, SwCalprmAxisIndividualAxis.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwCalprmAxisIndividualAxis();
            }
            case 5: {
                return this.getSwVariableRefs();
            }
            case 6: {
                if (resolve) {
                    return this.getCompuMethod();
                }
                return this.basicGetCompuMethod();
            }
            case 7: {
                if (resolve) {
                    return this.getUnit();
                }
                return this.basicGetUnit();
            }
            case 8: {
                return this.getSwMaxAxisPoints();
            }
            case 9: {
                return this.getSwMinAxisPoints();
            }
            case 10: {
                if (resolve) {
                    return this.getDataConstr();
                }
                return this.basicGetDataConstr();
            }
            case 11: {
                return this.getSwAxisGeneric();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwCalprmAxisIndividualAxis((SwCalprmAxisIndividualAxis)newValue);
                return;
            }
            case 5: {
                this.getSwVariableRefs().clear();
                this.getSwVariableRefs().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setCompuMethod((CompuMethod)newValue);
                return;
            }
            case 7: {
                this.setUnit((Unit)newValue);
                return;
            }
            case 8: {
                this.setSwMaxAxisPoints((Vf)newValue);
                return;
            }
            case 9: {
                this.setSwMinAxisPoints((Vf)newValue);
                return;
            }
            case 10: {
                this.setDataConstr((DataConstr)newValue);
                return;
            }
            case 11: {
                this.setSwAxisGeneric((SwAxisGeneric)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwCalprmAxisIndividualAxis(null);
                return;
            }
            case 5: {
                this.getSwVariableRefs().clear();
                return;
            }
            case 6: {
                this.setCompuMethod(null);
                return;
            }
            case 7: {
                this.setUnit(null);
                return;
            }
            case 8: {
                this.setSwMaxAxisPoints(null);
                return;
            }
            case 9: {
                this.setSwMinAxisPoints(null);
                return;
            }
            case 10: {
                this.setDataConstr(null);
                return;
            }
            case 11: {
                this.setSwAxisGeneric(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwCalprmAxisIndividualAxis() != null;
            }
            case 5: {
                return this.swVariableRefs != null && !this.swVariableRefs.isEmpty();
            }
            case 6: {
                return this.compuMethod != null;
            }
            case 7: {
                return this.unit != null;
            }
            case 8: {
                return this.swMaxAxisPoints != null;
            }
            case 9: {
                return this.swMinAxisPoints != null;
            }
            case 10: {
                return this.dataConstr != null;
            }
            case 11: {
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

