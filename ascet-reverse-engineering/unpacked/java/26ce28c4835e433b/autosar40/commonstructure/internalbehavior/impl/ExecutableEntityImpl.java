/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea
 *  gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.internalbehavior.impl;

import autosar40.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar40.commonstructure.internalbehavior.ExclusiveArea;
import autosar40.commonstructure.internalbehavior.ExecutableEntity;
import autosar40.commonstructure.internalbehavior.InternalbehaviorPackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea;
import gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExecutableEntityImpl
extends IdentifiableImpl
implements ExecutableEntity,
IReferringClass {
    protected EList<ExclusiveArea> canEnterExclusiveAreas;
    protected static final Double MINIMUM_START_INTERVAL_EDEFAULT = new Double(0.0);
    protected Double minimumStartInterval = MINIMUM_START_INTERVAL_EDEFAULT;
    protected boolean minimumStartIntervalESet;
    protected EList<ExclusiveArea> runsInsideExclusiveAreas;
    protected SwAddrMethod swAddrMethod;

    protected ExecutableEntityImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InternalbehaviorPackage.Literals.EXECUTABLE_ENTITY;
    }

    public EList<GExclusiveArea> gGetRunsInsideExclusiveAreas() {
        EList<ExclusiveArea> untypedList = this.getRunsInsideExclusiveAreas();
        return untypedList;
    }

    public EList<GExclusiveArea> gGetCanEnterExclusiveAreas() {
        EList<ExclusiveArea> untypedList = this.getCanEnterExclusiveAreas();
        return untypedList;
    }

    @Override
    public EList<ExclusiveArea> getCanEnterExclusiveAreas() {
        if (this.canEnterExclusiveAreas == null) {
            this.canEnterExclusiveAreas = new EObjectResolvingReferringEList(ExclusiveArea.class, (InternalEObject)this, 20);
        }
        return this.canEnterExclusiveAreas;
    }

    @Override
    public Double getMinimumStartInterval() {
        return this.minimumStartInterval;
    }

    @Override
    public void setMinimumStartInterval(Double newMinimumStartInterval) {
        Double oldMinimumStartInterval = this.minimumStartInterval;
        this.minimumStartInterval = newMinimumStartInterval;
        boolean oldMinimumStartIntervalESet = this.minimumStartIntervalESet;
        this.minimumStartIntervalESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldMinimumStartInterval, (Object)this.minimumStartInterval, !oldMinimumStartIntervalESet));
        }
    }

    @Override
    public void unsetMinimumStartInterval() {
        Double oldMinimumStartInterval = this.minimumStartInterval;
        boolean oldMinimumStartIntervalESet = this.minimumStartIntervalESet;
        this.minimumStartInterval = MINIMUM_START_INTERVAL_EDEFAULT;
        this.minimumStartIntervalESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldMinimumStartInterval, (Object)MINIMUM_START_INTERVAL_EDEFAULT, oldMinimumStartIntervalESet));
        }
    }

    @Override
    public boolean isSetMinimumStartInterval() {
        return this.minimumStartIntervalESet;
    }

    @Override
    public EList<ExclusiveArea> getRunsInsideExclusiveAreas() {
        if (this.runsInsideExclusiveAreas == null) {
            this.runsInsideExclusiveAreas = new EObjectResolvingReferringEList(ExclusiveArea.class, (InternalEObject)this, 22);
        }
        return this.runsInsideExclusiveAreas;
    }

    @Override
    public SwAddrMethod getSwAddrMethod() {
        if (this.swAddrMethod != null && this.swAddrMethod.eIsProxy()) {
            InternalEObject oldSwAddrMethod = (InternalEObject)this.swAddrMethod;
            this.swAddrMethod = (SwAddrMethod)this.eResolveProxy(oldSwAddrMethod);
            if (this.swAddrMethod != oldSwAddrMethod && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 23, (Object)oldSwAddrMethod, (Object)this.swAddrMethod));
            }
        }
        return this.swAddrMethod;
    }

    public SwAddrMethod basicGetSwAddrMethod() {
        return this.swAddrMethod;
    }

    @Override
    public void setSwAddrMethod(SwAddrMethod newSwAddrMethod) {
        SwAddrMethod oldSwAddrMethod = this.swAddrMethod;
        this.swAddrMethod = newSwAddrMethod;
        AutosarObjectUtil.setDest((EObject)this, (int)23, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldSwAddrMethod, (Object)this.swAddrMethod));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.gGetRunsInsideExclusiveAreas();
            }
            case 19: {
                return this.gGetCanEnterExclusiveAreas();
            }
            case 20: {
                return this.getCanEnterExclusiveAreas();
            }
            case 21: {
                return this.getMinimumStartInterval();
            }
            case 22: {
                return this.getRunsInsideExclusiveAreas();
            }
            case 23: {
                if (resolve) {
                    return this.getSwAddrMethod();
                }
                return this.basicGetSwAddrMethod();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.gGetRunsInsideExclusiveAreas().clear();
                this.gGetRunsInsideExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.gGetCanEnterExclusiveAreas().clear();
                this.gGetCanEnterExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getCanEnterExclusiveAreas().clear();
                this.getCanEnterExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.setMinimumStartInterval((Double)newValue);
                return;
            }
            case 22: {
                this.getRunsInsideExclusiveAreas().clear();
                this.getRunsInsideExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.setSwAddrMethod((SwAddrMethod)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.gGetRunsInsideExclusiveAreas().clear();
                return;
            }
            case 19: {
                this.gGetCanEnterExclusiveAreas().clear();
                return;
            }
            case 20: {
                this.getCanEnterExclusiveAreas().clear();
                return;
            }
            case 21: {
                this.unsetMinimumStartInterval();
                return;
            }
            case 22: {
                this.getRunsInsideExclusiveAreas().clear();
                return;
            }
            case 23: {
                this.setSwAddrMethod(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return !this.gGetRunsInsideExclusiveAreas().isEmpty();
            }
            case 19: {
                return !this.gGetCanEnterExclusiveAreas().isEmpty();
            }
            case 20: {
                return this.canEnterExclusiveAreas != null && !this.canEnterExclusiveAreas.isEmpty();
            }
            case 21: {
                return this.isSetMinimumStartInterval();
            }
            case 22: {
                return this.runsInsideExclusiveAreas != null && !this.runsInsideExclusiveAreas.isEmpty();
            }
            case 23: {
                return this.swAddrMethod != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GExecutableEntity.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 6;
                }
                case 19: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GExecutableEntity.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 18;
                }
                case 7: {
                    return 19;
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (minimumStartInterval: ");
        if (this.minimumStartIntervalESet) {
            result.append(this.minimumStartInterval);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

