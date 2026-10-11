/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.commonstructure.calibrationvalue.impl;

import autosar40.commonstructure.calibrationvalue.CalibrationvaluePackage;
import autosar40.commonstructure.calibrationvalue.SwValueCont;
import autosar40.commonstructure.calibrationvalue.SwValues;
import autosar40.commonstructure.constants.ApplicationValueSpecification;
import autosar40.commonstructure.datadefproperties.ValueList;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageUnitNames;
import autosar40.swcomponent.datatype.units.Unit;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwValueContImpl
extends ARObjectImpl
implements SwValueCont,
IReferringClass {
    protected Unit unit;
    protected SingleLanguageUnitNames unitDisplayName;
    protected ValueList swArraysize;
    protected SwValues swValuesPhys;

    protected SwValueContImpl() {
    }

    protected EClass eStaticClass() {
        return CalibrationvaluePackage.Literals.SW_VALUE_CONT;
    }

    public ApplicationValueSpecification getApplicationValueSpecification() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ApplicationValueSpecification)this.eContainer();
    }

    public NotificationChain basicSetApplicationValueSpecification(ApplicationValueSpecification newApplicationValueSpecification, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newApplicationValueSpecification, 4, msgs);
        return msgs;
    }

    public void setApplicationValueSpecification(ApplicationValueSpecification newApplicationValueSpecification) {
        if (newApplicationValueSpecification != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newApplicationValueSpecification != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newApplicationValueSpecification)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newApplicationValueSpecification != null) {
                msgs = ((InternalEObject)newApplicationValueSpecification).eInverseAdd((InternalEObject)this, 8, ApplicationValueSpecification.class, msgs);
            }
            if ((msgs = this.basicSetApplicationValueSpecification(newApplicationValueSpecification, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newApplicationValueSpecification, (Object)newApplicationValueSpecification));
        }
    }

    public Unit getUnit() {
        if (this.unit != null && this.unit.eIsProxy()) {
            InternalEObject oldUnit = (InternalEObject)this.unit;
            this.unit = (Unit)this.eResolveProxy(oldUnit);
            if (this.unit != oldUnit && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldUnit, (Object)this.unit));
            }
        }
        return this.unit;
    }

    public Unit basicGetUnit() {
        return this.unit;
    }

    public void setUnit(Unit newUnit) {
        Unit oldUnit = this.unit;
        this.unit = newUnit;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldUnit, (Object)this.unit));
        }
    }

    public SingleLanguageUnitNames getUnitDisplayName() {
        return this.unitDisplayName;
    }

    public NotificationChain basicSetUnitDisplayName(SingleLanguageUnitNames newUnitDisplayName, NotificationChain msgs) {
        SingleLanguageUnitNames oldUnitDisplayName = this.unitDisplayName;
        this.unitDisplayName = newUnitDisplayName;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldUnitDisplayName, (Object)newUnitDisplayName);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setUnitDisplayName(SingleLanguageUnitNames newUnitDisplayName) {
        if (newUnitDisplayName != this.unitDisplayName) {
            NotificationChain msgs = null;
            if (this.unitDisplayName != null) {
                msgs = ((InternalEObject)this.unitDisplayName).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newUnitDisplayName != null) {
                msgs = ((InternalEObject)newUnitDisplayName).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetUnitDisplayName(newUnitDisplayName, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newUnitDisplayName, (Object)newUnitDisplayName));
        }
    }

    public ValueList getSwArraysize() {
        return this.swArraysize;
    }

    public NotificationChain basicSetSwArraysize(ValueList newSwArraysize, NotificationChain msgs) {
        ValueList oldSwArraysize = this.swArraysize;
        this.swArraysize = newSwArraysize;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSwArraysize, (Object)newSwArraysize);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwArraysize(ValueList newSwArraysize) {
        if (newSwArraysize != this.swArraysize) {
            NotificationChain msgs = null;
            if (this.swArraysize != null) {
                msgs = ((InternalEObject)this.swArraysize).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newSwArraysize != null) {
                msgs = ((InternalEObject)newSwArraysize).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetSwArraysize(newSwArraysize, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newSwArraysize, (Object)newSwArraysize));
        }
    }

    public SwValues getSwValuesPhys() {
        return this.swValuesPhys;
    }

    public NotificationChain basicSetSwValuesPhys(SwValues newSwValuesPhys, NotificationChain msgs) {
        SwValues oldSwValuesPhys = this.swValuesPhys;
        this.swValuesPhys = newSwValuesPhys;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSwValuesPhys, (Object)newSwValuesPhys);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwValuesPhys(SwValues newSwValuesPhys) {
        if (newSwValuesPhys != this.swValuesPhys) {
            NotificationChain msgs = null;
            if (this.swValuesPhys != null) {
                msgs = ((InternalEObject)this.swValuesPhys).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newSwValuesPhys != null) {
                msgs = ((InternalEObject)newSwValuesPhys).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetSwValuesPhys(newSwValuesPhys, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newSwValuesPhys, (Object)newSwValuesPhys));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetApplicationValueSpecification((ApplicationValueSpecification)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetApplicationValueSpecification(null, msgs);
            }
            case 6: {
                return this.basicSetUnitDisplayName(null, msgs);
            }
            case 7: {
                return this.basicSetSwArraysize(null, msgs);
            }
            case 8: {
                return this.basicSetSwValuesPhys(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 8, ApplicationValueSpecification.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getApplicationValueSpecification();
            }
            case 5: {
                if (resolve) {
                    return this.getUnit();
                }
                return this.basicGetUnit();
            }
            case 6: {
                return this.getUnitDisplayName();
            }
            case 7: {
                return this.getSwArraysize();
            }
            case 8: {
                return this.getSwValuesPhys();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setApplicationValueSpecification((ApplicationValueSpecification)newValue);
                return;
            }
            case 5: {
                this.setUnit((Unit)newValue);
                return;
            }
            case 6: {
                this.setUnitDisplayName((SingleLanguageUnitNames)newValue);
                return;
            }
            case 7: {
                this.setSwArraysize((ValueList)newValue);
                return;
            }
            case 8: {
                this.setSwValuesPhys((SwValues)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setApplicationValueSpecification(null);
                return;
            }
            case 5: {
                this.setUnit(null);
                return;
            }
            case 6: {
                this.setUnitDisplayName(null);
                return;
            }
            case 7: {
                this.setSwArraysize(null);
                return;
            }
            case 8: {
                this.setSwValuesPhys(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getApplicationValueSpecification() != null;
            }
            case 5: {
                return this.unit != null;
            }
            case 6: {
                return this.unitDisplayName != null;
            }
            case 7: {
                return this.swArraysize != null;
            }
            case 8: {
                return this.swValuesPhys != null;
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

