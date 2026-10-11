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
package autosar3x.ecuresource.ecuelectronics.impl;

import autosar3x.ecuresource.basicelements.FrequencyRange;
import autosar3x.ecuresource.ecuelectronics.Clock;
import autosar3x.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar3x.ecuresource.ecuelectronics.Oscillator;
import autosar3x.ecuresource.ecuelectronics.impl.ECUElectronicsImpl;
import autosar3x.ecuresource.processingunit.ClockTypeEnum;
import autosar3x.ecuresource.processingunit.ProcessingUnit;
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
public class ClockImpl
extends ECUElectronicsImpl
implements Clock,
IReferringClass {
    protected static final Boolean ADJUSTABLE_EDEFAULT = Boolean.FALSE;
    protected Boolean adjustable = ADJUSTABLE_EDEFAULT;
    protected boolean adjustableESet;
    protected static final Double CLOCK_JITTER_EDEFAULT = new Double(0.0);
    protected Double clockJitter = CLOCK_JITTER_EDEFAULT;
    protected boolean clockJitterESet;
    protected static final Double CLOCK_STARTUP_TIME_EDEFAULT = new Double(0.0);
    protected Double clockStartupTime = CLOCK_STARTUP_TIME_EDEFAULT;
    protected boolean clockStartupTimeESet;
    protected static final Double CLOCK_TOLERANCE_EDEFAULT = new Double(0.0);
    protected Double clockTolerance = CLOCK_TOLERANCE_EDEFAULT;
    protected boolean clockToleranceESet;
    protected FrequencyRange frequency;
    protected EList<Oscillator> oscillators;
    protected static final ClockTypeEnum TYPE_EDEFAULT = ClockTypeEnum.PLL;
    protected ClockTypeEnum type = TYPE_EDEFAULT;
    protected boolean typeESet;

    protected ClockImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcuelectronicsPackage.Literals.CLOCK;
    }

    @Override
    public ProcessingUnit getProcessingUnit() {
        if (this.eContainerFeatureID() != 27) {
            return null;
        }
        return (ProcessingUnit)this.eContainer();
    }

    public NotificationChain basicSetProcessingUnit(ProcessingUnit newProcessingUnit, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newProcessingUnit, 27, msgs);
        return msgs;
    }

    @Override
    public void setProcessingUnit(ProcessingUnit newProcessingUnit) {
        if (newProcessingUnit != this.eInternalContainer() || this.eContainerFeatureID() != 27 && newProcessingUnit != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newProcessingUnit)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newProcessingUnit != null) {
                msgs = ((InternalEObject)newProcessingUnit).eInverseAdd((InternalEObject)this, 37, ProcessingUnit.class, msgs);
            }
            if ((msgs = this.basicSetProcessingUnit(newProcessingUnit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)newProcessingUnit, (Object)newProcessingUnit));
        }
    }

    @Override
    public Boolean getAdjustable() {
        return this.adjustable;
    }

    @Override
    public void setAdjustable(Boolean newAdjustable) {
        Boolean oldAdjustable = this.adjustable;
        this.adjustable = newAdjustable;
        boolean oldAdjustableESet = this.adjustableESet;
        this.adjustableESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldAdjustable, (Object)this.adjustable, !oldAdjustableESet));
        }
    }

    @Override
    public void unsetAdjustable() {
        Boolean oldAdjustable = this.adjustable;
        boolean oldAdjustableESet = this.adjustableESet;
        this.adjustable = ADJUSTABLE_EDEFAULT;
        this.adjustableESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldAdjustable, (Object)ADJUSTABLE_EDEFAULT, oldAdjustableESet));
        }
    }

    @Override
    public boolean isSetAdjustable() {
        return this.adjustableESet;
    }

    @Override
    public Double getClockJitter() {
        return this.clockJitter;
    }

    @Override
    public void setClockJitter(Double newClockJitter) {
        Double oldClockJitter = this.clockJitter;
        this.clockJitter = newClockJitter;
        boolean oldClockJitterESet = this.clockJitterESet;
        this.clockJitterESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldClockJitter, (Object)this.clockJitter, !oldClockJitterESet));
        }
    }

    @Override
    public void unsetClockJitter() {
        Double oldClockJitter = this.clockJitter;
        boolean oldClockJitterESet = this.clockJitterESet;
        this.clockJitter = CLOCK_JITTER_EDEFAULT;
        this.clockJitterESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldClockJitter, (Object)CLOCK_JITTER_EDEFAULT, oldClockJitterESet));
        }
    }

    @Override
    public boolean isSetClockJitter() {
        return this.clockJitterESet;
    }

    @Override
    public Double getClockStartupTime() {
        return this.clockStartupTime;
    }

    @Override
    public void setClockStartupTime(Double newClockStartupTime) {
        Double oldClockStartupTime = this.clockStartupTime;
        this.clockStartupTime = newClockStartupTime;
        boolean oldClockStartupTimeESet = this.clockStartupTimeESet;
        this.clockStartupTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldClockStartupTime, (Object)this.clockStartupTime, !oldClockStartupTimeESet));
        }
    }

    @Override
    public void unsetClockStartupTime() {
        Double oldClockStartupTime = this.clockStartupTime;
        boolean oldClockStartupTimeESet = this.clockStartupTimeESet;
        this.clockStartupTime = CLOCK_STARTUP_TIME_EDEFAULT;
        this.clockStartupTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldClockStartupTime, (Object)CLOCK_STARTUP_TIME_EDEFAULT, oldClockStartupTimeESet));
        }
    }

    @Override
    public boolean isSetClockStartupTime() {
        return this.clockStartupTimeESet;
    }

    @Override
    public Double getClockTolerance() {
        return this.clockTolerance;
    }

    @Override
    public void setClockTolerance(Double newClockTolerance) {
        Double oldClockTolerance = this.clockTolerance;
        this.clockTolerance = newClockTolerance;
        boolean oldClockToleranceESet = this.clockToleranceESet;
        this.clockToleranceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldClockTolerance, (Object)this.clockTolerance, !oldClockToleranceESet));
        }
    }

    @Override
    public void unsetClockTolerance() {
        Double oldClockTolerance = this.clockTolerance;
        boolean oldClockToleranceESet = this.clockToleranceESet;
        this.clockTolerance = CLOCK_TOLERANCE_EDEFAULT;
        this.clockToleranceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldClockTolerance, (Object)CLOCK_TOLERANCE_EDEFAULT, oldClockToleranceESet));
        }
    }

    @Override
    public boolean isSetClockTolerance() {
        return this.clockToleranceESet;
    }

    @Override
    public FrequencyRange getFrequency() {
        return this.frequency;
    }

    public NotificationChain basicSetFrequency(FrequencyRange newFrequency, NotificationChain msgs) {
        FrequencyRange oldFrequency = this.frequency;
        this.frequency = newFrequency;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldFrequency, (Object)newFrequency);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setFrequency(FrequencyRange newFrequency) {
        if (newFrequency != this.frequency) {
            NotificationChain msgs = null;
            if (this.frequency != null) {
                msgs = ((InternalEObject)this.frequency).eInverseRemove((InternalEObject)this, -33, null, msgs);
            }
            if (newFrequency != null) {
                msgs = ((InternalEObject)newFrequency).eInverseAdd((InternalEObject)this, -33, null, msgs);
            }
            if ((msgs = this.basicSetFrequency(newFrequency, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)newFrequency, (Object)newFrequency));
        }
    }

    @Override
    public EList<Oscillator> getOscillators() {
        if (this.oscillators == null) {
            this.oscillators = new EObjectResolvingReferringEList(Oscillator.class, (InternalEObject)this, 33);
        }
        return this.oscillators;
    }

    @Override
    public ClockTypeEnum getType() {
        return this.type;
    }

    @Override
    public void setType(ClockTypeEnum newType) {
        ClockTypeEnum oldType = this.type;
        this.type = newType == null ? TYPE_EDEFAULT : newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    @Override
    public void unsetType() {
        ClockTypeEnum oldType = this.type;
        boolean oldTypeESet = this.typeESet;
        this.type = TYPE_EDEFAULT;
        this.typeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldType, (Object)TYPE_EDEFAULT, oldTypeESet));
        }
    }

    @Override
    public boolean isSetType() {
        return this.typeESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 27: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetProcessingUnit((ProcessingUnit)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 27: {
                return this.basicSetProcessingUnit(null, msgs);
            }
            case 32: {
                return this.basicSetFrequency(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 27: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 37, ProcessingUnit.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 27: {
                return this.getProcessingUnit();
            }
            case 28: {
                return this.getAdjustable();
            }
            case 29: {
                return this.getClockJitter();
            }
            case 30: {
                return this.getClockStartupTime();
            }
            case 31: {
                return this.getClockTolerance();
            }
            case 32: {
                return this.getFrequency();
            }
            case 33: {
                return this.getOscillators();
            }
            case 34: {
                return this.getType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 27: {
                this.setProcessingUnit((ProcessingUnit)newValue);
                return;
            }
            case 28: {
                this.setAdjustable((Boolean)newValue);
                return;
            }
            case 29: {
                this.setClockJitter((Double)newValue);
                return;
            }
            case 30: {
                this.setClockStartupTime((Double)newValue);
                return;
            }
            case 31: {
                this.setClockTolerance((Double)newValue);
                return;
            }
            case 32: {
                this.setFrequency((FrequencyRange)newValue);
                return;
            }
            case 33: {
                this.getOscillators().clear();
                this.getOscillators().addAll((Collection)newValue);
                return;
            }
            case 34: {
                this.setType((ClockTypeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 27: {
                this.setProcessingUnit(null);
                return;
            }
            case 28: {
                this.unsetAdjustable();
                return;
            }
            case 29: {
                this.unsetClockJitter();
                return;
            }
            case 30: {
                this.unsetClockStartupTime();
                return;
            }
            case 31: {
                this.unsetClockTolerance();
                return;
            }
            case 32: {
                this.setFrequency(null);
                return;
            }
            case 33: {
                this.getOscillators().clear();
                return;
            }
            case 34: {
                this.unsetType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 27: {
                return this.getProcessingUnit() != null;
            }
            case 28: {
                return this.isSetAdjustable();
            }
            case 29: {
                return this.isSetClockJitter();
            }
            case 30: {
                return this.isSetClockStartupTime();
            }
            case 31: {
                return this.isSetClockTolerance();
            }
            case 32: {
                return this.frequency != null;
            }
            case 33: {
                return this.oscillators != null && !this.oscillators.isEmpty();
            }
            case 34: {
                return this.isSetType();
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (adjustable: ");
        if (this.adjustableESet) {
            result.append(this.adjustable);
        } else {
            result.append("<unset>");
        }
        result.append(", clockJitter: ");
        if (this.clockJitterESet) {
            result.append(this.clockJitter);
        } else {
            result.append("<unset>");
        }
        result.append(", clockStartupTime: ");
        if (this.clockStartupTimeESet) {
            result.append(this.clockStartupTime);
        } else {
            result.append("<unset>");
        }
        result.append(", clockTolerance: ");
        if (this.clockToleranceESet) {
            result.append(this.clockTolerance);
        } else {
            result.append("<unset>");
        }
        result.append(", type: ");
        if (this.typeESet) {
            result.append((Object)this.type);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

