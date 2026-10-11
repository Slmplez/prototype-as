/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.swcomponent.datatype.units.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.datatype.units.Unit;
import autosar21.swcomponent.datatype.units.UnitGroup;
import autosar21.swcomponent.datatype.units.UnitSpec;
import autosar21.swcomponent.datatype.units.UnitsPackage;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class UnitGroupImpl
extends IdentifiableImpl
implements UnitGroup,
IReferringClass {
    protected EList<Unit> units;

    protected UnitGroupImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return UnitsPackage.Literals.UNIT_GROUP;
    }

    @Override
    public UnitSpec getUnitSpec() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (UnitSpec)this.eContainer();
    }

    public NotificationChain basicSetUnitSpec(UnitSpec newUnitSpec, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newUnitSpec, 16, msgs);
        return msgs;
    }

    @Override
    public void setUnitSpec(UnitSpec newUnitSpec) {
        if (newUnitSpec != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newUnitSpec != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newUnitSpec)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newUnitSpec != null) {
                msgs = ((InternalEObject)newUnitSpec).eInverseAdd((InternalEObject)this, 4, UnitSpec.class, msgs);
            }
            if ((msgs = this.basicSetUnitSpec(newUnitSpec, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newUnitSpec, (Object)newUnitSpec));
        }
    }

    @Override
    public EList<Unit> getUnits() {
        if (this.units == null) {
            this.units = new EObjectResolvingReferringEList(Unit.class, (InternalEObject)this, 17);
        }
        return this.units;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetUnitSpec((UnitSpec)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetUnitSpec(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, UnitSpec.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getUnitSpec();
            }
            case 17: {
                return this.getUnits();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setUnitSpec((UnitSpec)newValue);
                return;
            }
            case 17: {
                this.getUnits().clear();
                this.getUnits().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setUnitSpec(null);
                return;
            }
            case 17: {
                this.getUnits().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getUnitSpec() != null;
            }
            case 17: {
                return this.units != null && !this.units.isEmpty();
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

