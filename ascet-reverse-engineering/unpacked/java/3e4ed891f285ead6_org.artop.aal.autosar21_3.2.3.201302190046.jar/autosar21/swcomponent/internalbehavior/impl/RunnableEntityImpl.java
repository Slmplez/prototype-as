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
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreEList$UnmodifiableEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.swcomponent.internalbehavior.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.internalbehavior.InternalBehavior;
import autosar21.swcomponent.internalbehavior.InternalbehaviorPackage;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.internalbehavior.dataelements.DataReadAccess;
import autosar21.swcomponent.internalbehavior.dataelements.DataReceivePoint;
import autosar21.swcomponent.internalbehavior.dataelements.DataSendPoint;
import autosar21.swcomponent.internalbehavior.dataelements.DataWriteAccess;
import autosar21.swcomponent.internalbehavior.exclusivearea.ExclusiveArea;
import autosar21.swcomponent.internalbehavior.exclusivearea.RunnableEntityCanEnterExclusiveArea;
import autosar21.swcomponent.internalbehavior.exclusivearea.RunnableEntityRunsInExclusiveArea;
import autosar21.swcomponent.internalbehavior.interrunnablecommunication.InterRunnableVariable;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar21.swcomponent.internalbehavior.rteevents.WaitPoint;
import autosar21.swcomponent.internalbehavior.servercall.ServerCallPoint;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmAccess;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea;
import gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GWaitPoint;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GServerCallPoint;
import java.util.ArrayList;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RunnableEntityImpl
extends IdentifiableImpl
implements RunnableEntity,
IReferringClass {
    protected static final String GSYMBOL_EDEFAULT = null;
    protected EList<CalprmAccess> calprmAccess;
    protected static final Boolean CAN_BE_INVOKED_CONCURRENTLY_EDEFAULT = Boolean.FALSE;
    protected Boolean canBeInvokedConcurrently = CAN_BE_INVOKED_CONCURRENTLY_EDEFAULT;
    protected boolean canBeInvokedConcurrentlyESet;
    protected EList<DataReadAccess> dataReadAccess;
    protected EList<DataReceivePoint> dataReceivePoints;
    protected EList<DataSendPoint> dataSendPoints;
    protected EList<DataWriteAccess> dataWriteAccess;
    protected EList<RunnableEntityRunsInExclusiveArea> insideExclusiveAreas;
    protected static final Double MINIMUM_START_INTERVAL_EDEFAULT = new Double(0.0);
    protected Double minimumStartInterval = MINIMUM_START_INTERVAL_EDEFAULT;
    protected boolean minimumStartIntervalESet;
    protected EList<ModeSwitchPoint> modeSwitchPoints;
    protected EList<CalprmElementPrototype> perInstanceCalprmAccess;
    protected EList<InterRunnableVariable> readVariables;
    protected EList<ServerCallPoint> serverCallPoints;
    protected EList<CalprmElementPrototype> sharedCalprmAccess;
    protected static final String SYMBOL_EDEFAULT = "";
    protected String symbol = "";
    protected boolean symbolESet;
    protected EList<RunnableEntityCanEnterExclusiveArea> usesExclusiveAreas;
    protected EList<WaitPoint> waitPoints;
    protected EList<InterRunnableVariable> writtenVariables;

    protected RunnableEntityImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InternalbehaviorPackage.Literals.RUNNABLE_ENTITY;
    }

    public EList<GExclusiveArea> gGetRunsInsideExclusiveAreas() {
        BasicEList untypedList = new BasicEList();
        untypedList.addAll(this.getInsideExclusiveAreas());
        ArrayList<ExclusiveArea> resultObjects = new ArrayList<ExclusiveArea>();
        resultObjects.clear();
        for (Object previousObject : untypedList) {
            ExclusiveArea resultObject = ((RunnableEntityRunsInExclusiveArea)previousObject).getExclusiveArea();
            if (resultObject == null) continue;
            resultObjects.add(resultObject);
        }
        untypedList.clear();
        untypedList.addAll(resultObjects);
        return new EcoreEList.UnmodifiableEList((InternalEObject)this, this.eClass().getEStructuralFeature("gRunsInsideExclusiveAreas"), untypedList.size(), untypedList.toArray());
    }

    public EList<GExclusiveArea> gGetCanEnterExclusiveAreas() {
        BasicEList untypedList = new BasicEList();
        untypedList.addAll(this.getUsesExclusiveAreas());
        ArrayList<ExclusiveArea> resultObjects = new ArrayList<ExclusiveArea>();
        resultObjects.clear();
        for (Object previousObject : untypedList) {
            ExclusiveArea resultObject = ((RunnableEntityCanEnterExclusiveArea)previousObject).getExclusiveArea();
            if (resultObject == null) continue;
            resultObjects.add(resultObject);
        }
        untypedList.clear();
        untypedList.addAll(resultObjects);
        return new EcoreEList.UnmodifiableEList((InternalEObject)this, this.eClass().getEStructuralFeature("gCanEnterExclusiveAreas"), untypedList.size(), untypedList.toArray());
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
        if (this.eContainerFeatureID() != 27) {
            return null;
        }
        return (InternalBehavior)this.eContainer();
    }

    public NotificationChain basicSetInternalBehavior(InternalBehavior newInternalBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newInternalBehavior, 27, msgs);
        return msgs;
    }

    @Override
    public void setInternalBehavior(InternalBehavior newInternalBehavior) {
        if (newInternalBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 27 && newInternalBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newInternalBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newInternalBehavior != null) {
                msgs = ((InternalEObject)newInternalBehavior).eInverseAdd((InternalEObject)this, 32, InternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetInternalBehavior(newInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)newInternalBehavior, (Object)newInternalBehavior));
        }
    }

    @Override
    public EList<CalprmAccess> getCalprmAccess() {
        if (this.calprmAccess == null) {
            this.calprmAccess = new EObjectContainmentWithInverseEList(CalprmAccess.class, (InternalEObject)this, 28, 17);
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldCanBeInvokedConcurrently, (Object)this.canBeInvokedConcurrently, !oldCanBeInvokedConcurrentlyESet));
        }
    }

    @Override
    public void unsetCanBeInvokedConcurrently() {
        Boolean oldCanBeInvokedConcurrently = this.canBeInvokedConcurrently;
        boolean oldCanBeInvokedConcurrentlyESet = this.canBeInvokedConcurrentlyESet;
        this.canBeInvokedConcurrently = CAN_BE_INVOKED_CONCURRENTLY_EDEFAULT;
        this.canBeInvokedConcurrentlyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldCanBeInvokedConcurrently, (Object)CAN_BE_INVOKED_CONCURRENTLY_EDEFAULT, oldCanBeInvokedConcurrentlyESet));
        }
    }

    @Override
    public boolean isSetCanBeInvokedConcurrently() {
        return this.canBeInvokedConcurrentlyESet;
    }

    @Override
    public EList<DataReadAccess> getDataReadAccess() {
        if (this.dataReadAccess == null) {
            this.dataReadAccess = new EObjectContainmentWithInverseEList(DataReadAccess.class, (InternalEObject)this, 30, 17);
        }
        return this.dataReadAccess;
    }

    @Override
    public EList<DataReceivePoint> getDataReceivePoints() {
        if (this.dataReceivePoints == null) {
            this.dataReceivePoints = new EObjectContainmentWithInverseEList(DataReceivePoint.class, (InternalEObject)this, 31, 17);
        }
        return this.dataReceivePoints;
    }

    @Override
    public EList<DataSendPoint> getDataSendPoints() {
        if (this.dataSendPoints == null) {
            this.dataSendPoints = new EObjectContainmentWithInverseEList(DataSendPoint.class, (InternalEObject)this, 32, 17);
        }
        return this.dataSendPoints;
    }

    @Override
    public EList<DataWriteAccess> getDataWriteAccess() {
        if (this.dataWriteAccess == null) {
            this.dataWriteAccess = new EObjectContainmentWithInverseEList(DataWriteAccess.class, (InternalEObject)this, 33, 17);
        }
        return this.dataWriteAccess;
    }

    @Override
    public EList<RunnableEntityRunsInExclusiveArea> getInsideExclusiveAreas() {
        if (this.insideExclusiveAreas == null) {
            this.insideExclusiveAreas = new EObjectContainmentWithInverseEList(RunnableEntityRunsInExclusiveArea.class, (InternalEObject)this, 34, 4);
        }
        return this.insideExclusiveAreas;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldMinimumStartInterval, (Object)this.minimumStartInterval, !oldMinimumStartIntervalESet));
        }
    }

    @Override
    public void unsetMinimumStartInterval() {
        Double oldMinimumStartInterval = this.minimumStartInterval;
        boolean oldMinimumStartIntervalESet = this.minimumStartIntervalESet;
        this.minimumStartInterval = MINIMUM_START_INTERVAL_EDEFAULT;
        this.minimumStartIntervalESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 35, (Object)oldMinimumStartInterval, (Object)MINIMUM_START_INTERVAL_EDEFAULT, oldMinimumStartIntervalESet));
        }
    }

    @Override
    public boolean isSetMinimumStartInterval() {
        return this.minimumStartIntervalESet;
    }

    @Override
    public EList<ModeSwitchPoint> getModeSwitchPoints() {
        if (this.modeSwitchPoints == null) {
            this.modeSwitchPoints = new EObjectContainmentWithInverseEList(ModeSwitchPoint.class, (InternalEObject)this, 36, 17);
        }
        return this.modeSwitchPoints;
    }

    @Override
    public EList<CalprmElementPrototype> getPerInstanceCalprmAccess() {
        if (this.perInstanceCalprmAccess == null) {
            this.perInstanceCalprmAccess = new EObjectResolvingReferringEList(CalprmElementPrototype.class, (InternalEObject)this, 37);
        }
        return this.perInstanceCalprmAccess;
    }

    @Override
    public EList<InterRunnableVariable> getReadVariables() {
        if (this.readVariables == null) {
            this.readVariables = new EObjectResolvingReferringEList(InterRunnableVariable.class, (InternalEObject)this, 38);
        }
        return this.readVariables;
    }

    @Override
    public EList<ServerCallPoint> getServerCallPoints() {
        if (this.serverCallPoints == null) {
            this.serverCallPoints = new EObjectContainmentWithInverseEList(ServerCallPoint.class, (InternalEObject)this, 39, 17);
        }
        return this.serverCallPoints;
    }

    @Override
    public EList<CalprmElementPrototype> getSharedCalprmAccess() {
        if (this.sharedCalprmAccess == null) {
            this.sharedCalprmAccess = new EObjectResolvingReferringEList(CalprmElementPrototype.class, (InternalEObject)this, 40);
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 41, (Object)oldSymbol, (Object)this.symbol, !oldSymbolESet));
        }
    }

    @Override
    public void unsetSymbol() {
        String oldSymbol = this.symbol;
        boolean oldSymbolESet = this.symbolESet;
        this.symbol = SYMBOL_EDEFAULT;
        this.symbolESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 41, (Object)oldSymbol, (Object)SYMBOL_EDEFAULT, oldSymbolESet));
        }
    }

    @Override
    public boolean isSetSymbol() {
        return this.symbolESet;
    }

    @Override
    public EList<RunnableEntityCanEnterExclusiveArea> getUsesExclusiveAreas() {
        if (this.usesExclusiveAreas == null) {
            this.usesExclusiveAreas = new EObjectContainmentWithInverseEList(RunnableEntityCanEnterExclusiveArea.class, (InternalEObject)this, 42, 4);
        }
        return this.usesExclusiveAreas;
    }

    @Override
    public EList<WaitPoint> getWaitPoints() {
        if (this.waitPoints == null) {
            this.waitPoints = new EObjectContainmentWithInverseEList(WaitPoint.class, (InternalEObject)this, 43, 18);
        }
        return this.waitPoints;
    }

    @Override
    public EList<InterRunnableVariable> getWrittenVariables() {
        if (this.writtenVariables == null) {
            this.writtenVariables = new EObjectResolvingReferringEList(InterRunnableVariable.class, (InternalEObject)this, 44);
        }
        return this.writtenVariables;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 27: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetInternalBehavior((InternalBehavior)otherEnd, msgs);
            }
            case 28: {
                return ((InternalEList)this.getCalprmAccess()).basicAdd((Object)otherEnd, msgs);
            }
            case 30: {
                return ((InternalEList)this.getDataReadAccess()).basicAdd((Object)otherEnd, msgs);
            }
            case 31: {
                return ((InternalEList)this.getDataReceivePoints()).basicAdd((Object)otherEnd, msgs);
            }
            case 32: {
                return ((InternalEList)this.getDataSendPoints()).basicAdd((Object)otherEnd, msgs);
            }
            case 33: {
                return ((InternalEList)this.getDataWriteAccess()).basicAdd((Object)otherEnd, msgs);
            }
            case 34: {
                return ((InternalEList)this.getInsideExclusiveAreas()).basicAdd((Object)otherEnd, msgs);
            }
            case 36: {
                return ((InternalEList)this.getModeSwitchPoints()).basicAdd((Object)otherEnd, msgs);
            }
            case 39: {
                return ((InternalEList)this.getServerCallPoints()).basicAdd((Object)otherEnd, msgs);
            }
            case 42: {
                return ((InternalEList)this.getUsesExclusiveAreas()).basicAdd((Object)otherEnd, msgs);
            }
            case 43: {
                return ((InternalEList)this.getWaitPoints()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 27: {
                return this.basicSetInternalBehavior(null, msgs);
            }
            case 28: {
                return ((InternalEList)this.getCalprmAccess()).basicRemove((Object)otherEnd, msgs);
            }
            case 30: {
                return ((InternalEList)this.getDataReadAccess()).basicRemove((Object)otherEnd, msgs);
            }
            case 31: {
                return ((InternalEList)this.getDataReceivePoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 32: {
                return ((InternalEList)this.getDataSendPoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 33: {
                return ((InternalEList)this.getDataWriteAccess()).basicRemove((Object)otherEnd, msgs);
            }
            case 34: {
                return ((InternalEList)this.getInsideExclusiveAreas()).basicRemove((Object)otherEnd, msgs);
            }
            case 36: {
                return ((InternalEList)this.getModeSwitchPoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 39: {
                return ((InternalEList)this.getServerCallPoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 42: {
                return ((InternalEList)this.getUsesExclusiveAreas()).basicRemove((Object)otherEnd, msgs);
            }
            case 43: {
                return ((InternalEList)this.getWaitPoints()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 27: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 32, InternalBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.gGetRunsInsideExclusiveAreas();
            }
            case 17: {
                return this.gGetCanEnterExclusiveAreas();
            }
            case 18: {
                return this.gGetWaitPoints();
            }
            case 19: {
                return this.gGetSymbol();
            }
            case 20: {
                return this.gGetReadVariables();
            }
            case 21: {
                return this.gGetWrittenVariables();
            }
            case 22: {
                return this.gGetDataReadAccess();
            }
            case 23: {
                return this.gGetDataWriteAccess();
            }
            case 24: {
                return this.gGetDataSendPoints();
            }
            case 25: {
                return this.gGetDataReceivePoints();
            }
            case 26: {
                return this.gGetServerCallPoints();
            }
            case 27: {
                return this.getInternalBehavior();
            }
            case 28: {
                return this.getCalprmAccess();
            }
            case 29: {
                return this.getCanBeInvokedConcurrently();
            }
            case 30: {
                return this.getDataReadAccess();
            }
            case 31: {
                return this.getDataReceivePoints();
            }
            case 32: {
                return this.getDataSendPoints();
            }
            case 33: {
                return this.getDataWriteAccess();
            }
            case 34: {
                return this.getInsideExclusiveAreas();
            }
            case 35: {
                return this.getMinimumStartInterval();
            }
            case 36: {
                return this.getModeSwitchPoints();
            }
            case 37: {
                return this.getPerInstanceCalprmAccess();
            }
            case 38: {
                return this.getReadVariables();
            }
            case 39: {
                return this.getServerCallPoints();
            }
            case 40: {
                return this.getSharedCalprmAccess();
            }
            case 41: {
                return this.getSymbol();
            }
            case 42: {
                return this.getUsesExclusiveAreas();
            }
            case 43: {
                return this.getWaitPoints();
            }
            case 44: {
                return this.getWrittenVariables();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.gGetRunsInsideExclusiveAreas().clear();
                this.gGetRunsInsideExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 17: {
                this.gGetCanEnterExclusiveAreas().clear();
                this.gGetCanEnterExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 18: {
                this.gGetWaitPoints().clear();
                this.gGetWaitPoints().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.gSetSymbol((String)newValue);
                return;
            }
            case 20: {
                this.gGetReadVariables().clear();
                this.gGetReadVariables().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.gGetWrittenVariables().clear();
                this.gGetWrittenVariables().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.gGetDataReadAccess().clear();
                this.gGetDataReadAccess().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.gGetDataWriteAccess().clear();
                this.gGetDataWriteAccess().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.gGetDataSendPoints().clear();
                this.gGetDataSendPoints().addAll((Collection)newValue);
                return;
            }
            case 25: {
                this.gGetDataReceivePoints().clear();
                this.gGetDataReceivePoints().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.gGetServerCallPoints().clear();
                this.gGetServerCallPoints().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.setInternalBehavior((InternalBehavior)newValue);
                return;
            }
            case 28: {
                this.getCalprmAccess().clear();
                this.getCalprmAccess().addAll((Collection)newValue);
                return;
            }
            case 29: {
                this.setCanBeInvokedConcurrently((Boolean)newValue);
                return;
            }
            case 30: {
                this.getDataReadAccess().clear();
                this.getDataReadAccess().addAll((Collection)newValue);
                return;
            }
            case 31: {
                this.getDataReceivePoints().clear();
                this.getDataReceivePoints().addAll((Collection)newValue);
                return;
            }
            case 32: {
                this.getDataSendPoints().clear();
                this.getDataSendPoints().addAll((Collection)newValue);
                return;
            }
            case 33: {
                this.getDataWriteAccess().clear();
                this.getDataWriteAccess().addAll((Collection)newValue);
                return;
            }
            case 34: {
                this.getInsideExclusiveAreas().clear();
                this.getInsideExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 35: {
                this.setMinimumStartInterval((Double)newValue);
                return;
            }
            case 36: {
                this.getModeSwitchPoints().clear();
                this.getModeSwitchPoints().addAll((Collection)newValue);
                return;
            }
            case 37: {
                this.getPerInstanceCalprmAccess().clear();
                this.getPerInstanceCalprmAccess().addAll((Collection)newValue);
                return;
            }
            case 38: {
                this.getReadVariables().clear();
                this.getReadVariables().addAll((Collection)newValue);
                return;
            }
            case 39: {
                this.getServerCallPoints().clear();
                this.getServerCallPoints().addAll((Collection)newValue);
                return;
            }
            case 40: {
                this.getSharedCalprmAccess().clear();
                this.getSharedCalprmAccess().addAll((Collection)newValue);
                return;
            }
            case 41: {
                this.setSymbol((String)newValue);
                return;
            }
            case 42: {
                this.getUsesExclusiveAreas().clear();
                this.getUsesExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 43: {
                this.getWaitPoints().clear();
                this.getWaitPoints().addAll((Collection)newValue);
                return;
            }
            case 44: {
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
            case 16: {
                this.gGetRunsInsideExclusiveAreas().clear();
                return;
            }
            case 17: {
                this.gGetCanEnterExclusiveAreas().clear();
                return;
            }
            case 18: {
                this.gGetWaitPoints().clear();
                return;
            }
            case 19: {
                this.gUnsetSymbol();
                return;
            }
            case 20: {
                this.gGetReadVariables().clear();
                return;
            }
            case 21: {
                this.gGetWrittenVariables().clear();
                return;
            }
            case 22: {
                this.gGetDataReadAccess().clear();
                return;
            }
            case 23: {
                this.gGetDataWriteAccess().clear();
                return;
            }
            case 24: {
                this.gGetDataSendPoints().clear();
                return;
            }
            case 25: {
                this.gGetDataReceivePoints().clear();
                return;
            }
            case 26: {
                this.gGetServerCallPoints().clear();
                return;
            }
            case 27: {
                this.setInternalBehavior(null);
                return;
            }
            case 28: {
                this.getCalprmAccess().clear();
                return;
            }
            case 29: {
                this.unsetCanBeInvokedConcurrently();
                return;
            }
            case 30: {
                this.getDataReadAccess().clear();
                return;
            }
            case 31: {
                this.getDataReceivePoints().clear();
                return;
            }
            case 32: {
                this.getDataSendPoints().clear();
                return;
            }
            case 33: {
                this.getDataWriteAccess().clear();
                return;
            }
            case 34: {
                this.getInsideExclusiveAreas().clear();
                return;
            }
            case 35: {
                this.unsetMinimumStartInterval();
                return;
            }
            case 36: {
                this.getModeSwitchPoints().clear();
                return;
            }
            case 37: {
                this.getPerInstanceCalprmAccess().clear();
                return;
            }
            case 38: {
                this.getReadVariables().clear();
                return;
            }
            case 39: {
                this.getServerCallPoints().clear();
                return;
            }
            case 40: {
                this.getSharedCalprmAccess().clear();
                return;
            }
            case 41: {
                this.unsetSymbol();
                return;
            }
            case 42: {
                this.getUsesExclusiveAreas().clear();
                return;
            }
            case 43: {
                this.getWaitPoints().clear();
                return;
            }
            case 44: {
                this.getWrittenVariables().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return !this.gGetRunsInsideExclusiveAreas().isEmpty();
            }
            case 17: {
                return !this.gGetCanEnterExclusiveAreas().isEmpty();
            }
            case 18: {
                return !this.gGetWaitPoints().isEmpty();
            }
            case 19: {
                return this.gIsSetSymbol();
            }
            case 20: {
                return !this.gGetReadVariables().isEmpty();
            }
            case 21: {
                return !this.gGetWrittenVariables().isEmpty();
            }
            case 22: {
                return !this.gGetDataReadAccess().isEmpty();
            }
            case 23: {
                return !this.gGetDataWriteAccess().isEmpty();
            }
            case 24: {
                return !this.gGetDataSendPoints().isEmpty();
            }
            case 25: {
                return !this.gGetDataReceivePoints().isEmpty();
            }
            case 26: {
                return !this.gGetServerCallPoints().isEmpty();
            }
            case 27: {
                return this.getInternalBehavior() != null;
            }
            case 28: {
                return this.calprmAccess != null && !this.calprmAccess.isEmpty();
            }
            case 29: {
                return this.isSetCanBeInvokedConcurrently();
            }
            case 30: {
                return this.dataReadAccess != null && !this.dataReadAccess.isEmpty();
            }
            case 31: {
                return this.dataReceivePoints != null && !this.dataReceivePoints.isEmpty();
            }
            case 32: {
                return this.dataSendPoints != null && !this.dataSendPoints.isEmpty();
            }
            case 33: {
                return this.dataWriteAccess != null && !this.dataWriteAccess.isEmpty();
            }
            case 34: {
                return this.insideExclusiveAreas != null && !this.insideExclusiveAreas.isEmpty();
            }
            case 35: {
                return this.isSetMinimumStartInterval();
            }
            case 36: {
                return this.modeSwitchPoints != null && !this.modeSwitchPoints.isEmpty();
            }
            case 37: {
                return this.perInstanceCalprmAccess != null && !this.perInstanceCalprmAccess.isEmpty();
            }
            case 38: {
                return this.readVariables != null && !this.readVariables.isEmpty();
            }
            case 39: {
                return this.serverCallPoints != null && !this.serverCallPoints.isEmpty();
            }
            case 40: {
                return this.sharedCalprmAccess != null && !this.sharedCalprmAccess.isEmpty();
            }
            case 41: {
                return this.isSetSymbol();
            }
            case 42: {
                return this.usesExclusiveAreas != null && !this.usesExclusiveAreas.isEmpty();
            }
            case 43: {
                return this.waitPoints != null && !this.waitPoints.isEmpty();
            }
            case 44: {
                return this.writtenVariables != null && !this.writtenVariables.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GExecutableEntity.class) {
            switch (derivedFeatureID) {
                case 16: {
                    return 6;
                }
                case 17: {
                    return 7;
                }
            }
            return -1;
        }
        if (baseClass == GRunnableEntity.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 8;
                }
                case 19: {
                    return 9;
                }
                case 20: {
                    return 10;
                }
                case 21: {
                    return 11;
                }
                case 22: {
                    return 12;
                }
                case 23: {
                    return 13;
                }
                case 24: {
                    return 14;
                }
                case 25: {
                    return 15;
                }
                case 26: {
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
                    return 16;
                }
                case 7: {
                    return 17;
                }
            }
            return -1;
        }
        if (baseClass == GRunnableEntity.class) {
            switch (baseFeatureID) {
                case 8: {
                    return 18;
                }
                case 9: {
                    return 19;
                }
                case 10: {
                    return 20;
                }
                case 11: {
                    return 21;
                }
                case 12: {
                    return 22;
                }
                case 13: {
                    return 23;
                }
                case 14: {
                    return 24;
                }
                case 15: {
                    return 25;
                }
                case 16: {
                    return 26;
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

