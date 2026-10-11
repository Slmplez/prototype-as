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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreEList$UnmodifiableEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.swcinternalbehavior.impl;

import autosar40.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar40.commonstructure.internalbehavior.ExclusiveArea;
import autosar40.commonstructure.internalbehavior.ExecutableEntity;
import autosar40.genericstructure.abstractstructure.impl.AtpStructureElementImpl;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import autosar40.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarVariableRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.ParameterAccess;
import autosar40.swcomponent.swcinternalbehavior.dataelements.VariableAccess;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeAccessPoint;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar40.swcomponent.swcinternalbehavior.rteevents.WaitPoint;
import autosar40.swcomponent.swcinternalbehavior.runnableentity.RunnableEntityArgument;
import autosar40.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallResultPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.ServerCallPoint;
import autosar40.swcomponent.swcinternalbehavior.trigger.ExternalTriggeringPoint;
import autosar40.swcomponent.swcinternalbehavior.trigger.InternalTriggeringPoint;
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
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RunnableEntityImpl
extends AtpStructureElementImpl
implements RunnableEntity,
IReferringClass {
    protected EList<ExclusiveArea> canEnterExclusiveAreas;
    protected static final Double MINIMUM_START_INTERVAL_EDEFAULT = new Double(0.0);
    protected Double minimumStartInterval = MINIMUM_START_INTERVAL_EDEFAULT;
    protected boolean minimumStartIntervalESet;
    protected EList<ExclusiveArea> runsInsideExclusiveAreas;
    protected SwAddrMethod swAddrMethod;
    protected static final String GSYMBOL_EDEFAULT = null;
    protected EList<RunnableEntityArgument> arguments;
    protected EList<AsynchronousServerCallResultPoint> asynchronousServerCallResultPoints;
    protected static final Boolean CAN_BE_INVOKED_CONCURRENTLY_EDEFAULT = Boolean.FALSE;
    protected Boolean canBeInvokedConcurrently = CAN_BE_INVOKED_CONCURRENTLY_EDEFAULT;
    protected boolean canBeInvokedConcurrentlyESet;
    protected EList<VariableAccess> dataReadAccess;
    protected EList<VariableAccess> dataReceivePointByArguments;
    protected EList<VariableAccess> dataReceivePointByValues;
    protected EList<VariableAccess> dataSendPoints;
    protected EList<VariableAccess> dataWriteAccess;
    protected EList<ExternalTriggeringPoint> externalTriggeringPoints;
    protected EList<InternalTriggeringPoint> internalTriggeringPoints;
    protected EList<ModeAccessPoint> modeAccessPoints;
    protected EList<ModeSwitchPoint> modeSwitchPoints;
    protected EList<ParameterAccess> parameterAccess;
    protected EList<VariableAccess> readLocalVariables;
    protected EList<ServerCallPoint> serverCallPoints;
    protected static final String SYMBOL_EDEFAULT = "";
    protected String symbol = "";
    protected boolean symbolESet;
    protected EList<WaitPoint> waitPoints;
    protected EList<VariableAccess> writtenLocalVariables;
    protected VariationPoint variationPoint;

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

    @Override
    public EList<ExclusiveArea> getCanEnterExclusiveAreas() {
        if (this.canEnterExclusiveAreas == null) {
            this.canEnterExclusiveAreas = new EObjectResolvingReferringEList(ExclusiveArea.class, (InternalEObject)this, 21);
        }
        return this.canEnterExclusiveAreas;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldMinimumStartInterval, (Object)this.minimumStartInterval, !oldMinimumStartIntervalESet));
        }
    }

    @Override
    public void unsetMinimumStartInterval() {
        Double oldMinimumStartInterval = this.minimumStartInterval;
        boolean oldMinimumStartIntervalESet = this.minimumStartIntervalESet;
        this.minimumStartInterval = MINIMUM_START_INTERVAL_EDEFAULT;
        this.minimumStartIntervalESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldMinimumStartInterval, (Object)MINIMUM_START_INTERVAL_EDEFAULT, oldMinimumStartIntervalESet));
        }
    }

    @Override
    public boolean isSetMinimumStartInterval() {
        return this.minimumStartIntervalESet;
    }

    @Override
    public EList<ExclusiveArea> getRunsInsideExclusiveAreas() {
        if (this.runsInsideExclusiveAreas == null) {
            this.runsInsideExclusiveAreas = new EObjectResolvingReferringEList(ExclusiveArea.class, (InternalEObject)this, 23);
        }
        return this.runsInsideExclusiveAreas;
    }

    @Override
    public SwAddrMethod getSwAddrMethod() {
        if (this.swAddrMethod != null && this.swAddrMethod.eIsProxy()) {
            InternalEObject oldSwAddrMethod = (InternalEObject)this.swAddrMethod;
            this.swAddrMethod = (SwAddrMethod)this.eResolveProxy(oldSwAddrMethod);
            if (this.swAddrMethod != oldSwAddrMethod && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 24, (Object)oldSwAddrMethod, (Object)this.swAddrMethod));
            }
        }
        return this.swAddrMethod;
    }

    public SwAddrMethod basicGetSwAddrMethod() {
        return this.swAddrMethod;
    }

    @Override
    public void setSwAddrMethod(SwAddrMethod newSwAddrMethod) {
        SwAddrMethod oldSwAddrMethod = this.swAddrMethod;
        this.swAddrMethod = newSwAddrMethod;
        AutosarObjectUtil.setDest((EObject)this, (int)24, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldSwAddrMethod, (Object)this.swAddrMethod));
        }
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
        ARObject resultObject;
        BasicEList untypedList = new BasicEList();
        untypedList.addAll(this.getReadLocalVariables());
        ArrayList<AutosarVariableRef> resultObjects = new ArrayList<AutosarVariableRef>();
        resultObjects.clear();
        for (Object previousObject : untypedList) {
            resultObject = ((VariableAccess)previousObject).getAccessedVariable();
            if (resultObject == null) continue;
            resultObjects.add((AutosarVariableRef)resultObject);
        }
        untypedList.clear();
        untypedList.addAll(resultObjects);
        resultObjects.clear();
        for (Object previousObject : untypedList) {
            resultObject = ((AutosarVariableRef)previousObject).getLocalVariable();
            if (resultObject == null) continue;
            resultObjects.add((AutosarVariableRef)resultObject);
        }
        untypedList.clear();
        untypedList.addAll(resultObjects);
        return new EcoreEList.UnmodifiableEList((InternalEObject)this, this.eClass().getEStructuralFeature("gReadVariables"), untypedList.size(), untypedList.toArray());
    }

    public EList<GVariableDataPrototype> gGetWrittenVariables() {
        ARObject resultObject;
        BasicEList untypedList = new BasicEList();
        untypedList.addAll(this.getWrittenLocalVariables());
        ArrayList<AutosarVariableRef> resultObjects = new ArrayList<AutosarVariableRef>();
        resultObjects.clear();
        for (Object previousObject : untypedList) {
            resultObject = ((VariableAccess)previousObject).getAccessedVariable();
            if (resultObject == null) continue;
            resultObjects.add((AutosarVariableRef)resultObject);
        }
        untypedList.clear();
        untypedList.addAll(resultObjects);
        resultObjects.clear();
        for (Object previousObject : untypedList) {
            resultObject = ((AutosarVariableRef)previousObject).getLocalVariable();
            if (resultObject == null) continue;
            resultObjects.add((AutosarVariableRef)resultObject);
        }
        untypedList.clear();
        untypedList.addAll(resultObjects);
        return new EcoreEList.UnmodifiableEList((InternalEObject)this, this.eClass().getEStructuralFeature("gWrittenVariables"), untypedList.size(), untypedList.toArray());
    }

    public EList<GVariableAccess> gGetDataReadAccess() {
        EList<VariableAccess> untypedList = this.getDataReadAccess();
        return untypedList;
    }

    public EList<GVariableAccess> gGetDataWriteAccess() {
        EList<VariableAccess> untypedList = this.getDataWriteAccess();
        return untypedList;
    }

    public EList<GVariableAccess> gGetDataSendPoints() {
        EList<VariableAccess> untypedList = this.getDataSendPoints();
        return untypedList;
    }

    public EList<GVariableAccess> gGetDataReceivePoints() {
        EList<VariableAccess> untypedList = this.getDataReceivePointByArguments();
        return untypedList;
    }

    public EList<GServerCallPoint> gGetServerCallPoints() {
        EList<ServerCallPoint> untypedList = this.getServerCallPoints();
        return untypedList;
    }

    @Override
    public SwcInternalBehavior getSwcInternalBehavior() {
        if (this.eContainerFeatureID() != 34) {
            return null;
        }
        return (SwcInternalBehavior)this.eContainer();
    }

    public NotificationChain basicSetSwcInternalBehavior(SwcInternalBehavior newSwcInternalBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwcInternalBehavior, 34, msgs);
        return msgs;
    }

    @Override
    public void setSwcInternalBehavior(SwcInternalBehavior newSwcInternalBehavior) {
        if (newSwcInternalBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 34 && newSwcInternalBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwcInternalBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwcInternalBehavior != null) {
                msgs = ((InternalEObject)newSwcInternalBehavior).eInverseAdd((InternalEObject)this, 42, SwcInternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetSwcInternalBehavior(newSwcInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)newSwcInternalBehavior, (Object)newSwcInternalBehavior));
        }
    }

    @Override
    public EList<RunnableEntityArgument> getArguments() {
        if (this.arguments == null) {
            this.arguments = new EObjectContainmentWithInverseEList(RunnableEntityArgument.class, (InternalEObject)this, 35, 4);
        }
        return this.arguments;
    }

    @Override
    public EList<AsynchronousServerCallResultPoint> getAsynchronousServerCallResultPoints() {
        if (this.asynchronousServerCallResultPoints == null) {
            this.asynchronousServerCallResultPoints = new EObjectContainmentWithInverseEList(AsynchronousServerCallResultPoint.class, (InternalEObject)this, 36, 18);
        }
        return this.asynchronousServerCallResultPoints;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 37, (Object)oldCanBeInvokedConcurrently, (Object)this.canBeInvokedConcurrently, !oldCanBeInvokedConcurrentlyESet));
        }
    }

    @Override
    public void unsetCanBeInvokedConcurrently() {
        Boolean oldCanBeInvokedConcurrently = this.canBeInvokedConcurrently;
        boolean oldCanBeInvokedConcurrentlyESet = this.canBeInvokedConcurrentlyESet;
        this.canBeInvokedConcurrently = CAN_BE_INVOKED_CONCURRENTLY_EDEFAULT;
        this.canBeInvokedConcurrentlyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 37, (Object)oldCanBeInvokedConcurrently, (Object)CAN_BE_INVOKED_CONCURRENTLY_EDEFAULT, oldCanBeInvokedConcurrentlyESet));
        }
    }

    @Override
    public boolean isSetCanBeInvokedConcurrently() {
        return this.canBeInvokedConcurrentlyESet;
    }

    @Override
    public EList<VariableAccess> getDataReadAccess() {
        if (this.dataReadAccess == null) {
            this.dataReadAccess = new EObjectContainmentEList(VariableAccess.class, (InternalEObject)this, 38);
        }
        return this.dataReadAccess;
    }

    @Override
    public EList<VariableAccess> getDataReceivePointByArguments() {
        if (this.dataReceivePointByArguments == null) {
            this.dataReceivePointByArguments = new EObjectContainmentEList(VariableAccess.class, (InternalEObject)this, 39);
        }
        return this.dataReceivePointByArguments;
    }

    @Override
    public EList<VariableAccess> getDataReceivePointByValues() {
        if (this.dataReceivePointByValues == null) {
            this.dataReceivePointByValues = new EObjectContainmentEList(VariableAccess.class, (InternalEObject)this, 40);
        }
        return this.dataReceivePointByValues;
    }

    @Override
    public EList<VariableAccess> getDataSendPoints() {
        if (this.dataSendPoints == null) {
            this.dataSendPoints = new EObjectContainmentEList(VariableAccess.class, (InternalEObject)this, 41);
        }
        return this.dataSendPoints;
    }

    @Override
    public EList<VariableAccess> getDataWriteAccess() {
        if (this.dataWriteAccess == null) {
            this.dataWriteAccess = new EObjectContainmentEList(VariableAccess.class, (InternalEObject)this, 42);
        }
        return this.dataWriteAccess;
    }

    @Override
    public EList<ExternalTriggeringPoint> getExternalTriggeringPoints() {
        if (this.externalTriggeringPoints == null) {
            this.externalTriggeringPoints = new EObjectContainmentWithInverseEList(ExternalTriggeringPoint.class, (InternalEObject)this, 43, 4);
        }
        return this.externalTriggeringPoints;
    }

    @Override
    public EList<InternalTriggeringPoint> getInternalTriggeringPoints() {
        if (this.internalTriggeringPoints == null) {
            this.internalTriggeringPoints = new EObjectContainmentWithInverseEList(InternalTriggeringPoint.class, (InternalEObject)this, 44, 18);
        }
        return this.internalTriggeringPoints;
    }

    @Override
    public EList<ModeAccessPoint> getModeAccessPoints() {
        if (this.modeAccessPoints == null) {
            this.modeAccessPoints = new EObjectContainmentWithInverseEList(ModeAccessPoint.class, (InternalEObject)this, 45, 4);
        }
        return this.modeAccessPoints;
    }

    @Override
    public EList<ModeSwitchPoint> getModeSwitchPoints() {
        if (this.modeSwitchPoints == null) {
            this.modeSwitchPoints = new EObjectContainmentWithInverseEList(ModeSwitchPoint.class, (InternalEObject)this, 46, 19);
        }
        return this.modeSwitchPoints;
    }

    @Override
    public EList<ParameterAccess> getParameterAccess() {
        if (this.parameterAccess == null) {
            this.parameterAccess = new EObjectContainmentWithInverseEList(ParameterAccess.class, (InternalEObject)this, 47, 19);
        }
        return this.parameterAccess;
    }

    @Override
    public EList<VariableAccess> getReadLocalVariables() {
        if (this.readLocalVariables == null) {
            this.readLocalVariables = new EObjectContainmentEList(VariableAccess.class, (InternalEObject)this, 48);
        }
        return this.readLocalVariables;
    }

    @Override
    public EList<ServerCallPoint> getServerCallPoints() {
        if (this.serverCallPoints == null) {
            this.serverCallPoints = new EObjectContainmentWithInverseEList(ServerCallPoint.class, (InternalEObject)this, 49, 19);
        }
        return this.serverCallPoints;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 50, (Object)oldSymbol, (Object)this.symbol, !oldSymbolESet));
        }
    }

    @Override
    public void unsetSymbol() {
        String oldSymbol = this.symbol;
        boolean oldSymbolESet = this.symbolESet;
        this.symbol = SYMBOL_EDEFAULT;
        this.symbolESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 50, (Object)oldSymbol, (Object)SYMBOL_EDEFAULT, oldSymbolESet));
        }
    }

    @Override
    public boolean isSetSymbol() {
        return this.symbolESet;
    }

    @Override
    public EList<WaitPoint> getWaitPoints() {
        if (this.waitPoints == null) {
            this.waitPoints = new EObjectContainmentWithInverseEList(WaitPoint.class, (InternalEObject)this, 51, 20);
        }
        return this.waitPoints;
    }

    @Override
    public EList<VariableAccess> getWrittenLocalVariables() {
        if (this.writtenLocalVariables == null) {
            this.writtenLocalVariables = new EObjectContainmentEList(VariableAccess.class, (InternalEObject)this, 52);
        }
        return this.writtenLocalVariables;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 53, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -54, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -54, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 53, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 34: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwcInternalBehavior((SwcInternalBehavior)otherEnd, msgs);
            }
            case 35: {
                return ((InternalEList)this.getArguments()).basicAdd((Object)otherEnd, msgs);
            }
            case 36: {
                return ((InternalEList)this.getAsynchronousServerCallResultPoints()).basicAdd((Object)otherEnd, msgs);
            }
            case 43: {
                return ((InternalEList)this.getExternalTriggeringPoints()).basicAdd((Object)otherEnd, msgs);
            }
            case 44: {
                return ((InternalEList)this.getInternalTriggeringPoints()).basicAdd((Object)otherEnd, msgs);
            }
            case 45: {
                return ((InternalEList)this.getModeAccessPoints()).basicAdd((Object)otherEnd, msgs);
            }
            case 46: {
                return ((InternalEList)this.getModeSwitchPoints()).basicAdd((Object)otherEnd, msgs);
            }
            case 47: {
                return ((InternalEList)this.getParameterAccess()).basicAdd((Object)otherEnd, msgs);
            }
            case 49: {
                return ((InternalEList)this.getServerCallPoints()).basicAdd((Object)otherEnd, msgs);
            }
            case 51: {
                return ((InternalEList)this.getWaitPoints()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 34: {
                return this.basicSetSwcInternalBehavior(null, msgs);
            }
            case 35: {
                return ((InternalEList)this.getArguments()).basicRemove((Object)otherEnd, msgs);
            }
            case 36: {
                return ((InternalEList)this.getAsynchronousServerCallResultPoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 38: {
                return ((InternalEList)this.getDataReadAccess()).basicRemove((Object)otherEnd, msgs);
            }
            case 39: {
                return ((InternalEList)this.getDataReceivePointByArguments()).basicRemove((Object)otherEnd, msgs);
            }
            case 40: {
                return ((InternalEList)this.getDataReceivePointByValues()).basicRemove((Object)otherEnd, msgs);
            }
            case 41: {
                return ((InternalEList)this.getDataSendPoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 42: {
                return ((InternalEList)this.getDataWriteAccess()).basicRemove((Object)otherEnd, msgs);
            }
            case 43: {
                return ((InternalEList)this.getExternalTriggeringPoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 44: {
                return ((InternalEList)this.getInternalTriggeringPoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 45: {
                return ((InternalEList)this.getModeAccessPoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 46: {
                return ((InternalEList)this.getModeSwitchPoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 47: {
                return ((InternalEList)this.getParameterAccess()).basicRemove((Object)otherEnd, msgs);
            }
            case 48: {
                return ((InternalEList)this.getReadLocalVariables()).basicRemove((Object)otherEnd, msgs);
            }
            case 49: {
                return ((InternalEList)this.getServerCallPoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 51: {
                return ((InternalEList)this.getWaitPoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 52: {
                return ((InternalEList)this.getWrittenLocalVariables()).basicRemove((Object)otherEnd, msgs);
            }
            case 53: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 34: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 42, SwcInternalBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.gGetRunsInsideExclusiveAreas();
            }
            case 20: {
                return this.gGetCanEnterExclusiveAreas();
            }
            case 21: {
                return this.getCanEnterExclusiveAreas();
            }
            case 22: {
                return this.getMinimumStartInterval();
            }
            case 23: {
                return this.getRunsInsideExclusiveAreas();
            }
            case 24: {
                if (resolve) {
                    return this.getSwAddrMethod();
                }
                return this.basicGetSwAddrMethod();
            }
            case 25: {
                return this.gGetWaitPoints();
            }
            case 26: {
                return this.gGetSymbol();
            }
            case 27: {
                return this.gGetReadVariables();
            }
            case 28: {
                return this.gGetWrittenVariables();
            }
            case 29: {
                return this.gGetDataReadAccess();
            }
            case 30: {
                return this.gGetDataWriteAccess();
            }
            case 31: {
                return this.gGetDataSendPoints();
            }
            case 32: {
                return this.gGetDataReceivePoints();
            }
            case 33: {
                return this.gGetServerCallPoints();
            }
            case 34: {
                return this.getSwcInternalBehavior();
            }
            case 35: {
                return this.getArguments();
            }
            case 36: {
                return this.getAsynchronousServerCallResultPoints();
            }
            case 37: {
                return this.getCanBeInvokedConcurrently();
            }
            case 38: {
                return this.getDataReadAccess();
            }
            case 39: {
                return this.getDataReceivePointByArguments();
            }
            case 40: {
                return this.getDataReceivePointByValues();
            }
            case 41: {
                return this.getDataSendPoints();
            }
            case 42: {
                return this.getDataWriteAccess();
            }
            case 43: {
                return this.getExternalTriggeringPoints();
            }
            case 44: {
                return this.getInternalTriggeringPoints();
            }
            case 45: {
                return this.getModeAccessPoints();
            }
            case 46: {
                return this.getModeSwitchPoints();
            }
            case 47: {
                return this.getParameterAccess();
            }
            case 48: {
                return this.getReadLocalVariables();
            }
            case 49: {
                return this.getServerCallPoints();
            }
            case 50: {
                return this.getSymbol();
            }
            case 51: {
                return this.getWaitPoints();
            }
            case 52: {
                return this.getWrittenLocalVariables();
            }
            case 53: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.gGetRunsInsideExclusiveAreas().clear();
                this.gGetRunsInsideExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.gGetCanEnterExclusiveAreas().clear();
                this.gGetCanEnterExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getCanEnterExclusiveAreas().clear();
                this.getCanEnterExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setMinimumStartInterval((Double)newValue);
                return;
            }
            case 23: {
                this.getRunsInsideExclusiveAreas().clear();
                this.getRunsInsideExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.setSwAddrMethod((SwAddrMethod)newValue);
                return;
            }
            case 25: {
                this.gGetWaitPoints().clear();
                this.gGetWaitPoints().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.gSetSymbol((String)newValue);
                return;
            }
            case 27: {
                this.gGetReadVariables().clear();
                this.gGetReadVariables().addAll((Collection)newValue);
                return;
            }
            case 28: {
                this.gGetWrittenVariables().clear();
                this.gGetWrittenVariables().addAll((Collection)newValue);
                return;
            }
            case 29: {
                this.gGetDataReadAccess().clear();
                this.gGetDataReadAccess().addAll((Collection)newValue);
                return;
            }
            case 30: {
                this.gGetDataWriteAccess().clear();
                this.gGetDataWriteAccess().addAll((Collection)newValue);
                return;
            }
            case 31: {
                this.gGetDataSendPoints().clear();
                this.gGetDataSendPoints().addAll((Collection)newValue);
                return;
            }
            case 32: {
                this.gGetDataReceivePoints().clear();
                this.gGetDataReceivePoints().addAll((Collection)newValue);
                return;
            }
            case 33: {
                this.gGetServerCallPoints().clear();
                this.gGetServerCallPoints().addAll((Collection)newValue);
                return;
            }
            case 34: {
                this.setSwcInternalBehavior((SwcInternalBehavior)newValue);
                return;
            }
            case 35: {
                this.getArguments().clear();
                this.getArguments().addAll((Collection)newValue);
                return;
            }
            case 36: {
                this.getAsynchronousServerCallResultPoints().clear();
                this.getAsynchronousServerCallResultPoints().addAll((Collection)newValue);
                return;
            }
            case 37: {
                this.setCanBeInvokedConcurrently((Boolean)newValue);
                return;
            }
            case 38: {
                this.getDataReadAccess().clear();
                this.getDataReadAccess().addAll((Collection)newValue);
                return;
            }
            case 39: {
                this.getDataReceivePointByArguments().clear();
                this.getDataReceivePointByArguments().addAll((Collection)newValue);
                return;
            }
            case 40: {
                this.getDataReceivePointByValues().clear();
                this.getDataReceivePointByValues().addAll((Collection)newValue);
                return;
            }
            case 41: {
                this.getDataSendPoints().clear();
                this.getDataSendPoints().addAll((Collection)newValue);
                return;
            }
            case 42: {
                this.getDataWriteAccess().clear();
                this.getDataWriteAccess().addAll((Collection)newValue);
                return;
            }
            case 43: {
                this.getExternalTriggeringPoints().clear();
                this.getExternalTriggeringPoints().addAll((Collection)newValue);
                return;
            }
            case 44: {
                this.getInternalTriggeringPoints().clear();
                this.getInternalTriggeringPoints().addAll((Collection)newValue);
                return;
            }
            case 45: {
                this.getModeAccessPoints().clear();
                this.getModeAccessPoints().addAll((Collection)newValue);
                return;
            }
            case 46: {
                this.getModeSwitchPoints().clear();
                this.getModeSwitchPoints().addAll((Collection)newValue);
                return;
            }
            case 47: {
                this.getParameterAccess().clear();
                this.getParameterAccess().addAll((Collection)newValue);
                return;
            }
            case 48: {
                this.getReadLocalVariables().clear();
                this.getReadLocalVariables().addAll((Collection)newValue);
                return;
            }
            case 49: {
                this.getServerCallPoints().clear();
                this.getServerCallPoints().addAll((Collection)newValue);
                return;
            }
            case 50: {
                this.setSymbol((String)newValue);
                return;
            }
            case 51: {
                this.getWaitPoints().clear();
                this.getWaitPoints().addAll((Collection)newValue);
                return;
            }
            case 52: {
                this.getWrittenLocalVariables().clear();
                this.getWrittenLocalVariables().addAll((Collection)newValue);
                return;
            }
            case 53: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.gGetRunsInsideExclusiveAreas().clear();
                return;
            }
            case 20: {
                this.gGetCanEnterExclusiveAreas().clear();
                return;
            }
            case 21: {
                this.getCanEnterExclusiveAreas().clear();
                return;
            }
            case 22: {
                this.unsetMinimumStartInterval();
                return;
            }
            case 23: {
                this.getRunsInsideExclusiveAreas().clear();
                return;
            }
            case 24: {
                this.setSwAddrMethod(null);
                return;
            }
            case 25: {
                this.gGetWaitPoints().clear();
                return;
            }
            case 26: {
                this.gUnsetSymbol();
                return;
            }
            case 27: {
                this.gGetReadVariables().clear();
                return;
            }
            case 28: {
                this.gGetWrittenVariables().clear();
                return;
            }
            case 29: {
                this.gGetDataReadAccess().clear();
                return;
            }
            case 30: {
                this.gGetDataWriteAccess().clear();
                return;
            }
            case 31: {
                this.gGetDataSendPoints().clear();
                return;
            }
            case 32: {
                this.gGetDataReceivePoints().clear();
                return;
            }
            case 33: {
                this.gGetServerCallPoints().clear();
                return;
            }
            case 34: {
                this.setSwcInternalBehavior(null);
                return;
            }
            case 35: {
                this.getArguments().clear();
                return;
            }
            case 36: {
                this.getAsynchronousServerCallResultPoints().clear();
                return;
            }
            case 37: {
                this.unsetCanBeInvokedConcurrently();
                return;
            }
            case 38: {
                this.getDataReadAccess().clear();
                return;
            }
            case 39: {
                this.getDataReceivePointByArguments().clear();
                return;
            }
            case 40: {
                this.getDataReceivePointByValues().clear();
                return;
            }
            case 41: {
                this.getDataSendPoints().clear();
                return;
            }
            case 42: {
                this.getDataWriteAccess().clear();
                return;
            }
            case 43: {
                this.getExternalTriggeringPoints().clear();
                return;
            }
            case 44: {
                this.getInternalTriggeringPoints().clear();
                return;
            }
            case 45: {
                this.getModeAccessPoints().clear();
                return;
            }
            case 46: {
                this.getModeSwitchPoints().clear();
                return;
            }
            case 47: {
                this.getParameterAccess().clear();
                return;
            }
            case 48: {
                this.getReadLocalVariables().clear();
                return;
            }
            case 49: {
                this.getServerCallPoints().clear();
                return;
            }
            case 50: {
                this.unsetSymbol();
                return;
            }
            case 51: {
                this.getWaitPoints().clear();
                return;
            }
            case 52: {
                this.getWrittenLocalVariables().clear();
                return;
            }
            case 53: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return !this.gGetRunsInsideExclusiveAreas().isEmpty();
            }
            case 20: {
                return !this.gGetCanEnterExclusiveAreas().isEmpty();
            }
            case 21: {
                return this.canEnterExclusiveAreas != null && !this.canEnterExclusiveAreas.isEmpty();
            }
            case 22: {
                return this.isSetMinimumStartInterval();
            }
            case 23: {
                return this.runsInsideExclusiveAreas != null && !this.runsInsideExclusiveAreas.isEmpty();
            }
            case 24: {
                return this.swAddrMethod != null;
            }
            case 25: {
                return !this.gGetWaitPoints().isEmpty();
            }
            case 26: {
                return this.gIsSetSymbol();
            }
            case 27: {
                return !this.gGetReadVariables().isEmpty();
            }
            case 28: {
                return !this.gGetWrittenVariables().isEmpty();
            }
            case 29: {
                return !this.gGetDataReadAccess().isEmpty();
            }
            case 30: {
                return !this.gGetDataWriteAccess().isEmpty();
            }
            case 31: {
                return !this.gGetDataSendPoints().isEmpty();
            }
            case 32: {
                return !this.gGetDataReceivePoints().isEmpty();
            }
            case 33: {
                return !this.gGetServerCallPoints().isEmpty();
            }
            case 34: {
                return this.getSwcInternalBehavior() != null;
            }
            case 35: {
                return this.arguments != null && !this.arguments.isEmpty();
            }
            case 36: {
                return this.asynchronousServerCallResultPoints != null && !this.asynchronousServerCallResultPoints.isEmpty();
            }
            case 37: {
                return this.isSetCanBeInvokedConcurrently();
            }
            case 38: {
                return this.dataReadAccess != null && !this.dataReadAccess.isEmpty();
            }
            case 39: {
                return this.dataReceivePointByArguments != null && !this.dataReceivePointByArguments.isEmpty();
            }
            case 40: {
                return this.dataReceivePointByValues != null && !this.dataReceivePointByValues.isEmpty();
            }
            case 41: {
                return this.dataSendPoints != null && !this.dataSendPoints.isEmpty();
            }
            case 42: {
                return this.dataWriteAccess != null && !this.dataWriteAccess.isEmpty();
            }
            case 43: {
                return this.externalTriggeringPoints != null && !this.externalTriggeringPoints.isEmpty();
            }
            case 44: {
                return this.internalTriggeringPoints != null && !this.internalTriggeringPoints.isEmpty();
            }
            case 45: {
                return this.modeAccessPoints != null && !this.modeAccessPoints.isEmpty();
            }
            case 46: {
                return this.modeSwitchPoints != null && !this.modeSwitchPoints.isEmpty();
            }
            case 47: {
                return this.parameterAccess != null && !this.parameterAccess.isEmpty();
            }
            case 48: {
                return this.readLocalVariables != null && !this.readLocalVariables.isEmpty();
            }
            case 49: {
                return this.serverCallPoints != null && !this.serverCallPoints.isEmpty();
            }
            case 50: {
                return this.isSetSymbol();
            }
            case 51: {
                return this.waitPoints != null && !this.waitPoints.isEmpty();
            }
            case 52: {
                return this.writtenLocalVariables != null && !this.writtenLocalVariables.isEmpty();
            }
            case 53: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GExecutableEntity.class) {
            switch (derivedFeatureID) {
                case 19: {
                    return 6;
                }
                case 20: {
                    return 7;
                }
            }
            return -1;
        }
        if (baseClass == ExecutableEntity.class) {
            switch (derivedFeatureID) {
                case 21: {
                    return 20;
                }
                case 22: {
                    return 21;
                }
                case 23: {
                    return 22;
                }
                case 24: {
                    return 23;
                }
            }
            return -1;
        }
        if (baseClass == GRunnableEntity.class) {
            switch (derivedFeatureID) {
                case 25: {
                    return 8;
                }
                case 26: {
                    return 9;
                }
                case 27: {
                    return 10;
                }
                case 28: {
                    return 11;
                }
                case 29: {
                    return 12;
                }
                case 30: {
                    return 13;
                }
                case 31: {
                    return 14;
                }
                case 32: {
                    return 15;
                }
                case 33: {
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
                    return 19;
                }
                case 7: {
                    return 20;
                }
            }
            return -1;
        }
        if (baseClass == ExecutableEntity.class) {
            switch (baseFeatureID) {
                case 20: {
                    return 21;
                }
                case 21: {
                    return 22;
                }
                case 22: {
                    return 23;
                }
                case 23: {
                    return 24;
                }
            }
            return -1;
        }
        if (baseClass == GRunnableEntity.class) {
            switch (baseFeatureID) {
                case 8: {
                    return 25;
                }
                case 9: {
                    return 26;
                }
                case 10: {
                    return 27;
                }
                case 11: {
                    return 28;
                }
                case 12: {
                    return 29;
                }
                case 13: {
                    return 30;
                }
                case 14: {
                    return 31;
                }
                case 15: {
                    return 32;
                }
                case 16: {
                    return 33;
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
        result.append(" (minimumStartInterval: ");
        if (this.minimumStartIntervalESet) {
            result.append(this.minimumStartInterval);
        } else {
            result.append("<unset>");
        }
        result.append(", canBeInvokedConcurrently: ");
        if (this.canBeInvokedConcurrentlyESet) {
            result.append(this.canBeInvokedConcurrently);
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

