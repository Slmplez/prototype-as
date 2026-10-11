/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
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
 */
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.DiagEventDebounceAlgorithm;
import autosar40.commonstructure.serviceneeds.DiagnosticEventNeeds;
import autosar40.commonstructure.serviceneeds.DtcKindEnum;
import autosar40.commonstructure.serviceneeds.FunctionInhibitionNeeds;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.DiagnosticCapabilityElementImpl;
import java.util.Collection;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
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

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DiagnosticEventNeedsImpl
extends DiagnosticCapabilityElementImpl
implements DiagnosticEventNeeds,
IReferringClass {
    protected static final Boolean CONSIDER_PTO_STATUS_EDEFAULT = Boolean.FALSE;
    protected Boolean considerPtoStatus = CONSIDER_PTO_STATUS_EDEFAULT;
    protected boolean considerPtoStatusESet;
    protected DiagEventDebounceAlgorithm diagEventDebounceAlgorithm;
    protected static final DtcKindEnum DTC_KIND_EDEFAULT = DtcKindEnum.EMISSION_RELATED_DTC;
    protected DtcKindEnum dtcKind = DTC_KIND_EDEFAULT;
    protected boolean dtcKindESet;
    protected static final PositiveIntegerDatatype DTC_NUMBER_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype dtcNumber = DTC_NUMBER_EDEFAULT.clone();
    protected boolean dtcNumberESet;
    protected FunctionInhibitionNeeds inhibitingFid;
    protected EList<FunctionInhibitionNeeds> inhibitingSecondaryFids;

    protected DiagnosticEventNeedsImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.DIAGNOSTIC_EVENT_NEEDS;
    }

    @Override
    public Boolean getConsiderPtoStatus() {
        return this.considerPtoStatus;
    }

    @Override
    public void setConsiderPtoStatus(Boolean newConsiderPtoStatus) {
        Boolean oldConsiderPtoStatus = this.considerPtoStatus;
        this.considerPtoStatus = newConsiderPtoStatus;
        boolean oldConsiderPtoStatusESet = this.considerPtoStatusESet;
        this.considerPtoStatusESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldConsiderPtoStatus, (Object)this.considerPtoStatus, !oldConsiderPtoStatusESet));
        }
    }

    @Override
    public void unsetConsiderPtoStatus() {
        Boolean oldConsiderPtoStatus = this.considerPtoStatus;
        boolean oldConsiderPtoStatusESet = this.considerPtoStatusESet;
        this.considerPtoStatus = CONSIDER_PTO_STATUS_EDEFAULT;
        this.considerPtoStatusESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldConsiderPtoStatus, (Object)CONSIDER_PTO_STATUS_EDEFAULT, oldConsiderPtoStatusESet));
        }
    }

    @Override
    public boolean isSetConsiderPtoStatus() {
        return this.considerPtoStatusESet;
    }

    @Override
    public DiagEventDebounceAlgorithm getDiagEventDebounceAlgorithm() {
        return this.diagEventDebounceAlgorithm;
    }

    public NotificationChain basicSetDiagEventDebounceAlgorithm(DiagEventDebounceAlgorithm newDiagEventDebounceAlgorithm, NotificationChain msgs) {
        DiagEventDebounceAlgorithm oldDiagEventDebounceAlgorithm = this.diagEventDebounceAlgorithm;
        this.diagEventDebounceAlgorithm = newDiagEventDebounceAlgorithm;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldDiagEventDebounceAlgorithm, (Object)newDiagEventDebounceAlgorithm);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDiagEventDebounceAlgorithm(DiagEventDebounceAlgorithm newDiagEventDebounceAlgorithm) {
        if (newDiagEventDebounceAlgorithm != this.diagEventDebounceAlgorithm) {
            NotificationChain msgs = null;
            if (this.diagEventDebounceAlgorithm != null) {
                msgs = ((InternalEObject)this.diagEventDebounceAlgorithm).eInverseRemove((InternalEObject)this, 18, DiagEventDebounceAlgorithm.class, msgs);
            }
            if (newDiagEventDebounceAlgorithm != null) {
                msgs = ((InternalEObject)newDiagEventDebounceAlgorithm).eInverseAdd((InternalEObject)this, 18, DiagEventDebounceAlgorithm.class, msgs);
            }
            if ((msgs = this.basicSetDiagEventDebounceAlgorithm(newDiagEventDebounceAlgorithm, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newDiagEventDebounceAlgorithm, (Object)newDiagEventDebounceAlgorithm));
        }
    }

    @Override
    public DtcKindEnum getDtcKind() {
        return this.dtcKind;
    }

    @Override
    public void setDtcKind(DtcKindEnum newDtcKind) {
        DtcKindEnum oldDtcKind = this.dtcKind;
        this.dtcKind = newDtcKind == null ? DTC_KIND_EDEFAULT : newDtcKind;
        boolean oldDtcKindESet = this.dtcKindESet;
        this.dtcKindESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldDtcKind, (Object)this.dtcKind, !oldDtcKindESet));
        }
    }

    @Override
    public void unsetDtcKind() {
        DtcKindEnum oldDtcKind = this.dtcKind;
        boolean oldDtcKindESet = this.dtcKindESet;
        this.dtcKind = DTC_KIND_EDEFAULT;
        this.dtcKindESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldDtcKind, (Object)DTC_KIND_EDEFAULT, oldDtcKindESet));
        }
    }

    @Override
    public boolean isSetDtcKind() {
        return this.dtcKindESet;
    }

    @Override
    public Long getDtcNumber() {
        return (Long)this.dtcNumber.basicGetValue();
    }

    @Override
    public void setDtcNumber(Long newDtcNumber) {
        Long oldDtcNumber = (Long)this.dtcNumber.basicGetValue();
        this.dtcNumber.basicSetValue((Object)newDtcNumber);
        boolean oldDtcNumberESet = this.dtcNumberESet;
        this.dtcNumberESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldDtcNumber, (Object)newDtcNumber, !oldDtcNumberESet));
        }
    }

    @Override
    public void unsetDtcNumber() {
        Long oldDtcNumber = (Long)this.dtcNumber.basicGetValue();
        boolean oldDtcNumberESet = this.dtcNumberESet;
        this.dtcNumber = DTC_NUMBER_EDEFAULT.clone();
        this.dtcNumberESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldDtcNumber, (Object)DTC_NUMBER_EDEFAULT, oldDtcNumberESet));
        }
    }

    @Override
    public boolean isSetDtcNumber() {
        return this.dtcNumberESet;
    }

    @Override
    public FunctionInhibitionNeeds getInhibitingFid() {
        if (this.inhibitingFid != null && this.inhibitingFid.eIsProxy()) {
            InternalEObject oldInhibitingFid = (InternalEObject)this.inhibitingFid;
            this.inhibitingFid = (FunctionInhibitionNeeds)this.eResolveProxy(oldInhibitingFid);
            if (this.inhibitingFid != oldInhibitingFid && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 25, (Object)oldInhibitingFid, (Object)this.inhibitingFid));
            }
        }
        return this.inhibitingFid;
    }

    public FunctionInhibitionNeeds basicGetInhibitingFid() {
        return this.inhibitingFid;
    }

    @Override
    public void setInhibitingFid(FunctionInhibitionNeeds newInhibitingFid) {
        FunctionInhibitionNeeds oldInhibitingFid = this.inhibitingFid;
        this.inhibitingFid = newInhibitingFid;
        AutosarObjectUtil.setDest((EObject)this, (int)25, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldInhibitingFid, (Object)this.inhibitingFid));
        }
    }

    @Override
    public EList<FunctionInhibitionNeeds> getInhibitingSecondaryFids() {
        if (this.inhibitingSecondaryFids == null) {
            this.inhibitingSecondaryFids = new EObjectResolvingReferringEList(FunctionInhibitionNeeds.class, (InternalEObject)this, 26);
        }
        return this.inhibitingSecondaryFids;
    }

    @Override
    public PositiveIntegerDatatype getDtcNumberData() {
        return this.dtcNumber.clone();
    }

    @Override
    public void setDtcNumberData(PositiveIntegerDatatype newDtcNumber) {
        this.dtcNumber.setRadix((int)newDtcNumber.getRadix());
        this.dtcNumber.setNoOfDigits((int)newDtcNumber.getNoOfDigits());
        this.setDtcNumber(newDtcNumber.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                if (this.diagEventDebounceAlgorithm != null) {
                    msgs = ((InternalEObject)this.diagEventDebounceAlgorithm).eInverseRemove((InternalEObject)this, -23, null, msgs);
                }
                return this.basicSetDiagEventDebounceAlgorithm((DiagEventDebounceAlgorithm)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetDiagEventDebounceAlgorithm(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getConsiderPtoStatus();
            }
            case 22: {
                return this.getDiagEventDebounceAlgorithm();
            }
            case 23: {
                return this.getDtcKind();
            }
            case 24: {
                return this.getDtcNumber();
            }
            case 25: {
                if (resolve) {
                    return this.getInhibitingFid();
                }
                return this.basicGetInhibitingFid();
            }
            case 26: {
                return this.getInhibitingSecondaryFids();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setConsiderPtoStatus((Boolean)newValue);
                return;
            }
            case 22: {
                this.setDiagEventDebounceAlgorithm((DiagEventDebounceAlgorithm)newValue);
                return;
            }
            case 23: {
                this.setDtcKind((DtcKindEnum)((Object)newValue));
                return;
            }
            case 24: {
                this.setDtcNumber((Long)newValue);
                return;
            }
            case 25: {
                this.setInhibitingFid((FunctionInhibitionNeeds)newValue);
                return;
            }
            case 26: {
                this.getInhibitingSecondaryFids().clear();
                this.getInhibitingSecondaryFids().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetConsiderPtoStatus();
                return;
            }
            case 22: {
                this.setDiagEventDebounceAlgorithm(null);
                return;
            }
            case 23: {
                this.unsetDtcKind();
                return;
            }
            case 24: {
                this.unsetDtcNumber();
                return;
            }
            case 25: {
                this.setInhibitingFid(null);
                return;
            }
            case 26: {
                this.getInhibitingSecondaryFids().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetConsiderPtoStatus();
            }
            case 22: {
                return this.diagEventDebounceAlgorithm != null;
            }
            case 23: {
                return this.isSetDtcKind();
            }
            case 24: {
                return this.isSetDtcNumber();
            }
            case 25: {
                return this.inhibitingFid != null;
            }
            case 26: {
                return this.inhibitingSecondaryFids != null && !this.inhibitingSecondaryFids.isEmpty();
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
        result.append(" (considerPtoStatus: ");
        if (this.considerPtoStatusESet) {
            result.append(this.considerPtoStatus);
        } else {
            result.append("<unset>");
        }
        result.append(", dtcKind: ");
        if (this.dtcKindESet) {
            result.append((Object)this.dtcKind);
        } else {
            result.append("<unset>");
        }
        result.append(", dtcNumber: ");
        if (this.dtcNumberESet) {
            result.append(this.dtcNumber);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

