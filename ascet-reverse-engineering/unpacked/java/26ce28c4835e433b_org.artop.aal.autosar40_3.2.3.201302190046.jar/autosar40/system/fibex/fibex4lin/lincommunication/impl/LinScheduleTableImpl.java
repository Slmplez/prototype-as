/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibex4lin.lincommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4lin.lincommunication.LinScheduleTable;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.ResumePosition;
import autosar40.system.fibex.fibex4lin.lincommunication.RunMode;
import autosar40.system.fibex.fibex4lin.lincommunication.ScheduleTableEntry;
import autosar40.system.fibex.fibex4lin.lintopology.LinPhysicalChannel;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LinScheduleTableImpl
extends IdentifiableImpl
implements LinScheduleTable {
    protected static final ResumePosition RESUME_POSITION_EDEFAULT = ResumePosition.START_FROM_BEGINNING;
    protected ResumePosition resumePosition = RESUME_POSITION_EDEFAULT;
    protected boolean resumePositionESet;
    protected static final RunMode RUN_MODE_EDEFAULT = RunMode.RUN_CONTINUOUS;
    protected RunMode runMode = RUN_MODE_EDEFAULT;
    protected boolean runModeESet;
    protected EList<ScheduleTableEntry> tableEntries;
    protected VariationPoint variationPoint;

    protected LinScheduleTableImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.LIN_SCHEDULE_TABLE;
    }

    @Override
    public LinPhysicalChannel getLinPhysicalChannel() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (LinPhysicalChannel)this.eContainer();
    }

    public NotificationChain basicSetLinPhysicalChannel(LinPhysicalChannel newLinPhysicalChannel, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newLinPhysicalChannel, 18, msgs);
        return msgs;
    }

    @Override
    public void setLinPhysicalChannel(LinPhysicalChannel newLinPhysicalChannel) {
        if (newLinPhysicalChannel != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newLinPhysicalChannel != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newLinPhysicalChannel)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newLinPhysicalChannel != null) {
                msgs = ((InternalEObject)newLinPhysicalChannel).eInverseAdd((InternalEObject)this, 24, LinPhysicalChannel.class, msgs);
            }
            if ((msgs = this.basicSetLinPhysicalChannel(newLinPhysicalChannel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newLinPhysicalChannel, (Object)newLinPhysicalChannel));
        }
    }

    @Override
    public ResumePosition getResumePosition() {
        return this.resumePosition;
    }

    @Override
    public void setResumePosition(ResumePosition newResumePosition) {
        ResumePosition oldResumePosition = this.resumePosition;
        this.resumePosition = newResumePosition == null ? RESUME_POSITION_EDEFAULT : newResumePosition;
        boolean oldResumePositionESet = this.resumePositionESet;
        this.resumePositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldResumePosition, (Object)this.resumePosition, !oldResumePositionESet));
        }
    }

    @Override
    public void unsetResumePosition() {
        ResumePosition oldResumePosition = this.resumePosition;
        boolean oldResumePositionESet = this.resumePositionESet;
        this.resumePosition = RESUME_POSITION_EDEFAULT;
        this.resumePositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldResumePosition, (Object)RESUME_POSITION_EDEFAULT, oldResumePositionESet));
        }
    }

    @Override
    public boolean isSetResumePosition() {
        return this.resumePositionESet;
    }

    @Override
    public RunMode getRunMode() {
        return this.runMode;
    }

    @Override
    public void setRunMode(RunMode newRunMode) {
        RunMode oldRunMode = this.runMode;
        this.runMode = newRunMode == null ? RUN_MODE_EDEFAULT : newRunMode;
        boolean oldRunModeESet = this.runModeESet;
        this.runModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldRunMode, (Object)this.runMode, !oldRunModeESet));
        }
    }

    @Override
    public void unsetRunMode() {
        RunMode oldRunMode = this.runMode;
        boolean oldRunModeESet = this.runModeESet;
        this.runMode = RUN_MODE_EDEFAULT;
        this.runModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldRunMode, (Object)RUN_MODE_EDEFAULT, oldRunModeESet));
        }
    }

    @Override
    public boolean isSetRunMode() {
        return this.runModeESet;
    }

    @Override
    public EList<ScheduleTableEntry> getTableEntries() {
        if (this.tableEntries == null) {
            this.tableEntries = new EObjectContainmentWithInverseEList(ScheduleTableEntry.class, (InternalEObject)this, 21, 4);
        }
        return this.tableEntries;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetLinPhysicalChannel((LinPhysicalChannel)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getTableEntries()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetLinPhysicalChannel(null, msgs);
            }
            case 21: {
                return ((InternalEList)this.getTableEntries()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, LinPhysicalChannel.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getLinPhysicalChannel();
            }
            case 19: {
                return this.getResumePosition();
            }
            case 20: {
                return this.getRunMode();
            }
            case 21: {
                return this.getTableEntries();
            }
            case 22: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setLinPhysicalChannel((LinPhysicalChannel)newValue);
                return;
            }
            case 19: {
                this.setResumePosition((ResumePosition)((Object)newValue));
                return;
            }
            case 20: {
                this.setRunMode((RunMode)((Object)newValue));
                return;
            }
            case 21: {
                this.getTableEntries().clear();
                this.getTableEntries().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setLinPhysicalChannel(null);
                return;
            }
            case 19: {
                this.unsetResumePosition();
                return;
            }
            case 20: {
                this.unsetRunMode();
                return;
            }
            case 21: {
                this.getTableEntries().clear();
                return;
            }
            case 22: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getLinPhysicalChannel() != null;
            }
            case 19: {
                return this.isSetResumePosition();
            }
            case 20: {
                return this.isSetRunMode();
            }
            case 21: {
                return this.tableEntries != null && !this.tableEntries.isEmpty();
            }
            case 22: {
                return this.variationPoint != null;
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
        result.append(" (resumePosition: ");
        if (this.resumePositionESet) {
            result.append((Object)this.resumePosition);
        } else {
            result.append("<unset>");
        }
        result.append(", runMode: ");
        if (this.runModeESet) {
            result.append((Object)this.runMode);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

