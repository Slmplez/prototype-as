/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  autosar3x.commonstructure.auxillaryobjects.SwAddrMethod
 *  autosar3x.commonstructure.datadefproperties.SwCalibrationAccessEnum
 *  autosar3x.commonstructure.datadefproperties.SwDataDefProps
 *  autosar3x.commonstructure.globalconstraints.PhysConstrs
 *  autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData3
 *  autosar3x.genericstructure.infrastructure.autosar.ARPackage
 *  autosar3x.genericstructure.infrastructure.autosar.AUTOSAR
 *  autosar3x.genericstructure.infrastructure.identifiable.PackageableElement
 *  autosar3x.swcomponent.components.ApplicationSoftwareComponentType
 *  autosar3x.swcomponent.components.PPortPrototype
 *  autosar3x.swcomponent.components.PortPrototype
 *  autosar3x.swcomponent.components.RPortPrototype
 *  autosar3x.swcomponent.datatype.computationmethod.Compu
 *  autosar3x.swcomponent.datatype.computationmethod.CompuMethod
 *  autosar3x.swcomponent.datatype.computationmethod.CompuNominatorDenominator
 *  autosar3x.swcomponent.datatype.computationmethod.CompuScale
 *  autosar3x.swcomponent.datatype.computationmethod.CompuScaleRationalFormula
 *  autosar3x.swcomponent.datatype.computationmethod.CompuScales
 *  autosar3x.swcomponent.datatype.datatypes.ArrayElement
 *  autosar3x.swcomponent.datatype.datatypes.ArrayType
 *  autosar3x.swcomponent.datatype.datatypes.BooleanType
 *  autosar3x.swcomponent.datatype.datatypes.CharType
 *  autosar3x.swcomponent.datatype.datatypes.DataPrototype
 *  autosar3x.swcomponent.datatype.datatypes.Datatype
 *  autosar3x.swcomponent.datatype.datatypes.IntegerType
 *  autosar3x.swcomponent.datatype.datatypes.PrimitiveType
 *  autosar3x.swcomponent.datatype.datatypes.RealType
 *  autosar3x.swcomponent.datatype.datatypes.RecordElement
 *  autosar3x.swcomponent.datatype.datatypes.RecordType
 *  autosar3x.swcomponent.datatype.datatypes.StringType
 *  autosar3x.swcomponent.datatype.localconstraints.IntervalTypeEnum
 *  autosar3x.swcomponent.datatype.localconstraints.Limit
 *  autosar3x.swcomponent.datatype.units.Unit
 *  autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype
 *  autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmInterface
 *  autosar3x.swcomponent.modedeclaration.ModeActivationKind
 *  autosar3x.swcomponent.modedeclaration.ModeDeclaration
 *  autosar3x.swcomponent.modedeclaration.ModeDeclarationGroup
 *  autosar3x.swcomponent.modedeclaration.instanceref.ModeDisablingDependencyDependentOnMode
 *  autosar3x.swcomponent.portinterface.ApplicationError
 *  autosar3x.swcomponent.portinterface.ArgumentPrototype
 *  autosar3x.swcomponent.portinterface.ClientServerInterface
 *  autosar3x.swcomponent.portinterface.DataElementPrototype
 *  autosar3x.swcomponent.portinterface.ModeDeclarationGroupPrototype
 *  autosar3x.swcomponent.portinterface.OperationPrototype
 *  autosar3x.swcomponent.portinterface.PortInterface
 *  autosar3x.swcomponent.portinterface.SenderReceiverInterface
 *  autosar3x.swcomponent.swcinternalbehavior.InternalBehavior
 *  autosar3x.swcomponent.swcinternalbehavior.RunnableEntity
 *  autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.CommunicationApproachType
 *  autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.InterRunnableVariable
 *  autosar3x.swcomponent.swcinternalbehavior.rteevents.ModeSwitchEvent
 *  autosar3x.swcomponent.swcinternalbehavior.rteevents.OperationInvokedEvent
 *  autosar3x.swcomponent.swcinternalbehavior.rteevents.RTEEvent
 *  autosar3x.swcomponent.swcinternalbehavior.rteevents.TimingEvent
 *  autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.ModeSwitchEventMode
 *  autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.OperationInvokedEventOperation
 *  com.etas.amd.core.type.AbstractAmdScalarType
 *  com.etas.amd.core.type.AbstractAmdType
 *  com.etas.amd.core.type.AmdArrayType
 *  com.etas.amd.core.type.AmdEnumType
 *  com.etas.amd.core.type.AmdLogicType
 *  com.etas.amd.core.type.AmdNumericType
 *  com.etas.amd.core.type.AmdRecordType
 *  com.etas.amd.core.util.AbstractAmdComponent
 *  com.etas.amd.core.util.AbstractAmdItem
 *  com.etas.amd.core.util.AmdASWCType
 *  com.etas.amd.core.util.AmdCSInterface
 *  com.etas.amd.core.util.AmdCalprmInterface
 *  com.etas.amd.core.util.AmdEnum
 *  com.etas.amd.core.util.AmdFactory
 *  com.etas.amd.core.util.AmdFormulaFactory
 *  com.etas.amd.core.util.AmdModeDeclarationGroup
 *  com.etas.amd.core.util.AmdRecord
 *  com.etas.amd.core.util.AmdSRInterface
 *  com.etas.amd620.core.ComponentImplementation.ImplementationEntryT
 *  com.etas.amd620.core.ComponentMain.ElementAttributesT
 *  com.etas.amd620.core.ComponentMain.ElementT
 *  com.etas.amd620.core.ComponentMain.KindType
 *  com.etas.amd620.core.ComponentMain.MethodT
 *  com.etas.amd620.core.ComponentMain.RealizedElementT
 *  com.etas.amd620.core.ComponentMain.RealizedMethodT
 *  com.etas.amd620.core.ComponentMain.RealizedRunnableT
 *  com.etas.amd620.core.ComponentMain.RunnableT
 *  com.etas.amd620.core.ComponentSpecification.EventT
 *  com.etas.amd620.core.ComponentSpecification.ModeSwitchTypeType
 *  com.etas.amd620.core.Formulas.FormulaComplexType
 *  com.google.common.collect.Iterators
 *  com.google.common.collect.UnmodifiableIterator
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GOperationInvokedEvent
 *  org.apache.commons.lang.StringUtils
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.resource.Resource
 */
package com.etas.ascet.importer.a2a;

import autosar3x.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar3x.commonstructure.datadefproperties.SwCalibrationAccessEnum;
import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.globalconstraints.PhysConstrs;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData3;
import autosar3x.genericstructure.infrastructure.autosar.ARPackage;
import autosar3x.genericstructure.infrastructure.autosar.AUTOSAR;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.swcomponent.components.ApplicationSoftwareComponentType;
import autosar3x.swcomponent.components.PPortPrototype;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.components.RPortPrototype;
import autosar3x.swcomponent.datatype.computationmethod.Compu;
import autosar3x.swcomponent.datatype.computationmethod.CompuMethod;
import autosar3x.swcomponent.datatype.computationmethod.CompuNominatorDenominator;
import autosar3x.swcomponent.datatype.computationmethod.CompuScale;
import autosar3x.swcomponent.datatype.computationmethod.CompuScaleRationalFormula;
import autosar3x.swcomponent.datatype.computationmethod.CompuScales;
import autosar3x.swcomponent.datatype.datatypes.ArrayElement;
import autosar3x.swcomponent.datatype.datatypes.ArrayType;
import autosar3x.swcomponent.datatype.datatypes.BooleanType;
import autosar3x.swcomponent.datatype.datatypes.CharType;
import autosar3x.swcomponent.datatype.datatypes.DataPrototype;
import autosar3x.swcomponent.datatype.datatypes.Datatype;
import autosar3x.swcomponent.datatype.datatypes.IntegerType;
import autosar3x.swcomponent.datatype.datatypes.PrimitiveType;
import autosar3x.swcomponent.datatype.datatypes.RealType;
import autosar3x.swcomponent.datatype.datatypes.RecordElement;
import autosar3x.swcomponent.datatype.datatypes.RecordType;
import autosar3x.swcomponent.datatype.datatypes.StringType;
import autosar3x.swcomponent.datatype.localconstraints.IntervalTypeEnum;
import autosar3x.swcomponent.datatype.localconstraints.Limit;
import autosar3x.swcomponent.datatype.units.Unit;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmInterface;
import autosar3x.swcomponent.modedeclaration.ModeActivationKind;
import autosar3x.swcomponent.modedeclaration.ModeDeclaration;
import autosar3x.swcomponent.modedeclaration.ModeDeclarationGroup;
import autosar3x.swcomponent.modedeclaration.instanceref.ModeDisablingDependencyDependentOnMode;
import autosar3x.swcomponent.portinterface.ApplicationError;
import autosar3x.swcomponent.portinterface.ArgumentPrototype;
import autosar3x.swcomponent.portinterface.ClientServerInterface;
import autosar3x.swcomponent.portinterface.DataElementPrototype;
import autosar3x.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import autosar3x.swcomponent.portinterface.OperationPrototype;
import autosar3x.swcomponent.portinterface.PortInterface;
import autosar3x.swcomponent.portinterface.SenderReceiverInterface;
import autosar3x.swcomponent.swcinternalbehavior.InternalBehavior;
import autosar3x.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.CommunicationApproachType;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.InterRunnableVariable;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.ModeSwitchEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.OperationInvokedEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.TimingEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.ModeSwitchEventMode;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.OperationInvokedEventOperation;
import com.etas.amd.core.type.AbstractAmdScalarType;
import com.etas.amd.core.type.AbstractAmdType;
import com.etas.amd.core.type.AmdArrayType;
import com.etas.amd.core.type.AmdEnumType;
import com.etas.amd.core.type.AmdLogicType;
import com.etas.amd.core.type.AmdNumericType;
import com.etas.amd.core.type.AmdRecordType;
import com.etas.amd.core.util.AbstractAmdComponent;
import com.etas.amd.core.util.AbstractAmdItem;
import com.etas.amd.core.util.AmdASWCType;
import com.etas.amd.core.util.AmdCSInterface;
import com.etas.amd.core.util.AmdCalprmInterface;
import com.etas.amd.core.util.AmdEnum;
import com.etas.amd.core.util.AmdFactory;
import com.etas.amd.core.util.AmdFormulaFactory;
import com.etas.amd.core.util.AmdModeDeclarationGroup;
import com.etas.amd.core.util.AmdRecord;
import com.etas.amd.core.util.AmdSRInterface;
import com.etas.amd620.core.ComponentImplementation.ImplementationEntryT;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;
import com.etas.amd620.core.ComponentMain.ElementT;
import com.etas.amd620.core.ComponentMain.KindType;
import com.etas.amd620.core.ComponentMain.MethodT;
import com.etas.amd620.core.ComponentMain.RealizedElementT;
import com.etas.amd620.core.ComponentMain.RealizedMethodT;
import com.etas.amd620.core.ComponentMain.RealizedRunnableT;
import com.etas.amd620.core.ComponentMain.RunnableT;
import com.etas.amd620.core.ComponentSpecification.EventT;
import com.etas.amd620.core.ComponentSpecification.ModeSwitchTypeType;
import com.etas.amd620.core.Formulas.FormulaComplexType;
import com.etas.ascet.importer.a2a.AutosarStandaloneSetup;
import com.etas.ascet.importer.a2a.Converter;
import com.etas.ascet.importer.a2a.ProgressCalculator;
import com.etas.ascet.importer.a2a.exceptions.InvalidOperationInvokedException;
import com.etas.ascet.importer.a2a.exceptions.UnsupportedTypeException;
import com.etas.ascet.importer.a2a.exceptions.UsupportedVariantioPointException;
import com.etas.ascet.importer.a2a.util.AutosarScoping;
import com.etas.ascet.importer.a2a.util.CompuScaleUtil;
import com.google.common.collect.Iterators;
import com.google.common.collect.UnmodifiableIterator;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GOperationInvokedEvent;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import org.apache.commons.lang.StringUtils;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.resource.Resource;

public class Converter3x
extends Converter {
    @Override
    public boolean convert() {
        if (!this.browseOverTypesAndCompuMethods()) {
            return false;
        }
        if (!this.browseOverInternalBehaviors()) {
            return false;
        }
        this.progress.subTask("browse over packages");
        EList resources = this.getEmfRessourceSet().getResources();
        ProgressCalculator progressCalc = new ProgressCalculator(resources.size(), 10);
        for (Resource res : resources) {
            AUTOSAR autosar = (AUTOSAR)res.getContents().get(0);
            for (ARPackage p : autosar.getTopLevelPackages()) {
                this.browseOverPackage(p);
            }
            if (this.progress.isCanceled()) {
                return false;
            }
            this.progress.worked(progressCalc.amountPerWorkItem());
        }
        this.progress.worked(progressCalc.amountForRest());
        return true;
    }

    @Override
    protected void setupAutosarVersion() {
        AutosarStandaloneSetup.doSetupForAutosar3x();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected boolean browseOverTypesAndCompuMethods() {
        EList resources = this.getEmfRessourceSet().getResources();
        this.progress.subTask("browse over types and compumethods");
        ProgressCalculator progressCalc = new ProgressCalculator(resources.size(), 10);
        for (Resource res : resources) {
            AUTOSAR autosar = (AUTOSAR)res.getContents().get(0);
            for (ARPackage p : autosar.getTopLevelPackages()) {
                try {
                    UnmodifiableIterator cmSet = Iterators.filter((Iterator)p.eAllContents(), CompuMethod.class);
                    while (cmSet.hasNext()) {
                        CompuMethod cm = (CompuMethod)cmSet.next();
                        if (this.convertCompuMethods(cm)) continue;
                        return false;
                    }
                    UnmodifiableIterator implTypeSet = Iterators.filter((Iterator)p.eAllContents(), IntegerType.class);
                    while (implTypeSet.hasNext()) {
                        IntegerType implType = (IntegerType)implTypeSet.next();
                        this.convertIntegerType(implType);
                    }
                    if (!this.progress.isCanceled()) continue;
                    return false;
                }
                catch (NoSuchElementException noSuchElementException) {
                }
                catch (UnsupportedOperationException unsupportedOperationException) {}
            }
            this.progress.worked(progressCalc.amountPerWorkItem());
        }
        this.progress.worked(progressCalc.amountForRest());
        return true;
    }

    protected boolean browseOverInternalBehaviors() {
        EList resources = this.getEmfRessourceSet().getResources();
        this.progress.subTask("browse over software components and interafces");
        ProgressCalculator progressCalc = new ProgressCalculator(resources.size(), 20);
        for (Resource res : resources) {
            AUTOSAR autosar = (AUTOSAR)res.getContents().get(0);
            for (ARPackage p : autosar.getTopLevelPackages()) {
                try {
                    UnmodifiableIterator cmSet = Iterators.filter((Iterator)p.eAllContents(), InternalBehavior.class);
                    while (cmSet.hasNext()) {
                        InternalBehavior behavior = (InternalBehavior)cmSet.next();
                        this.convertInternalBehavior(behavior);
                    }
                    if (!this.progress.isCanceled()) continue;
                    return false;
                }
                catch (NoSuchElementException noSuchElementException) {
                }
                catch (UnsupportedOperationException unsupportedOperationException) {}
            }
            this.progress.worked(progressCalc.amountPerWorkItem());
        }
        this.progress.worked(progressCalc.amountForRest());
        return true;
    }

    private void browseOverPackage(ARPackage p) {
        for (PackageableElement elem : p.getElements()) {
            if (elem instanceof RecordType) {
                this.convertRecordType((RecordType)elem);
                continue;
            }
            if (elem instanceof SenderReceiverInterface) {
                this.convertInterface((SenderReceiverInterface)elem);
                continue;
            }
            if (elem instanceof ClientServerInterface) {
                this.convertInterface((ClientServerInterface)elem);
                continue;
            }
            if (elem instanceof CalprmInterface) {
                this.convertInterface((CalprmInterface)elem);
                continue;
            }
            if (elem instanceof ModeDeclarationGroup) {
                this.convertModeDeclarationGroups((ModeDeclarationGroup)elem);
                continue;
            }
            if (!(elem instanceof ApplicationSoftwareComponentType)) continue;
            this.convertASWC((ApplicationSoftwareComponentType)elem);
        }
        for (ARPackage sub : p.getSubPackages()) {
            this.browseOverPackage(sub);
        }
    }

    private void convertModeDeclarationGroups(ModeDeclarationGroup modeGroup) {
        String nameSpace = this.getNameSpace((GIdentifiable)modeGroup);
        String shortName = modeGroup.getShortName();
        AmdModeDeclarationGroup amdModeGroup = new AmdModeDeclarationGroup(shortName, modeGroup.getUuid(), nameSpace);
        this.context.getLogger().info("processing CompuMethod [" + this.getARPath((GIdentifiable)modeGroup) + "]");
        String initModeName = null;
        if (modeGroup.getInitialMode() != null) {
            initModeName = modeGroup.getInitialMode().getShortName();
            amdModeGroup.addMode(initModeName);
        }
        for (ModeDeclaration mode : modeGroup.getModeDeclarations()) {
            String modeName = mode.getShortName();
            if (modeName.equals(initModeName)) continue;
            amdModeGroup.addMode(modeName);
        }
        amdModeGroup.save(this.config.getOutputFolder());
    }

    private void convertInternalBehavior(InternalBehavior behavior) {
        ApplicationSoftwareComponentType aswc = (ApplicationSoftwareComponentType)behavior.getComponent();
        if (aswc == null) {
            return;
        }
        AmdASWCType comp = this.convertASWC(aswc);
        HashMap<String, OperationInvokedEvent> isActivatedByOperationInvokedEvent = new HashMap<String, OperationInvokedEvent>();
        for (RTEEvent event : behavior.getEvents()) {
            RunnableEntity runnableEntity;
            EventT amdEvent = null;
            this.context.getLogger().info("processing Event [" + this.getARPath((GIdentifiable)event) + "]");
            if (event instanceof OperationInvokedEvent) {
                amdEvent = this.processOperationInvokedEvent((OperationInvokedEvent)event);
                runnableEntity = event.getStartOnEvent();
                if (amdEvent != null && runnableEntity != null) {
                    isActivatedByOperationInvokedEvent.put(runnableEntity.getShortName(), (OperationInvokedEvent)event);
                }
            } else if (event instanceof ModeSwitchEvent) {
                amdEvent = this.processModeSwitchEvent((ModeSwitchEvent)event);
            } else if (event instanceof TimingEvent) {
                amdEvent = this.processTimingEvent((TimingEvent)event);
            }
            if (amdEvent == null) continue;
            if (event.getModeDependency() != null) {
                this.processModeDisablingEvent(event, amdEvent);
            }
            if ((runnableEntity = event.getStartOnEvent()) != null) {
                AmdFactory.addRunnableToEvent((EventT)amdEvent, (String)runnableEntity.getShortName(), (BigInteger)BigInteger.ZERO);
            }
            comp.addEvent(amdEvent);
        }
        for (InterRunnableVariable irVar : behavior.getInterRunnableVariables()) {
            boolean isExplicite = irVar.getCommunicationApproach() == CommunicationApproachType.EXPLICIT;
            this.createInterrunnableVariable(comp, irVar, isExplicite);
        }
        for (RunnableEntity run : behavior.getRunnables()) {
            this.context.getLogger().info("processing Runnable [" + this.getARPath((GIdentifiable)run) + "]");
            String name = run.getShortName();
            OperationInvokedEvent opInvokedEvent = (OperationInvokedEvent)isActivatedByOperationInvokedEvent.get(name);
            if (opInvokedEvent != null) {
                try {
                    String runName = this.getRunnableNameToCall((GOperationInvokedEvent)opInvokedEvent);
                    String portName = this.getPortName((GOperationInvokedEvent)opInvokedEvent);
                    OperationPrototype operationPrototype = opInvokedEvent.getOperation().getOperationPrototype();
                    RealizedRunnableT amdRunnable = this.createRealizedRunnable(runName, portName, operationPrototype);
                    amdRunnable.setUUID(run.getUuid());
                    amdRunnable.setCanBeInvokedConcurrently(run.getCanBeInvokedConcurrently().booleanValue());
                    amdRunnable.setMinimumStartTime(run.getMinimumStartInterval() * 1000.0);
                    comp.addRealizedRunnable(amdRunnable);
                    String specName = String.valueOf(portName) + "_" + this.getProvidedCSInterface((GOperationInvokedEvent)opInvokedEvent);
                    this.addRunnableToSpec(comp, runName, specName);
                }
                catch (InvalidOperationInvokedException ex) {
                    this.context.getLogger().reportInvalidOperationInvikedEvent(this.getARPath((GIdentifiable)opInvokedEvent), ex.getMessage());
                }
            } else {
                RunnableT runnableT = AmdFactory.createRunnable((String)name, (String)run.getUuid(), (boolean)run.getCanBeInvokedConcurrently(), (double)run.getMinimumStartInterval());
                comp.addRunnable(runnableT);
                this.addRunnableToSpec(comp, name, "Main");
            }
            comp.setImplementationForMethod(name, run.getSymbol());
        }
    }

    private AmdASWCType convertASWC(ApplicationSoftwareComponentType aswc) {
        String packagePath = this.getARPath((GIdentifiable)aswc);
        if (this.context.getAmdCollection().contains(packagePath)) {
            return null;
        }
        String nameSpace = this.getNameSpace((GIdentifiable)aswc);
        String shortName = aswc.getShortName();
        AmdASWCType comp = new AmdASWCType(shortName, aswc.getUuid(), nameSpace);
        this.context.getLogger().info("processing ASWC [" + packagePath + "]");
        for (PortPrototype port : aswc.getPorts()) {
            PortInterface portInterface = null;
            boolean read = true;
            boolean write = false;
            if (port instanceof PPortPrototype) {
                portInterface = ((PPortPrototype)port).getProvidedInterface();
                read = false;
                write = true;
            } else if (port instanceof RPortPrototype) {
                portInterface = ((RPortPrototype)port).getRequiredInterface();
                read = true;
                write = false;
            }
            if (portInterface == null) continue;
            String portName = port.getShortName();
            ElementT amdPort = AmdFactory.createDataElementPort((String)portName, (String)port.getUuid());
            AmdFactory.setElementAttributesInterface((AmdASWCType)comp, (ElementT)amdPort, (String)this.getARPath((GIdentifiable)portInterface), (boolean)read, (boolean)write);
            comp.addElement(amdPort);
        }
        this.addComponent((AbstractAmdComponent)comp);
        this.context.getAmdCollection().put(packagePath, (AbstractAmdItem)comp);
        return comp;
    }

    private void convertInterface(CalprmInterface arInterface) {
        String nameSpace = this.getNameSpace((GIdentifiable)arInterface);
        String shortName = arInterface.getShortName();
        AmdCalprmInterface comp = new AmdCalprmInterface(shortName, arInterface.getUuid(), nameSpace);
        this.context.getLogger().info("processing Calprm-interface [" + AutosarScoping.getPackageName(nameSpace, shortName) + "]");
        for (CalprmElementPrototype dataElement : arInterface.getCalprmElements()) {
            ElementAttributesT elementAttributes;
            ElementT amdInterfaceMember = AmdFactory.createInterfaceMember((String)dataElement.getShortName(), (String)dataElement.getUuid());
            try {
                elementAttributes = this.setElementAttributes((AbstractAmdComponent)comp, amdInterfaceMember, (DataPrototype)dataElement);
                AmdFactory.setKind((ElementAttributesT)elementAttributes, (KindType)KindType.PARAMETER);
                AmdFactory.setSetGetAttributes((ElementAttributesT)elementAttributes, (boolean)false, (boolean)false);
                AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)false);
                this.setCalibrationDefProp((DataPrototype)dataElement, elementAttributes, true, true);
                comp.addElement(amdInterfaceMember);
            }
            catch (UnsupportedTypeException unsupportedTypeException) {
                amdInterfaceMember.setName("invalid_" + dataElement.getShortName());
                elementAttributes = this.setDummyElementAttributes((AbstractAmdComponent)comp, amdInterfaceMember);
                AmdFactory.setKind((ElementAttributesT)elementAttributes, (KindType)KindType.PARAMETER);
                AmdFactory.setSetGetAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)true);
                AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)false);
                comp.addElement(amdInterfaceMember);
            }
        }
        comp.setServiceFlag(arInterface.getIsService().booleanValue());
        this.context.getAmdCollection().put(AutosarScoping.getPackageName(nameSpace, shortName), (AbstractAmdItem)comp);
    }

    private void convertInterface(SenderReceiverInterface arInterface) {
        ElementT amdInterfaceMember;
        String nameSpace = this.getNameSpace((GIdentifiable)arInterface);
        String shortName = arInterface.getShortName();
        AmdSRInterface comp = new AmdSRInterface(shortName, arInterface.getUuid(), nameSpace);
        this.context.getLogger().info("processing Sender/Receiver-interface [" + AutosarScoping.getPackageName(nameSpace, shortName) + "]");
        for (DataElementPrototype dataElement : arInterface.getDataElements()) {
            ElementAttributesT elementAttributes;
            amdInterfaceMember = AmdFactory.createInterfaceMember((String)dataElement.getShortName(), (String)dataElement.getUuid());
            try {
                elementAttributes = this.setElementAttributes((AbstractAmdComponent)comp, amdInterfaceMember, (DataPrototype)dataElement);
                AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)true);
                this.setCalibrationDefProp((DataPrototype)dataElement, elementAttributes, true, false);
                comp.addElement(amdInterfaceMember);
            }
            catch (UnsupportedTypeException unsupportedTypeException) {
                amdInterfaceMember.setName("invalid_" + dataElement.getShortName());
                elementAttributes = this.setDummyElementAttributes((AbstractAmdComponent)comp, amdInterfaceMember);
                AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)true);
                comp.addElement(amdInterfaceMember);
            }
        }
        for (ModeDeclarationGroupPrototype modeGroup : arInterface.getModeGroups()) {
            amdInterfaceMember = AmdFactory.createInterfaceMember((String)modeGroup.getShortName(), (String)modeGroup.getUuid());
            AmdEnumType enumType = new AmdEnumType(this.getARPath((GIdentifiable)modeGroup.getType()));
            ElementAttributesT elementAttributes = enumType.createModelAttributes();
            AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)true);
            amdInterfaceMember.setElementAttributes(elementAttributes);
            comp.addImplementation(enumType.createImplAttributes(amdInterfaceMember.getName()));
            comp.addElement(amdInterfaceMember);
        }
        comp.setServiceFlag(arInterface.getIsService().booleanValue());
        this.context.getAmdCollection().put(AutosarScoping.getPackageName(nameSpace, shortName), (AbstractAmdItem)comp);
    }

    private void convertInterface(ClientServerInterface arInterface) {
        String shortName = arInterface.getShortName();
        String nameSpace = this.getNameSpace((GIdentifiable)arInterface);
        String packagePath = this.getARPath((GIdentifiable)arInterface);
        AmdCSInterface comp = new AmdCSInterface(shortName, arInterface.getUuid(), nameSpace);
        this.context.getLogger().info("processing Client/Server-interface [" + packagePath + "]");
        for (OperationPrototype op : arInterface.getOperations()) {
            String methodName = op.getShortName();
            MethodT asdMethod = AmdFactory.createMethod((String)methodName, (String)op.getUuid());
            if (op.getPossibleErrors().isEmpty()) {
                AmdFactory.addReturnValueToMethod((MethodT)asdMethod);
            } else {
                String enumRef = String.valueOf(packagePath) + "_AppError";
                AmdFactory.addReturnValueToMethod((MethodT)asdMethod, (String)enumRef);
            }
            for (ArgumentPrototype arg : op.getArguments()) {
                ElementAttributesT elementAttributes;
                ElementT amdArg = AmdFactory.addArgumentToMethod((MethodT)asdMethod, (String)arg.getShortName(), (String)arg.getUuid());
                try {
                    elementAttributes = this.setElementAttributes((AbstractAmdComponent)comp, amdArg, (DataPrototype)arg);
                    this.setAutosarDirection(elementAttributes, arg.getDirection().getValue());
                }
                catch (UnsupportedTypeException unsupportedTypeException) {
                    amdArg.setName("invalid_" + arg.getShortName());
                    elementAttributes = this.setDummyElementAttributes((AbstractAmdComponent)comp, amdArg);
                    this.setAutosarDirection(elementAttributes, arg.getDirection().getValue());
                }
            }
            comp.addMethod(asdMethod);
        }
        if (!arInterface.getPossibleErrors().isEmpty()) {
            AmdEnum enumType = AmdFactory.createEnumType((String)(String.valueOf(shortName) + "_AppError"), null, (String)nameSpace);
            for (ApplicationError apErr : arInterface.getPossibleErrors()) {
                enumType.addEnumerator(BigInteger.valueOf(apErr.getErrorCode().intValue()), apErr.getShortName());
            }
            enumType.save(this.config.getOutputFolder());
        }
        comp.setServiceFlag(arInterface.getIsService().booleanValue());
        this.context.getAmdCollection().put(packagePath, (AbstractAmdItem)comp);
    }

    private void convertRecordType(RecordType rec) {
        String shortName = rec.getShortName();
        String nameSpace = this.getNameSpace((GIdentifiable)rec);
        AmdRecord comp = new AmdRecord(shortName, rec.getUuid(), nameSpace);
        this.context.getLogger().info("processing Record type [" + AutosarScoping.getPackageName(nameSpace, shortName) + "]");
        for (RecordElement recElem : rec.getElements()) {
            ElementAttributesT elementAttributes;
            ElementT amdRecordElement = AmdFactory.createRecordElement((String)recElem.getShortName(), (String)recElem.getUuid());
            try {
                elementAttributes = this.setElementAttributes((AbstractAmdComponent)comp, amdRecordElement, (DataPrototype)recElem);
                AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)true);
                comp.addElement(amdRecordElement);
            }
            catch (UnsupportedTypeException unsupportedTypeException) {
                amdRecordElement.setName("invalid_" + recElem.getShortName());
                elementAttributes = this.setDummyElementAttributes((AbstractAmdComponent)comp, amdRecordElement);
                AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)true);
                comp.addElement(amdRecordElement);
            }
        }
        this.context.getAmdCollection().put(String.valueOf(nameSpace) + "/" + shortName, (AbstractAmdItem)comp);
    }

    private void convertIntegerType(IntegerType arType) {
        CompuMethod compuMethod = this.getCompuMethodOfType((PrimitiveType)arType);
        if (compuMethod == null) {
            return;
        }
        if (compuMethod.getCategory().equals("TEXTTABLE")) {
            Compu compuInternalToPhys = compuMethod.getCompuInternalToPhys();
            if (compuInternalToPhys == null) {
                return;
            }
            String shortName = compuMethod.getShortName();
            String nameSpace = this.getNameSpace((GIdentifiable)arType);
            this.context.getLogger().info("processing CompuMethod as candidate for an enumeration [" + AutosarScoping.getPackageName(nameSpace, shortName) + "]");
            CompuScales compuScales = (CompuScales)compuInternalToPhys.getCompuContentType();
            if (compuScales.getCompuScales().size() > 0) {
                Map<Long, String> sortedCompuScales = this.getNumberToEnumMapping(arType, compuScales);
                if (!this.context.getLogger().hasErrors()) {
                    if (!StringUtils.equals((String)compuMethod.getCategory(), (String)"TEXTTABLE")) {
                        this.context.getLogger().reportExpectingCategory(compuMethod.getCategory(), shortName);
                    }
                    AmdEnum amdEnumType = new AmdEnum(arType.getShortName(), arType.getUuid(), nameSpace);
                    for (Long i : sortedCompuScales.keySet()) {
                        amdEnumType.addEnumerator(BigInteger.valueOf(i), sortedCompuScales.get(i));
                    }
                    amdEnumType.save(this.config.getOutputFolder());
                }
            }
        }
    }

    protected Map<Long, String> getNumberToEnumMapping(IntegerType arType, CompuScales compuScales) {
        HashMap<Long, String> sortedCompuScales = new HashMap<Long, String>();
        for (CompuScale cs : compuScales.getCompuScales()) {
            long intVal = CompuScaleUtil.getEnumValue((GCompuScale)cs, this.context.getLogger());
            String enumLabel = CompuScaleUtil.getEnumLabel((GCompuScale)cs);
            if (StringUtils.isEmpty((String)enumLabel)) {
                String intValAsString = Long.toString(intVal);
                this.context.getLogger().reportInvalidEnumLabel(arType.getShortName(), intValAsString);
                sortedCompuScales.put(intVal, "_" + intValAsString);
                continue;
            }
            sortedCompuScales.put(intVal, enumLabel);
        }
        return sortedCompuScales;
    }

    private boolean convertCompuMethods(CompuMethod elem) {
        try {
            FormulaComplexType f = this.convertToAmdFormula(elem);
            if (f != null) {
                this.context.addFormula(f);
            }
        }
        catch (Exception e) {
            this.context.getLogger().reportNotConvertCompuMethod(elem.getShortName(), e.getMessage());
            this.context.getLogger().error(e.getMessage());
            return false;
        }
        return true;
    }

    public FormulaComplexType convertToAmdFormula(CompuMethod elem) throws Exception {
        CompuScales compuScales;
        Compu compuPhysToInternal = elem.getCompuPhysToInternal();
        if (compuPhysToInternal == null && elem.getCompuInternalToPhys() == null) {
            String category = elem.getCategory();
            if (!StringUtils.equals((String)category, (String)"IDENTICAL")) {
                this.context.getLogger().reportDubiousCategory(elem.getShortName(), category, "IDENTICAL");
            }
            return AmdFormulaFactory.createIdentFormula((String)elem.getShortName(), (String)this.getUnitName(elem), (String)this.getUnitRef((GCompuMethod)elem));
        }
        if (compuPhysToInternal != null && (compuScales = (CompuScales)compuPhysToInternal.getCompuContentType()).getCompuScales() != null && compuScales.getCompuScales().size() == 1) {
            CompuScale compuScale = (CompuScale)compuScales.getCompuScales().get(0);
            CompuScaleRationalFormula ratFuncCoeffs = (CompuScaleRationalFormula)compuScale.getCompuScaleContentsType();
            CompuNominatorDenominator denominator = ratFuncCoeffs.getCompuRationalCoeffs().getCompuDenominator();
            CompuNominatorDenominator numerator = ratFuncCoeffs.getCompuRationalCoeffs().getCompuNumerator();
            if (denominator.getVs().size() == 2 && numerator.getVs().size() <= 2) {
                try {
                    return AmdFormulaFactory.createMoebiusFormula((String)elem.getShortName(), (String)this.getUnitName(elem), (String)this.getUnitRef((GCompuMethod)elem), (String)((String)numerator.getVs().get(0)), (String)((String)numerator.getVs().get(1)), (String)((String)denominator.getVs().get(0)), (String)((String)denominator.getVs().get(1)));
                }
                catch (Exception e) {
                    this.context.getLogger().reportNotConvertCompuMethod(elem.getShortName(), e.getMessage());
                    return null;
                }
            }
            if (denominator.getVs().size() == 1 && numerator.getVs().size() == 2) {
                String value = (String)denominator.getVs().get(0);
                if (value == null || value.isEmpty()) {
                    throw new Exception("Invalid empty denominator.");
                }
                Boolean isLinear = false;
                try {
                    Float parsedVal = Float.valueOf(Float.parseFloat(value));
                    isLinear = (double)parsedVal.floatValue() == 1.0;
                }
                catch (Exception exception) {}
                if (isLinear.booleanValue()) {
                    String category = elem.getCategory();
                    if (category != null && !category.equalsIgnoreCase("LINEAR")) {
                        this.context.getLogger().reportDubiousCategory(elem.getShortName(), category, "LINEAR");
                    }
                    try {
                        return AmdFormulaFactory.createLinearFormula((String)elem.getShortName(), (String)this.getUnitName(elem), (String)this.getUnitRef((GCompuMethod)elem), (String)((String)numerator.getVs().get(0)), (String)((String)numerator.getVs().get(1)));
                    }
                    catch (Exception e) {
                        this.context.getLogger().reportNotConvertCompuMethod(elem.getShortName(), e.getMessage());
                    }
                } else {
                    try {
                        return AmdFormulaFactory.createMoebiusFormula((String)elem.getShortName(), (String)this.getUnitName(elem), (String)this.getUnitRef((GCompuMethod)elem), (String)((String)numerator.getVs().get(0)), (String)((String)numerator.getVs().get(1)), (String)((String)denominator.getVs().get(0)), (String)"0");
                    }
                    catch (Exception e) {
                        this.context.getLogger().reportNotConvertCompuMethod(elem.getShortName(), e.getMessage());
                    }
                }
            }
        }
        return null;
    }

    protected void createInterrunnableVariable(AmdASWCType comp, InterRunnableVariable irVar, boolean explicite) {
        ElementT amdIrVar = AmdFactory.createElement((String)irVar.getShortName(), (String)irVar.getUuid());
        try {
            ElementAttributesT elementAttributes = this.setElementAttributes((AbstractAmdComponent)comp, amdIrVar, (DataPrototype)irVar);
            AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)true);
            AmdFactory.setInterrunnable((ElementAttributesT)elementAttributes);
            AmdFactory.setSetGetAttributes((ElementAttributesT)elementAttributes, (boolean)false, (boolean)false);
            this.setCalibrationDefProp((DataPrototype)irVar, elementAttributes, true, false);
            comp.addElement(amdIrVar);
        }
        catch (UnsupportedTypeException unsupportedTypeException) {
            amdIrVar.setName("invalid_" + irVar.getShortName());
            ElementAttributesT elementAttributes = this.setDummyElementAttributes((AbstractAmdComponent)comp, amdIrVar);
            AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)true);
            comp.addElement(amdIrVar);
        }
    }

    private String getUnitName(CompuMethod cm) {
        Unit unit = cm.getUnit();
        if (unit == null) {
            return "";
        }
        SlData3 displayName = unit.getDisplayName();
        if (displayName != null && !displayName.getMixedText().isEmpty()) {
            return displayName.getMixedText();
        }
        return unit.getShortName();
    }

    protected RealizedRunnableT createRealizedRunnable(String name, String portName, OperationPrototype op) {
        RealizedRunnableT runnableT = AmdFactory.createRealizedRunnable((String)name, (String)portName, (String)op.getShortName());
        if (!op.getPossibleErrors().isEmpty()) {
            String enumRef = String.valueOf(this.getARPath((GIdentifiable)op.getClientServerInterface())) + "_AppError";
            AmdFactory.addReturnValueToRealizedMethod((RealizedMethodT)runnableT, (String)enumRef);
        }
        for (ArgumentPrototype arg : op.getArguments()) {
            ElementAttributesT attributes;
            RealizedElementT amdArg = AmdFactory.addArgumentToRunnable((RealizedRunnableT)runnableT, (String)arg.getShortName(), (String)arg.getUuid());
            try {
                attributes = this.setElementAttributesWithoutImpl((ElementT)amdArg, arg.getType());
                this.setAutosarDirection(attributes, arg.getDirection().getValue());
            }
            catch (UnsupportedTypeException unsupportedTypeException) {
                amdArg.setName("invalid_" + arg.getShortName());
                attributes = this.setDummyElementAttributes(null, (ElementT)amdArg);
                this.setAutosarDirection(attributes, arg.getDirection().getValue());
            }
        }
        return runnableT;
    }

    private EventT processTimingEvent(TimingEvent timingEvent) {
        EventT amdEvent = AmdFactory.createAmdEvent((String)timingEvent.getShortName(), (String)timingEvent.getUuid());
        AmdFactory.addTimingToEvent((EventT)amdEvent, (Double)timingEvent.getPeriod());
        return amdEvent;
    }

    private EventT processModeSwitchEvent(ModeSwitchEvent modeSwitchEvent) {
        try {
            ModeSwitchEventMode mode = modeSwitchEvent.getMode();
            if (mode == null) {
                throw new Exception("MODE is not defined");
            }
            String modeDeclRefName = mode.getModeDeclaration().getShortName();
            if (modeDeclRefName != null && modeDeclRefName.isEmpty()) {
                throw new Exception("MODE-DECLARATION-REF is not defined");
            }
            String rPortPrototypeRefName = mode.getRPortPrototype().getShortName();
            if (rPortPrototypeRefName != null && rPortPrototypeRefName.isEmpty()) {
                throw new Exception("R-PORT-PROTOTYPE-REF is not defined");
            }
            String modeDeclGroupRefName = mode.getModeDeclarationGroupPrototype().getShortName();
            if (modeDeclGroupRefName != null && modeDeclGroupRefName.isEmpty()) {
                throw new Exception("MODE-DECLARATION-GROUP-PROTOTYPE-REF is not defined");
            }
            ModeSwitchTypeType kind = modeSwitchEvent.getActivation() == ModeActivationKind.ENTRY ? ModeSwitchTypeType.ENTRY : ModeSwitchTypeType.EXIT;
            EventT amdEvent = AmdFactory.createAmdEvent((String)modeSwitchEvent.getShortName(), (String)modeSwitchEvent.getUuid());
            AmdFactory.addModeToEvent((EventT)amdEvent, (ModeSwitchTypeType)kind, (String)modeDeclRefName, (String)rPortPrototypeRefName, (String)modeDeclGroupRefName);
            return amdEvent;
        }
        catch (NullPointerException nullPointerException) {
            this.context.getLogger().reportInvalidModeSwitchEvent(this.getARPath((GIdentifiable)modeSwitchEvent), "One of the required attributs is not present");
            return null;
        }
        catch (Exception ex) {
            this.context.getLogger().reportInvalidModeSwitchEvent(this.getARPath((GIdentifiable)modeSwitchEvent), ex.getMessage());
            return null;
        }
    }

    private EventT processOperationInvokedEvent(OperationInvokedEvent opEvent) {
        OperationInvokedEventOperation eventOperation = opEvent.getOperation();
        if (eventOperation == null) {
            this.context.getLogger().reportInvalidOperationInvikedEvent(this.getARPath((GIdentifiable)opEvent), "Operation is not defined");
            return null;
        }
        OperationPrototype operationPrototype = eventOperation.getOperationPrototype();
        if (operationPrototype == null) {
            this.context.getLogger().reportInvalidOperationInvikedEvent(this.getARPath((GIdentifiable)opEvent), "Operation is not defined");
            return null;
        }
        String operationName = operationPrototype.getShortName();
        if (operationName == null || operationName.isEmpty()) {
            this.context.getLogger().reportInvalidOperationInvikedEvent(this.getARPath((GIdentifiable)opEvent), "Operation name is not defined");
            return null;
        }
        PPortPrototype pPortPrototype = eventOperation.getPPortPrototype();
        if (pPortPrototype == null) {
            this.context.getLogger().reportInvalidOperationInvikedEvent(this.getARPath((GIdentifiable)opEvent), "Provide Port is not defined");
            return null;
        }
        String portName = pPortPrototype.getShortName();
        if (portName == null || portName.isEmpty()) {
            this.context.getLogger().reportInvalidOperationInvikedEvent(this.getARPath((GIdentifiable)opEvent), "Provide Port name is not defined");
            return null;
        }
        EventT amdEvent = AmdFactory.createAmdEvent((String)opEvent.getShortName(), (String)opEvent.getUuid());
        AmdFactory.addOperationInvokedToEvent((EventT)amdEvent, (String)operationName, (String)portName);
        return amdEvent;
    }

    private void processModeDisablingEvent(RTEEvent event, EventT amdEvent) {
        for (ModeDisablingDependencyDependentOnMode item : event.getModeDependency().getDependentOnModes()) {
            String modeDeclRefName = item.getModeDeclaration().getShortName();
            if (modeDeclRefName == null || modeDeclRefName.isEmpty()) {
                this.context.getLogger().reportUnresolvedModeDeclRef(this.getARPath((GIdentifiable)item.getModeDeclaration()));
                continue;
            }
            String rPortPrototypeRefName = item.getRPortPrototype().getShortName();
            if (rPortPrototypeRefName == null || rPortPrototypeRefName.isEmpty()) {
                this.context.getLogger().reportUnresolvedPortRef(this.getARPath((GIdentifiable)item.getRPortPrototype()));
                continue;
            }
            String modeDeclGroupRefName = item.getModeDeclarationGroupPrototype().getShortName();
            if (modeDeclGroupRefName == null || modeDeclGroupRefName.isEmpty()) {
                this.context.getLogger().reportUnresolvedModeDeclGroupRef(this.getARPath((GIdentifiable)item.getModeDeclarationGroupPrototype()));
                continue;
            }
            AmdFactory.addModeDisablingDependencyToEvent((EventT)amdEvent, (String)modeDeclRefName, (String)rPortPrototypeRefName, (String)modeDeclGroupRefName);
        }
    }

    private ElementAttributesT setElementAttributes(AbstractAmdComponent parent, ElementT elem, DataPrototype dataElement) throws UnsupportedTypeException {
        Datatype type = dataElement.getType();
        if (type == null) {
            this.context.getLogger().reportElementWithOutType(elem.getName());
            throw new UnsupportedTypeException();
        }
        AbstractAmdType amdType = this.createElementAttributes(type);
        if (amdType != null) {
            ElementAttributesT modelAttributes = amdType.createModelAttributes();
            elem.setElementAttributes(modelAttributes);
            ImplementationEntryT implAttributes = amdType.createImplAttributes(elem.getName());
            try {
                AmdFactory.setMemClass((ImplementationEntryT)implAttributes, (String)this.getAddrMethod(dataElement));
                AmdFactory.setPolicy((ImplementationEntryT)implAttributes, (String)this.getImplPolicy(dataElement));
            }
            catch (UsupportedVariantioPointException usupportedVariantioPointException) {
                this.context.getLogger().reportUnsupportedVariations("DataDefProps of " + this.getARPath((GIdentifiable)dataElement));
            }
            parent.addImplementation(implAttributes);
            return modelAttributes;
        }
        return null;
    }

    private ElementAttributesT setElementAttributesWithoutImpl(ElementT elem, Datatype type) throws UnsupportedTypeException {
        if (type == null) {
            this.context.getLogger().reportElementWithOutType(elem.getName());
            throw new UnsupportedTypeException();
        }
        AbstractAmdType amdType = this.createElementAttributes(type);
        if (amdType != null) {
            ElementAttributesT modelAttributes = amdType.createModelAttributes();
            elem.setElementAttributes(modelAttributes);
            return modelAttributes;
        }
        return null;
    }

    private AbstractAmdType createElementAttributes(Datatype type) throws UnsupportedTypeException {
        if (type instanceof IntegerType) {
            String upper;
            IntegerType nt = (IntegerType)type;
            if (this.hasTexttable((PrimitiveType)nt)) {
                return new AmdEnumType(this.getARPath((GIdentifiable)type));
            }
            String lower = nt.getLowerLimit() != null ? nt.getLowerLimit().getValue() : "";
            String string = upper = nt.getUpperLimit() != null ? nt.getUpperLimit().getValue() : "";
            if (StringUtils.isBlank((String)lower)) {
                this.context.getLogger().reportInvalidLimitValue(this.getARPath((GIdentifiable)type), lower);
            }
            if (StringUtils.isBlank((String)upper)) {
                this.context.getLogger().reportInvalidLimitValue(this.getARPath((GIdentifiable)type), upper);
            }
            String asdImplType = AmdNumericType.selectImplTypeFromLimits((String)lower, (String)upper);
            CompuMethod compuMethod = this.getCompuMethodOfType((PrimitiveType)nt);
            if (compuMethod != null) {
                return AmdNumericType.createFixPointType((String)asdImplType, (String)lower, (String)upper, (FormulaComplexType)this.context.getAmdFormula(compuMethod.getShortName()));
            }
            return AmdNumericType.createFixPointType((String)asdImplType, (String)lower, (String)upper);
        }
        if (type instanceof BooleanType) {
            return new AmdLogicType();
        }
        if (type instanceof RealType) {
            return AmdNumericType.createRealSingleType();
        }
        if (type instanceof RecordType) {
            return new AmdRecordType(this.getARPath((GIdentifiable)type));
        }
        if (type instanceof ArrayType) {
            try {
                ArrayElement arrrayElem = ((ArrayType)type).getElement();
                Integer maxNumberOfElements = arrrayElem.getMaxNumberOfElements();
                AbstractAmdType arrayElementAttributes = this.createElementAttributes(arrrayElem.getType());
                if (arrayElementAttributes instanceof AbstractAmdScalarType) {
                    return new AmdArrayType(maxNumberOfElements.intValue(), (AbstractAmdScalarType)arrayElementAttributes);
                }
                if (arrayElementAttributes instanceof AmdArrayType) {
                    this.context.getLogger().reportArrayElementArrayType(this.getARPath((GIdentifiable)type), this.getARPath((GIdentifiable)arrrayElem.getType()));
                } else {
                    this.context.getLogger().reportArrayElementTypeMismatch(this.getARPath((GIdentifiable)type), this.getARPath((GIdentifiable)arrrayElem.getType()));
                }
            }
            catch (Exception ex) {
                this.context.getLogger().reportIncompleteTypeDefinition(this.getARPath((GIdentifiable)type), ex.getMessage());
            }
            return new AmdArrayType(1, (AbstractAmdScalarType)AmdNumericType.createRealSingleType());
        }
        if (type instanceof CharType || type instanceof StringType) {
            this.context.getLogger().reportUnsupportedStringType(type.getShortName());
            return AmdNumericType.createCharType();
        }
        this.context.getLogger().reportUnsupportedType(this.getARPath((GIdentifiable)type), type.getCategory());
        throw new UnsupportedTypeException();
    }

    private CompuMethod getCompuMethodOfType(PrimitiveType elem) {
        SwDataDefProps swDataDefProps = elem.getSwDataDefProps();
        if (swDataDefProps == null) {
            return null;
        }
        return swDataDefProps.getCompuMethod();
    }

    protected boolean hasTexttable(PrimitiveType type) {
        String cmCategory;
        CompuMethod compuMethod = this.getCompuMethodOfType(type);
        return compuMethod != null && (cmCategory = compuMethod.getCategory()).equalsIgnoreCase("TEXTTABLE");
    }

    protected void setCalibrationDefProp(DataPrototype dataElement, ElementAttributesT elementAttributes, boolean read, boolean write) {
        SwDataDefProps swDataDefProps = dataElement.getSwDataDefProps();
        if (swDataDefProps != null && swDataDefProps.isSetSwCalibrationAccess()) {
            SwCalibrationAccessEnum swCalibrationAccess = swDataDefProps.getSwCalibrationAccess();
            switch (swCalibrationAccess) {
                case READ_ONLY: {
                    AmdFactory.setCalibration((ElementAttributesT)elementAttributes, (boolean)true, (boolean)false);
                    break;
                }
                case READ_WRITE: {
                    AmdFactory.setCalibration((ElementAttributesT)elementAttributes, (boolean)true, (boolean)true);
                    break;
                }
                default: {
                    AmdFactory.setCalibration((ElementAttributesT)elementAttributes, (boolean)false, (boolean)false);
                }
            }
            return;
        }
        AmdFactory.setCalibration((ElementAttributesT)elementAttributes, (boolean)read, (boolean)write);
    }

    protected String getAddrMethod(DataPrototype dataElement) throws UsupportedVariantioPointException {
        SwDataDefProps swDataDefProps = dataElement.getSwDataDefProps();
        if (swDataDefProps == null) {
            return null;
        }
        SwAddrMethod swMemClass = swDataDefProps.getSwAddrMethod();
        if (swMemClass == null) {
            return null;
        }
        return swMemClass.getShortName();
    }

    protected String getImplPolicy(DataPrototype dataElement) throws UsupportedVariantioPointException {
        SwDataDefProps swDataDefProps = dataElement.getSwDataDefProps();
        if (swDataDefProps == null) {
            return null;
        }
        if (swDataDefProps.isSetSwImplPolicy()) {
            return swDataDefProps.getSwImplPolicy().getLiteral();
        }
        return null;
    }

    protected String getLowerLimit(PhysConstrs constrain) {
        Limit lowerLimit = constrain.getLowerLimit();
        if (lowerLimit != null) {
            if (lowerLimit.getIntervalType() == IntervalTypeEnum.INFINITE) {
                return "-INF";
            }
            return lowerLimit.getMixedText();
        }
        return null;
    }

    protected String getUpperLimit(PhysConstrs constrain) {
        Limit upperLimit = constrain.getUpperLimit();
        if (upperLimit != null) {
            if (upperLimit.getIntervalType() == IntervalTypeEnum.INFINITE) {
                return "INF";
            }
            return upperLimit.getMixedText();
        }
        return null;
    }
}

