/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.applicationattributes.impl;

import autosar21.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar21.swcomponent.applicationattributes.FailureMonitoring;
import autosar21.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar21.swcomponent.applicationattributes.IoHwAbstractionServerAnnotationFilteringDebouncingEnum;
import autosar21.swcomponent.applicationattributes.IoHwAbstractionServerAnnotationPulseTestEnum;
import autosar21.swcomponent.applicationattributes.ReportFeature;
import autosar21.swcomponent.applicationattributes.WakeUp;
import autosar21.swcomponent.applicationattributes.impl.PortAnnotationImpl;
import autosar21.swcomponent.portinterface.ArgumentPrototype;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import java.util.Map;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IoHwAbstractionServerAnnotationImpl
extends PortAnnotationImpl
implements IoHwAbstractionServerAnnotation,
IReferringClass {
    protected static final Integer AGE_EDEFAULT = new Integer(0);
    protected Integer age = AGE_EDEFAULT;
    protected boolean ageESet;
    protected ArgumentPrototype argumentPrototype;
    protected static final Integer BSW_RANGE_MAX_EDEFAULT = new Integer(0);
    protected Integer bswRangeMax = BSW_RANGE_MAX_EDEFAULT;
    protected boolean bswRangeMaxESet;
    protected static final Integer BSW_RANGE_MIN_EDEFAULT = new Integer(0);
    protected Integer bswRangeMin = BSW_RANGE_MIN_EDEFAULT;
    protected boolean bswRangeMinESet;
    protected static final Double BSW_RESOLUTION_EDEFAULT = new Double(0.0);
    protected Double bswResolution = BSW_RESOLUTION_EDEFAULT;
    protected boolean bswResolutionESet;
    protected DataElementPrototype dataElementPrototype;
    protected FailureMonitoring failureMonitoring;
    protected static final IoHwAbstractionServerAnnotationFilteringDebouncingEnum FILTERING_DEBOUNCING_EDEFAULT = null;
    protected IoHwAbstractionServerAnnotationFilteringDebouncingEnum filteringDebouncing = FILTERING_DEBOUNCING_EDEFAULT;
    protected boolean filteringDebouncingESet;
    protected static final IoHwAbstractionServerAnnotationPulseTestEnum PULSE_TEST_EDEFAULT = null;
    protected IoHwAbstractionServerAnnotationPulseTestEnum pulseTest = PULSE_TEST_EDEFAULT;
    protected boolean pulseTestESet;
    protected ReportFeature reportFeature;
    protected static final String UNIT_EDEFAULT = "";
    protected String unit = "";
    protected boolean unitESet;
    protected WakeUp wakeUp;

    protected IoHwAbstractionServerAnnotationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ApplicationattributesPackage.Literals.IO_HW_ABSTRACTION_SERVER_ANNOTATION;
    }

    @Override
    public Integer getAge() {
        return this.age;
    }

    @Override
    public void setAge(Integer newAge) {
        Integer oldAge = this.age;
        this.age = newAge;
        boolean oldAgeESet = this.ageESet;
        this.ageESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldAge, (Object)this.age, !oldAgeESet));
        }
    }

    @Override
    public void unsetAge() {
        Integer oldAge = this.age;
        boolean oldAgeESet = this.ageESet;
        this.age = AGE_EDEFAULT;
        this.ageESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldAge, (Object)AGE_EDEFAULT, oldAgeESet));
        }
    }

    @Override
    public boolean isSetAge() {
        return this.ageESet;
    }

    @Override
    public ArgumentPrototype getArgumentPrototype() {
        if (this.argumentPrototype != null && this.argumentPrototype.eIsProxy()) {
            InternalEObject oldArgumentPrototype = (InternalEObject)this.argumentPrototype;
            this.argumentPrototype = (ArgumentPrototype)this.eResolveProxy(oldArgumentPrototype);
            if (this.argumentPrototype != oldArgumentPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldArgumentPrototype, (Object)this.argumentPrototype));
            }
        }
        return this.argumentPrototype;
    }

    public ArgumentPrototype basicGetArgumentPrototype() {
        return this.argumentPrototype;
    }

    @Override
    public void setArgumentPrototype(ArgumentPrototype newArgumentPrototype) {
        ArgumentPrototype oldArgumentPrototype = this.argumentPrototype;
        this.argumentPrototype = newArgumentPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldArgumentPrototype, (Object)this.argumentPrototype));
        }
    }

    @Override
    public Integer getBswRangeMax() {
        return this.bswRangeMax;
    }

    @Override
    public void setBswRangeMax(Integer newBswRangeMax) {
        Integer oldBswRangeMax = this.bswRangeMax;
        this.bswRangeMax = newBswRangeMax;
        boolean oldBswRangeMaxESet = this.bswRangeMaxESet;
        this.bswRangeMaxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldBswRangeMax, (Object)this.bswRangeMax, !oldBswRangeMaxESet));
        }
    }

    @Override
    public void unsetBswRangeMax() {
        Integer oldBswRangeMax = this.bswRangeMax;
        boolean oldBswRangeMaxESet = this.bswRangeMaxESet;
        this.bswRangeMax = BSW_RANGE_MAX_EDEFAULT;
        this.bswRangeMaxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldBswRangeMax, (Object)BSW_RANGE_MAX_EDEFAULT, oldBswRangeMaxESet));
        }
    }

    @Override
    public boolean isSetBswRangeMax() {
        return this.bswRangeMaxESet;
    }

    @Override
    public Integer getBswRangeMin() {
        return this.bswRangeMin;
    }

    @Override
    public void setBswRangeMin(Integer newBswRangeMin) {
        Integer oldBswRangeMin = this.bswRangeMin;
        this.bswRangeMin = newBswRangeMin;
        boolean oldBswRangeMinESet = this.bswRangeMinESet;
        this.bswRangeMinESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldBswRangeMin, (Object)this.bswRangeMin, !oldBswRangeMinESet));
        }
    }

    @Override
    public void unsetBswRangeMin() {
        Integer oldBswRangeMin = this.bswRangeMin;
        boolean oldBswRangeMinESet = this.bswRangeMinESet;
        this.bswRangeMin = BSW_RANGE_MIN_EDEFAULT;
        this.bswRangeMinESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldBswRangeMin, (Object)BSW_RANGE_MIN_EDEFAULT, oldBswRangeMinESet));
        }
    }

    @Override
    public boolean isSetBswRangeMin() {
        return this.bswRangeMinESet;
    }

    @Override
    public Double getBswResolution() {
        return this.bswResolution;
    }

    @Override
    public void setBswResolution(Double newBswResolution) {
        Double oldBswResolution = this.bswResolution;
        this.bswResolution = newBswResolution;
        boolean oldBswResolutionESet = this.bswResolutionESet;
        this.bswResolutionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldBswResolution, (Object)this.bswResolution, !oldBswResolutionESet));
        }
    }

    @Override
    public void unsetBswResolution() {
        Double oldBswResolution = this.bswResolution;
        boolean oldBswResolutionESet = this.bswResolutionESet;
        this.bswResolution = BSW_RESOLUTION_EDEFAULT;
        this.bswResolutionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldBswResolution, (Object)BSW_RESOLUTION_EDEFAULT, oldBswResolutionESet));
        }
    }

    @Override
    public boolean isSetBswResolution() {
        return this.bswResolutionESet;
    }

    @Override
    public DataElementPrototype getDataElementPrototype() {
        if (this.dataElementPrototype != null && this.dataElementPrototype.eIsProxy()) {
            InternalEObject oldDataElementPrototype = (InternalEObject)this.dataElementPrototype;
            this.dataElementPrototype = (DataElementPrototype)this.eResolveProxy(oldDataElementPrototype);
            if (this.dataElementPrototype != oldDataElementPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 11, (Object)oldDataElementPrototype, (Object)this.dataElementPrototype));
            }
        }
        return this.dataElementPrototype;
    }

    public DataElementPrototype basicGetDataElementPrototype() {
        return this.dataElementPrototype;
    }

    @Override
    public void setDataElementPrototype(DataElementPrototype newDataElementPrototype) {
        DataElementPrototype oldDataElementPrototype = this.dataElementPrototype;
        this.dataElementPrototype = newDataElementPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)11, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldDataElementPrototype, (Object)this.dataElementPrototype));
        }
    }

    @Override
    public FailureMonitoring getFailureMonitoring() {
        return this.failureMonitoring;
    }

    public NotificationChain basicSetFailureMonitoring(FailureMonitoring newFailureMonitoring, NotificationChain msgs) {
        FailureMonitoring oldFailureMonitoring = this.failureMonitoring;
        this.failureMonitoring = newFailureMonitoring;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldFailureMonitoring, (Object)newFailureMonitoring);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setFailureMonitoring(FailureMonitoring newFailureMonitoring) {
        if (newFailureMonitoring != this.failureMonitoring) {
            NotificationChain msgs = null;
            if (this.failureMonitoring != null) {
                msgs = ((InternalEObject)this.failureMonitoring).eInverseRemove((InternalEObject)this, 4, FailureMonitoring.class, msgs);
            }
            if (newFailureMonitoring != null) {
                msgs = ((InternalEObject)newFailureMonitoring).eInverseAdd((InternalEObject)this, 4, FailureMonitoring.class, msgs);
            }
            if ((msgs = this.basicSetFailureMonitoring(newFailureMonitoring, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newFailureMonitoring, (Object)newFailureMonitoring));
        }
    }

    @Override
    public IoHwAbstractionServerAnnotationFilteringDebouncingEnum getFilteringDebouncing() {
        return this.filteringDebouncing;
    }

    @Override
    public void setFilteringDebouncing(IoHwAbstractionServerAnnotationFilteringDebouncingEnum newFilteringDebouncing) {
        IoHwAbstractionServerAnnotationFilteringDebouncingEnum oldFilteringDebouncing = this.filteringDebouncing;
        this.filteringDebouncing = newFilteringDebouncing == null ? FILTERING_DEBOUNCING_EDEFAULT : newFilteringDebouncing;
        boolean oldFilteringDebouncingESet = this.filteringDebouncingESet;
        this.filteringDebouncingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldFilteringDebouncing, (Object)this.filteringDebouncing, !oldFilteringDebouncingESet));
        }
    }

    @Override
    public void unsetFilteringDebouncing() {
        IoHwAbstractionServerAnnotationFilteringDebouncingEnum oldFilteringDebouncing = this.filteringDebouncing;
        boolean oldFilteringDebouncingESet = this.filteringDebouncingESet;
        this.filteringDebouncing = FILTERING_DEBOUNCING_EDEFAULT;
        this.filteringDebouncingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldFilteringDebouncing, (Object)FILTERING_DEBOUNCING_EDEFAULT, oldFilteringDebouncingESet));
        }
    }

    @Override
    public boolean isSetFilteringDebouncing() {
        return this.filteringDebouncingESet;
    }

    @Override
    public IoHwAbstractionServerAnnotationPulseTestEnum getPulseTest() {
        return this.pulseTest;
    }

    @Override
    public void setPulseTest(IoHwAbstractionServerAnnotationPulseTestEnum newPulseTest) {
        IoHwAbstractionServerAnnotationPulseTestEnum oldPulseTest = this.pulseTest;
        this.pulseTest = newPulseTest == null ? PULSE_TEST_EDEFAULT : newPulseTest;
        boolean oldPulseTestESet = this.pulseTestESet;
        this.pulseTestESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldPulseTest, (Object)this.pulseTest, !oldPulseTestESet));
        }
    }

    @Override
    public void unsetPulseTest() {
        IoHwAbstractionServerAnnotationPulseTestEnum oldPulseTest = this.pulseTest;
        boolean oldPulseTestESet = this.pulseTestESet;
        this.pulseTest = PULSE_TEST_EDEFAULT;
        this.pulseTestESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldPulseTest, (Object)PULSE_TEST_EDEFAULT, oldPulseTestESet));
        }
    }

    @Override
    public boolean isSetPulseTest() {
        return this.pulseTestESet;
    }

    @Override
    public ReportFeature getReportFeature() {
        return this.reportFeature;
    }

    public NotificationChain basicSetReportFeature(ReportFeature newReportFeature, NotificationChain msgs) {
        ReportFeature oldReportFeature = this.reportFeature;
        this.reportFeature = newReportFeature;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldReportFeature, (Object)newReportFeature);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setReportFeature(ReportFeature newReportFeature) {
        if (newReportFeature != this.reportFeature) {
            NotificationChain msgs = null;
            if (this.reportFeature != null) {
                msgs = ((InternalEObject)this.reportFeature).eInverseRemove((InternalEObject)this, 4, ReportFeature.class, msgs);
            }
            if (newReportFeature != null) {
                msgs = ((InternalEObject)newReportFeature).eInverseAdd((InternalEObject)this, 4, ReportFeature.class, msgs);
            }
            if ((msgs = this.basicSetReportFeature(newReportFeature, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)newReportFeature, (Object)newReportFeature));
        }
    }

    @Override
    public String getUnit() {
        return this.unit;
    }

    @Override
    public void setUnit(String newUnit) {
        String oldUnit = this.unit;
        this.unit = newUnit;
        boolean oldUnitESet = this.unitESet;
        this.unitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldUnit, (Object)this.unit, !oldUnitESet));
        }
    }

    @Override
    public void unsetUnit() {
        String oldUnit = this.unit;
        boolean oldUnitESet = this.unitESet;
        this.unit = UNIT_EDEFAULT;
        this.unitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 16, (Object)oldUnit, (Object)UNIT_EDEFAULT, oldUnitESet));
        }
    }

    @Override
    public boolean isSetUnit() {
        return this.unitESet;
    }

    @Override
    public WakeUp getWakeUp() {
        return this.wakeUp;
    }

    public NotificationChain basicSetWakeUp(WakeUp newWakeUp, NotificationChain msgs) {
        WakeUp oldWakeUp = this.wakeUp;
        this.wakeUp = newWakeUp;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldWakeUp, (Object)newWakeUp);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setWakeUp(WakeUp newWakeUp) {
        if (newWakeUp != this.wakeUp) {
            NotificationChain msgs = null;
            if (this.wakeUp != null) {
                msgs = ((InternalEObject)this.wakeUp).eInverseRemove((InternalEObject)this, 4, WakeUp.class, msgs);
            }
            if (newWakeUp != null) {
                msgs = ((InternalEObject)newWakeUp).eInverseAdd((InternalEObject)this, 4, WakeUp.class, msgs);
            }
            if ((msgs = this.basicSetWakeUp(newWakeUp, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newWakeUp, (Object)newWakeUp));
        }
    }

    @Override
    public boolean _portsinterfaceisaclientserverinterfaceusingtheoperationsGETandSET(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 12: {
                if (this.failureMonitoring != null) {
                    msgs = ((InternalEObject)this.failureMonitoring).eInverseRemove((InternalEObject)this, -13, null, msgs);
                }
                return this.basicSetFailureMonitoring((FailureMonitoring)otherEnd, msgs);
            }
            case 15: {
                if (this.reportFeature != null) {
                    msgs = ((InternalEObject)this.reportFeature).eInverseRemove((InternalEObject)this, -16, null, msgs);
                }
                return this.basicSetReportFeature((ReportFeature)otherEnd, msgs);
            }
            case 17: {
                if (this.wakeUp != null) {
                    msgs = ((InternalEObject)this.wakeUp).eInverseRemove((InternalEObject)this, -18, null, msgs);
                }
                return this.basicSetWakeUp((WakeUp)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 12: {
                return this.basicSetFailureMonitoring(null, msgs);
            }
            case 15: {
                return this.basicSetReportFeature(null, msgs);
            }
            case 17: {
                return this.basicSetWakeUp(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getAge();
            }
            case 7: {
                if (resolve) {
                    return this.getArgumentPrototype();
                }
                return this.basicGetArgumentPrototype();
            }
            case 8: {
                return this.getBswRangeMax();
            }
            case 9: {
                return this.getBswRangeMin();
            }
            case 10: {
                return this.getBswResolution();
            }
            case 11: {
                if (resolve) {
                    return this.getDataElementPrototype();
                }
                return this.basicGetDataElementPrototype();
            }
            case 12: {
                return this.getFailureMonitoring();
            }
            case 13: {
                return this.getFilteringDebouncing();
            }
            case 14: {
                return this.getPulseTest();
            }
            case 15: {
                return this.getReportFeature();
            }
            case 16: {
                return this.getUnit();
            }
            case 17: {
                return this.getWakeUp();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setAge((Integer)newValue);
                return;
            }
            case 7: {
                this.setArgumentPrototype((ArgumentPrototype)newValue);
                return;
            }
            case 8: {
                this.setBswRangeMax((Integer)newValue);
                return;
            }
            case 9: {
                this.setBswRangeMin((Integer)newValue);
                return;
            }
            case 10: {
                this.setBswResolution((Double)newValue);
                return;
            }
            case 11: {
                this.setDataElementPrototype((DataElementPrototype)newValue);
                return;
            }
            case 12: {
                this.setFailureMonitoring((FailureMonitoring)newValue);
                return;
            }
            case 13: {
                this.setFilteringDebouncing((IoHwAbstractionServerAnnotationFilteringDebouncingEnum)((Object)newValue));
                return;
            }
            case 14: {
                this.setPulseTest((IoHwAbstractionServerAnnotationPulseTestEnum)((Object)newValue));
                return;
            }
            case 15: {
                this.setReportFeature((ReportFeature)newValue);
                return;
            }
            case 16: {
                this.setUnit((String)newValue);
                return;
            }
            case 17: {
                this.setWakeUp((WakeUp)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.unsetAge();
                return;
            }
            case 7: {
                this.setArgumentPrototype(null);
                return;
            }
            case 8: {
                this.unsetBswRangeMax();
                return;
            }
            case 9: {
                this.unsetBswRangeMin();
                return;
            }
            case 10: {
                this.unsetBswResolution();
                return;
            }
            case 11: {
                this.setDataElementPrototype(null);
                return;
            }
            case 12: {
                this.setFailureMonitoring(null);
                return;
            }
            case 13: {
                this.unsetFilteringDebouncing();
                return;
            }
            case 14: {
                this.unsetPulseTest();
                return;
            }
            case 15: {
                this.setReportFeature(null);
                return;
            }
            case 16: {
                this.unsetUnit();
                return;
            }
            case 17: {
                this.setWakeUp(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.isSetAge();
            }
            case 7: {
                return this.argumentPrototype != null;
            }
            case 8: {
                return this.isSetBswRangeMax();
            }
            case 9: {
                return this.isSetBswRangeMin();
            }
            case 10: {
                return this.isSetBswResolution();
            }
            case 11: {
                return this.dataElementPrototype != null;
            }
            case 12: {
                return this.failureMonitoring != null;
            }
            case 13: {
                return this.isSetFilteringDebouncing();
            }
            case 14: {
                return this.isSetPulseTest();
            }
            case 15: {
                return this.reportFeature != null;
            }
            case 16: {
                return this.isSetUnit();
            }
            case 17: {
                return this.wakeUp != null;
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
        result.append(" (Age: ");
        if (this.ageESet) {
            result.append(this.age);
        } else {
            result.append("<unset>");
        }
        result.append(", BswRangeMax: ");
        if (this.bswRangeMaxESet) {
            result.append(this.bswRangeMax);
        } else {
            result.append("<unset>");
        }
        result.append(", BswRangeMin: ");
        if (this.bswRangeMinESet) {
            result.append(this.bswRangeMin);
        } else {
            result.append("<unset>");
        }
        result.append(", BswResolution: ");
        if (this.bswResolutionESet) {
            result.append(this.bswResolution);
        } else {
            result.append("<unset>");
        }
        result.append(", FilteringDebouncing: ");
        if (this.filteringDebouncingESet) {
            result.append((Object)this.filteringDebouncing);
        } else {
            result.append("<unset>");
        }
        result.append(", PulseTest: ");
        if (this.pulseTestESet) {
            result.append((Object)this.pulseTest);
        } else {
            result.append("<unset>");
        }
        result.append(", Unit: ");
        if (this.unitESet) {
            result.append(this.unit);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

