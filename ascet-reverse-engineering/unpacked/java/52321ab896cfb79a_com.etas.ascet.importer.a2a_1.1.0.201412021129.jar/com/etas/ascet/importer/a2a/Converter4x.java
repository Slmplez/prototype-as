/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  autosar40.autosartoplevelstructure.AUTOSAR
 *  autosar40.commonstructure.implementationdatatypes.ImplementationDataType
 *  autosar40.commonstructure.modedeclaration.ModeActivationKind
 *  autosar40.commonstructure.modedeclaration.ModeDeclaration
 *  autosar40.commonstructure.modedeclaration.ModeDeclarationGroup
 *  autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype
 *  autosar40.genericstructure.generaltemplateclasses.arpackage.ARPackage
 *  autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement
 *  autosar40.swcomponent.components.ApplicationSwComponentType
 *  autosar40.swcomponent.components.PPortPrototype
 *  autosar40.swcomponent.components.PortPrototype
 *  autosar40.swcomponent.components.instancerefs.POperationInAtomicSwcInstanceRef
 *  autosar40.swcomponent.components.instancerefs.RModeInAtomicSwcInstanceRef
 *  autosar40.swcomponent.datatype.computationmethod.CompuMethod
 *  autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement
 *  autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype
 *  autosar40.swcomponent.datatype.dataprototypes.DataPrototype
 *  autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype
 *  autosar40.swcomponent.datatype.datatypes.ApplicationDataType
 *  autosar40.swcomponent.datatype.datatypes.ApplicationRecordDataType
 *  autosar40.swcomponent.datatype.datatypes.AutosarDataType
 *  autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet
 *  autosar40.swcomponent.portinterface.ArgumentDataPrototype
 *  autosar40.swcomponent.portinterface.ClientServerOperation
 *  autosar40.swcomponent.portinterface.PortInterface
 *  autosar40.swcomponent.swcinternalbehavior.RunnableEntity
 *  autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior
 *  autosar40.swcomponent.swcinternalbehavior.rteevents.OperationInvokedEvent
 *  autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent
 *  autosar40.swcomponent.swcinternalbehavior.rteevents.SwcModeSwitchEvent
 *  autosar40.swcomponent.swcinternalbehavior.rteevents.TimingEvent
 *  com.etas.amd.core.DataAccess
 *  com.etas.amd.core.IElementAttributes
 *  com.etas.amd.core.init.AbstractAmdInitValue
 *  com.etas.amd.core.type.AbstractAmdType
 *  com.etas.amd.core.util.AbstractAmdComponent
 *  com.etas.amd.core.util.AbstractAmdItem
 *  com.etas.amd.core.util.AmdASWCType
 *  com.etas.amd.core.util.AmdFactory
 *  com.etas.amd.core.util.AmdModeDeclarationGroup
 *  com.etas.amd.core.util.AmdRecord
 *  com.etas.amd620.core.ComponentMain.ElementAttributesT
 *  com.etas.amd620.core.ComponentMain.ElementT
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
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GOperationInvokedEvent
 *  org.apache.commons.lang.StringUtils
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 */
package com.etas.ascet.importer.a2a;

import autosar40.autosartoplevelstructure.AUTOSAR;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataType;
import autosar40.commonstructure.modedeclaration.ModeActivationKind;
import autosar40.commonstructure.modedeclaration.ModeDeclaration;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroup;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARPackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.swcomponent.components.ApplicationSwComponentType;
import autosar40.swcomponent.components.PPortPrototype;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.components.instancerefs.POperationInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.RModeInAtomicSwcInstanceRef;
import autosar40.swcomponent.datatype.computationmethod.CompuMethod;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.datatype.datatypes.ApplicationDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationRecordDataType;
import autosar40.swcomponent.datatype.datatypes.AutosarDataType;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;
import autosar40.swcomponent.portinterface.ArgumentDataPrototype;
import autosar40.swcomponent.portinterface.ClientServerOperation;
import autosar40.swcomponent.portinterface.PortInterface;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import autosar40.swcomponent.swcinternalbehavior.rteevents.OperationInvokedEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.SwcModeSwitchEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.TimingEvent;
import com.etas.amd.core.DataAccess;
import com.etas.amd.core.IElementAttributes;
import com.etas.amd.core.init.AbstractAmdInitValue;
import com.etas.amd.core.type.AbstractAmdType;
import com.etas.amd.core.util.AbstractAmdComponent;
import com.etas.amd.core.util.AbstractAmdItem;
import com.etas.amd.core.util.AmdASWCType;
import com.etas.amd.core.util.AmdFactory;
import com.etas.amd.core.util.AmdModeDeclarationGroup;
import com.etas.amd.core.util.AmdRecord;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;
import com.etas.amd620.core.ComponentMain.ElementT;
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
import com.etas.ascet.importer.a2a.element.CompositeElementAttributesImpl;
import com.etas.ascet.importer.a2a.element.DataPrototypeConverter;
import com.etas.ascet.importer.a2a.element.ElementAttributesImpl;
import com.etas.ascet.importer.a2a.element.InitDataConverter;
import com.etas.ascet.importer.a2a.element.PortPrototypeConverter;
import com.etas.ascet.importer.a2a.exceptions.InvalidOperationInvokedException;
import com.etas.ascet.importer.a2a.type.AutosarDataTypeConverter;
import com.etas.ascet.importer.a2a.util.AutosarScoping;
import com.etas.ascet.importer.a2a.util.CompuMethodConverter;
import com.google.common.collect.Iterators;
import com.google.common.collect.UnmodifiableIterator;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GOperationInvokedEvent;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.commons.lang.StringUtils;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;

public class Converter4x
extends Converter {
    @Override
    public boolean convert() {
        this.context.initDataTypeMapping((ResourceSet)this.resSet);
        if (!this.collectFormulae()) {
            return false;
        }
        if (!this.collectSoftwareComponents()) {
            return false;
        }
        this.progress.subTask("browse over packages");
        this.context.clearMappings();
        EList resources = this.getEmfRessourceSet().getResources();
        ProgressCalculator progressCalc = new ProgressCalculator(resources.size(), 10);
        for (Resource res : resources) {
            AUTOSAR autosar = (AUTOSAR)res.getContents().get(0);
            for (ARPackage p : autosar.getArPackages()) {
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
        AutosarStandaloneSetup.doSetupForAutosar40();
    }

    private boolean collectFormulae() {
        EList resources = this.getEmfRessourceSet().getResources();
        this.progress.subTask("browse over compu-methods");
        ProgressCalculator progressCalc = new ProgressCalculator(resources.size(), 10);
        this.context.getLogger().info("collecting formulae ...");
        for (Resource res : resources) {
            AUTOSAR autosar = (AUTOSAR)res.getContents().get(0);
            for (ARPackage p : autosar.getArPackages()) {
                this.convertCompuMethods(p);
                if (!this.progress.isCanceled()) continue;
                return false;
            }
            this.progress.worked(progressCalc.amountPerWorkItem());
        }
        this.context.getLogger().info("collecting formulae done");
        this.progress.worked(progressCalc.amountForRest());
        return true;
    }

    private boolean collectSoftwareComponents() {
        EList resources = this.getEmfRessourceSet().getResources();
        this.progress.subTask("browse over software components and interafces");
        ProgressCalculator progressCalc = new ProgressCalculator(resources.size(), 20);
        for (Resource res : resources) {
            AUTOSAR autosar = (AUTOSAR)res.getContents().get(0);
            for (ARPackage p : autosar.getArPackages()) {
                try {
                    UnmodifiableIterator aswcIterator = Iterators.filter((Iterator)p.eAllContents(), ApplicationSwComponentType.class);
                    while (aswcIterator.hasNext()) {
                        ApplicationSwComponentType aswc = (ApplicationSwComponentType)aswcIterator.next();
                        SwcInternalBehavior swcInternalBehavior = this.getInternalBehavior(aswc);
                        this.updateTypeMappingForCurrentSWC(swcInternalBehavior);
                        this.collectRecordsAndEnumerations();
                        this.convertASWC(aswc);
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

    private void convertCompuMethods(ARPackage p) {
        try {
            UnmodifiableIterator cmIterator = Iterators.filter((Iterator)p.eAllContents(), CompuMethod.class);
            while (cmIterator.hasNext()) {
                if (this.convertCompuMethod((CompuMethod)cmIterator.next())) continue;
                return;
            }
        }
        catch (NoSuchElementException noSuchElementException) {
            this.context.getLogger().warn("NoSuchElementException occured during converting of CompuMethods in package " + p.getShortName());
        }
        catch (UnsupportedOperationException unsupportedOperationException) {
            this.context.getLogger().warn("UnsupportedOperationException occured during converting of CompuMethods in package " + p.getShortName());
        }
    }

    private void collectRecordsAndEnumerations() {
        EList resources = this.getEmfRessourceSet().getResources();
        for (Resource res : resources) {
            AUTOSAR autosar = (AUTOSAR)res.getContents().get(0);
            for (ARPackage p : autosar.getArPackages()) {
                try {
                    UnmodifiableIterator implTypeSet = Iterators.filter((Iterator)p.eAllContents(), ImplementationDataType.class);
                    while (implTypeSet.hasNext()) {
                        this.convertEnumerationType((AutosarDataType)implTypeSet.next());
                    }
                    UnmodifiableIterator applTypeSet = Iterators.filter((Iterator)p.eAllContents(), ApplicationDataType.class);
                    while (applTypeSet.hasNext()) {
                        ApplicationDataType applType = (ApplicationDataType)applTypeSet.next();
                        if (applType instanceof ApplicationRecordDataType) {
                            this.convertRecordType((ApplicationRecordDataType)applType);
                            continue;
                        }
                        this.convertEnumerationType((AutosarDataType)applType);
                    }
                }
                catch (NoSuchElementException noSuchElementException) {
                }
                catch (UnsupportedOperationException unsupportedOperationException) {}
            }
        }
    }

    private void browseOverPackage(ARPackage p) {
        for (PackageableElement elem : p.getElements()) {
            if (elem instanceof PortPrototype) {
                PortPrototypeConverter.visitInterface((PortInterface)elem, this.context);
                continue;
            }
            if (elem instanceof ModeDeclarationGroup) {
                this.convertModeDeclarationGroups((ModeDeclarationGroup)elem);
                continue;
            }
            if (!(elem instanceof ApplicationDataType)) continue;
            this.convertEnumerationType((AutosarDataType)((ApplicationDataType)elem));
        }
        for (ARPackage sub : p.getArPackages()) {
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

    private void convertInternalBehavior(SwcInternalBehavior behavior, AmdASWCType comp) {
        if (behavior == null) {
            return;
        }
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
            } else if (event instanceof SwcModeSwitchEvent) {
                amdEvent = this.processModeSwitchEvent((SwcModeSwitchEvent)event);
            } else if (event instanceof TimingEvent) {
                amdEvent = this.processTimingEvent((TimingEvent)event);
            }
            if (amdEvent == null) continue;
            if (event.getDisabledModes() != null) {
                this.processModeDisablingEvent(event, amdEvent);
            }
            if ((runnableEntity = event.getStartOnEvent()) != null) {
                AmdFactory.addRunnableToEvent((EventT)amdEvent, (String)runnableEntity.getShortName(), (BigInteger)BigInteger.ZERO);
            }
            comp.addEvent(amdEvent);
        }
        for (VariableDataPrototype irVar : behavior.getImplicitInterRunnableVariables()) {
            this.createInterrunnableVariable(comp, irVar, false);
        }
        for (VariableDataPrototype irVar : behavior.getExplicitInterRunnableVariables()) {
            this.createInterrunnableVariable(comp, irVar, true);
        }
        for (RunnableEntity run : behavior.getRunnables()) {
            this.context.getLogger().info("processing Runnable [" + this.getARPath((GIdentifiable)run) + "]");
            String name = run.getShortName();
            OperationInvokedEvent opInvokedEvent = (OperationInvokedEvent)isActivatedByOperationInvokedEvent.get(name);
            if (opInvokedEvent != null) {
                try {
                    String runName = this.getRunnableNameToCall((GOperationInvokedEvent)opInvokedEvent);
                    String portName = this.getPortName((GOperationInvokedEvent)opInvokedEvent);
                    ClientServerOperation operationPrototype = opInvokedEvent.getOperation().getTargetProvidedOperation();
                    RealizedRunnableT amdRunnable = this.createRealizedRunnable(runName, portName, operationPrototype);
                    String uuid = run.getUuid();
                    if (!StringUtils.isEmpty((String)uuid)) {
                        amdRunnable.setUUID(run.getUuid());
                    }
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

    private void convertASWC(ApplicationSwComponentType aswc) {
        String nameSpace = this.getNameSpace((GIdentifiable)aswc);
        String shortName = aswc.getShortName();
        this.context.getLogger().info("processing ASWC [" + AutosarScoping.getPackageName(nameSpace, shortName) + "]");
        AmdASWCType comp = new AmdASWCType(shortName, aswc.getUuid(), nameSpace);
        for (PortPrototype port : aswc.getPorts()) {
            PortPrototypeConverter portPrototypeConverter = new PortPrototypeConverter(port, this.context);
            ElementT convertedAmdPort = portPrototypeConverter.convert(nameSpace, comp);
            if (convertedAmdPort == null) continue;
            comp.addElement(convertedAmdPort);
        }
        SwcInternalBehavior swcInternalBehavior = this.getInternalBehavior(aswc);
        this.convertInternalBehavior(swcInternalBehavior, comp);
        this.addComponent((AbstractAmdComponent)comp);
        comp.save(this.config.getOutputFolder());
    }

    private void convertRecordType(ApplicationRecordDataType recordType) {
        AmdRecord comp = new AmdRecord(recordType.getShortName(), recordType.getUuid(), this.getNameSpace((GIdentifiable)recordType));
        String packagePath = this.getARPath((GIdentifiable)recordType);
        this.context.getLogger().info("processing Record type [" + packagePath + "]");
        for (ApplicationRecordElement recElem : recordType.getElements()) {
            CompositeElementAttributesImpl attributesImpl;
            ElementT amdRecordElement = AmdFactory.createRecordElement((String)recElem.getShortName(), (String)recElem.getUuid());
            ElementAttributesT elementAttributes = comp.setElementAttributes(amdRecordElement, (IElementAttributes)(attributesImpl = new CompositeElementAttributesImpl(recElem, this.context)));
            if (elementAttributes == null) {
                amdRecordElement.setName("invalid_" + recElem.getShortName());
                elementAttributes = this.setDummyElementAttributes((AbstractAmdComponent)comp, amdRecordElement);
            }
            AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)true);
            comp.addElement(amdRecordElement);
        }
        this.context.getAmdCollection().put(packagePath, (AbstractAmdItem)comp);
    }

    private void convertEnumerationType(AutosarDataType arType) {
        AutosarDataTypeConverter typeConverter = new AutosarDataTypeConverter(arType, this.context);
        typeConverter.convertToEnum();
    }

    private boolean convertCompuMethod(CompuMethod elem) {
        CompuMethodConverter compuMethodUtil = new CompuMethodConverter((GCompuMethod)elem, this.config);
        FormulaComplexType f = compuMethodUtil.convertToAmdFormula(this.context.getLogger());
        if (f != null) {
            this.context.addFormula(f);
        }
        return true;
    }

    private void createInterrunnableVariable(AmdASWCType comp, VariableDataPrototype irVar, boolean explicite) {
        ElementAttributesImpl elem;
        ElementT amdIrVar = AmdFactory.createElement((String)irVar.getShortName(), (String)irVar.getUuid());
        ElementAttributesT elementAttributes = comp.setElementAttributes(amdIrVar, (IElementAttributes)(elem = new ElementAttributesImpl((AutosarDataPrototype)irVar, this.context)));
        if (elementAttributes != null) {
            AmdFactory.setSetGetAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)true);
            AmdFactory.setInterrunnable((ElementAttributesT)elementAttributes);
            AmdFactory.setInterrunnableExplicit((ElementAttributesT)elementAttributes, (boolean)explicite);
            DataAccess access = DataPrototypeConverter.getCalibrationDefProp((DataPrototype)irVar, DataAccess.createReadWriteAccess());
            if (access == null) {
                AmdFactory.setCalibration((ElementAttributesT)elementAttributes, (boolean)true, (boolean)false);
            } else {
                AmdFactory.setCalibration((ElementAttributesT)elementAttributes, (boolean)access.isRead(), (boolean)access.isWrite());
            }
            AbstractAmdInitValue amdInitValue = InitDataConverter.getInitValue(elem, irVar.getInitValue(), "Data", this.context);
            if (amdInitValue != null) {
                amdInitValue.addDataSet((AbstractAmdComponent)comp, "Data", elem.getName());
            }
            comp.addElement(amdIrVar);
        } else {
            amdIrVar.setName("invalid_" + irVar.getShortName());
            elementAttributes = this.setDummyElementAttributes((AbstractAmdComponent)comp, amdIrVar);
            AmdFactory.setDirectionAttributes((ElementAttributesT)elementAttributes, (boolean)true, (boolean)true);
            comp.addElement(amdIrVar);
        }
    }

    private void updateTypeMappingForCurrentSWC(SwcInternalBehavior swcInternalBehavior) {
        this.context.clearMappings();
        if (swcInternalBehavior == null) {
            return;
        }
        EList dataTypeMappings = swcInternalBehavior.getDataTypeMappings();
        if (dataTypeMappings == null || dataTypeMappings.size() <= 0) {
            return;
        }
        for (DataTypeMappingSet mapping : dataTypeMappings) {
            this.context.addMapping(mapping.getShortName());
        }
    }

    private SwcInternalBehavior getInternalBehavior(ApplicationSwComponentType aswc) {
        if (aswc.getInternalBehaviors().size() == 1) {
            return (SwcInternalBehavior)aswc.getInternalBehaviors().get(0);
        }
        this.context.getLogger().reportUnsupportedUseCase("there is more than one internal behaviors specified on ASWC " + this.getARPath((GIdentifiable)aswc));
        return null;
    }

    private RealizedRunnableT createRealizedRunnable(String name, String portName, ClientServerOperation op) {
        RealizedRunnableT runnableT = AmdFactory.createRealizedRunnable((String)name, (String)portName, (String)op.getShortName());
        if (!op.getPossibleErrors().isEmpty()) {
            String enumRef = String.valueOf(this.getARPath((GIdentifiable)op.getClientServerInterface())) + "_AppError";
            AmdFactory.addReturnValueToRealizedMethod((RealizedMethodT)runnableT, (String)enumRef);
        }
        for (ArgumentDataPrototype arg : op.getArguments()) {
            RealizedElementT amdArg = AmdFactory.addArgumentToRunnable((RealizedRunnableT)runnableT, (String)arg.getShortName(), (String)arg.getUuid());
            ElementAttributesImpl attributesImpl = new ElementAttributesImpl((AutosarDataPrototype)arg, this.context);
            AbstractAmdType amdType = AbstractAmdComponent.createElementType((IElementAttributes)attributesImpl);
            ElementAttributesT attributes = amdType.createModelAttributes();
            if (attributes != null) {
                amdArg.setElementAttributes(attributes);
            } else {
                amdArg.setName("invalid_" + arg.getShortName());
                attributes = this.setDummyElementAttributes(null, (ElementT)amdArg);
            }
            DataAccess direction = DataPrototypeConverter.getArgumentDirection(arg.getDirection().getValue());
            AmdFactory.setDirectionAttributes((ElementAttributesT)attributes, (DataAccess)direction);
        }
        return runnableT;
    }

    private EventT processTimingEvent(TimingEvent timingEvent) {
        EventT amdEvent = AmdFactory.createAmdEvent((String)timingEvent.getShortName(), (String)timingEvent.getUuid());
        AmdFactory.addTimingToEvent((EventT)amdEvent, (Double)timingEvent.getPeriod());
        return amdEvent;
    }

    private EventT processModeSwitchEvent(SwcModeSwitchEvent modeSwitchEvent) {
        block10: {
            EList modes = modeSwitchEvent.getModes();
            if (modes == null) {
                throw new Exception("MODE is not defined");
            }
            if (modes.size() == 1) {
                String modeDeclGroupRefName;
                RModeInAtomicSwcInstanceRef mode = (RModeInAtomicSwcInstanceRef)modes.get(0);
                String modeDeclRefName = mode.getTargetModeDeclaration().getShortName();
                if (modeDeclRefName != null && modeDeclRefName.isEmpty()) {
                    throw new Exception("MODE-DECLARATION-REF is not defined");
                }
                String rPortPrototypeRefName = mode.getContextPort().getShortName();
                if (rPortPrototypeRefName != null && rPortPrototypeRefName.isEmpty()) {
                    throw new Exception("R-PORT-PROTOTYPE-REF is not defined");
                }
                ModeDeclarationGroupPrototype modeDeclarationGroupPrototype = mode.getContextModeDeclarationGroupPrototype();
                String string = modeDeclGroupRefName = modeDeclarationGroupPrototype != null ? modeDeclarationGroupPrototype.getShortName() : "";
                if (modeDeclGroupRefName != null && modeDeclGroupRefName.isEmpty()) {
                    throw new Exception("MODE-DECLARATION-GROUP-PROTOTYPE-REF is not defined");
                }
                ModeSwitchTypeType kind = modeSwitchEvent.getActivation() == ModeActivationKind.ON_ENTRY ? ModeSwitchTypeType.ENTRY : ModeSwitchTypeType.EXIT;
                EventT amdEvent = AmdFactory.createAmdEvent((String)modeSwitchEvent.getShortName(), (String)modeSwitchEvent.getUuid());
                AmdFactory.addModeToEvent((EventT)amdEvent, (ModeSwitchTypeType)kind, (String)modeDeclRefName, (String)rPortPrototypeRefName, (String)modeDeclGroupRefName);
                return amdEvent;
            }
            if (modes.size() <= 1) break block10;
            if (modeSwitchEvent.getActivation() != ModeActivationKind.ON_TRANSITION) {
                this.context.getLogger().warn("Internal: Found a mode switch event, which looks like an activation on transition. But found :" + modeSwitchEvent.getActivation().toString());
            }
            this.context.getLogger().reportUnsupportedTransitionSwitch(this.getARPath((GIdentifiable)modeSwitchEvent));
            return null;
        }
        try {
            throw new Exception("missing modes definition");
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
        try {
            POperationInAtomicSwcInstanceRef operationRef = opEvent.getOperation();
            if (operationRef == null) {
                throw new Exception("Operation is not defined");
            }
            ClientServerOperation csOp = operationRef.getTargetProvidedOperation();
            String operationName = csOp.getShortName();
            if (operationName == null || operationName.isEmpty()) {
                throw new Exception("Operation name is not defined");
            }
            PPortPrototype contextPPort = operationRef.getContextPPort();
            String portName = contextPPort.getShortName();
            if (portName == null || portName.isEmpty()) {
                throw new Exception("Port name is not defined");
            }
            EventT amdEvent = AmdFactory.createAmdEvent((String)opEvent.getShortName(), (String)opEvent.getUuid());
            AmdFactory.addOperationInvokedToEvent((EventT)amdEvent, (String)operationName, (String)portName);
            return amdEvent;
        }
        catch (NullPointerException nullPointerException) {
            this.context.getLogger().reportInvalidOperationInvikedEvent(this.getARPath((GIdentifiable)opEvent), "One of the required attributs is not present");
            return null;
        }
        catch (Exception ex) {
            this.context.getLogger().reportInvalidOperationInvikedEvent(this.getARPath((GIdentifiable)opEvent), ex.getMessage());
            return null;
        }
    }

    private void processModeDisablingEvent(RTEEvent event, EventT amdEvent) {
        for (RModeInAtomicSwcInstanceRef item : event.getDisabledModes()) {
            String modeDeclRefName = item.getTargetModeDeclaration().getShortName();
            if (modeDeclRefName == null || modeDeclRefName.isEmpty()) {
                this.context.getLogger().reportUnresolvedModeDeclRef(this.getARPath((GIdentifiable)item.getTargetModeDeclaration()));
                continue;
            }
            String rPortPrototypeRefName = item.getContextPort().getShortName();
            if (rPortPrototypeRefName == null || rPortPrototypeRefName.isEmpty()) {
                this.context.getLogger().reportUnresolvedPortRef(this.getARPath((GIdentifiable)item.getContextPort()));
                continue;
            }
            String modeDeclGroupRefName = item.getContextModeDeclarationGroupPrototype().getShortName();
            if (modeDeclGroupRefName == null || modeDeclGroupRefName.isEmpty()) {
                this.context.getLogger().reportUnresolvedModeDeclGroupRef(this.getARPath((GIdentifiable)item.getContextModeDeclarationGroupPrototype()));
                continue;
            }
            AmdFactory.addModeDisablingDependencyToEvent((EventT)amdEvent, (String)modeDeclRefName, (String)rPortPrototypeRefName, (String)modeDeclGroupRefName);
        }
    }
}

