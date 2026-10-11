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
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalToIPduMapping;
import autosar40.system.fibex.fibexcore.corecommunication.NmPdu;
import autosar40.system.fibex.fibexcore.corecommunication.impl.PduImpl;
import java.util.Collection;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NmPduImpl
extends PduImpl
implements NmPdu {
    protected EList<ISignalToIPduMapping> iSignalToIPduMappings;
    protected static final Boolean NM_DATA_INFORMATION_EDEFAULT = Boolean.FALSE;
    protected Boolean nmDataInformation = NM_DATA_INFORMATION_EDEFAULT;
    protected boolean nmDataInformationESet;
    protected static final Boolean NM_VOTE_INFORMATION_EDEFAULT = Boolean.FALSE;
    protected Boolean nmVoteInformation = NM_VOTE_INFORMATION_EDEFAULT;
    protected boolean nmVoteInformationESet;
    protected static final IntegerDatatype UNUSED_BIT_PATTERN_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype unusedBitPattern = UNUSED_BIT_PATTERN_EDEFAULT.clone();
    protected boolean unusedBitPatternESet;

    protected NmPduImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.NM_PDU;
    }

    @Override
    public EList<ISignalToIPduMapping> getISignalToIPduMappings() {
        if (this.iSignalToIPduMappings == null) {
            this.iSignalToIPduMappings = new EObjectContainmentEList(ISignalToIPduMapping.class, (InternalEObject)this, 22);
        }
        return this.iSignalToIPduMappings;
    }

    @Override
    public Boolean getNmDataInformation() {
        return this.nmDataInformation;
    }

    @Override
    public void setNmDataInformation(Boolean newNmDataInformation) {
        Boolean oldNmDataInformation = this.nmDataInformation;
        this.nmDataInformation = newNmDataInformation;
        boolean oldNmDataInformationESet = this.nmDataInformationESet;
        this.nmDataInformationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldNmDataInformation, (Object)this.nmDataInformation, !oldNmDataInformationESet));
        }
    }

    @Override
    public void unsetNmDataInformation() {
        Boolean oldNmDataInformation = this.nmDataInformation;
        boolean oldNmDataInformationESet = this.nmDataInformationESet;
        this.nmDataInformation = NM_DATA_INFORMATION_EDEFAULT;
        this.nmDataInformationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldNmDataInformation, (Object)NM_DATA_INFORMATION_EDEFAULT, oldNmDataInformationESet));
        }
    }

    @Override
    public boolean isSetNmDataInformation() {
        return this.nmDataInformationESet;
    }

    @Override
    public Boolean getNmVoteInformation() {
        return this.nmVoteInformation;
    }

    @Override
    public void setNmVoteInformation(Boolean newNmVoteInformation) {
        Boolean oldNmVoteInformation = this.nmVoteInformation;
        this.nmVoteInformation = newNmVoteInformation;
        boolean oldNmVoteInformationESet = this.nmVoteInformationESet;
        this.nmVoteInformationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldNmVoteInformation, (Object)this.nmVoteInformation, !oldNmVoteInformationESet));
        }
    }

    @Override
    public void unsetNmVoteInformation() {
        Boolean oldNmVoteInformation = this.nmVoteInformation;
        boolean oldNmVoteInformationESet = this.nmVoteInformationESet;
        this.nmVoteInformation = NM_VOTE_INFORMATION_EDEFAULT;
        this.nmVoteInformationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldNmVoteInformation, (Object)NM_VOTE_INFORMATION_EDEFAULT, oldNmVoteInformationESet));
        }
    }

    @Override
    public boolean isSetNmVoteInformation() {
        return this.nmVoteInformationESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldUnusedBitPattern, (Object)newUnusedBitPattern, !oldUnusedBitPatternESet));
        }
    }

    @Override
    public void unsetUnusedBitPattern() {
        Integer oldUnusedBitPattern = (Integer)this.unusedBitPattern.basicGetValue();
        boolean oldUnusedBitPatternESet = this.unusedBitPatternESet;
        this.unusedBitPattern = UNUSED_BIT_PATTERN_EDEFAULT.clone();
        this.unusedBitPatternESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldUnusedBitPattern, (Object)UNUSED_BIT_PATTERN_EDEFAULT, oldUnusedBitPatternESet));
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
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getISignalToIPduMappings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getISignalToIPduMappings();
            }
            case 23: {
                return this.getNmDataInformation();
            }
            case 24: {
                return this.getNmVoteInformation();
            }
            case 25: {
                return this.getUnusedBitPattern();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.getISignalToIPduMappings().clear();
                this.getISignalToIPduMappings().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.setNmDataInformation((Boolean)newValue);
                return;
            }
            case 24: {
                this.setNmVoteInformation((Boolean)newValue);
                return;
            }
            case 25: {
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
                this.getISignalToIPduMappings().clear();
                return;
            }
            case 23: {
                this.unsetNmDataInformation();
                return;
            }
            case 24: {
                this.unsetNmVoteInformation();
                return;
            }
            case 25: {
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
                return this.iSignalToIPduMappings != null && !this.iSignalToIPduMappings.isEmpty();
            }
            case 23: {
                return this.isSetNmDataInformation();
            }
            case 24: {
                return this.isSetNmVoteInformation();
            }
            case 25: {
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
        result.append(" (nmDataInformation: ");
        if (this.nmDataInformationESet) {
            result.append(this.nmDataInformation);
        } else {
            result.append("<unset>");
        }
        result.append(", nmVoteInformation: ");
        if (this.nmVoteInformationESet) {
            result.append(this.nmVoteInformation);
        } else {
            result.append("<unset>");
        }
        result.append(", unusedBitPattern: ");
        if (this.unusedBitPatternESet) {
            result.append(this.unusedBitPattern);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

