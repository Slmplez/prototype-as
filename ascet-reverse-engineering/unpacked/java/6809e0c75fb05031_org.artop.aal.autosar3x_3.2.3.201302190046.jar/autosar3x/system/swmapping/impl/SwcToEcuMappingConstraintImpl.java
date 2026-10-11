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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.system.swmapping.impl;

import autosar3x.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar3x.system.swmapping.SwcToEcuMappingConstraint;
import autosar3x.system.swmapping.SwcToEcuMappingConstraintType;
import autosar3x.system.swmapping.SwmappingPackage;
import autosar3x.system.swmapping.impl.MappingConstraintImpl;
import autosar3x.system.swmapping.instanceref.SwcToEcuMappingConstraintComponent;
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
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwcToEcuMappingConstraintImpl
extends MappingConstraintImpl
implements SwcToEcuMappingConstraint,
IReferringClass {
    protected EList<SwcToEcuMappingConstraintComponent> components;
    protected EList<EcuInstance> ecuInstances;
    protected static final SwcToEcuMappingConstraintType SWC_TO_ECU_MAPPING_CONSTRAINT_TYPE_EDEFAULT = SwcToEcuMappingConstraintType.DEDICATED;
    protected SwcToEcuMappingConstraintType swcToEcuMappingConstraintType = SWC_TO_ECU_MAPPING_CONSTRAINT_TYPE_EDEFAULT;
    protected boolean swcToEcuMappingConstraintTypeESet;

    protected SwcToEcuMappingConstraintImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SwmappingPackage.Literals.SWC_TO_ECU_MAPPING_CONSTRAINT;
    }

    @Override
    public EList<SwcToEcuMappingConstraintComponent> getComponents() {
        if (this.components == null) {
            this.components = new EObjectContainmentWithInverseEList(SwcToEcuMappingConstraintComponent.class, (InternalEObject)this, 5, 4);
        }
        return this.components;
    }

    @Override
    public EList<EcuInstance> getEcuInstances() {
        if (this.ecuInstances == null) {
            this.ecuInstances = new EObjectResolvingReferringEList(EcuInstance.class, (InternalEObject)this, 6);
        }
        return this.ecuInstances;
    }

    @Override
    public SwcToEcuMappingConstraintType getSwcToEcuMappingConstraintType() {
        return this.swcToEcuMappingConstraintType;
    }

    @Override
    public void setSwcToEcuMappingConstraintType(SwcToEcuMappingConstraintType newSwcToEcuMappingConstraintType) {
        SwcToEcuMappingConstraintType oldSwcToEcuMappingConstraintType = this.swcToEcuMappingConstraintType;
        this.swcToEcuMappingConstraintType = newSwcToEcuMappingConstraintType == null ? SWC_TO_ECU_MAPPING_CONSTRAINT_TYPE_EDEFAULT : newSwcToEcuMappingConstraintType;
        boolean oldSwcToEcuMappingConstraintTypeESet = this.swcToEcuMappingConstraintTypeESet;
        this.swcToEcuMappingConstraintTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSwcToEcuMappingConstraintType, (Object)this.swcToEcuMappingConstraintType, !oldSwcToEcuMappingConstraintTypeESet));
        }
    }

    @Override
    public void unsetSwcToEcuMappingConstraintType() {
        SwcToEcuMappingConstraintType oldSwcToEcuMappingConstraintType = this.swcToEcuMappingConstraintType;
        boolean oldSwcToEcuMappingConstraintTypeESet = this.swcToEcuMappingConstraintTypeESet;
        this.swcToEcuMappingConstraintType = SWC_TO_ECU_MAPPING_CONSTRAINT_TYPE_EDEFAULT;
        this.swcToEcuMappingConstraintTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldSwcToEcuMappingConstraintType, (Object)SWC_TO_ECU_MAPPING_CONSTRAINT_TYPE_EDEFAULT, oldSwcToEcuMappingConstraintTypeESet));
        }
    }

    @Override
    public boolean isSetSwcToEcuMappingConstraintType() {
        return this.swcToEcuMappingConstraintTypeESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getComponents()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getComponents()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getComponents();
            }
            case 6: {
                return this.getEcuInstances();
            }
            case 7: {
                return this.getSwcToEcuMappingConstraintType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.getComponents().clear();
                this.getComponents().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getEcuInstances().clear();
                this.getEcuInstances().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.setSwcToEcuMappingConstraintType((SwcToEcuMappingConstraintType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.getComponents().clear();
                return;
            }
            case 6: {
                this.getEcuInstances().clear();
                return;
            }
            case 7: {
                this.unsetSwcToEcuMappingConstraintType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.components != null && !this.components.isEmpty();
            }
            case 6: {
                return this.ecuInstances != null && !this.ecuInstances.isEmpty();
            }
            case 7: {
                return this.isSetSwcToEcuMappingConstraintType();
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (swcToEcuMappingConstraintType: ");
        if (this.swcToEcuMappingConstraintTypeESet) {
            result.append((Object)this.swcToEcuMappingConstraintType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

