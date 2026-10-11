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
package autosar21.swcomponent.resources.stackusage.impl;

import autosar21.ecuresource.ECU;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.resources.ResourceConsumption;
import autosar21.swcomponent.resources.executiontime.HardwareConfiguration;
import autosar21.swcomponent.resources.executiontime.SoftwareContext;
import autosar21.swcomponent.resources.stackusage.MeasuredStackUsage;
import autosar21.swcomponent.resources.stackusage.StackUsage;
import autosar21.swcomponent.resources.stackusage.StackusagePackage;
import autosar21.system.swmapping.impl.AggregatedStackUsageImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MeasuredStackUsageImpl
extends AggregatedStackUsageImpl
implements MeasuredStackUsage,
IReferringClass {
    protected ECU ecu;
    protected HardwareConfiguration hardwareConfiguration;
    protected RunnableEntity runnable;
    protected SoftwareContext softwareContext;
    protected static final Integer AVERAGE_MEMORY_CONSUMPTION_EDEFAULT = new Integer(0);
    protected Integer averageMemoryConsumption = AVERAGE_MEMORY_CONSUMPTION_EDEFAULT;
    protected boolean averageMemoryConsumptionESet;
    protected static final Integer MAXIMUM_MEMORY_CONSUMPTION_EDEFAULT = new Integer(0);
    protected Integer maximumMemoryConsumption = MAXIMUM_MEMORY_CONSUMPTION_EDEFAULT;
    protected boolean maximumMemoryConsumptionESet;
    protected static final Integer MINIMUM_MEMORY_CONSUMPTION_EDEFAULT = new Integer(0);
    protected Integer minimumMemoryConsumption = MINIMUM_MEMORY_CONSUMPTION_EDEFAULT;
    protected boolean minimumMemoryConsumptionESet;
    protected static final String TEST_PATTERN_EDEFAULT = "";
    protected String testPattern = "";
    protected boolean testPatternESet;

    protected MeasuredStackUsageImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return StackusagePackage.Literals.MEASURED_STACK_USAGE;
    }

    @Override
    public ResourceConsumption getResourceConsumption() {
        if (this.eContainerFeatureID() != 5) {
            return null;
        }
        return (ResourceConsumption)this.eContainer();
    }

    public NotificationChain basicSetResourceConsumption(ResourceConsumption newResourceConsumption, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newResourceConsumption, 5, msgs);
        return msgs;
    }

    @Override
    public void setResourceConsumption(ResourceConsumption newResourceConsumption) {
        if (newResourceConsumption != this.eInternalContainer() || this.eContainerFeatureID() != 5 && newResourceConsumption != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newResourceConsumption)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newResourceConsumption != null) {
                msgs = ((InternalEObject)newResourceConsumption).eInverseAdd((InternalEObject)this, 21, ResourceConsumption.class, msgs);
            }
            if ((msgs = this.basicSetResourceConsumption(newResourceConsumption, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newResourceConsumption, (Object)newResourceConsumption));
        }
    }

    @Override
    public ECU getEcu() {
        if (this.ecu != null && this.ecu.eIsProxy()) {
            InternalEObject oldEcu = (InternalEObject)this.ecu;
            this.ecu = (ECU)this.eResolveProxy(oldEcu);
            if (this.ecu != oldEcu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldEcu, (Object)this.ecu));
            }
        }
        return this.ecu;
    }

    public ECU basicGetEcu() {
        return this.ecu;
    }

    @Override
    public void setEcu(ECU newEcu) {
        ECU oldEcu = this.ecu;
        this.ecu = newEcu;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldEcu, (Object)this.ecu));
        }
    }

    @Override
    public HardwareConfiguration getHardwareConfiguration() {
        return this.hardwareConfiguration;
    }

    public NotificationChain basicSetHardwareConfiguration(HardwareConfiguration newHardwareConfiguration, NotificationChain msgs) {
        HardwareConfiguration oldHardwareConfiguration = this.hardwareConfiguration;
        this.hardwareConfiguration = newHardwareConfiguration;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldHardwareConfiguration, (Object)newHardwareConfiguration);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setHardwareConfiguration(HardwareConfiguration newHardwareConfiguration) {
        if (newHardwareConfiguration != this.hardwareConfiguration) {
            NotificationChain msgs = null;
            if (this.hardwareConfiguration != null) {
                msgs = ((InternalEObject)this.hardwareConfiguration).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newHardwareConfiguration != null) {
                msgs = ((InternalEObject)newHardwareConfiguration).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetHardwareConfiguration(newHardwareConfiguration, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newHardwareConfiguration, (Object)newHardwareConfiguration));
        }
    }

    @Override
    public RunnableEntity getRunnable() {
        if (this.runnable != null && this.runnable.eIsProxy()) {
            InternalEObject oldRunnable = (InternalEObject)this.runnable;
            this.runnable = (RunnableEntity)this.eResolveProxy(oldRunnable);
            if (this.runnable != oldRunnable && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldRunnable, (Object)this.runnable));
            }
        }
        return this.runnable;
    }

    public RunnableEntity basicGetRunnable() {
        return this.runnable;
    }

    @Override
    public void setRunnable(RunnableEntity newRunnable) {
        RunnableEntity oldRunnable = this.runnable;
        this.runnable = newRunnable;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldRunnable, (Object)this.runnable));
        }
    }

    @Override
    public SoftwareContext getSoftwareContext() {
        return this.softwareContext;
    }

    public NotificationChain basicSetSoftwareContext(SoftwareContext newSoftwareContext, NotificationChain msgs) {
        SoftwareContext oldSoftwareContext = this.softwareContext;
        this.softwareContext = newSoftwareContext;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldSoftwareContext, (Object)newSoftwareContext);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSoftwareContext(SoftwareContext newSoftwareContext) {
        if (newSoftwareContext != this.softwareContext) {
            NotificationChain msgs = null;
            if (this.softwareContext != null) {
                msgs = ((InternalEObject)this.softwareContext).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newSoftwareContext != null) {
                msgs = ((InternalEObject)newSoftwareContext).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetSoftwareContext(newSoftwareContext, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newSoftwareContext, (Object)newSoftwareContext));
        }
    }

    @Override
    public Integer getAverageMemoryConsumption() {
        return this.averageMemoryConsumption;
    }

    @Override
    public void setAverageMemoryConsumption(Integer newAverageMemoryConsumption) {
        Integer oldAverageMemoryConsumption = this.averageMemoryConsumption;
        this.averageMemoryConsumption = newAverageMemoryConsumption;
        boolean oldAverageMemoryConsumptionESet = this.averageMemoryConsumptionESet;
        this.averageMemoryConsumptionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldAverageMemoryConsumption, (Object)this.averageMemoryConsumption, !oldAverageMemoryConsumptionESet));
        }
    }

    @Override
    public void unsetAverageMemoryConsumption() {
        Integer oldAverageMemoryConsumption = this.averageMemoryConsumption;
        boolean oldAverageMemoryConsumptionESet = this.averageMemoryConsumptionESet;
        this.averageMemoryConsumption = AVERAGE_MEMORY_CONSUMPTION_EDEFAULT;
        this.averageMemoryConsumptionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldAverageMemoryConsumption, (Object)AVERAGE_MEMORY_CONSUMPTION_EDEFAULT, oldAverageMemoryConsumptionESet));
        }
    }

    @Override
    public boolean isSetAverageMemoryConsumption() {
        return this.averageMemoryConsumptionESet;
    }

    @Override
    public Integer getMaximumMemoryConsumption() {
        return this.maximumMemoryConsumption;
    }

    @Override
    public void setMaximumMemoryConsumption(Integer newMaximumMemoryConsumption) {
        Integer oldMaximumMemoryConsumption = this.maximumMemoryConsumption;
        this.maximumMemoryConsumption = newMaximumMemoryConsumption;
        boolean oldMaximumMemoryConsumptionESet = this.maximumMemoryConsumptionESet;
        this.maximumMemoryConsumptionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldMaximumMemoryConsumption, (Object)this.maximumMemoryConsumption, !oldMaximumMemoryConsumptionESet));
        }
    }

    @Override
    public void unsetMaximumMemoryConsumption() {
        Integer oldMaximumMemoryConsumption = this.maximumMemoryConsumption;
        boolean oldMaximumMemoryConsumptionESet = this.maximumMemoryConsumptionESet;
        this.maximumMemoryConsumption = MAXIMUM_MEMORY_CONSUMPTION_EDEFAULT;
        this.maximumMemoryConsumptionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldMaximumMemoryConsumption, (Object)MAXIMUM_MEMORY_CONSUMPTION_EDEFAULT, oldMaximumMemoryConsumptionESet));
        }
    }

    @Override
    public boolean isSetMaximumMemoryConsumption() {
        return this.maximumMemoryConsumptionESet;
    }

    @Override
    public Integer getMinimumMemoryConsumption() {
        return this.minimumMemoryConsumption;
    }

    @Override
    public void setMinimumMemoryConsumption(Integer newMinimumMemoryConsumption) {
        Integer oldMinimumMemoryConsumption = this.minimumMemoryConsumption;
        this.minimumMemoryConsumption = newMinimumMemoryConsumption;
        boolean oldMinimumMemoryConsumptionESet = this.minimumMemoryConsumptionESet;
        this.minimumMemoryConsumptionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldMinimumMemoryConsumption, (Object)this.minimumMemoryConsumption, !oldMinimumMemoryConsumptionESet));
        }
    }

    @Override
    public void unsetMinimumMemoryConsumption() {
        Integer oldMinimumMemoryConsumption = this.minimumMemoryConsumption;
        boolean oldMinimumMemoryConsumptionESet = this.minimumMemoryConsumptionESet;
        this.minimumMemoryConsumption = MINIMUM_MEMORY_CONSUMPTION_EDEFAULT;
        this.minimumMemoryConsumptionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldMinimumMemoryConsumption, (Object)MINIMUM_MEMORY_CONSUMPTION_EDEFAULT, oldMinimumMemoryConsumptionESet));
        }
    }

    @Override
    public boolean isSetMinimumMemoryConsumption() {
        return this.minimumMemoryConsumptionESet;
    }

    @Override
    public String getTestPattern() {
        return this.testPattern;
    }

    @Override
    public void setTestPattern(String newTestPattern) {
        String oldTestPattern = this.testPattern;
        this.testPattern = newTestPattern;
        boolean oldTestPatternESet = this.testPatternESet;
        this.testPatternESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldTestPattern, (Object)this.testPattern, !oldTestPatternESet));
        }
    }

    @Override
    public void unsetTestPattern() {
        String oldTestPattern = this.testPattern;
        boolean oldTestPatternESet = this.testPatternESet;
        this.testPattern = TEST_PATTERN_EDEFAULT;
        this.testPatternESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldTestPattern, (Object)TEST_PATTERN_EDEFAULT, oldTestPatternESet));
        }
    }

    @Override
    public boolean isSetTestPattern() {
        return this.testPatternESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetResourceConsumption((ResourceConsumption)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetResourceConsumption(null, msgs);
            }
            case 7: {
                return this.basicSetHardwareConfiguration(null, msgs);
            }
            case 9: {
                return this.basicSetSoftwareContext(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 5: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, ResourceConsumption.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getResourceConsumption();
            }
            case 6: {
                if (resolve) {
                    return this.getEcu();
                }
                return this.basicGetEcu();
            }
            case 7: {
                return this.getHardwareConfiguration();
            }
            case 8: {
                if (resolve) {
                    return this.getRunnable();
                }
                return this.basicGetRunnable();
            }
            case 9: {
                return this.getSoftwareContext();
            }
            case 10: {
                return this.getAverageMemoryConsumption();
            }
            case 11: {
                return this.getMaximumMemoryConsumption();
            }
            case 12: {
                return this.getMinimumMemoryConsumption();
            }
            case 13: {
                return this.getTestPattern();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setResourceConsumption((ResourceConsumption)newValue);
                return;
            }
            case 6: {
                this.setEcu((ECU)newValue);
                return;
            }
            case 7: {
                this.setHardwareConfiguration((HardwareConfiguration)newValue);
                return;
            }
            case 8: {
                this.setRunnable((RunnableEntity)newValue);
                return;
            }
            case 9: {
                this.setSoftwareContext((SoftwareContext)newValue);
                return;
            }
            case 10: {
                this.setAverageMemoryConsumption((Integer)newValue);
                return;
            }
            case 11: {
                this.setMaximumMemoryConsumption((Integer)newValue);
                return;
            }
            case 12: {
                this.setMinimumMemoryConsumption((Integer)newValue);
                return;
            }
            case 13: {
                this.setTestPattern((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setResourceConsumption(null);
                return;
            }
            case 6: {
                this.setEcu(null);
                return;
            }
            case 7: {
                this.setHardwareConfiguration(null);
                return;
            }
            case 8: {
                this.setRunnable(null);
                return;
            }
            case 9: {
                this.setSoftwareContext(null);
                return;
            }
            case 10: {
                this.unsetAverageMemoryConsumption();
                return;
            }
            case 11: {
                this.unsetMaximumMemoryConsumption();
                return;
            }
            case 12: {
                this.unsetMinimumMemoryConsumption();
                return;
            }
            case 13: {
                this.unsetTestPattern();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.getResourceConsumption() != null;
            }
            case 6: {
                return this.ecu != null;
            }
            case 7: {
                return this.hardwareConfiguration != null;
            }
            case 8: {
                return this.runnable != null;
            }
            case 9: {
                return this.softwareContext != null;
            }
            case 10: {
                return this.isSetAverageMemoryConsumption();
            }
            case 11: {
                return this.isSetMaximumMemoryConsumption();
            }
            case 12: {
                return this.isSetMinimumMemoryConsumption();
            }
            case 13: {
                return this.isSetTestPattern();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == StackUsage.class) {
            switch (derivedFeatureID) {
                case 5: {
                    return 4;
                }
                case 6: {
                    return 5;
                }
                case 7: {
                    return 6;
                }
                case 8: {
                    return 7;
                }
                case 9: {
                    return 8;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == StackUsage.class) {
            switch (baseFeatureID) {
                case 4: {
                    return 5;
                }
                case 5: {
                    return 6;
                }
                case 6: {
                    return 7;
                }
                case 7: {
                    return 8;
                }
                case 8: {
                    return 9;
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (averageMemoryConsumption: ");
        if (this.averageMemoryConsumptionESet) {
            result.append(this.averageMemoryConsumption);
        } else {
            result.append("<unset>");
        }
        result.append(", maximumMemoryConsumption: ");
        if (this.maximumMemoryConsumptionESet) {
            result.append(this.maximumMemoryConsumption);
        } else {
            result.append("<unset>");
        }
        result.append(", minimumMemoryConsumption: ");
        if (this.minimumMemoryConsumptionESet) {
            result.append(this.minimumMemoryConsumption);
        } else {
            result.append("<unset>");
        }
        result.append(", testPattern: ");
        if (this.testPatternESet) {
            result.append(this.testPattern);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

