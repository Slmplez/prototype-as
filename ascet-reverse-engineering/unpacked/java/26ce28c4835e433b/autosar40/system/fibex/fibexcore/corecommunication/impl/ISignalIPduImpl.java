/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.IPduTiming;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalToIPduMapping;
import autosar40.system.fibex.fibexcore.corecommunication.SignalIPduCounter;
import autosar40.system.fibex.fibexcore.corecommunication.SignalIPduReplication;
import autosar40.system.fibex.fibexcore.corecommunication.impl.IPduImpl;
import java.util.Collection;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ISignalIPduImpl
extends IPduImpl
implements ISignalIPdu {
    protected EList<IPduTiming> iPduTimingSpecifications;
    protected EList<ISignalToIPduMapping> iSignalToPduMappings;
    protected EList<SignalIPduCounter> pduCounters;
    protected EList<SignalIPduReplication> pduReplications;
    protected static final IntegerDatatype UNUSED_BIT_PATTERN_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype unusedBitPattern = UNUSED_BIT_PATTERN_EDEFAULT.clone();
    protected boolean unusedBitPatternESet;

    protected ISignalIPduImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.ISIGNAL_IPDU;
    }

    @Override
    public EList<IPduTiming> getIPduTimingSpecifications() {
        if (this.iPduTimingSpecifications == null) {
            this.iPduTimingSpecifications = new EObjectContainmentWithInverseEList(IPduTiming.class, (InternalEObject)this, 22, 4);
        }
        return this.iPduTimingSpecifications;
    }

    @Override
    public EList<ISignalToIPduMapping> getISignalToPduMappings() {
        if (this.iSignalToPduMappings == null) {
            this.iSignalToPduMappings = new EObjectContainmentEList(ISignalToIPduMapping.class, (InternalEObject)this, 23);
        }
        return this.iSignalToPduMappings;
    }

    @Override
    public EList<SignalIPduCounter> getPduCounters() {
        if (this.pduCounters == null) {
            this.pduCounters = new EObjectContainmentWithInverseEList(SignalIPduCounter.class, (InternalEObject)this, 24, 4);
        }
        return this.pduCounters;
    }

    @Override
    public EList<SignalIPduReplication> getPduReplications() {
        if (this.pduReplications == null) {
            this.pduReplications = new EObjectContainmentWithInverseEList(SignalIPduReplication.class, (InternalEObject)this, 25, 4);
        }
        return this.pduReplications;
    }

    @Override
    public Integer getUnusedBitPattern() {
        return (Integer)this.unusedBitPattern.basicGetValue();
    }

    @Override
    public void setUnusedBitPattern(Integer newUnusedBitPattern) {
        Integer oldUnusedBitPattern = (Integer)this.unusedBitPattern.basicGetValue();
        this.unusedBitPattern.basicSetValue((Object)newUnusedBitPattern);
        boolean oldUnusedBitPatternESet = this.unusedBitPatternESet;
        this.unusedBitPatternESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldUnusedBitPattern, (Object)newUnusedBitPattern, !oldUnusedBitPatternESet));
        }
    }

    @Override
    public void unsetUnusedBitPattern() {
        Integer oldUnusedBitPattern = (Integer)this.unusedBitPattern.basicGetValue();
        boolean oldUnusedBitPatternESet = this.unusedBitPatternESet;
        this.unusedBitPattern = UNUSED_BIT_PATTERN_EDEFAULT.clone();
        this.unusedBitPatternESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldUnusedBitPattern, (Object)UNUSED_BIT_PATTERN_EDEFAULT, oldUnusedBitPatternESet));
        }
    }

    @Override
    public boolean isSetUnusedBitPattern() {
        return this.unusedBitPatternESet;
    }

    @Override
    public IntegerDatatype getUnusedBitPatternData() {
        return this.unusedBitPattern.clone();
    }

    @Override
    public void setUnusedBitPatternData(IntegerDatatype newUnusedBitPattern) {
        this.unusedBitPattern.setRadix((int)newUnusedBitPattern.getRadix());
        this.unusedBitPattern.setNoOfDigits((int)newUnusedBitPattern.getNoOfDigits());
        this.setUnusedBitPattern(newUnusedBitPattern.getValue());
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getIPduTimingSpecifications()).basicAdd((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getPduCounters()).basicAdd((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getPduReplications()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getIPduTimingSpecifications()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getISignalToPduMappings()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getPduCounters()).basicRemove((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getPduReplications()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getIPduTimingSpecifications();
            }
            case 23: {
                return this.getISignalToPduMappings();
            }
            case 24: {
                return this.getPduCounters();
            }
            case 25: {
                return this.getPduReplications();
            }
            case 26: {
                return this.getUnusedBitPattern();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.getIPduTimingSpecifications().clear();
                this.getIPduTimingSpecifications().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getISignalToPduMappings().clear();
                this.getISignalToPduMappings().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getPduCounters().clear();
                this.getPduCounters().addAll((Collection)newValue);
                return;
            }
            case 25: {
                this.getPduReplications().clear();
                this.getPduReplications().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.setUnusedBitPattern((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.getIPduTimingSpecifications().clear();
                return;
            }
            case 23: {
                this.getISignalToPduMappings().clear();
                return;
            }
            case 24: {
                this.getPduCounters().clear();
                return;
            }
            case 25: {
                this.getPduReplications().clear();
                return;
            }
            case 26: {
                this.unsetUnusedBitPattern();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.iPduTimingSpecifications != null && !this.iPduTimingSpecifications.isEmpty();
            }
            case 23: {
                return this.iSignalToPduMappings != null && !this.iSignalToPduMappings.isEmpty();
            }
            case 24: {
                return this.pduCounters != null && !this.pduCounters.isEmpty();
            }
            case 25: {
                return this.pduReplications != null && !this.pduReplications.isEmpty();
            }
            case 26: {
                return this.isSetUnusedBitPattern();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (unusedBitPattern: ");
        if (this.unusedBitPatternESet) {
            result.append(this.unusedBitPattern);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

