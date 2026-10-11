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
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.swcomponent.applicationattributes.impl;

import autosar3x.genericstructure.commonpatterns.annotation.impl.GeneralAnnotationImpl;
import autosar3x.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar3x.swcomponent.applicationattributes.FilterDebouncingEnum;
import autosar3x.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar3x.swcomponent.applicationattributes.PulseTestEnum;
import autosar3x.swcomponent.applicationattributes.ReportFeature;
import autosar3x.swcomponent.applicationattributes.WakeUp;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.portinterface.ArgumentPrototype;
import autosar3x.swcomponent.portinterface.DataElementPrototype;
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
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IoHwAbstractionServerAnnotationImpl
extends GeneralAnnotationImpl
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
    protected PortPrototype failureMonitoring;
    protected static final FilterDebouncingEnum FILTERING_DEBOUNCING_EDEFAULT = FilterDebouncingEnum.RAW_DATA;
    protected FilterDebouncingEnum filteringDebouncing = FILTERING_DEBOUNCING_EDEFAULT;
    protected boolean filteringDebouncingESet;
    protected static final PulseTestEnum PULSE_TEST_EDEFAULT = PulseTestEnum.DISABLE;
    protected PulseTestEnum pulseTest = PULSE_TEST_EDEFAULT;
    protected boolean pulseTestESet;
    protected ReportFeature supportsReportRunnable;
    protected WakeUp supportsWakeUpRunnable;
    protected static final String UNIT_EDEFAULT = "";
    protected String unit = "";
    protected boolean unitESet;

    protected IoHwAbstractionServerAnnotationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ApplicationattributesPackage.Literals.IO_HW_ABSTRACTION_SERVER_ANNOTATION;
    }

    @Override
    public PortPrototype getPortPrototype() {
        if (this.eContainerFeatureID() != 9) {
            return null;
        }
        return (PortPrototype)this.eContainer();
    }

    public NotificationChain basicSetPortPrototype(PortPrototype newPortPrototype, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPortPrototype, 9, msgs);
        return msgs;
    }

    @Override
    public void setPortPrototype(PortPrototype newPortPrototype) {
        if (newPortPrototype != this.eInternalContainer() || this.eContainerFeatureID() != 9 && newPortPrototype != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPortPrototype)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPortPrototype != null) {
                msgs = ((InternalEObject)newPortPrototype).eInverseAdd((InternalEObject)this, 20, PortPrototype.class, msgs);
            }
            if ((msgs = this.basicSetPortPrototype(newPortPrototype, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newPortPrototype, (Object)newPortPrototype));
        }
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldAge, (Object)this.age, !oldAgeESet));
        }
    }

    @Override
    public void unsetAge() {
        Integer oldAge = this.age;
        boolean oldAgeESet = this.ageESet;
        this.age = AGE_EDEFAULT;
        this.ageESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldAge, (Object)AGE_EDEFAULT, oldAgeESet));
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
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 11, (Object)oldArgumentPrototype, (Object)this.argumentPrototype));
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
        AutosarObjectUtil.setDest((EObject)this, (int)11, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldArgumentPrototype, (Object)this.argumentPrototype));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldBswRangeMax, (Object)this.bswRangeMax, !oldBswRangeMaxESet));
        }
    }

    @Override
    public void unsetBswRangeMax() {
        Integer oldBswRangeMax = this.bswRangeMax;
        boolean oldBswRangeMaxESet = this.bswRangeMaxESet;
        this.bswRangeMax = BSW_RANGE_MAX_EDEFAULT;
        this.bswRangeMaxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldBswRangeMax, (Object)BSW_RANGE_MAX_EDEFAULT, oldBswRangeMaxESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldBswRangeMin, (Object)this.bswRangeMin, !oldBswRangeMinESet));
        }
    }

    @Override
    public void unsetBswRangeMin() {
        Integer oldBswRangeMin = this.bswRangeMin;
        boolean oldBswRangeMinESet = this.bswRangeMinESet;
        this.bswRangeMin = BSW_RANGE_MIN_EDEFAULT;
        this.bswRangeMinESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldBswRangeMin, (Object)BSW_RANGE_MIN_EDEFAULT, oldBswRangeMinESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldBswResolution, (Object)this.bswResolution, !oldBswResolutionESet));
        }
    }

    @Override
    public void unsetBswResolution() {
        Double oldBswResolution = this.bswResolution;
        boolean oldBswResolutionESet = this.bswResolutionESet;
        this.bswResolution = BSW_RESOLUTION_EDEFAULT;
        this.bswResolutionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldBswResolution, (Object)BSW_RESOLUTION_EDEFAULT, oldBswResolutionESet));
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
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 15, (Object)oldDataElementPrototype, (Object)this.dataElementPrototype));
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
        AutosarObjectUtil.setDest((EObject)this, (int)15, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldDataElementPrototype, (Object)this.dataElementPrototype));
        }
    }

    @Override
    public PortPrototype getFailureMonitoring() {
        if (this.failureMonitoring != null && this.failureMonitoring.eIsProxy()) {
            InternalEObject oldFailureMonitoring = (InternalEObject)this.failureMonitoring;
            this.failureMonitoring = (PortPrototype)this.eResolveProxy(oldFailureMonitoring);
            if (this.failureMonitoring != oldFailureMonitoring && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 16, (Object)oldFailureMonitoring, (Object)this.failureMonitoring));
            }
        }
        return this.failureMonitoring;
    }

    public PortPrototype basicGetFailureMonitoring() {
        return this.failureMonitoring;
    }

    @Override
    public void setFailureMonitoring(PortPrototype newFailureMonitoring) {
        PortPrototype oldFailureMonitoring = this.failureMonitoring;
        this.failureMonitoring = newFailureMonitoring;
        AutosarObjectUtil.setDest((EObject)this, (int)16, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldFailureMonitoring, (Object)this.failureMonitoring));
        }
    }

    @Override
    public FilterDebouncingEnum getFilteringDebouncing() {
        return this.filteringDebouncing;
    }

    @Override
    public void setFilteringDebouncing(FilterDebouncingEnum newFilteringDebouncing) {
        FilterDebouncingEnum oldFilteringDebouncing = this.filteringDebouncing;
        this.filteringDebouncing = newFilteringDebouncing == null ? FILTERING_DEBOUNCING_EDEFAULT : newFilteringDebouncing;
        boolean oldFilteringDebouncingESet = this.filteringDebouncingESet;
        this.filteringDebouncingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldFilteringDebouncing, (Object)this.filteringDebouncing, !oldFilteringDebouncingESet));
        }
    }

    @Override
    public void unsetFilteringDebouncing() {
        FilterDebouncingEnum oldFilteringDebouncing = this.filteringDebouncing;
        boolean oldFilteringDebouncingESet = this.filteringDebouncingESet;
        this.filteringDebouncing = FILTERING_DEBOUNCING_EDEFAULT;
        this.filteringDebouncingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldFilteringDebouncing, (Object)FILTERING_DEBOUNCING_EDEFAULT, oldFilteringDebouncingESet));
        }
    }

    @Override
    public boolean isSetFilteringDebouncing() {
        return this.filteringDebouncingESet;
    }

    @Override
    public PulseTestEnum getPulseTest() {
        return this.pulseTest;
    }

    @Override
    public void setPulseTest(PulseTestEnum newPulseTest) {
        PulseTestEnum oldPulseTest = this.pulseTest;
        this.pulseTest = newPulseTest == null ? PULSE_TEST_EDEFAULT : newPulseTest;
        boolean oldPulseTestESet = this.pulseTestESet;
        this.pulseTestESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldPulseTest, (Object)this.pulseTest, !oldPulseTestESet));
        }
    }

    @Override
    public void unsetPulseTest() {
        PulseTestEnum oldPulseTest = this.pulseTest;
        boolean oldPulseTestESet = this.pulseTestESet;
        this.pulseTest = PULSE_TEST_EDEFAULT;
        this.pulseTestESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldPulseTest, (Object)PULSE_TEST_EDEFAULT, oldPulseTestESet));
        }
    }

    @Override
    public boolean isSetPulseTest() {
        return this.pulseTestESet;
    }

    @Override
    public ReportFeature getSupportsReportRunnable() {
        return this.supportsReportRunnable;
    }

    public NotificationChain basicSetSupportsReportRunnable(ReportFeature newSupportsReportRunnable, NotificationChain msgs) {
        ReportFeature oldSupportsReportRunnable = this.supportsReportRunnable;
        this.supportsReportRunnable = newSupportsReportRunnable;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldSupportsReportRunnable, (Object)newSupportsReportRunnable);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSupportsReportRunnable(ReportFeature newSupportsReportRunnable) {
        if (newSupportsReportRunnable != this.supportsReportRunnable) {
            NotificationChain msgs = null;
            if (this.supportsReportRunnable != null) {
                msgs = ((InternalEObject)this.supportsReportRunnable).eInverseRemove((InternalEObject)this, 4, ReportFeature.class, msgs);
            }
            if (newSupportsReportRunnable != null) {
                msgs = ((InternalEObject)newSupportsReportRunnable).eInverseAdd((InternalEObject)this, 4, ReportFeature.class, msgs);
            }
            if ((msgs = this.basicSetSupportsReportRunnable(newSupportsReportRunnable, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newSupportsReportRunnable, (Object)newSupportsReportRunnable));
        }
    }

    @Override
    public WakeUp getSupportsWakeUpRunnable() {
        return this.supportsWakeUpRunnable;
    }

    public NotificationChain basicSetSupportsWakeUpRunnable(WakeUp newSupportsWakeUpRunnable, NotificationChain msgs) {
        WakeUp oldSupportsWakeUpRunnable = this.supportsWakeUpRunnable;
        this.supportsWakeUpRunnable = newSupportsWakeUpRunnable;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldSupportsWakeUpRunnable, (Object)newSupportsWakeUpRunnable);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSupportsWakeUpRunnable(WakeUp newSupportsWakeUpRunnable) {
        if (newSupportsWakeUpRunnable != this.supportsWakeUpRunnable) {
            NotificationChain msgs = null;
            if (this.supportsWakeUpRunnable != null) {
                msgs = ((InternalEObject)this.supportsWakeUpRunnable).eInverseRemove((InternalEObject)this, 4, WakeUp.class, msgs);
            }
            if (newSupportsWakeUpRunnable != null) {
                msgs = ((InternalEObject)newSupportsWakeUpRunnable).eInverseAdd((InternalEObject)this, 4, WakeUp.class, msgs);
            }
            if ((msgs = this.basicSetSupportsWakeUpRunnable(newSupportsWakeUpRunnable, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newSupportsWakeUpRunnable, (Object)newSupportsWakeUpRunnable));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldUnit, (Object)this.unit, !oldUnitESet));
        }
    }

    @Override
    public void unsetUnit() {
        String oldUnit = this.unit;
        boolean oldUnitESet = this.unitESet;
        this.unit = UNIT_EDEFAULT;
        this.unitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldUnit, (Object)UNIT_EDEFAULT, oldUnitESet));
        }
    }

    @Override
    public boolean isSetUnit() {
        return this.unitESet;
    }

    @Override
    public boolean _portsinterfaceisaclientserverinterfaceusingtheoperationsGETandSET(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 9: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPortPrototype((PortPrototype)otherEnd, msgs);
            }
            case 19: {
                if (this.supportsReportRunnable != null) {
                    msgs = ((InternalEObject)this.supportsReportRunnable).eInverseRemove((InternalEObject)this, -20, null, msgs);
                }
                return this.basicSetSupportsReportRunnable((ReportFeature)otherEnd, msgs);
            }
            case 20: {
                if (this.supportsWakeUpRunnable != null) {
                    msgs = ((InternalEObject)this.supportsWakeUpRunnable).eInverseRemove((InternalEObject)this, -21, null, msgs);
                }
                return this.basicSetSupportsWakeUpRunnable((WakeUp)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 9: {
                return this.basicSetPortPrototype(null, msgs);
            }
            case 19: {
                return this.basicSetSupportsReportRunnable(null, msgs);
            }
            case 20: {
                return this.basicSetSupportsWakeUpRunnable(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 9: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, PortPrototype.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 9: {
                return this.getPortPrototype();
            }
            case 10: {
                return this.getAge();
            }
            case 11: {
                if (resolve) {
                    return this.getArgumentPrototype();
                }
                return this.basicGetArgumentPrototype();
            }
            case 12: {
                return this.getBswRangeMax();
            }
            case 13: {
                return this.getBswRangeMin();
            }
            case 14: {
                return this.getBswResolution();
            }
            case 15: {
                if (resolve) {
                    return this.getDataElementPrototype();
                }
                return this.basicGetDataElementPrototype();
            }
            case 16: {
                if (resolve) {
                    return this.getFailureMonitoring();
                }
                return this.basicGetFailureMonitoring();
            }
            case 17: {
                return this.getFilteringDebouncing();
            }
            case 18: {
                return this.getPulseTest();
            }
            case 19: {
                return this.getSupportsReportRunnable();
            }
            case 20: {
                return this.getSupportsWakeUpRunnable();
            }
            case 21: {
                return this.getUnit();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 9: {
                this.setPortPrototype((PortPrototype)newValue);
                return;
            }
            case 10: {
                this.setAge((Integer)newValue);
                return;
            }
            case 11: {
                this.setArgumentPrototype((ArgumentPrototype)newValue);
                return;
            }
            case 12: {
                this.setBswRangeMax((Integer)newValue);
                return;
            }
            case 13: {
                this.setBswRangeMin((Integer)newValue);
                return;
            }
            case 14: {
                this.setBswResolution((Double)newValue);
                return;
            }
            case 15: {
                this.setDataElementPrototype((DataElementPrototype)newValue);
                return;
            }
            case 16: {
                this.setFailureMonitoring((PortPrototype)newValue);
                return;
            }
            case 17: {
                this.setFilteringDebouncing((FilterDebouncingEnum)((Object)newValue));
                return;
            }
            case 18: {
                this.setPulseTest((PulseTestEnum)((Object)newValue));
                return;
            }
            case 19: {
                this.setSupportsReportRunnable((ReportFeature)newValue);
                return;
            }
            case 20: {
                this.setSupportsWakeUpRunnable((WakeUp)newValue);
                return;
            }
            case 21: {
                this.setUnit((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 9: {
                this.setPortPrototype(null);
                return;
            }
            case 10: {
                this.unsetAge();
                return;
            }
            case 11: {
                this.setArgumentPrototype(null);
                return;
            }
            case 12: {
                this.unsetBswRangeMax();
                return;
            }
            case 13: {
                this.unsetBswRangeMin();
                return;
            }
            case 14: {
                this.unsetBswResolution();
                return;
            }
            case 15: {
                this.setDataElementPrototype(null);
                return;
            }
            case 16: {
                this.setFailureMonitoring(null);
                return;
            }
            case 17: {
                this.unsetFilteringDebouncing();
                return;
            }
            case 18: {
                this.unsetPulseTest();
                return;
            }
            case 19: {
                this.setSupportsReportRunnable(null);
                return;
            }
            case 20: {
                this.setSupportsWakeUpRunnable(null);
                return;
            }
            case 21: {
                this.unsetUnit();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 9: {
                return this.getPortPrototype() != null;
            }
            case 10: {
                return this.isSetAge();
            }
            case 11: {
                return this.argumentPrototype != null;
            }
            case 12: {
                return this.isSetBswRangeMax();
            }
            case 13: {
                return this.isSetBswRangeMin();
            }
            case 14: {
                return this.isSetBswResolution();
            }
            case 15: {
                return this.dataElementPrototype != null;
            }
            case 16: {
                return this.failureMonitoring != null;
            }
            case 17: {
                return this.isSetFilteringDebouncing();
            }
            case 18: {
                return this.isSetPulseTest();
            }
            case 19: {
                return this.supportsReportRunnable != null;
            }
            case 20: {
                return this.supportsWakeUpRunnable != null;
            }
            case 21: {
                return this.isSetUnit();
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

