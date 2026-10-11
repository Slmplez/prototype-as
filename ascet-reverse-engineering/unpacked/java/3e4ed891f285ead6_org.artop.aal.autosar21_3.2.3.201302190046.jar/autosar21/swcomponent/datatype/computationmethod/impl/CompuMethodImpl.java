/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod
 *  gautosar.gswcomponents.gdatatype.gunits.GUnit
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.datatype.computationmethod.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar21.swcomponent.datatype.computationmethod.Compu;
import autosar21.swcomponent.datatype.computationmethod.CompuMethod;
import autosar21.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar21.swcomponent.datatype.units.Unit;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod;
import gautosar.gswcomponents.gdatatype.gunits.GUnit;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompuMethodImpl
extends ARElementImpl
implements CompuMethod,
IReferringClass {
    protected Unit unit;
    protected Compu compuInternalToPhys;
    protected Compu compuPhysToInternal;

    protected CompuMethodImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU_METHOD;
    }

    public GCompu gGetCompuPhysToInternal() {
        return this.getCompuPhysToInternal();
    }

    public void gSetCompuPhysToInternal(GCompu newGCompuPhysToInternal) {
        this.setCompuPhysToInternal((Compu)newGCompuPhysToInternal);
    }

    public GCompu gGetCompuInternalToPhys() {
        return this.getCompuInternalToPhys();
    }

    public void gSetCompuInternalToPhys(GCompu newGCompuInternalToPhys) {
        this.setCompuInternalToPhys((Compu)newGCompuInternalToPhys);
    }

    public GUnit gGetUnit() {
        return this.getUnit();
    }

    public void gSetUnit(GUnit newGUnit) {
        this.setUnit((Unit)newGUnit);
    }

    @Override
    public Unit getUnit() {
        if (this.unit != null && this.unit.eIsProxy()) {
            InternalEObject oldUnit = (InternalEObject)this.unit;
            this.unit = (Unit)this.eResolveProxy(oldUnit);
            if (this.unit != oldUnit && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldUnit, (Object)this.unit));
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
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldUnit, (Object)this.unit));
        }
    }

    @Override
    public Compu getCompuInternalToPhys() {
        return this.compuInternalToPhys;
    }

    public NotificationChain basicSetCompuInternalToPhys(Compu newCompuInternalToPhys, NotificationChain msgs) {
        Compu oldCompuInternalToPhys = this.compuInternalToPhys;
        this.compuInternalToPhys = newCompuInternalToPhys;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldCompuInternalToPhys, (Object)newCompuInternalToPhys);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCompuInternalToPhys(Compu newCompuInternalToPhys) {
        if (newCompuInternalToPhys != this.compuInternalToPhys) {
            NotificationChain msgs = null;
            if (this.compuInternalToPhys != null) {
                msgs = ((InternalEObject)this.compuInternalToPhys).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newCompuInternalToPhys != null) {
                msgs = ((InternalEObject)newCompuInternalToPhys).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetCompuInternalToPhys(newCompuInternalToPhys, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newCompuInternalToPhys, (Object)newCompuInternalToPhys));
        }
    }

    @Override
    public Compu getCompuPhysToInternal() {
        return this.compuPhysToInternal;
    }

    public NotificationChain basicSetCompuPhysToInternal(Compu newCompuPhysToInternal, NotificationChain msgs) {
        Compu oldCompuPhysToInternal = this.compuPhysToInternal;
        this.compuPhysToInternal = newCompuPhysToInternal;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldCompuPhysToInternal, (Object)newCompuPhysToInternal);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCompuPhysToInternal(Compu newCompuPhysToInternal) {
        if (newCompuPhysToInternal != this.compuPhysToInternal) {
            NotificationChain msgs = null;
            if (this.compuPhysToInternal != null) {
                msgs = ((InternalEObject)this.compuPhysToInternal).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newCompuPhysToInternal != null) {
                msgs = ((InternalEObject)newCompuPhysToInternal).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetCompuPhysToInternal(newCompuPhysToInternal, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newCompuPhysToInternal, (Object)newCompuPhysToInternal));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetCompuInternalToPhys(null, msgs);
            }
            case 23: {
                return this.basicSetCompuPhysToInternal(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.gGetCompuPhysToInternal();
            }
            case 19: {
                return this.gGetCompuInternalToPhys();
            }
            case 20: {
                return this.gGetUnit();
            }
            case 21: {
                if (resolve) {
                    return this.getUnit();
                }
                return this.basicGetUnit();
            }
            case 22: {
                return this.getCompuInternalToPhys();
            }
            case 23: {
                return this.getCompuPhysToInternal();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.gSetCompuPhysToInternal((GCompu)newValue);
                return;
            }
            case 19: {
                this.gSetCompuInternalToPhys((GCompu)newValue);
                return;
            }
            case 20: {
                this.gSetUnit((GUnit)newValue);
                return;
            }
            case 21: {
                this.setUnit((Unit)newValue);
                return;
            }
            case 22: {
                this.setCompuInternalToPhys((Compu)newValue);
                return;
            }
            case 23: {
                this.setCompuPhysToInternal((Compu)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.gSetCompuPhysToInternal(null);
                return;
            }
            case 19: {
                this.gSetCompuInternalToPhys(null);
                return;
            }
            case 20: {
                this.gSetUnit(null);
                return;
            }
            case 21: {
                this.setUnit(null);
                return;
            }
            case 22: {
                this.setCompuInternalToPhys(null);
                return;
            }
            case 23: {
                this.setCompuPhysToInternal(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.gGetCompuPhysToInternal() != null;
            }
            case 19: {
                return this.gGetCompuInternalToPhys() != null;
            }
            case 20: {
                return this.gGetUnit() != null;
            }
            case 21: {
                return this.unit != null;
            }
            case 22: {
                return this.compuInternalToPhys != null;
            }
            case 23: {
                return this.compuPhysToInternal != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GCompuMethod.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 7;
                }
                case 19: {
                    return 8;
                }
                case 20: {
                    return 9;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GCompuMethod.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 18;
                }
                case 8: {
                    return 19;
                }
                case 9: {
                    return 20;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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

