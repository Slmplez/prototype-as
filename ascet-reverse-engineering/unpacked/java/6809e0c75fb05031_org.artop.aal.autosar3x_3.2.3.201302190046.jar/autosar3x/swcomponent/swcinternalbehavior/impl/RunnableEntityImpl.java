/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea
 *  gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
 *  gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GWaitPoint
 *  gautosar.gswcomponents.gswcinternalbehavior.gservercall.GServerCallPoint
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
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.swcomponent.swcinternalbehavior.impl;

import autosar3x.bswmodule.bswbehavior.BswModuleEntity;
import autosar3x.commonstructure.internalbehavior.ExclusiveArea;
import autosar3x.commonstructure.internalbehavior.impl.ExecutableEntityImpl;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmAccess;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar3x.swcomponent.swcinternalbehavior.InternalBehavior;
import autosar3x.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar3x.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataReadAccess;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataReceivePoint;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataSendPoint;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataWriteAccess;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.InterRunnableVariable;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.WaitPoint;
import autosar3x.swcomponent.swcinternalbehavior.servercall.ServerCallPoint;
import gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea;
import gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GWaitPoint;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GServerCallPoint;
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
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RunnableEntityImpl
extends ExecutableEntityImpl
implements RunnableEntity,
IReferringClass {
    protected static final String GSYMBOL_EDEFAULT = null;
    protected BswModuleEntity bswEntity;
    protected EList<CalprmAccess> calprmAccess;
    protected static final Boolean CAN_BE_INVOKED_CONCURRENTLY_EDEFAULT = Boolean.FALSE;
    protected Boolean canBeInvokedConcurrently = CAN_BE_INVOKED_CONCURRENTLY_EDEFAULT;
    protected boolean canBeInvokedConcurrentlyESet;
    protected EList<ExclusiveArea> canEnterExclusiveAreas;
    protected EList<DataReadAccess> dataReadAccess;
    protected EList<DataReceivePoint> dataReceivePoints;
    protected EList<DataSendPoint> dataSendPoints;
    protected EList<DataWriteAccess> dataWriteAccess;
    protected static final Double MINIMUM_START_INTERVAL_EDEFAULT = new Double(0.0);
    protected Double minimumStartInterval = MINIMUM_START_INTERVAL_EDEFAULT;
    protected boolean minimumStartIntervalESet;
    protected EList<ModeSwitchPoint> modeSwitchPoints;
    protected EList<CalprmElementPrototype> perInstanceCalprmAccess;
    protected EList<InterRunnableVariable> readVariables;
    protected EList<ExclusiveArea> runsInsideExclusiveAreas;
    protected EList<ServerCallPoint> serverCallPoints;
    protected EList<CalprmElementPrototype> sharedCalprmAccess;
    protected static final String SYMBOL_EDEFAULT = "";
    protected String symbol = "";
    protected boolean symbolESet;
    protected EList<WaitPoint> waitPoints;
    protected EList<InterRunnableVariable> writtenVariables;

    protected RunnableEntityImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SwcinternalbehaviorPackage.Literals.RUNNABLE_ENTITY;
    }

    public EList<GExclusiveArea> gGetRunsInsideExclusiveAreas() {
        EList<ExclusiveArea> untypedList = this.getRunsInsideExclusiveAreas();
        return untypedList;
    }

    public EList<GExclusiveArea> gGetCanEnterExclusiveAreas() {
        EList<ExclusiveArea> untypedList = this.getCanEnterExclusiveAreas();
        return untypedList;
    }

    public EList<GWaitPoint> gGetWaitPoints() {
        EList<WaitPoint> untypedList = this.getWaitPoints();
        return untypedList;
    }

    public String gGetSymbol() {
        String tgtFeatureValue = this.getSymbol();
        return tgtFeatureValue;
    }

    public void gSetSymbol(String newGSymbol) {
        this.setSymbol(newGSymbol);
    }

    public void gUnsetSymbol() {
        this.unsetSymbol();
    }

    public boolean gIsSetSymbol() {
        return this.isSetSymbol();
    }

    public EList<GVariableDataPrototype> gGetReadVariables() {
        EList<InterRunnableVariable> untypedList = this.getReadVariables();
        return untypedList;
    }

    public EList<GVariableDataPrototype> gGetWrittenVariables() {
        EList<InterRunnableVariable> untypedList = this.getWrittenVariables();
        return untypedList;
    }

    public EList<GVariableAccess> gGetDataReadAccess() {
        EList<DataReadAccess> untypedList = this.getDataReadAccess();
        return untypedList;
    }

    public EList<GVariableAccess> gGetDataWriteAccess() {
        EList<DataWriteAccess> untypedList = this.getDataWriteAccess();
        return untypedList;
    }

    public EList<GVariableAccess> gGetDataSendPoints() {
        EList<DataSendPoint> untypedList = this.getDataSendPoints();
        return untypedList;
    }

    public EList<GVariableAccess> gGetDataReceivePoints() {
        EList<DataReceivePoint> untypedList = this.getDataReceivePoints();
        return untypedList;
    }

    public EList<GServerCallPoint> gGetServerCallPoints() {
        EList<ServerCallPoint> untypedList = this.getServerCallPoints();
        return untypedList;
    }

    @Override
    public InternalBehavior getInternalBehavior() {
        if (this.eContainerFeatureID() != 28) {
            return null;
        }
        return (InternalBehavior)this.eContainer();
    }

    public NotificationChain basicSetInternalBehavior(InternalBehavior newInternalBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newInternalBehavior, 28, msgs);
        return msgs;
    }

    @Override
    public void setInternalBehavior(InternalBehavior newInternalBehavior) {
        if (newInternalBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 28 && newInternalBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newInternalBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newInternalBehavior != null) {
                msgs = ((InternalEObject)newInternalBehavior).eInverseAdd((InternalEObject)this, 33, InternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetInternalBehavior(newInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)newInternalBehavior, (Object)newInternalBehavior));
        }
    }

    @Override
    public BswModuleEntity getBswEntity() {
        if (this.bswEntity != null && this.bswEntity.eIsProxy()) {
            InternalEObject oldBswEntity = (InternalEObject)this.bswEntity;
            this.bswEntity = (BswModuleEntity)this.eResolveProxy(oldBswEntity);
            if (this.bswEntity != oldBswEntity && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 29, (Object)oldBswEntity, (Object)this.bswEntity));
            }
        }
        return this.bswEntity;
    }

    public BswModuleEntity basicGetBswEntity() {
        return this.bswEntity;
    }

    @Override
    public void setBswEntity(BswModuleEntity newBswEntity) {
        BswModuleEntity oldBswEntity = this.bswEntity;
        this.bswEntity = newBswEntity;
        AutosarObjectUtil.setDest((EObject)this, (int)29, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldBswEntity, (Object)this.bswEntity));
        }
    }

    @Override
    public EList<CalprmAccess> getCalprmAccess() {
        if (this.calprmAccess == null) {
            this.calprmAccess = new EObjectContainmentWithInverseEList(CalprmAccess.class, (InternalEObject)this, 30, 18);
        }
        return this.calprmAccess;
    }

    @Override
    public Boolean getCanBeInvokedConcurrently() {
        return this.canBeInvokedConcurrently;
    }

    @Override
    public void setCanBeInvokedConcurrently(Boolean newCanBeInvokedConcurrently) {
        Boolean oldCanBeInvokedConcurrently = this.canBeInvokedConcurrently;
        this.canBeInvokedConcurrently = newCanBeInvokedConcurrently;
        boolean oldCanBeInvokedConcurrentlyESet = this.canBeInvokedConcurrentlyESet;
        this.canBeInvokedConcurrentlyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldCanBeInvokedConcurrently, (Object)this.canBeInvokedConcurrently, !oldCanBeInvokedConcurrentlyESet));
        }
    }

    @Override
    public void unsetCanBeInvokedConcurrently() {
        Boolean oldCanBeInvokedConcurrently = this.canBeInvokedConcurrently;
        boolean oldCanBeInvokedConcurrentlyESet = this.canBeInvokedConcurrentlyESet;
        this.canBeInvokedConcurrently = CAN_BE_INVOKED_CONCURRENTLY_EDEFAULT;
        this.canBeInvokedConcurrentlyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldCanBeInvokedConcurrently, (Object)CAN_BE_INVOKED_CONCURRENTLY_EDEFAULT, oldCanBeInvokedConcurrentlyESet));
        }
    }

    @Override
    public boolean isSetCanBeInvokedConcurrently() {
        return this.canBeInvokedConcurrentlyESet;
    }

    @Override
    public EList<ExclusiveArea> getCanEnterExclusiveAreas() {
        if (this.canEnterExclusiveAreas == null) {
            this.canEnterExclusiveAreas = new EObjectResolvingReferringEList(ExclusiveArea.class, (InternalEObject)this, 32);
        }
        return this.canEnterExclusiveAreas;
    }

    @Override
    public EList<DataReadAccess> getDataReadAccess() {
        if (this.dataReadAccess == null) {
            this.dataReadAccess = new EObjectContainmentWithInverseEList(DataReadAccess.class, (InternalEObject)this, 33, 18);
        }
        return this.dataReadAccess;
    }

    @Override
    public EList<DataReceivePoint> getDataReceivePoints() {
        if (this.dataReceivePoints == null) {
            this.dataReceivePoints = new EObjectContainmentWithInverseEList(DataReceivePoint.class, (InternalEObject)this, 34, 18);
        }
        return this.dataReceivePoints;
    }

    @Override
    public EList<DataSendPoint> getDataSendPoints() {
        if (this.dataSendPoints == null) {
            this.dataSendPoints = new EObjectContainmentWithInverseEList(DataSendPoint.class, (InternalEObject)this, 35, 18);
        }
        return this.dataSendPoints;
    }

    @Override
    public EList<DataWriteAccess> getDataWriteAccess() {
        if (this.dataWriteAccess == null) {
            this.dataWriteAccess = new EObjectContainmentWithInverseEList(DataWriteAccess.class, (InternalEObject)this, 36, 18);
        }
        return this.dataWriteAccess;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 37, (Object)oldMinimumStartInterval, (Object)this.minimumStartInterval, !oldMinimumStartIntervalESet));
        }
    }

    @Override
    public void unsetMinimumStartInterval() {
        Double oldMinimumStartInterval = this.minimumStartInterval;
        boolean oldMinimumStartIntervalESet = this.minimumStartIntervalESet;
        this.minimumStartInterval = MINIMUM_START_INTERVAL_EDEFAULT;
        this.minimumStartIntervalESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 37, (Object)oldMinimumStartInterval, (Object)MINIMUM_START_INTERVAL_EDEFAULT, oldMinimumStartIntervalESet));
        }
    }

    @Override
    public boolean isSetMinimumStartInterval() {
        return this.minimumStartIntervalESet;
    }

    @Override
    public EList<ModeSwitchPoint> getModeSwitchPoints() {
        if (this.modeSwitchPoints == null) {
            this.modeSwitchPoints = new EObjectContainmentWithInverseEList(ModeSwitchPoint.class, (InternalEObject)this, 38, 18);
        }
        return this.modeSwitchPoints;
    }

    @Override
    public EList<CalprmElementPrototype> getPerInstanceCalprmAccess() {
        if (this.perInstanceCalprmAccess == null) {
            this.perInstanceCalprmAccess = new EObjectResolvingReferringEList(CalprmElementPrototype.class, (InternalEObject)this, 39);
        }
        return this.perInstanceCalprmAccess;
    }

    @Override
    public EList<InterRunnableVariable> getReadVariables() {
        if (this.readVariables == null) {
            this.readVariables = new EObjectResolvingReferringEList(InterRunnableVariable.class, (InternalEObject)this, 40);
        }
        return this.readVariables;
    }

    @Override
    public EList<ExclusiveArea> getRunsInsideExclusiveAreas() {
        if (this.runsInsideExclusiveAreas == null) {
            this.runsInsideExclusiveAreas = new EObjectResolvingReferringEList(ExclusiveArea.class, (InternalEObject)this, 41);
        }
        return this.runsInsideExclusiveAreas;
    }

    @Override
    public EList<ServerCallPoint> getServerCallPoints() {
        if (this.serverCallPoints == null) {
            this.serverCallPoints = new EObjectContainmentWithInverseEList(ServerCallPoint.class, (InternalEObject)this, 42, 18);
        }
        return this.serverCallPoints;
    }

    @Override
    public EList<CalprmElementPrototype> getSharedCalprmAccess() {
        if (this.sharedCalprmAccess == null) {
            this.sharedCalprmAccess = new EObjectResolvingReferringEList(CalprmElementPrototype.class, (InternalEObject)this, 43);
        }
        return this.sharedCalprmAccess;
    }

    @Override
    public String getSymbol() {
        return this.symbol;
    }

    @Override
    public void setSymbol(String newSymbol) {
        String oldSymbol = this.symbol;
        this.symbol = newSymbol;
        boolean oldSymbolESet = this.symbolESet;
        this.symbolESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 44, (Object)oldSymbol, (Object)this.symbol, !oldSymbolESet));
        }
    }

    @Override
    public void unsetSymbol() {
        String oldSymbol = this.symbol;
        boolean oldSymbolESet = this.symbolESet;
        this.symbol = SYMBOL_EDEFAULT;
        this.symbolESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 44, (Object)oldSymbol, (Object)SYMBOL_EDEFAULT, oldSymbolESet));
        }
    }

    @Override
    public boolean isSetSymbol() {
        return this.symbolESet;
    }

    @Override
    public EList<WaitPoint> getWaitPoints() {
        if (this.waitPoints == null) {
            this.waitPoints = new EObjectContainmentWithInverseEList(WaitPoint.class, (InternalEObject)this, 45, 19);
        }
        return this.waitPoints;
    }

    @Override
    public EList<InterRunnableVariable> getWrittenVariables() {
        if (this.writtenVariables == null) {
            this.writtenVariables = new EObjectResolvingReferringEList(InterRunnableVariable.class, (InternalEObject)this, 46);
        }
        return this.writtenVariables;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 28: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetInternalBehavior((InternalBehavior)otherEnd, msgs);
            }
            case 30: {
                return ((InternalEList)this.getCalprmAccess()).basicAdd((Object)otherEnd, msgs);
            }
            case 33: {
                return ((InternalEList)this.getDataReadAccess()).basicAdd((Object)otherEnd, msgs);
            }
            case 34: {
                return ((InternalEList)this.getDataReceivePoints()).basicAdd((Object)otherEnd, msgs);
            }
            case 35: {
                return ((InternalEList)this.getDataSendPoints()).basicAdd((Object)otherEnd, msgs);
            }
            case 36: {
                return ((InternalEList)this.getDataWriteAccess()).basicAdd((Object)otherEnd, msgs);
            }
            case 38: {
                return ((InternalEList)this.getModeSwitchPoints()).basicAdd((Object)otherEnd, msgs);
            }
            case 42: {
                return ((InternalEList)this.getServerCallPoints()).basicAdd((Object)otherEnd, msgs);
            }
            case 45: {
                return ((InternalEList)this.getWaitPoints()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 28: {
                return this.basicSetInternalBehavior(null, msgs);
            }
            case 30: {
                return ((InternalEList)this.getCalprmAccess()).basicRemove((Object)otherEnd, msgs);
            }
            case 33: {
                return ((InternalEList)this.getDataReadAccess()).basicRemove((Object)otherEnd, msgs);
            }
            case 34: {
                return ((InternalEList)this.getDataReceivePoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 35: {
                return ((InternalEList)this.getDataSendPoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 36: {
                return ((InternalEList)this.getDataWriteAccess()).basicRemove((Object)otherEnd, msgs);
            }
            case 38: {
                return ((InternalEList)this.getModeSwitchPoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 42: {
                return ((InternalEList)this.getServerCallPoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 45: {
                return ((InternalEList)this.getWaitPoints()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 28: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 33, InternalBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.gGetRunsInsideExclusiveAreas();
            }
            case 18: {
                return this.gGetCanEnterExclusiveAreas();
            }
            case 19: {
                return this.gGetWaitPoints();
            }
            case 20: {
                return this.gGetSymbol();
            }
            case 21: {
                return this.gGetReadVariables();
            }
            case 22: {
                return this.gGetWrittenVariables();
            }
            case 23: {
                return this.gGetDataReadAccess();
            }
            case 24: {
                return this.gGetDataWriteAccess();
            }
            case 25: {
                return this.gGetDataSendPoints();
            }
            case 26: {
                return this.gGetDataReceivePoints();
            }
            case 27: {
                return this.gGetServerCallPoints();
            }
            case 28: {
                return this.getInternalBehavior();
            }
            case 29: {
                if (resolve) {
                    return this.getBswEntity();
                }
                return this.basicGetBswEntity();
            }
            case 30: {
                return this.getCalprmAccess();
            }
            case 31: {
                return this.getCanBeInvokedConcurrently();
            }
            case 32: {
                return this.getCanEnterExclusiveAreas();
            }
            case 33: {
                return this.getDataReadAccess();
            }
            case 34: {
                return this.getDataReceivePoints();
            }
            case 35: {
                return this.getDataSendPoints();
            }
            case 36: {
                return this.getDataWriteAccess();
            }
            case 37: {
                return this.getMinimumStartInterval();
            }
            case 38: {
                return this.getModeSwitchPoints();
            }
            case 39: {
                return this.getPerInstanceCalprmAccess();
            }
            case 40: {
                return this.getReadVariables();
            }
            case 41: {
                return this.getRunsInsideExclusiveAreas();
            }
            case 42: {
                return this.getServerCallPoints();
            }
            case 43: {
                return this.getSharedCalprmAccess();
            }
            case 44: {
                return this.getSymbol();
            }
            case 45: {
                return this.getWaitPoints();
            }
            case 46: {
                return this.getWrittenVariables();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.gGetRunsInsideExclusiveAreas().clear();
                this.gGetRunsInsideExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 18: {
                this.gGetCanEnterExclusiveAreas().clear();
                this.gGetCanEnterExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.gGetWaitPoints().clear();
                this.gGetWaitPoints().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.gSetSymbol((String)newValue);
                return;
            }
            case 21: {
                this.gGetReadVariables().clear();
                this.gGetReadVariables().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.gGetWrittenVariables().clear();
                this.gGetWrittenVariables().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.gGetDataReadAccess().clear();
                this.gGetDataReadAccess().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.gGetDataWriteAccess().clear();
                this.gGetDataWriteAccess().addAll((Collection)newValue);
                return;
            }
            case 25: {
                this.gGetDataSendPoints().clear();
                this.gGetDataSendPoints().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.gGetDataReceivePoints().clear();
                this.gGetDataReceivePoints().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.gGetServerCallPoints().clear();
                this.gGetServerCallPoints().addAll((Collection)newValue);
                return;
            }
            case 28: {
                this.setInternalBehavior((InternalBehavior)newValue);
                return;
            }
            case 29: {
                this.setBswEntity((BswModuleEntity)newValue);
                return;
            }
            case 30: {
                this.getCalprmAccess().clear();
                this.getCalprmAccess().addAll((Collection)newValue);
                return;
            }
            case 31: {
                this.setCanBeInvokedConcurrently((Boolean)newValue);
                return;
            }
            case 32: {
                this.getCanEnterExclusiveAreas().clear();
                this.getCanEnterExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 33: {
                this.getDataReadAccess().clear();
                this.getDataReadAccess().addAll((Collection)newValue);
                return;
            }
            case 34: {
                this.getDataReceivePoints().clear();
                this.getDataReceivePoints().addAll((Collection)newValue);
                return;
            }
            case 35: {
                this.getDataSendPoints().clear();
                this.getDataSendPoints().addAll((Collection)newValue);
                return;
            }
            case 36: {
                this.getDataWriteAccess().clear();
                this.getDataWriteAccess().addAll((Collection)newValue);
                return;
            }
            case 37: {
                this.setMinimumStartInterval((Double)newValue);
                return;
            }
            case 38: {
                this.getModeSwitchPoints().clear();
                this.getModeSwitchPoints().addAll((Collection)newValue);
                return;
            }
            case 39: {
                this.getPerInstanceCalprmAccess().clear();
                this.getPerInstanceCalprmAccess().addAll((Collection)newValue);
                return;
            }
            case 40: {
                this.getReadVariables().clear();
                this.getReadVariables().addAll((Collection)newValue);
                return;
            }
            case 41: {
                this.getRunsInsideExclusiveAreas().clear();
                this.getRunsInsideExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 42: {
                this.getServerCallPoints().clear();
                this.getServerCallPoints().addAll((Collection)newValue);
                return;
            }
            case 43: {
                this.getSharedCalprmAccess().clear();
                this.getSharedCalprmAccess().addAll((Collection)newValue);
                return;
            }
            case 44: {
                this.setSymbol((String)newValue);
                return;
            }
            case 45: {
                this.getWaitPoints().clear();
                this.getWaitPoints().addAll((Collection)newValue);
                return;
            }
            case 46: {
                this.getWrittenVariables().clear();
                this.getWrittenVariables().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.gGetRunsInsideExclusiveAreas().clear();
                return;
            }
            case 18: {
                this.gGetCanEnterExclusiveAreas().clear();
                return;
            }
            case 19: {
                this.gGetWaitPoints().clear();
                return;
            }
            case 20: {
                this.gUnsetSymbol();
                return;
            }
            case 21: {
                this.gGetReadVariables().clear();
                return;
            }
            case 22: {
                this.gGetWrittenVariables().clear();
                return;
            }
            case 23: {
                this.gGetDataReadAccess().clear();
                return;
            }
            case 24: {
                this.gGetDataWriteAccess().clear();
                return;
            }
            case 25: {
                this.gGetDataSendPoints().clear();
                return;
            }
            case 26: {
                this.gGetDataReceivePoints().clear();
                return;
            }
            case 27: {
                this.gGetServerCallPoints().clear();
                return;
            }
            case 28: {
                this.setInternalBehavior(null);
                return;
            }
            case 29: {
                this.setBswEntity(null);
                return;
            }
            case 30: {
                this.getCalprmAccess().clear();
                return;
            }
            case 31: {
                this.unsetCanBeInvokedConcurrently();
                return;
            }
            case 32: {
                this.getCanEnterExclusiveAreas().clear();
                return;
            }
            case 33: {
                this.getDataReadAccess().clear();
                return;
            }
            case 34: {
                this.getDataReceivePoints().clear();
                return;
            }
            case 35: {
                this.getDataSendPoints().clear();
                return;
            }
            case 36: {
                this.getDataWriteAccess().clear();
                return;
            }
            case 37: {
                this.unsetMinimumStartInterval();
                return;
            }
            case 38: {
                this.getModeSwitchPoints().clear();
                return;
            }
            case 39: {
                this.getPerInstanceCalprmAccess().clear();
                return;
            }
            case 40: {
                this.getReadVariables().clear();
                return;
            }
            case 41: {
                this.getRunsInsideExclusiveAreas().clear();
                return;
            }
            case 42: {
                this.getServerCallPoints().clear();
                return;
            }
            case 43: {
                this.getSharedCalprmAccess().clear();
                return;
            }
            case 44: {
                this.unsetSymbol();
                return;
            }
            case 45: {
                this.getWaitPoints().clear();
                return;
            }
            case 46: {
                this.getWrittenVariables().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return !this.gGetRunsInsideExclusiveAreas().isEmpty();
            }
            case 18: {
                return !this.gGetCanEnterExclusiveAreas().isEmpty();
            }
            case 19: {
                return !this.gGetWaitPoints().isEmpty();
            }
            case 20: {
                return this.gIsSetSymbol();
            }
            case 21: {
                return !this.gGetReadVariables().isEmpty();
            }
            case 22: {
                return !this.gGetWrittenVariables().isEmpty();
            }
            case 23: {
                return !this.gGetDataReadAccess().isEmpty();
            }
            case 24: {
                return !this.gGetDataWriteAccess().isEmpty();
            }
            case 25: {
                return !this.gGetDataSendPoints().isEmpty();
            }
            case 26: {
                return !this.gGetDataReceivePoints().isEmpty();
            }
            case 27: {
                return !this.gGetServerCallPoints().isEmpty();
            }
            case 28: {
                return this.getInternalBehavior() != null;
            }
            case 29: {
                return this.bswEntity != null;
            }
            case 30: {
                return this.calprmAccess != null && !this.calprmAccess.isEmpty();
            }
            case 31: {
                return this.isSetCanBeInvokedConcurrently();
            }
            case 32: {
                return this.canEnterExclusiveAreas != null && !this.canEnterExclusiveAreas.isEmpty();
            }
            case 33: {
                return this.dataReadAccess != null && !this.dataReadAccess.isEmpty();
            }
            case 34: {
                return this.dataReceivePoints != null && !this.dataReceivePoints.isEmpty();
            }
            case 35: {
                return this.dataSendPoints != null && !this.dataSendPoints.isEmpty();
            }
            case 36: {
                return this.dataWriteAccess != null && !this.dataWriteAccess.isEmpty();
            }
            case 37: {
                return this.isSetMinimumStartInterval();
            }
            case 38: {
                return this.modeSwitchPoints != null && !this.modeSwitchPoints.isEmpty();
            }
            case 39: {
                return this.perInstanceCalprmAccess != null && !this.perInstanceCalprmAccess.isEmpty();
            }
            case 40: {
                return this.readVariables != null && !this.readVariables.isEmpty();
            }
            case 41: {
                return this.runsInsideExclusiveAreas != null && !this.runsInsideExclusiveAreas.isEmpty();
            }
            case 42: {
                return this.serverCallPoints != null && !this.serverCallPoints.isEmpty();
            }
            case 43: {
                return this.sharedCalprmAccess != null && !this.sharedCalprmAccess.isEmpty();
            }
            case 44: {
                return this.isSetSymbol();
            }
            case 45: {
                return this.waitPoints != null && !this.waitPoints.isEmpty();
            }
            case 46: {
                return this.writtenVariables != null && !this.writtenVariables.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GExecutableEntity.class) {
            switch (derivedFeatureID) {
                case 17: {
                    return 6;
                }
                case 18: {
                    return 7;
                }
            }
            return -1;
        }
        if (baseClass == GRunnableEntity.class) {
            switch (derivedFeatureID) {
                case 19: {
                    return 8;
                }
                case 20: {
                    return 9;
                }
                case 21: {
                    return 10;
                }
                case 22: {
                    return 11;
                }
                case 23: {
                    return 12;
                }
                case 24: {
                    return 13;
                }
                case 25: {
                    return 14;
                }
                case 26: {
                    return 15;
                }
                case 27: {
                    return 16;
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
                    return 17;
                }
                case 7: {
                    return 18;
                }
            }
            return -1;
        }
        if (baseClass == GRunnableEntity.class) {
            switch (baseFeatureID) {
                case 8: {
                    return 19;
                }
                case 9: {
                    return 20;
                }
                case 10: {
                    return 21;
                }
                case 11: {
                    return 22;
                }
                case 12: {
                    return 23;
                }
                case 13: {
                    return 24;
                }
                case 14: {
                    return 25;
                }
                case 15: {
                    return 26;
                }
                case 16: {
                    return 27;
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
        result.append(" (canBeInvokedConcurrently: ");
        if (this.canBeInvokedConcurrentlyESet) {
            result.append(this.canBeInvokedConcurrently);
        } else {
            result.append("<unset>");
        }
        result.append(", minimumStartInterval: ");
        if (this.minimumStartIntervalESet) {
            result.append(this.minimumStartInterval);
        } else {
            result.append("<unset>");
        }
        result.append(", symbol: ");
        if (this.symbolESet) {
            result.append(this.symbol);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

