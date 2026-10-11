/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GbasetypesPackage
 *  gautosar.gcommonstructure.gconstants.GconstantsPackage
 *  gautosar.gcommonstructure.gdatadefproperties.GdatadefpropertiesPackage
 *  gautosar.gcommonstructure.gimplementation.GimplementationPackage
 *  gautosar.gcommonstructure.ginternalbehavior.GinternalbehaviorPackage
 *  gautosar.gcommonstructure.gmodedeclaration.GmodedeclarationPackage
 *  gautosar.gcommonstructure.gresourceconsumption.GresourceconsumptionPackage
 *  gautosar.gcommonstructure.gsystemconstant.GsystemconstantPackage
 *  gautosar.gecucdescription.GecucdescriptionPackage
 *  gautosar.gecucparameterdef.GecucparameterdefPackage
 *  gautosar.ggenericstructure.gformulalanguage.GformulalanguagePackage
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GdocumentationPackage
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GinlinetextmodelPackage
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GlanguagedatamodelPackage
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GmultilanguagedataPackage
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.GprimitivetypesPackage
 *  gautosar.ggenericstructure.ginfrastructure.GinfrastructurePackage
 *  gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesPackage
 *  gautosar.ggenericstructure.gvarianthandling.GvarianthandlingPackage
 *  gautosar.gswcomponents.gcommunication.GcommunicationPackage
 *  gautosar.gswcomponents.gcomponents.GcomponentsPackage
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GinstancerefsPackage
 *  gautosar.gswcomponents.gcomposition.GcompositionPackage
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GinstancerefsPackage
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GcomputationmethodPackage
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GdataprototypesPackage
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GdatatypesPackage
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GlocalconstraintsPackage
 *  gautosar.gswcomponents.gdatatype.gunits.GunitsPackage
 *  gautosar.gswcomponents.gportinterface.GportinterfacePackage
 *  gautosar.gswcomponents.gswcimplementation.GswcimplementationPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.GswcinternalbehaviorPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GdataelementsPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GmodedeclarationgroupPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GperinstancememoryPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GrteeventsPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.gservercall.GservercallPackage
 *  gautosar.gsystem.GsystemPackage
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EOperation
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package autosar40.commonstructure.datadefproperties.impl;

import autosar40.autosartoplevelstructure.AutosartoplevelstructurePackage;
import autosar40.autosartoplevelstructure.impl.AutosartoplevelstructurePackageImpl;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.bswmodule.bswbehavior.impl.BswbehaviorPackageImpl;
import autosar40.bswmodule.bswimplementation.BswimplementationPackage;
import autosar40.bswmodule.bswimplementation.impl.BswimplementationPackageImpl;
import autosar40.bswmodule.bswinterfaces.BswinterfacesPackage;
import autosar40.bswmodule.bswinterfaces.impl.BswinterfacesPackageImpl;
import autosar40.bswmodule.bswoverview.BswoverviewPackage;
import autosar40.bswmodule.bswoverview.impl.BswoverviewPackageImpl;
import autosar40.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar40.commonstructure.auxillaryobjects.impl.AuxillaryobjectsPackageImpl;
import autosar40.commonstructure.axis.AxisPackage;
import autosar40.commonstructure.axis.impl.AxisPackageImpl;
import autosar40.commonstructure.basetypes.BasetypesPackage;
import autosar40.commonstructure.basetypes.impl.BasetypesPackageImpl;
import autosar40.commonstructure.calibrationparameter.CalibrationparameterPackage;
import autosar40.commonstructure.calibrationparameter.impl.CalibrationparameterPackageImpl;
import autosar40.commonstructure.calibrationvalue.CalibrationvaluePackage;
import autosar40.commonstructure.calibrationvalue.impl.CalibrationvaluePackageImpl;
import autosar40.commonstructure.constants.ConstantsPackage;
import autosar40.commonstructure.constants.impl.ConstantsPackageImpl;
import autosar40.commonstructure.datadefproperties.DatadefpropertiesFactory;
import autosar40.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar40.commonstructure.datadefproperties.SwBitRepresentation;
import autosar40.commonstructure.datadefproperties.SwCalibrationAccessEnum;
import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsConditional;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsContent;
import autosar40.commonstructure.datadefproperties.SwDataDependency;
import autosar40.commonstructure.datadefproperties.SwDataDependencyArgs;
import autosar40.commonstructure.datadefproperties.SwImplPolicyEnum;
import autosar40.commonstructure.datadefproperties.SwPointerTargetProps;
import autosar40.commonstructure.datadefproperties.SwTextProps;
import autosar40.commonstructure.datadefproperties.SwVariableAccessImplPolicyEnum;
import autosar40.commonstructure.datadefproperties.ValueList;
import autosar40.commonstructure.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar40.commonstructure.datadictionaryproxies.impl.DatadictionaryproxiesPackageImpl;
import autosar40.commonstructure.filter.FilterPackage;
import autosar40.commonstructure.filter.impl.FilterPackageImpl;
import autosar40.commonstructure.flatmap.FlatmapPackage;
import autosar40.commonstructure.flatmap.impl.FlatmapPackageImpl;
import autosar40.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar40.commonstructure.globalconstraints.impl.GlobalconstraintsPackageImpl;
import autosar40.commonstructure.implementation.ImplementationPackage;
import autosar40.commonstructure.implementation.impl.ImplementationPackageImpl;
import autosar40.commonstructure.implementationdatatypes.ImplementationdatatypesPackage;
import autosar40.commonstructure.implementationdatatypes.impl.ImplementationdatatypesPackageImpl;
import autosar40.commonstructure.internalbehavior.InternalbehaviorPackage;
import autosar40.commonstructure.internalbehavior.impl.InternalbehaviorPackageImpl;
import autosar40.commonstructure.measurementcalibrationsupport.MeasurementcalibrationsupportPackage;
import autosar40.commonstructure.measurementcalibrationsupport.impl.MeasurementcalibrationsupportPackageImpl;
import autosar40.commonstructure.modedeclaration.ModedeclarationPackage;
import autosar40.commonstructure.modedeclaration.impl.ModedeclarationPackageImpl;
import autosar40.commonstructure.resourceconsumption.ResourceconsumptionPackage;
import autosar40.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar40.commonstructure.resourceconsumption.executiontime.impl.ExecutiontimePackageImpl;
import autosar40.commonstructure.resourceconsumption.heapusage.HeapusagePackage;
import autosar40.commonstructure.resourceconsumption.heapusage.impl.HeapusagePackageImpl;
import autosar40.commonstructure.resourceconsumption.impl.ResourceconsumptionPackageImpl;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusagePackage;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.impl.MemorysectionusagePackageImpl;
import autosar40.commonstructure.resourceconsumption.stackusage.StackusagePackage;
import autosar40.commonstructure.resourceconsumption.stackusage.impl.StackusagePackageImpl;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.ServiceneedsPackageImpl;
import autosar40.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;
import autosar40.commonstructure.serviceprocesstask.impl.ServiceprocesstaskPackageImpl;
import autosar40.commonstructure.swcbswmapping.SwcbswmappingPackage;
import autosar40.commonstructure.swcbswmapping.impl.SwcbswmappingPackageImpl;
import autosar40.commonstructure.swclass.SwclassPackage;
import autosar40.commonstructure.swclass.impl.SwclassPackageImpl;
import autosar40.commonstructure.systemconstant.SystemconstantPackage;
import autosar40.commonstructure.systemconstant.impl.SystemconstantPackageImpl;
import autosar40.commonstructure.timing.TimingPackage;
import autosar40.commonstructure.timing.timingconstraint.TimingconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.ageconstraint.AgeconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.ageconstraint.impl.AgeconstraintPackageImpl;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventtriggeringconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl.EventtriggeringconstraintPackageImpl;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.ExecutionorderconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.impl.ExecutionorderconstraintPackageImpl;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.ExecutiontimeconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.impl.ExecutiontimeconstraintPackageImpl;
import autosar40.commonstructure.timing.timingconstraint.impl.TimingconstraintPackageImpl;
import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.LatencytimingconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.impl.LatencytimingconstraintPackageImpl;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.OffsetconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.impl.OffsetconstraintPackageImpl;
import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.SynchronizationtimingconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.impl.SynchronizationtimingconstraintPackageImpl;
import autosar40.commonstructure.timing.timingdescription.TimingdescriptionPackage;
import autosar40.commonstructure.timing.timingdescription.impl.TimingdescriptionPackageImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TdeventbswPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.impl.TdeventbswPackageImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TdeventbswinternalbehaviorPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.impl.TdeventbswinternalbehaviorPackageImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TdeventcomPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.impl.TdeventcomPackageImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcomplex.TdeventcomplexPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcomplex.impl.TdeventcomplexPackageImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TdeventoccurrenceexpressionPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.impl.TdeventoccurrenceexpressionPackageImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.InstancerefsPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.impl.InstancerefsPackageImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.TdeventswcinternalbehaviorPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.impl.TdeventswcinternalbehaviorPackageImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TdeventvfbPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.impl.TdeventvfbPackageImpl;
import autosar40.commonstructure.triggerdeclaration.TriggerdeclarationPackage;
import autosar40.commonstructure.triggerdeclaration.impl.TriggerdeclarationPackageImpl;
import autosar40.ecucdescription.EcucdescriptionPackage;
import autosar40.ecucdescription.impl.EcucdescriptionPackageImpl;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucparameterdefPackageImpl;
import autosar40.ecuresource.EcuresourcePackage;
import autosar40.ecuresource.hwelementcategory.HwelementcategoryPackage;
import autosar40.ecuresource.hwelementcategory.impl.HwelementcategoryPackageImpl;
import autosar40.ecuresource.impl.EcuresourcePackageImpl;
import autosar40.genericstructure.abstractstructure.AbstractstructurePackage;
import autosar40.genericstructure.abstractstructure.impl.AbstractstructurePackageImpl;
import autosar40.genericstructure.documentationonm1.Documentationonm1Package;
import autosar40.genericstructure.documentationonm1.impl.Documentationonm1PackageImpl;
import autosar40.genericstructure.formulalanguage.FormulalanguagePackage;
import autosar40.genericstructure.formulalanguage.impl.FormulalanguagePackageImpl;
import autosar40.genericstructure.generaltemplateclasses.admindata.AdmindataPackage;
import autosar40.genericstructure.generaltemplateclasses.admindata.impl.AdmindataPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyinstancerefPackage;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.impl.AnyinstancerefPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.arobject.ArobjectPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ArobjectPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ArpackagePackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ArpackagePackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.AnnotationPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.impl.AnnotationPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.BlockelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.FigurePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.impl.FigurePackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.FormulaPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.impl.FormulaPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GerneralparametersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl.GerneralparametersPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.impl.BlockelementsPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ListelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.impl.ListelementsPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note.NotePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note.impl.NotePackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OasisexchangetablePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.impl.OasisexchangetablePackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.PaginationandviewPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl.PaginationandviewPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.RequirementstracingPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.impl.RequirementstracingPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.SynopsisPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.impl.SynopsisPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChaptersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl.ChaptersPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrqueryPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl.MsrqueryPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.InlineattributeenumsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.impl.InlineattributeenumsPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.InlinetextelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl.InlinetextelementsPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.InlinetextmodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.impl.InlinetextmodelPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguagedatamodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl.LanguagedatamodelPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguagedataPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.impl.MultilanguagedataPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SinglelanguagedataPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.impl.SinglelanguagedataPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.ElementcollectionPackage;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.impl.ElementcollectionPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringobjectPackage;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.impl.EngineeringobjectPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralannotationPackage;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.impl.GeneralannotationPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.identifiable.IdentifiablePackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiablePackageImpl;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionaltimePackage;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.impl.MultidimensionaltimePackageImpl;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesPackage;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.impl.PrimitivetypesPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SpecialdataPackage;
import autosar40.genericstructure.generaltemplateclasses.specialdata.impl.SpecialdataPackageImpl;
import autosar40.genericstructure.varianthandling.impl.VarianthandlingPackageImpl;
import autosar40.standardization.abstractblueprintstructure.AbstractblueprintstructurePackage;
import autosar40.standardization.abstractblueprintstructure.impl.AbstractblueprintstructurePackageImpl;
import autosar40.standardization.blueprintdedicated.genericblueprint.GenericblueprintPackage;
import autosar40.standardization.blueprintdedicated.genericblueprint.impl.GenericblueprintPackageImpl;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.PortinterfaceblueprintPackage;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.impl.PortinterfaceblueprintPackageImpl;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortprotoypeblueprintPackage;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.impl.PortprotoypeblueprintPackageImpl;
import autosar40.standardization.blueprintmapping.BlueprintmappingPackage;
import autosar40.standardization.blueprintmapping.impl.BlueprintmappingPackageImpl;
import autosar40.standardization.keyword.KeywordPackage;
import autosar40.standardization.keyword.impl.KeywordPackageImpl;
import autosar40.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar40.swcomponent.applicationattributes.impl.ApplicationattributesPackageImpl;
import autosar40.swcomponent.communication.CommunicationPackage;
import autosar40.swcomponent.communication.impl.CommunicationPackageImpl;
import autosar40.swcomponent.components.ComponentsPackage;
import autosar40.swcomponent.components.impl.ComponentsPackageImpl;
import autosar40.swcomponent.composition.CompositionPackage;
import autosar40.swcomponent.composition.impl.CompositionPackageImpl;
import autosar40.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar40.swcomponent.datatype.computationmethod.impl.ComputationmethodPackageImpl;
import autosar40.swcomponent.datatype.dataprototypes.DataprototypesPackage;
import autosar40.swcomponent.datatype.dataprototypes.impl.DataprototypesPackageImpl;
import autosar40.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar40.swcomponent.datatype.datatypes.impl.DatatypesPackageImpl;
import autosar40.swcomponent.datatype.localconstraints.LocalconstraintsPackage;
import autosar40.swcomponent.datatype.localconstraints.impl.LocalconstraintsPackageImpl;
import autosar40.swcomponent.datatype.recordlayout.RecordlayoutPackage;
import autosar40.swcomponent.datatype.recordlayout.impl.RecordlayoutPackageImpl;
import autosar40.swcomponent.datatype.units.UnitsPackage;
import autosar40.swcomponent.datatype.units.impl.UnitsPackageImpl;
import autosar40.swcomponent.endtoendprotection.EndtoendprotectionPackage;
import autosar40.swcomponent.endtoendprotection.impl.EndtoendprotectionPackageImpl;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationparametervaluesPackage;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.impl.CalibrationparametervaluesPackageImpl;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationroutinemappingsetPackage;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.impl.InterpolationroutinemappingsetPackageImpl;
import autosar40.swcomponent.nvblockcomponent.NvblockcomponentPackage;
import autosar40.swcomponent.nvblockcomponent.impl.NvblockcomponentPackageImpl;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.impl.PortinterfacePackageImpl;
import autosar40.swcomponent.softwarecomponentdocumentation.SoftwarecomponentdocumentationPackage;
import autosar40.swcomponent.softwarecomponentdocumentation.impl.SoftwarecomponentdocumentationPackageImpl;
import autosar40.swcomponent.swcimplementation.SwcimplementationPackage;
import autosar40.swcomponent.swcimplementation.impl.SwcimplementationPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.impl.DataelementsPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.InstancerefsusagePackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.impl.InstancerefsusagePackageImpl;
import autosar40.swcomponent.swcinternalbehavior.impl.SwcinternalbehaviorPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.IncludeddatatypesPackage;
import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.impl.IncludeddatatypesPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationdatadefpropsPackage;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.impl.InstantiationdatadefpropsPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.impl.ModedeclarationgroupPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerinstancememoryPackage;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.impl.PerinstancememoryPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortapioptionsPackage;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.impl.PortapioptionsPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.RteeventsPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.runnableentity.RunnableentityPackage;
import autosar40.swcomponent.swcinternalbehavior.runnableentity.impl.RunnableentityPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.servercall.ServercallPackage;
import autosar40.swcomponent.swcinternalbehavior.servercall.impl.ServercallPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.impl.ServicemappingPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.trigger.TriggerPackage;
import autosar40.swcomponent.swcinternalbehavior.trigger.impl.TriggerPackageImpl;
import autosar40.swcomponent.swcinternalbehavior.varianthandling.VarianthandlingPackage;
import autosar40.system.SystemPackage;
import autosar40.system.datamapping.DatamappingPackage;
import autosar40.system.datamapping.impl.DatamappingPackageImpl;
import autosar40.system.ecuresourcemapping.EcuresourcemappingPackage;
import autosar40.system.ecuresourcemapping.impl.EcuresourcemappingPackageImpl;
import autosar40.system.fibex.fibex4can.cancommunication.CancommunicationPackage;
import autosar40.system.fibex.fibex4can.cancommunication.impl.CancommunicationPackageImpl;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar40.system.fibex.fibex4can.cantopology.impl.CantopologyPackageImpl;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetcommunicationPackage;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.impl.EthernetcommunicationPackageImpl;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernettopologyPackage;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.impl.EthernettopologyPackageImpl;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.impl.FlexraycommunicationPackageImpl;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar40.system.fibex.fibex4flexray.flexraytopology.impl.FlexraytopologyPackageImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LincommunicationPackageImpl;
import autosar40.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar40.system.fibex.fibex4lin.lintopology.impl.LintopologyPackageImpl;
import autosar40.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar40.system.fibex.fibex4multiplatform.impl.Fibex4multiplatformPackageImpl;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.TtcancommunicationPackage;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.impl.TtcancommunicationPackageImpl;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcantopologyPackage;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.impl.TtcantopologyPackageImpl;
import autosar40.system.fibex.fibexcore.FibexcorePackage;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.impl.CorecommunicationPackageImpl;
import autosar40.system.fibex.fibexcore.corecommunication.timing.impl.TimingPackageImpl;
import autosar40.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.CoretopologyPackageImpl;
import autosar40.system.fibex.fibexcore.impl.FibexcorePackageImpl;
import autosar40.system.impl.SystemPackageImpl;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.impl.NetworkmanagementPackageImpl;
import autosar40.system.pncmapping.PncmappingPackage;
import autosar40.system.pncmapping.impl.PncmappingPackageImpl;
import autosar40.system.signalpaths.SignalpathsPackage;
import autosar40.system.signalpaths.impl.SignalpathsPackageImpl;
import autosar40.system.swmapping.SwmappingPackage;
import autosar40.system.swmapping.impl.SwmappingPackageImpl;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
import autosar40.system.transportprotocols.impl.TransportprotocolsPackageImpl;
import gautosar.gcommonstructure.gbasetypes.GbasetypesPackage;
import gautosar.gcommonstructure.gconstants.GconstantsPackage;
import gautosar.gcommonstructure.gdatadefproperties.GdatadefpropertiesPackage;
import gautosar.gcommonstructure.gimplementation.GimplementationPackage;
import gautosar.gcommonstructure.ginternalbehavior.GinternalbehaviorPackage;
import gautosar.gcommonstructure.gmodedeclaration.GmodedeclarationPackage;
import gautosar.gcommonstructure.gresourceconsumption.GresourceconsumptionPackage;
import gautosar.gcommonstructure.gsystemconstant.GsystemconstantPackage;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GecucparameterdefPackage;
import gautosar.ggenericstructure.gformulalanguage.GformulalanguagePackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GdocumentationPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GinlinetextmodelPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GlanguagedatamodelPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GmultilanguagedataPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.GprimitivetypesPackage;
import gautosar.ggenericstructure.ginfrastructure.GinfrastructurePackage;
import gautosar.ggenericstructure.gvarianthandling.GvarianthandlingPackage;
import gautosar.gswcomponents.gcommunication.GcommunicationPackage;
import gautosar.gswcomponents.gcomponents.GcomponentsPackage;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GinstancerefsPackage;
import gautosar.gswcomponents.gcomposition.GcompositionPackage;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GcomputationmethodPackage;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GdataprototypesPackage;
import gautosar.gswcomponents.gdatatype.gdatatypes.GdatatypesPackage;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GlocalconstraintsPackage;
import gautosar.gswcomponents.gdatatype.gunits.GunitsPackage;
import gautosar.gswcomponents.gportinterface.GportinterfacePackage;
import gautosar.gswcomponents.gswcimplementation.GswcimplementationPackage;
import gautosar.gswcomponents.gswcinternalbehavior.GswcinternalbehaviorPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GdataelementsPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GmodedeclarationgroupPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GperinstancememoryPackage;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GrteeventsPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GservercallPackage;
import gautosar.gsystem.GsystemPackage;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class DatadefpropertiesPackageImpl
extends EPackageImpl
implements DatadefpropertiesPackage {
    private EClass valueListEClass = null;
    private EClass swBitRepresentationEClass = null;
    private EClass swDataDependencyEClass = null;
    private EClass swDataDependencyArgsEClass = null;
    private EClass swPointerTargetPropsEClass = null;
    private EClass swTextPropsEClass = null;
    private EClass swDataDefPropsContentEClass = null;
    private EClass swDataDefPropsConditionalEClass = null;
    private EClass swDataDefPropsEClass = null;
    private EEnum swCalibrationAccessEnumEEnum = null;
    private EEnum swImplPolicyEnumEEnum = null;
    private EEnum swVariableAccessImplPolicyEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private DatadefpropertiesPackageImpl() {
        super("http://autosar.org/schema/r4.0/autosar40/cs/ddp", (EFactory)DatadefpropertiesFactory.eINSTANCE);
    }

    public static DatadefpropertiesPackage init() {
        if (isInited) {
            return (DatadefpropertiesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ddp");
        }
        DatadefpropertiesPackageImpl theDatadefpropertiesPackage = (DatadefpropertiesPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/schema/r4.0/autosar40/cs/ddp") instanceof DatadefpropertiesPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/schema/r4.0/autosar40/cs/ddp") : new DatadefpropertiesPackageImpl());
        isInited = true;
        gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesPackage.eINSTANCE.eClass();
        GinfrastructurePackage.eINSTANCE.eClass();
        GdocumentationPackage.eINSTANCE.eClass();
        GmultilanguagedataPackage.eINSTANCE.eClass();
        GlanguagedatamodelPackage.eINSTANCE.eClass();
        GinlinetextmodelPackage.eINSTANCE.eClass();
        GprimitivetypesPackage.eINSTANCE.eClass();
        GvarianthandlingPackage.eINSTANCE.eClass();
        GformulalanguagePackage.eINSTANCE.eClass();
        GecucparameterdefPackage.eINSTANCE.eClass();
        GecucdescriptionPackage.eINSTANCE.eClass();
        GcomponentsPackage.eINSTANCE.eClass();
        GinstancerefsPackage.eINSTANCE.eClass();
        GportinterfacePackage.eINSTANCE.eClass();
        GdatatypesPackage.eINSTANCE.eClass();
        GlocalconstraintsPackage.eINSTANCE.eClass();
        GdataprototypesPackage.eINSTANCE.eClass();
        GcomputationmethodPackage.eINSTANCE.eClass();
        GunitsPackage.eINSTANCE.eClass();
        GcompositionPackage.eINSTANCE.eClass();
        gautosar.gswcomponents.gcomposition.ginstancerefs.GinstancerefsPackage.eINSTANCE.eClass();
        GswcinternalbehaviorPackage.eINSTANCE.eClass();
        GrteeventsPackage.eINSTANCE.eClass();
        GdataelementsPackage.eINSTANCE.eClass();
        GperinstancememoryPackage.eINSTANCE.eClass();
        GmodedeclarationgroupPackage.eINSTANCE.eClass();
        GservercallPackage.eINSTANCE.eClass();
        GswcimplementationPackage.eINSTANCE.eClass();
        GcommunicationPackage.eINSTANCE.eClass();
        GimplementationPackage.eINSTANCE.eClass();
        GresourceconsumptionPackage.eINSTANCE.eClass();
        GmodedeclarationPackage.eINSTANCE.eClass();
        GinternalbehaviorPackage.eINSTANCE.eClass();
        GconstantsPackage.eINSTANCE.eClass();
        GdatadefpropertiesPackage.eINSTANCE.eClass();
        GbasetypesPackage.eINSTANCE.eClass();
        GsystemconstantPackage.eINSTANCE.eClass();
        GsystemPackage.eINSTANCE.eClass();
        EcorePackage.eINSTANCE.eClass();
        EcuresourcePackageImpl theEcuresourcePackage = (EcuresourcePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/er") instanceof EcuresourcePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/er") : EcuresourcePackage.eINSTANCE);
        HwelementcategoryPackageImpl theHwelementcategoryPackage = (HwelementcategoryPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/er/hec") instanceof HwelementcategoryPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/er/hec") : HwelementcategoryPackage.eINSTANCE);
        FormulalanguagePackageImpl theFormulalanguagePackage = (FormulalanguagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/fl") instanceof FormulalanguagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/fl") : FormulalanguagePackage.eINSTANCE);
        AbstractstructurePackageImpl theAbstractstructurePackage = (AbstractstructurePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/as") instanceof AbstractstructurePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/as") : AbstractstructurePackage.eINSTANCE);
        VarianthandlingPackageImpl theVarianthandlingPackage = (VarianthandlingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/vh") instanceof VarianthandlingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/vh") : autosar40.genericstructure.varianthandling.VarianthandlingPackage.eINSTANCE);
        Documentationonm1PackageImpl theDocumentationonm1Package = (Documentationonm1PackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/dom") instanceof Documentationonm1PackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/dom") : Documentationonm1Package.eINSTANCE);
        IdentifiablePackageImpl theIdentifiablePackage = (IdentifiablePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/i") instanceof IdentifiablePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/i") : IdentifiablePackage.eINSTANCE);
        ChaptersPackageImpl theChaptersPackage = (ChaptersPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/c") instanceof ChaptersPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/c") : ChaptersPackage.eINSTANCE);
        MsrqueryPackageImpl theMsrqueryPackage = (MsrqueryPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/mq") instanceof MsrqueryPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/mq") : MsrqueryPackage.eINSTANCE);
        AnnotationPackageImpl theAnnotationPackage = (AnnotationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/a") instanceof AnnotationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/a") : AnnotationPackage.eINSTANCE);
        InlineattributeenumsPackageImpl theInlineattributeenumsPackage = (InlineattributeenumsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/iae") instanceof InlineattributeenumsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/iae") : InlineattributeenumsPackage.eINSTANCE);
        InlinetextelementsPackageImpl theInlinetextelementsPackage = (InlinetextelementsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/ite") instanceof InlinetextelementsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/ite") : InlinetextelementsPackage.eINSTANCE);
        SinglelanguagedataPackageImpl theSinglelanguagedataPackage = (SinglelanguagedataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/sld") instanceof SinglelanguagedataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/sld") : SinglelanguagedataPackage.eINSTANCE);
        InlinetextmodelPackageImpl theInlinetextmodelPackage = (InlinetextmodelPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/itm") instanceof InlinetextmodelPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/itm") : InlinetextmodelPackage.eINSTANCE);
        LanguagedatamodelPackageImpl theLanguagedatamodelPackage = (LanguagedatamodelPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/ldm") instanceof LanguagedatamodelPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/ldm") : LanguagedatamodelPackage.eINSTANCE);
        MultilanguagedataPackageImpl theMultilanguagedataPackage = (MultilanguagedataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/md") instanceof MultilanguagedataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/md") : MultilanguagedataPackage.eINSTANCE);
        BlockelementsPackageImpl theBlockelementsPackage = (BlockelementsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be") instanceof BlockelementsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be") : BlockelementsPackage.eINSTANCE);
        PaginationandviewPackageImpl thePaginationandviewPackage = (PaginationandviewPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/pav") instanceof PaginationandviewPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/pav") : PaginationandviewPackage.eINSTANCE);
        OasisexchangetablePackageImpl theOasisexchangetablePackage = (OasisexchangetablePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/oet") instanceof OasisexchangetablePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/oet") : OasisexchangetablePackage.eINSTANCE);
        FormulaPackageImpl theFormulaPackage = (FormulaPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/formula") instanceof FormulaPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/formula") : FormulaPackage.eINSTANCE);
        FigurePackageImpl theFigurePackage = (FigurePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/figure") instanceof FigurePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/figure") : FigurePackage.eINSTANCE);
        RequirementstracingPackageImpl theRequirementstracingPackage = (RequirementstracingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/rt") instanceof RequirementstracingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/rt") : RequirementstracingPackage.eINSTANCE);
        SynopsisPackageImpl theSynopsisPackage = (SynopsisPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/s") instanceof SynopsisPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/s") : SynopsisPackage.eINSTANCE);
        GerneralparametersPackageImpl theGerneralparametersPackage = (GerneralparametersPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/gp") instanceof GerneralparametersPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/gp") : GerneralparametersPackage.eINSTANCE);
        ListelementsPackageImpl theListelementsPackage = (ListelementsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/le") instanceof ListelementsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/le") : ListelementsPackage.eINSTANCE);
        NotePackageImpl theNotePackage = (NotePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/n") instanceof NotePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/n") : NotePackage.eINSTANCE);
        PrimitivetypesPackageImpl thePrimitivetypesPackage = (PrimitivetypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/pt") instanceof PrimitivetypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/pt") : PrimitivetypesPackage.eINSTANCE);
        AnyinstancerefPackageImpl theAnyinstancerefPackage = (AnyinstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/air") instanceof AnyinstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/air") : AnyinstancerefPackage.eINSTANCE);
        ArpackagePackageImpl theArpackagePackage = (ArpackagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/arp") instanceof ArpackagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/arp") : ArpackagePackage.eINSTANCE);
        ElementcollectionPackageImpl theElementcollectionPackage = (ElementcollectionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ec") instanceof ElementcollectionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ec") : ElementcollectionPackage.eINSTANCE);
        GeneralannotationPackageImpl theGeneralannotationPackage = (GeneralannotationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ga") instanceof GeneralannotationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ga") : GeneralannotationPackage.eINSTANCE);
        AdmindataPackageImpl theAdmindataPackage = (AdmindataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ad") instanceof AdmindataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ad") : AdmindataPackage.eINSTANCE);
        SpecialdataPackageImpl theSpecialdataPackage = (SpecialdataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/sd") instanceof SpecialdataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/sd") : SpecialdataPackage.eINSTANCE);
        MultidimensionaltimePackageImpl theMultidimensionaltimePackage = (MultidimensionaltimePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/mt") instanceof MultidimensionaltimePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/mt") : MultidimensionaltimePackage.eINSTANCE);
        EngineeringobjectPackageImpl theEngineeringobjectPackage = (EngineeringobjectPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/eo") instanceof EngineeringobjectPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/eo") : EngineeringobjectPackage.eINSTANCE);
        ArobjectPackageImpl theArobjectPackage = (ArobjectPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ao") instanceof ArobjectPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ao") : ArobjectPackage.eINSTANCE);
        FilterPackageImpl theFilterPackage = (FilterPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/f") instanceof FilterPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/f") : FilterPackage.eINSTANCE);
        FlatmapPackageImpl theFlatmapPackage = (FlatmapPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/fm") instanceof FlatmapPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/fm") : FlatmapPackage.eINSTANCE);
        DatadictionaryproxiesPackageImpl theDatadictionaryproxiesPackage = (DatadictionaryproxiesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/dp") instanceof DatadictionaryproxiesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/dp") : DatadictionaryproxiesPackage.eINSTANCE);
        MeasurementcalibrationsupportPackageImpl theMeasurementcalibrationsupportPackage = (MeasurementcalibrationsupportPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/mcs") instanceof MeasurementcalibrationsupportPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/mcs") : MeasurementcalibrationsupportPackage.eINSTANCE);
        ImplementationdatatypesPackageImpl theImplementationdatatypesPackage = (ImplementationdatatypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/idt") instanceof ImplementationdatatypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/idt") : ImplementationdatatypesPackage.eINSTANCE);
        InternalbehaviorPackageImpl theInternalbehaviorPackage = (InternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ib") instanceof InternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ib") : InternalbehaviorPackage.eINSTANCE);
        ModedeclarationPackageImpl theModedeclarationPackage = (ModedeclarationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/md") instanceof ModedeclarationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/md") : ModedeclarationPackage.eINSTANCE);
        AxisPackageImpl theAxisPackage = (AxisPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/a") instanceof AxisPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/a") : AxisPackage.eINSTANCE);
        CalibrationvaluePackageImpl theCalibrationvaluePackage = (CalibrationvaluePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/cv") instanceof CalibrationvaluePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/cv") : CalibrationvaluePackage.eINSTANCE);
        CalibrationparameterPackageImpl theCalibrationparameterPackage = (CalibrationparameterPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/cp") instanceof CalibrationparameterPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/cp") : CalibrationparameterPackage.eINSTANCE);
        BasetypesPackageImpl theBasetypesPackage = (BasetypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/bt") instanceof BasetypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/bt") : BasetypesPackage.eINSTANCE);
        GlobalconstraintsPackageImpl theGlobalconstraintsPackage = (GlobalconstraintsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/gc") instanceof GlobalconstraintsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/gc") : GlobalconstraintsPackage.eINSTANCE);
        AuxillaryobjectsPackageImpl theAuxillaryobjectsPackage = (AuxillaryobjectsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ao") instanceof AuxillaryobjectsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ao") : AuxillaryobjectsPackage.eINSTANCE);
        ConstantsPackageImpl theConstantsPackage = (ConstantsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/c") instanceof ConstantsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/c") : ConstantsPackage.eINSTANCE);
        TriggerdeclarationPackageImpl theTriggerdeclarationPackage = (TriggerdeclarationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/td") instanceof TriggerdeclarationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/td") : TriggerdeclarationPackage.eINSTANCE);
        ImplementationPackageImpl theImplementationPackage = (ImplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/implementation") instanceof ImplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/implementation") : ImplementationPackage.eINSTANCE);
        SwcbswmappingPackageImpl theSwcbswmappingPackage = (SwcbswmappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sbm") instanceof SwcbswmappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sbm") : SwcbswmappingPackage.eINSTANCE);
        ServiceneedsPackageImpl theServiceneedsPackage = (ServiceneedsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sn") instanceof ServiceneedsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sn") : ServiceneedsPackage.eINSTANCE);
        ResourceconsumptionPackageImpl theResourceconsumptionPackage = (ResourceconsumptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc") instanceof ResourceconsumptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc") : ResourceconsumptionPackage.eINSTANCE);
        MemorysectionusagePackageImpl theMemorysectionusagePackage = (MemorysectionusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc/msu") instanceof MemorysectionusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc/msu") : MemorysectionusagePackage.eINSTANCE);
        StackusagePackageImpl theStackusagePackage = (StackusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc/su") instanceof StackusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc/su") : StackusagePackage.eINSTANCE);
        HeapusagePackageImpl theHeapusagePackage = (HeapusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc/hu") instanceof HeapusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc/hu") : HeapusagePackage.eINSTANCE);
        ExecutiontimePackageImpl theExecutiontimePackage = (ExecutiontimePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc/et") instanceof ExecutiontimePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/rc/et") : ExecutiontimePackage.eINSTANCE);
        ServiceprocesstaskPackageImpl theServiceprocesstaskPackage = (ServiceprocesstaskPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/spt") instanceof ServiceprocesstaskPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/spt") : ServiceprocesstaskPackage.eINSTANCE);
        SwclassPackageImpl theSwclassPackage = (SwclassPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sclass") instanceof SwclassPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sclass") : SwclassPackage.eINSTANCE);
        autosar40.commonstructure.timing.impl.TimingPackageImpl theTimingPackage = (autosar40.commonstructure.timing.impl.TimingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t") instanceof autosar40.commonstructure.timing.impl.TimingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t") : TimingPackage.eINSTANCE);
        TimingconstraintPackageImpl theTimingconstraintPackage = (TimingconstraintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc") instanceof TimingconstraintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc") : TimingconstraintPackage.eINSTANCE);
        AgeconstraintPackageImpl theAgeconstraintPackage = (AgeconstraintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/ac") instanceof AgeconstraintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/ac") : AgeconstraintPackage.eINSTANCE);
        ExecutiontimeconstraintPackageImpl theExecutiontimeconstraintPackage = (ExecutiontimeconstraintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/etimeconstraint") instanceof ExecutiontimeconstraintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/etimeconstraint") : ExecutiontimeconstraintPackage.eINSTANCE);
        EventtriggeringconstraintPackageImpl theEventtriggeringconstraintPackage = (EventtriggeringconstraintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/etriggeringconstraint") instanceof EventtriggeringconstraintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/etriggeringconstraint") : EventtriggeringconstraintPackage.eINSTANCE);
        LatencytimingconstraintPackageImpl theLatencytimingconstraintPackage = (LatencytimingconstraintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/ltc") instanceof LatencytimingconstraintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/ltc") : LatencytimingconstraintPackage.eINSTANCE);
        OffsetconstraintPackageImpl theOffsetconstraintPackage = (OffsetconstraintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/oc") instanceof OffsetconstraintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/oc") : OffsetconstraintPackage.eINSTANCE);
        SynchronizationtimingconstraintPackageImpl theSynchronizationtimingconstraintPackage = (SynchronizationtimingconstraintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/stc") instanceof SynchronizationtimingconstraintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/stc") : SynchronizationtimingconstraintPackage.eINSTANCE);
        ExecutionorderconstraintPackageImpl theExecutionorderconstraintPackage = (ExecutionorderconstraintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/eoc") instanceof ExecutionorderconstraintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/eoc") : ExecutionorderconstraintPackage.eINSTANCE);
        TimingdescriptionPackageImpl theTimingdescriptionPackage = (TimingdescriptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td") instanceof TimingdescriptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td") : TimingdescriptionPackage.eINSTANCE);
        TdeventoccurrenceexpressionPackageImpl theTdeventoccurrenceexpressionPackage = (TdeventoccurrenceexpressionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe") instanceof TdeventoccurrenceexpressionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe") : TdeventoccurrenceexpressionPackage.eINSTANCE);
        autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.impl.InstancerefsusagePackageImpl theInstancerefsusagePackage = (autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.impl.InstancerefsusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe/iru") instanceof autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.impl.InstancerefsusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe/iru") : autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.InstancerefsusagePackage.eINSTANCE);
        InstancerefsPackageImpl theInstancerefsPackage = (InstancerefsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe/ir") instanceof InstancerefsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe/ir") : InstancerefsPackage.eINSTANCE);
        TdeventswcinternalbehaviorPackageImpl theTdeventswcinternalbehaviorPackage = (TdeventswcinternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdesib") instanceof TdeventswcinternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdesib") : TdeventswcinternalbehaviorPackage.eINSTANCE);
        TdeventcomPackageImpl theTdeventcomPackage = (TdeventcomPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdecom") instanceof TdeventcomPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdecom") : TdeventcomPackage.eINSTANCE);
        TdeventbswPackageImpl theTdeventbswPackage = (TdeventbswPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeb") instanceof TdeventbswPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeb") : TdeventbswPackage.eINSTANCE);
        TdeventbswinternalbehaviorPackageImpl theTdeventbswinternalbehaviorPackage = (TdeventbswinternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdebib") instanceof TdeventbswinternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdebib") : TdeventbswinternalbehaviorPackage.eINSTANCE);
        TdeventcomplexPackageImpl theTdeventcomplexPackage = (TdeventcomplexPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdecomplex") instanceof TdeventcomplexPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdecomplex") : TdeventcomplexPackage.eINSTANCE);
        TdeventvfbPackageImpl theTdeventvfbPackage = (TdeventvfbPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdev") instanceof TdeventvfbPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdev") : TdeventvfbPackage.eINSTANCE);
        SystemconstantPackageImpl theSystemconstantPackage = (SystemconstantPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sconstant") instanceof SystemconstantPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sconstant") : SystemconstantPackage.eINSTANCE);
        EndtoendprotectionPackageImpl theEndtoendprotectionPackage = (EndtoendprotectionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/etep") instanceof EndtoendprotectionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/etep") : EndtoendprotectionPackage.eINSTANCE);
        InterpolationroutinemappingsetPackageImpl theInterpolationroutinemappingsetPackage = (InterpolationroutinemappingsetPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/mac/irms") instanceof InterpolationroutinemappingsetPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/mac/irms") : InterpolationroutinemappingsetPackage.eINSTANCE);
        CalibrationparametervaluesPackageImpl theCalibrationparametervaluesPackage = (CalibrationparametervaluesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/mac/cpv") instanceof CalibrationparametervaluesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/mac/cpv") : CalibrationparametervaluesPackage.eINSTANCE);
        DatatypesPackageImpl theDatatypesPackage = (DatatypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/d") instanceof DatatypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/d") : DatatypesPackage.eINSTANCE);
        RecordlayoutPackageImpl theRecordlayoutPackage = (RecordlayoutPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/rl") instanceof RecordlayoutPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/rl") : RecordlayoutPackage.eINSTANCE);
        UnitsPackageImpl theUnitsPackage = (UnitsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/u") instanceof UnitsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/u") : UnitsPackage.eINSTANCE);
        LocalconstraintsPackageImpl theLocalconstraintsPackage = (LocalconstraintsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/lc") instanceof LocalconstraintsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/lc") : LocalconstraintsPackage.eINSTANCE);
        ComputationmethodPackageImpl theComputationmethodPackage = (ComputationmethodPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/cm") instanceof ComputationmethodPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/cm") : ComputationmethodPackage.eINSTANCE);
        DataprototypesPackageImpl theDataprototypesPackage = (DataprototypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/dp") instanceof DataprototypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/dp") : DataprototypesPackage.eINSTANCE);
        SwcinternalbehaviorPackageImpl theSwcinternalbehaviorPackage = (SwcinternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib") instanceof SwcinternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib") : SwcinternalbehaviorPackage.eINSTANCE);
        ServicemappingPackageImpl theServicemappingPackage = (ServicemappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/smapping") instanceof ServicemappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/smapping") : ServicemappingPackage.eINSTANCE);
        DataelementsPackageImpl theDataelementsPackage = (DataelementsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/de") instanceof DataelementsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/de") : DataelementsPackage.eINSTANCE);
        InstancerefsusagePackageImpl theInstancerefsusagePackage_1 = (InstancerefsusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/de/iru") instanceof InstancerefsusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/de/iru") : InstancerefsusagePackage.eINSTANCE);
        PerinstancememoryPackageImpl thePerinstancememoryPackage = (PerinstancememoryPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/pim") instanceof PerinstancememoryPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/pim") : PerinstancememoryPackage.eINSTANCE);
        InstantiationdatadefpropsPackageImpl theInstantiationdatadefpropsPackage = (InstantiationdatadefpropsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/iddp") instanceof InstantiationdatadefpropsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/iddp") : InstantiationdatadefpropsPackage.eINSTANCE);
        PortapioptionsPackageImpl thePortapioptionsPackage = (PortapioptionsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/papio") instanceof PortapioptionsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/papio") : PortapioptionsPackage.eINSTANCE);
        RteeventsPackageImpl theRteeventsPackage = (RteeventsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/rtee") instanceof RteeventsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/rtee") : RteeventsPackage.eINSTANCE);
        TriggerPackageImpl theTriggerPackage = (TriggerPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/t") instanceof TriggerPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/t") : TriggerPackage.eINSTANCE);
        ModedeclarationgroupPackageImpl theModedeclarationgroupPackage = (ModedeclarationgroupPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/mdg") instanceof ModedeclarationgroupPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/mdg") : ModedeclarationgroupPackage.eINSTANCE);
        ServercallPackageImpl theServercallPackage = (ServercallPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/sc") instanceof ServercallPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/sc") : ServercallPackage.eINSTANCE);
        autosar40.swcomponent.swcinternalbehavior.varianthandling.impl.VarianthandlingPackageImpl theVarianthandlingPackage_1 = (autosar40.swcomponent.swcinternalbehavior.varianthandling.impl.VarianthandlingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/vh") instanceof autosar40.swcomponent.swcinternalbehavior.varianthandling.impl.VarianthandlingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/vh") : VarianthandlingPackage.eINSTANCE);
        IncludeddatatypesPackageImpl theIncludeddatatypesPackage = (IncludeddatatypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/idt") instanceof IncludeddatatypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/idt") : IncludeddatatypesPackage.eINSTANCE);
        RunnableentityPackageImpl theRunnableentityPackage = (RunnableentityPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/re") instanceof RunnableentityPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/re") : RunnableentityPackage.eINSTANCE);
        ComponentsPackageImpl theComponentsPackage = (ComponentsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/components") instanceof ComponentsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/components") : ComponentsPackage.eINSTANCE);
        autosar40.swcomponent.components.instancerefs.impl.InstancerefsPackageImpl theInstancerefsPackage_1 = (autosar40.swcomponent.components.instancerefs.impl.InstancerefsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/components/ir") instanceof autosar40.swcomponent.components.instancerefs.impl.InstancerefsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/components/ir") : autosar40.swcomponent.components.instancerefs.InstancerefsPackage.eINSTANCE);
        CommunicationPackageImpl theCommunicationPackage = (CommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/communication") instanceof CommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/communication") : CommunicationPackage.eINSTANCE);
        CompositionPackageImpl theCompositionPackage = (CompositionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/composition") instanceof CompositionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/composition") : CompositionPackage.eINSTANCE);
        autosar40.swcomponent.composition.instancerefs.impl.InstancerefsPackageImpl theInstancerefsPackage_2 = (autosar40.swcomponent.composition.instancerefs.impl.InstancerefsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/composition/ir") instanceof autosar40.swcomponent.composition.instancerefs.impl.InstancerefsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/composition/ir") : autosar40.swcomponent.composition.instancerefs.InstancerefsPackage.eINSTANCE);
        SoftwarecomponentdocumentationPackageImpl theSoftwarecomponentdocumentationPackage = (SoftwarecomponentdocumentationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/scd") instanceof SoftwarecomponentdocumentationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/scd") : SoftwarecomponentdocumentationPackage.eINSTANCE);
        NvblockcomponentPackageImpl theNvblockcomponentPackage = (NvblockcomponentPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/nbc") instanceof NvblockcomponentPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/nbc") : NvblockcomponentPackage.eINSTANCE);
        ApplicationattributesPackageImpl theApplicationattributesPackage = (ApplicationattributesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/aa") instanceof ApplicationattributesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/aa") : ApplicationattributesPackage.eINSTANCE);
        SwcimplementationPackageImpl theSwcimplementationPackage = (SwcimplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/si") instanceof SwcimplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/si") : SwcimplementationPackage.eINSTANCE);
        PortinterfacePackageImpl thePortinterfacePackage = (PortinterfacePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/pi") instanceof PortinterfacePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/pi") : PortinterfacePackage.eINSTANCE);
        autosar40.swcomponent.portinterface.instancerefs.impl.InstancerefsPackageImpl theInstancerefsPackage_3 = (autosar40.swcomponent.portinterface.instancerefs.impl.InstancerefsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/pi/ir") instanceof autosar40.swcomponent.portinterface.instancerefs.impl.InstancerefsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/pi/ir") : autosar40.swcomponent.portinterface.instancerefs.InstancerefsPackage.eINSTANCE);
        EcucdescriptionPackageImpl theEcucdescriptionPackage = (EcucdescriptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/ecucd") instanceof EcucdescriptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/ecucd") : EcucdescriptionPackage.eINSTANCE);
        EcucparameterdefPackageImpl theEcucparameterdefPackage = (EcucparameterdefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/ecucpd") instanceof EcucparameterdefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/ecucpd") : EcucparameterdefPackage.eINSTANCE);
        BswbehaviorPackageImpl theBswbehaviorPackage = (BswbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bb") instanceof BswbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bb") : BswbehaviorPackage.eINSTANCE);
        BswoverviewPackageImpl theBswoverviewPackage = (BswoverviewPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bo") instanceof BswoverviewPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bo") : BswoverviewPackage.eINSTANCE);
        autosar40.bswmodule.bswoverview.instancerefs.impl.InstancerefsPackageImpl theInstancerefsPackage_4 = (autosar40.bswmodule.bswoverview.instancerefs.impl.InstancerefsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bo/ir") instanceof autosar40.bswmodule.bswoverview.instancerefs.impl.InstancerefsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bo/ir") : autosar40.bswmodule.bswoverview.instancerefs.InstancerefsPackage.eINSTANCE);
        BswimplementationPackageImpl theBswimplementationPackage = (BswimplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bimplementation") instanceof BswimplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/bimplementation") : BswimplementationPackage.eINSTANCE);
        BswinterfacesPackageImpl theBswinterfacesPackage = (BswinterfacesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/binterfaces") instanceof BswinterfacesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/binterfaces") : BswinterfacesPackage.eINSTANCE);
        SystemPackageImpl theSystemPackage = (SystemPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system") instanceof SystemPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system") : SystemPackage.eINSTANCE);
        SwmappingPackageImpl theSwmappingPackage = (SwmappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/sw") instanceof SwmappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/sw") : SwmappingPackage.eINSTANCE);
        autosar40.system.instancerefs.impl.InstancerefsPackageImpl theInstancerefsPackage_5 = (autosar40.system.instancerefs.impl.InstancerefsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/ir") instanceof autosar40.system.instancerefs.impl.InstancerefsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/ir") : autosar40.system.instancerefs.InstancerefsPackage.eINSTANCE);
        CancommunicationPackageImpl theCancommunicationPackage = (CancommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcan/cc") instanceof CancommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcan/cc") : CancommunicationPackage.eINSTANCE);
        CantopologyPackageImpl theCantopologyPackage = (CantopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcan/ct") instanceof CantopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcan/ct") : CantopologyPackage.eINSTANCE);
        TtcantopologyPackageImpl theTtcantopologyPackage = (TtcantopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/ft/tt") instanceof TtcantopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/ft/tt") : TtcantopologyPackage.eINSTANCE);
        TtcancommunicationPackageImpl theTtcancommunicationPackage = (TtcancommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/ft/tc") instanceof TtcancommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/ft/tc") : TtcancommunicationPackage.eINSTANCE);
        EthernetcommunicationPackageImpl theEthernetcommunicationPackage = (EthernetcommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fe/ec") instanceof EthernetcommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fe/ec") : EthernetcommunicationPackage.eINSTANCE);
        EthernettopologyPackageImpl theEthernettopologyPackage = (EthernettopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fe/et") instanceof EthernettopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fe/et") : EthernettopologyPackage.eINSTANCE);
        FlexraycommunicationPackageImpl theFlexraycommunicationPackage = (FlexraycommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/ff/fc") instanceof FlexraycommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/ff/fc") : FlexraycommunicationPackage.eINSTANCE);
        FlexraytopologyPackageImpl theFlexraytopologyPackage = (FlexraytopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/ff/ft") instanceof FlexraytopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/ff/ft") : FlexraytopologyPackage.eINSTANCE);
        LincommunicationPackageImpl theLincommunicationPackage = (LincommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fl/lc") instanceof LincommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fl/lc") : LincommunicationPackage.eINSTANCE);
        LintopologyPackageImpl theLintopologyPackage = (LintopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fl/lt") instanceof LintopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fl/lt") : LintopologyPackage.eINSTANCE);
        Fibex4multiplatformPackageImpl theFibex4multiplatformPackage = (Fibex4multiplatformPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fm") instanceof Fibex4multiplatformPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fm") : Fibex4multiplatformPackage.eINSTANCE);
        FibexcorePackageImpl theFibexcorePackage = (FibexcorePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcore") instanceof FibexcorePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcore") : FibexcorePackage.eINSTANCE);
        CorecommunicationPackageImpl theCorecommunicationPackage = (CorecommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcore/cc") instanceof CorecommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcore/cc") : CorecommunicationPackage.eINSTANCE);
        TimingPackageImpl theTimingPackage_1 = (TimingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcore/cc/t") instanceof TimingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcore/cc/t") : autosar40.system.fibex.fibexcore.corecommunication.timing.TimingPackage.eINSTANCE);
        CoretopologyPackageImpl theCoretopologyPackage = (CoretopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcore/ct") instanceof CoretopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/f/fcore/ct") : CoretopologyPackage.eINSTANCE);
        DatamappingPackageImpl theDatamappingPackage = (DatamappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/dm") instanceof DatamappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/dm") : DatamappingPackage.eINSTANCE);
        TransportprotocolsPackageImpl theTransportprotocolsPackage = (TransportprotocolsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/tp") instanceof TransportprotocolsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/tp") : TransportprotocolsPackage.eINSTANCE);
        SignalpathsPackageImpl theSignalpathsPackage = (SignalpathsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/sp") instanceof SignalpathsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/sp") : SignalpathsPackage.eINSTANCE);
        EcuresourcemappingPackageImpl theEcuresourcemappingPackage = (EcuresourcemappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/ecurm") instanceof EcuresourcemappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/ecurm") : EcuresourcemappingPackage.eINSTANCE);
        PncmappingPackageImpl thePncmappingPackage = (PncmappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/pm") instanceof PncmappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/pm") : PncmappingPackage.eINSTANCE);
        NetworkmanagementPackageImpl theNetworkmanagementPackage = (NetworkmanagementPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/nm") instanceof NetworkmanagementPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/nm") : NetworkmanagementPackage.eINSTANCE);
        autosar40.system.endtoendprotection.impl.EndtoendprotectionPackageImpl theEndtoendprotectionPackage_1 = (autosar40.system.endtoendprotection.impl.EndtoendprotectionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/etep") instanceof autosar40.system.endtoendprotection.impl.EndtoendprotectionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/system/etep") : autosar40.system.endtoendprotection.EndtoendprotectionPackage.eINSTANCE);
        GenericblueprintPackageImpl theGenericblueprintPackage = (GenericblueprintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/bd/gb") instanceof GenericblueprintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/bd/gb") : GenericblueprintPackage.eINSTANCE);
        PortinterfaceblueprintPackageImpl thePortinterfaceblueprintPackage = (PortinterfaceblueprintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/bd/pib") instanceof PortinterfaceblueprintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/bd/pib") : PortinterfaceblueprintPackage.eINSTANCE);
        PortprotoypeblueprintPackageImpl thePortprotoypeblueprintPackage = (PortprotoypeblueprintPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/bd/ppb") instanceof PortprotoypeblueprintPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/bd/ppb") : PortprotoypeblueprintPackage.eINSTANCE);
        BlueprintmappingPackageImpl theBlueprintmappingPackage = (BlueprintmappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/bm") instanceof BlueprintmappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/bm") : BlueprintmappingPackage.eINSTANCE);
        KeywordPackageImpl theKeywordPackage = (KeywordPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/k") instanceof KeywordPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/k") : KeywordPackage.eINSTANCE);
        AbstractblueprintstructurePackageImpl theAbstractblueprintstructurePackage = (AbstractblueprintstructurePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/abs") instanceof AbstractblueprintstructurePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/standardization/abs") : AbstractblueprintstructurePackage.eINSTANCE);
        AutosartoplevelstructurePackageImpl theAutosartoplevelstructurePackage = (AutosartoplevelstructurePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/atls") instanceof AutosartoplevelstructurePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/atls") : AutosartoplevelstructurePackage.eINSTANCE);
        theDatadefpropertiesPackage.createPackageContents();
        theEcuresourcePackage.createPackageContents();
        theHwelementcategoryPackage.createPackageContents();
        theFormulalanguagePackage.createPackageContents();
        theAbstractstructurePackage.createPackageContents();
        theVarianthandlingPackage.createPackageContents();
        theDocumentationonm1Package.createPackageContents();
        theIdentifiablePackage.createPackageContents();
        theChaptersPackage.createPackageContents();
        theMsrqueryPackage.createPackageContents();
        theAnnotationPackage.createPackageContents();
        theInlineattributeenumsPackage.createPackageContents();
        theInlinetextelementsPackage.createPackageContents();
        theSinglelanguagedataPackage.createPackageContents();
        theInlinetextmodelPackage.createPackageContents();
        theLanguagedatamodelPackage.createPackageContents();
        theMultilanguagedataPackage.createPackageContents();
        theBlockelementsPackage.createPackageContents();
        thePaginationandviewPackage.createPackageContents();
        theOasisexchangetablePackage.createPackageContents();
        theFormulaPackage.createPackageContents();
        theFigurePackage.createPackageContents();
        theRequirementstracingPackage.createPackageContents();
        theSynopsisPackage.createPackageContents();
        theGerneralparametersPackage.createPackageContents();
        theListelementsPackage.createPackageContents();
        theNotePackage.createPackageContents();
        thePrimitivetypesPackage.createPackageContents();
        theAnyinstancerefPackage.createPackageContents();
        theArpackagePackage.createPackageContents();
        theElementcollectionPackage.createPackageContents();
        theGeneralannotationPackage.createPackageContents();
        theAdmindataPackage.createPackageContents();
        theSpecialdataPackage.createPackageContents();
        theMultidimensionaltimePackage.createPackageContents();
        theEngineeringobjectPackage.createPackageContents();
        theArobjectPackage.createPackageContents();
        theFilterPackage.createPackageContents();
        theFlatmapPackage.createPackageContents();
        theDatadictionaryproxiesPackage.createPackageContents();
        theMeasurementcalibrationsupportPackage.createPackageContents();
        theImplementationdatatypesPackage.createPackageContents();
        theInternalbehaviorPackage.createPackageContents();
        theModedeclarationPackage.createPackageContents();
        theAxisPackage.createPackageContents();
        theCalibrationvaluePackage.createPackageContents();
        theCalibrationparameterPackage.createPackageContents();
        theBasetypesPackage.createPackageContents();
        theGlobalconstraintsPackage.createPackageContents();
        theAuxillaryobjectsPackage.createPackageContents();
        theConstantsPackage.createPackageContents();
        theTriggerdeclarationPackage.createPackageContents();
        theImplementationPackage.createPackageContents();
        theSwcbswmappingPackage.createPackageContents();
        theServiceneedsPackage.createPackageContents();
        theResourceconsumptionPackage.createPackageContents();
        theMemorysectionusagePackage.createPackageContents();
        theStackusagePackage.createPackageContents();
        theHeapusagePackage.createPackageContents();
        theExecutiontimePackage.createPackageContents();
        theServiceprocesstaskPackage.createPackageContents();
        theSwclassPackage.createPackageContents();
        theTimingPackage.createPackageContents();
        theTimingconstraintPackage.createPackageContents();
        theAgeconstraintPackage.createPackageContents();
        theExecutiontimeconstraintPackage.createPackageContents();
        theEventtriggeringconstraintPackage.createPackageContents();
        theLatencytimingconstraintPackage.createPackageContents();
        theOffsetconstraintPackage.createPackageContents();
        theSynchronizationtimingconstraintPackage.createPackageContents();
        theExecutionorderconstraintPackage.createPackageContents();
        theTimingdescriptionPackage.createPackageContents();
        theTdeventoccurrenceexpressionPackage.createPackageContents();
        theInstancerefsusagePackage.createPackageContents();
        theInstancerefsPackage.createPackageContents();
        theTdeventswcinternalbehaviorPackage.createPackageContents();
        theTdeventcomPackage.createPackageContents();
        theTdeventbswPackage.createPackageContents();
        theTdeventbswinternalbehaviorPackage.createPackageContents();
        theTdeventcomplexPackage.createPackageContents();
        theTdeventvfbPackage.createPackageContents();
        theSystemconstantPackage.createPackageContents();
        theEndtoendprotectionPackage.createPackageContents();
        theInterpolationroutinemappingsetPackage.createPackageContents();
        theCalibrationparametervaluesPackage.createPackageContents();
        theDatatypesPackage.createPackageContents();
        theRecordlayoutPackage.createPackageContents();
        theUnitsPackage.createPackageContents();
        theLocalconstraintsPackage.createPackageContents();
        theComputationmethodPackage.createPackageContents();
        theDataprototypesPackage.createPackageContents();
        theSwcinternalbehaviorPackage.createPackageContents();
        theServicemappingPackage.createPackageContents();
        theDataelementsPackage.createPackageContents();
        theInstancerefsusagePackage_1.createPackageContents();
        thePerinstancememoryPackage.createPackageContents();
        theInstantiationdatadefpropsPackage.createPackageContents();
        thePortapioptionsPackage.createPackageContents();
        theRteeventsPackage.createPackageContents();
        theTriggerPackage.createPackageContents();
        theModedeclarationgroupPackage.createPackageContents();
        theServercallPackage.createPackageContents();
        theVarianthandlingPackage_1.createPackageContents();
        theIncludeddatatypesPackage.createPackageContents();
        theRunnableentityPackage.createPackageContents();
        theComponentsPackage.createPackageContents();
        theInstancerefsPackage_1.createPackageContents();
        theCommunicationPackage.createPackageContents();
        theCompositionPackage.createPackageContents();
        theInstancerefsPackage_2.createPackageContents();
        theSoftwarecomponentdocumentationPackage.createPackageContents();
        theNvblockcomponentPackage.createPackageContents();
        theApplicationattributesPackage.createPackageContents();
        theSwcimplementationPackage.createPackageContents();
        thePortinterfacePackage.createPackageContents();
        theInstancerefsPackage_3.createPackageContents();
        theEcucdescriptionPackage.createPackageContents();
        theEcucparameterdefPackage.createPackageContents();
        theBswbehaviorPackage.createPackageContents();
        theBswoverviewPackage.createPackageContents();
        theInstancerefsPackage_4.createPackageContents();
        theBswimplementationPackage.createPackageContents();
        theBswinterfacesPackage.createPackageContents();
        theSystemPackage.createPackageContents();
        theSwmappingPackage.createPackageContents();
        theInstancerefsPackage_5.createPackageContents();
        theCancommunicationPackage.createPackageContents();
        theCantopologyPackage.createPackageContents();
        theTtcantopologyPackage.createPackageContents();
        theTtcancommunicationPackage.createPackageContents();
        theEthernetcommunicationPackage.createPackageContents();
        theEthernettopologyPackage.createPackageContents();
        theFlexraycommunicationPackage.createPackageContents();
        theFlexraytopologyPackage.createPackageContents();
        theLincommunicationPackage.createPackageContents();
        theLintopologyPackage.createPackageContents();
        theFibex4multiplatformPackage.createPackageContents();
        theFibexcorePackage.createPackageContents();
        theCorecommunicationPackage.createPackageContents();
        theTimingPackage_1.createPackageContents();
        theCoretopologyPackage.createPackageContents();
        theDatamappingPackage.createPackageContents();
        theTransportprotocolsPackage.createPackageContents();
        theSignalpathsPackage.createPackageContents();
        theEcuresourcemappingPackage.createPackageContents();
        thePncmappingPackage.createPackageContents();
        theNetworkmanagementPackage.createPackageContents();
        theEndtoendprotectionPackage_1.createPackageContents();
        theGenericblueprintPackage.createPackageContents();
        thePortinterfaceblueprintPackage.createPackageContents();
        thePortprotoypeblueprintPackage.createPackageContents();
        theBlueprintmappingPackage.createPackageContents();
        theKeywordPackage.createPackageContents();
        theAbstractblueprintstructurePackage.createPackageContents();
        theAutosartoplevelstructurePackage.createPackageContents();
        theDatadefpropertiesPackage.initializePackageContents();
        theEcuresourcePackage.initializePackageContents();
        theHwelementcategoryPackage.initializePackageContents();
        theFormulalanguagePackage.initializePackageContents();
        theAbstractstructurePackage.initializePackageContents();
        theVarianthandlingPackage.initializePackageContents();
        theDocumentationonm1Package.initializePackageContents();
        theIdentifiablePackage.initializePackageContents();
        theChaptersPackage.initializePackageContents();
        theMsrqueryPackage.initializePackageContents();
        theAnnotationPackage.initializePackageContents();
        theInlineattributeenumsPackage.initializePackageContents();
        theInlinetextelementsPackage.initializePackageContents();
        theSinglelanguagedataPackage.initializePackageContents();
        theInlinetextmodelPackage.initializePackageContents();
        theLanguagedatamodelPackage.initializePackageContents();
        theMultilanguagedataPackage.initializePackageContents();
        theBlockelementsPackage.initializePackageContents();
        thePaginationandviewPackage.initializePackageContents();
        theOasisexchangetablePackage.initializePackageContents();
        theFormulaPackage.initializePackageContents();
        theFigurePackage.initializePackageContents();
        theRequirementstracingPackage.initializePackageContents();
        theSynopsisPackage.initializePackageContents();
        theGerneralparametersPackage.initializePackageContents();
        theListelementsPackage.initializePackageContents();
        theNotePackage.initializePackageContents();
        thePrimitivetypesPackage.initializePackageContents();
        theAnyinstancerefPackage.initializePackageContents();
        theArpackagePackage.initializePackageContents();
        theElementcollectionPackage.initializePackageContents();
        theGeneralannotationPackage.initializePackageContents();
        theAdmindataPackage.initializePackageContents();
        theSpecialdataPackage.initializePackageContents();
        theMultidimensionaltimePackage.initializePackageContents();
        theEngineeringobjectPackage.initializePackageContents();
        theArobjectPackage.initializePackageContents();
        theFilterPackage.initializePackageContents();
        theFlatmapPackage.initializePackageContents();
        theDatadictionaryproxiesPackage.initializePackageContents();
        theMeasurementcalibrationsupportPackage.initializePackageContents();
        theImplementationdatatypesPackage.initializePackageContents();
        theInternalbehaviorPackage.initializePackageContents();
        theModedeclarationPackage.initializePackageContents();
        theAxisPackage.initializePackageContents();
        theCalibrationvaluePackage.initializePackageContents();
        theCalibrationparameterPackage.initializePackageContents();
        theBasetypesPackage.initializePackageContents();
        theGlobalconstraintsPackage.initializePackageContents();
        theAuxillaryobjectsPackage.initializePackageContents();
        theConstantsPackage.initializePackageContents();
        theTriggerdeclarationPackage.initializePackageContents();
        theImplementationPackage.initializePackageContents();
        theSwcbswmappingPackage.initializePackageContents();
        theServiceneedsPackage.initializePackageContents();
        theResourceconsumptionPackage.initializePackageContents();
        theMemorysectionusagePackage.initializePackageContents();
        theStackusagePackage.initializePackageContents();
        theHeapusagePackage.initializePackageContents();
        theExecutiontimePackage.initializePackageContents();
        theServiceprocesstaskPackage.initializePackageContents();
        theSwclassPackage.initializePackageContents();
        theTimingPackage.initializePackageContents();
        theTimingconstraintPackage.initializePackageContents();
        theAgeconstraintPackage.initializePackageContents();
        theExecutiontimeconstraintPackage.initializePackageContents();
        theEventtriggeringconstraintPackage.initializePackageContents();
        theLatencytimingconstraintPackage.initializePackageContents();
        theOffsetconstraintPackage.initializePackageContents();
        theSynchronizationtimingconstraintPackage.initializePackageContents();
        theExecutionorderconstraintPackage.initializePackageContents();
        theTimingdescriptionPackage.initializePackageContents();
        theTdeventoccurrenceexpressionPackage.initializePackageContents();
        theInstancerefsusagePackage.initializePackageContents();
        theInstancerefsPackage.initializePackageContents();
        theTdeventswcinternalbehaviorPackage.initializePackageContents();
        theTdeventcomPackage.initializePackageContents();
        theTdeventbswPackage.initializePackageContents();
        theTdeventbswinternalbehaviorPackage.initializePackageContents();
        theTdeventcomplexPackage.initializePackageContents();
        theTdeventvfbPackage.initializePackageContents();
        theSystemconstantPackage.initializePackageContents();
        theEndtoendprotectionPackage.initializePackageContents();
        theInterpolationroutinemappingsetPackage.initializePackageContents();
        theCalibrationparametervaluesPackage.initializePackageContents();
        theDatatypesPackage.initializePackageContents();
        theRecordlayoutPackage.initializePackageContents();
        theUnitsPackage.initializePackageContents();
        theLocalconstraintsPackage.initializePackageContents();
        theComputationmethodPackage.initializePackageContents();
        theDataprototypesPackage.initializePackageContents();
        theSwcinternalbehaviorPackage.initializePackageContents();
        theServicemappingPackage.initializePackageContents();
        theDataelementsPackage.initializePackageContents();
        theInstancerefsusagePackage_1.initializePackageContents();
        thePerinstancememoryPackage.initializePackageContents();
        theInstantiationdatadefpropsPackage.initializePackageContents();
        thePortapioptionsPackage.initializePackageContents();
        theRteeventsPackage.initializePackageContents();
        theTriggerPackage.initializePackageContents();
        theModedeclarationgroupPackage.initializePackageContents();
        theServercallPackage.initializePackageContents();
        theVarianthandlingPackage_1.initializePackageContents();
        theIncludeddatatypesPackage.initializePackageContents();
        theRunnableentityPackage.initializePackageContents();
        theComponentsPackage.initializePackageContents();
        theInstancerefsPackage_1.initializePackageContents();
        theCommunicationPackage.initializePackageContents();
        theCompositionPackage.initializePackageContents();
        theInstancerefsPackage_2.initializePackageContents();
        theSoftwarecomponentdocumentationPackage.initializePackageContents();
        theNvblockcomponentPackage.initializePackageContents();
        theApplicationattributesPackage.initializePackageContents();
        theSwcimplementationPackage.initializePackageContents();
        thePortinterfacePackage.initializePackageContents();
        theInstancerefsPackage_3.initializePackageContents();
        theEcucdescriptionPackage.initializePackageContents();
        theEcucparameterdefPackage.initializePackageContents();
        theBswbehaviorPackage.initializePackageContents();
        theBswoverviewPackage.initializePackageContents();
        theInstancerefsPackage_4.initializePackageContents();
        theBswimplementationPackage.initializePackageContents();
        theBswinterfacesPackage.initializePackageContents();
        theSystemPackage.initializePackageContents();
        theSwmappingPackage.initializePackageContents();
        theInstancerefsPackage_5.initializePackageContents();
        theCancommunicationPackage.initializePackageContents();
        theCantopologyPackage.initializePackageContents();
        theTtcantopologyPackage.initializePackageContents();
        theTtcancommunicationPackage.initializePackageContents();
        theEthernetcommunicationPackage.initializePackageContents();
        theEthernettopologyPackage.initializePackageContents();
        theFlexraycommunicationPackage.initializePackageContents();
        theFlexraytopologyPackage.initializePackageContents();
        theLincommunicationPackage.initializePackageContents();
        theLintopologyPackage.initializePackageContents();
        theFibex4multiplatformPackage.initializePackageContents();
        theFibexcorePackage.initializePackageContents();
        theCorecommunicationPackage.initializePackageContents();
        theTimingPackage_1.initializePackageContents();
        theCoretopologyPackage.initializePackageContents();
        theDatamappingPackage.initializePackageContents();
        theTransportprotocolsPackage.initializePackageContents();
        theSignalpathsPackage.initializePackageContents();
        theEcuresourcemappingPackage.initializePackageContents();
        thePncmappingPackage.initializePackageContents();
        theNetworkmanagementPackage.initializePackageContents();
        theEndtoendprotectionPackage_1.initializePackageContents();
        theGenericblueprintPackage.initializePackageContents();
        thePortinterfaceblueprintPackage.initializePackageContents();
        thePortprotoypeblueprintPackage.initializePackageContents();
        theBlueprintmappingPackage.initializePackageContents();
        theKeywordPackage.initializePackageContents();
        theAbstractblueprintstructurePackage.initializePackageContents();
        theAutosartoplevelstructurePackage.initializePackageContents();
        theDatadefpropertiesPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/schema/r4.0/autosar40/cs/ddp", (Object)theDatadefpropertiesPackage);
        return theDatadefpropertiesPackage;
    }

    public EClass getValueList() {
        return this.valueListEClass;
    }

    public EReference getValueList_Vfs() {
        return (EReference)this.valueListEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getValueList_Vs() {
        return (EAttribute)this.valueListEClass.getEStructuralFeatures().get(1);
    }

    public EClass getSwBitRepresentation() {
        return this.swBitRepresentationEClass;
    }

    public EReference getSwBitRepresentation_SwDataDefPropsContent() {
        return (EReference)this.swBitRepresentationEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSwBitRepresentation_BitPosition() {
        return (EAttribute)this.swBitRepresentationEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getSwBitRepresentation_NumberOfBits() {
        return (EAttribute)this.swBitRepresentationEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSwDataDependency() {
        return this.swDataDependencyEClass;
    }

    public EReference getSwDataDependency_SwDataDefPropsContent() {
        return (EReference)this.swDataDependencyEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwDataDependency_SwDataDependencyFormula() {
        return (EReference)this.swDataDependencyEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwDataDependency_SwDataDependencyArgs() {
        return (EReference)this.swDataDependencyEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSwDataDependencyArgs() {
        return this.swDataDependencyArgsEClass;
    }

    public EReference getSwDataDependencyArgs_SwDataDependency() {
        return (EReference)this.swDataDependencyArgsEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwDataDependencyArgs_SwCalprmRefs() {
        return (EReference)this.swDataDependencyArgsEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwDataDependencyArgs_SwVariables() {
        return (EReference)this.swDataDependencyArgsEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSwPointerTargetProps() {
        return this.swPointerTargetPropsEClass;
    }

    public EReference getSwPointerTargetProps_SwDataDefPropsContent() {
        return (EReference)this.swPointerTargetPropsEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSwPointerTargetProps_TargetCategory() {
        return (EAttribute)this.swPointerTargetPropsEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwPointerTargetProps_SwDataDefProps() {
        return (EReference)this.swPointerTargetPropsEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSwPointerTargetProps_FunctionPointerSignature() {
        return (EReference)this.swPointerTargetPropsEClass.getEStructuralFeatures().get(3);
    }

    public EClass getSwTextProps() {
        return this.swTextPropsEClass;
    }

    public EReference getSwTextProps_SwDataDefPropsContent() {
        return (EReference)this.swTextPropsEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSwTextProps_ArraySizeSemantics() {
        return (EAttribute)this.swTextPropsEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwTextProps_SwMaxTextSize() {
        return (EReference)this.swTextPropsEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSwTextProps_BaseType() {
        return (EReference)this.swTextPropsEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getSwTextProps_SwFillCharacter() {
        return (EAttribute)this.swTextPropsEClass.getEStructuralFeatures().get(4);
    }

    public EClass getSwDataDefPropsContent() {
        return this.swDataDefPropsContentEClass;
    }

    public EReference getSwDataDefPropsContent_Annotations() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwDataDefPropsContent_SwAddrMethod() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getSwDataDefPropsContent_SwAlignment() {
        return (EAttribute)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSwDataDefPropsContent_BaseType() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(3);
    }

    public EReference getSwDataDefPropsContent_SwBitRepresentation() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getSwDataDefPropsContent_SwCalibrationAccess() {
        return (EAttribute)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(5);
    }

    public EReference getSwDataDefPropsContent_SwValueBlockSize() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(6);
    }

    public EReference getSwDataDefPropsContent_SwCalprmAxisSet() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(7);
    }

    public EReference getSwDataDefPropsContent_SwTextProps() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(8);
    }

    public EReference getSwDataDefPropsContent_SwComparisonVariables() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(9);
    }

    public EReference getSwDataDefPropsContent_CompuMethod() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(10);
    }

    public EReference getSwDataDefPropsContent_DataConstr() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(11);
    }

    public EReference getSwDataDefPropsContent_SwDataDependency() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(12);
    }

    public EAttribute getSwDataDefPropsContent_DisplayFormat() {
        return (EAttribute)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(13);
    }

    public EReference getSwDataDefPropsContent_ImplementationDataType() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(14);
    }

    public EReference getSwDataDefPropsContent_SwHostVariable() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(15);
    }

    public EAttribute getSwDataDefPropsContent_SwImplPolicy() {
        return (EAttribute)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(16);
    }

    public EAttribute getSwDataDefPropsContent_AdditionalNativeTypeQualifier() {
        return (EAttribute)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(17);
    }

    public EAttribute getSwDataDefPropsContent_SwIntendedResolution() {
        return (EAttribute)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(18);
    }

    public EAttribute getSwDataDefPropsContent_SwInterpolationMethod() {
        return (EAttribute)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(19);
    }

    public EReference getSwDataDefPropsContent_InvalidValue() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(20);
    }

    public EAttribute getSwDataDefPropsContent_McFunction() {
        return (EAttribute)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(21);
    }

    public EAttribute getSwDataDefPropsContent_SwIsVirtual() {
        return (EAttribute)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(22);
    }

    public EReference getSwDataDefPropsContent_SwPointerTargetProps() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(23);
    }

    public EReference getSwDataDefPropsContent_SwRecordLayout() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(24);
    }

    public EReference getSwDataDefPropsContent_SwRefreshTiming() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(25);
    }

    public EReference getSwDataDefPropsContent_Unit() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(26);
    }

    public EReference getSwDataDefPropsContent_ValueAxisDataType() {
        return (EReference)this.swDataDefPropsContentEClass.getEStructuralFeatures().get(27);
    }

    public EClass getSwDataDefPropsConditional() {
        return this.swDataDefPropsConditionalEClass;
    }

    public EReference getSwDataDefPropsConditional_SwDataDefProps() {
        return (EReference)this.swDataDefPropsConditionalEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwDataDefPropsConditional_VariationPoint() {
        return (EReference)this.swDataDefPropsConditionalEClass.getEStructuralFeatures().get(1);
    }

    public EClass getSwDataDefProps() {
        return this.swDataDefPropsEClass;
    }

    public EReference getSwDataDefProps_SwDataDefPropsVariants() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(0);
    }

    public EEnum getSwCalibrationAccessEnum() {
        return this.swCalibrationAccessEnumEEnum;
    }

    public EEnum getSwImplPolicyEnum() {
        return this.swImplPolicyEnumEEnum;
    }

    public EEnum getSwVariableAccessImplPolicyEnum() {
        return this.swVariableAccessImplPolicyEnumEEnum;
    }

    public DatadefpropertiesFactory getDatadefpropertiesFactory() {
        return (DatadefpropertiesFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.valueListEClass = this.createEClass(0);
        this.createEReference(this.valueListEClass, 4);
        this.createEAttribute(this.valueListEClass, 5);
        this.swBitRepresentationEClass = this.createEClass(1);
        this.createEReference(this.swBitRepresentationEClass, 4);
        this.createEAttribute(this.swBitRepresentationEClass, 5);
        this.createEAttribute(this.swBitRepresentationEClass, 6);
        this.swDataDependencyEClass = this.createEClass(2);
        this.createEReference(this.swDataDependencyEClass, 4);
        this.createEReference(this.swDataDependencyEClass, 5);
        this.createEReference(this.swDataDependencyEClass, 6);
        this.swDataDependencyArgsEClass = this.createEClass(3);
        this.createEReference(this.swDataDependencyArgsEClass, 4);
        this.createEReference(this.swDataDependencyArgsEClass, 5);
        this.createEReference(this.swDataDependencyArgsEClass, 6);
        this.swPointerTargetPropsEClass = this.createEClass(4);
        this.createEReference(this.swPointerTargetPropsEClass, 4);
        this.createEAttribute(this.swPointerTargetPropsEClass, 5);
        this.createEReference(this.swPointerTargetPropsEClass, 6);
        this.createEReference(this.swPointerTargetPropsEClass, 7);
        this.swTextPropsEClass = this.createEClass(5);
        this.createEReference(this.swTextPropsEClass, 4);
        this.createEAttribute(this.swTextPropsEClass, 5);
        this.createEReference(this.swTextPropsEClass, 6);
        this.createEReference(this.swTextPropsEClass, 7);
        this.createEAttribute(this.swTextPropsEClass, 8);
        this.swDataDefPropsContentEClass = this.createEClass(6);
        this.createEReference(this.swDataDefPropsContentEClass, 4);
        this.createEReference(this.swDataDefPropsContentEClass, 5);
        this.createEAttribute(this.swDataDefPropsContentEClass, 6);
        this.createEReference(this.swDataDefPropsContentEClass, 7);
        this.createEReference(this.swDataDefPropsContentEClass, 8);
        this.createEAttribute(this.swDataDefPropsContentEClass, 9);
        this.createEReference(this.swDataDefPropsContentEClass, 10);
        this.createEReference(this.swDataDefPropsContentEClass, 11);
        this.createEReference(this.swDataDefPropsContentEClass, 12);
        this.createEReference(this.swDataDefPropsContentEClass, 13);
        this.createEReference(this.swDataDefPropsContentEClass, 14);
        this.createEReference(this.swDataDefPropsContentEClass, 15);
        this.createEReference(this.swDataDefPropsContentEClass, 16);
        this.createEAttribute(this.swDataDefPropsContentEClass, 17);
        this.createEReference(this.swDataDefPropsContentEClass, 18);
        this.createEReference(this.swDataDefPropsContentEClass, 19);
        this.createEAttribute(this.swDataDefPropsContentEClass, 20);
        this.createEAttribute(this.swDataDefPropsContentEClass, 21);
        this.createEAttribute(this.swDataDefPropsContentEClass, 22);
        this.createEAttribute(this.swDataDefPropsContentEClass, 23);
        this.createEReference(this.swDataDefPropsContentEClass, 24);
        this.createEAttribute(this.swDataDefPropsContentEClass, 25);
        this.createEAttribute(this.swDataDefPropsContentEClass, 26);
        this.createEReference(this.swDataDefPropsContentEClass, 27);
        this.createEReference(this.swDataDefPropsContentEClass, 28);
        this.createEReference(this.swDataDefPropsContentEClass, 29);
        this.createEReference(this.swDataDefPropsContentEClass, 30);
        this.createEReference(this.swDataDefPropsContentEClass, 31);
        this.swDataDefPropsConditionalEClass = this.createEClass(7);
        this.createEReference(this.swDataDefPropsConditionalEClass, 35);
        this.createEReference(this.swDataDefPropsConditionalEClass, 36);
        this.swDataDefPropsEClass = this.createEClass(8);
        this.createEReference(this.swDataDefPropsEClass, 4);
        this.swCalibrationAccessEnumEEnum = this.createEEnum(9);
        this.swImplPolicyEnumEEnum = this.createEEnum(10);
        this.swVariableAccessImplPolicyEnumEEnum = this.createEEnum(11);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("datadefproperties");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/schema/r4.0/autosar40/cs/ddp");
        ArobjectPackage theArobjectPackage = (ArobjectPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ao");
        autosar40.genericstructure.varianthandling.VarianthandlingPackage theVarianthandlingPackage = (autosar40.genericstructure.varianthandling.VarianthandlingPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/vh");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/pt");
        ComputationmethodPackage theComputationmethodPackage = (ComputationmethodPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/cm");
        DatadictionaryproxiesPackage theDatadictionaryproxiesPackage = (DatadictionaryproxiesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/dp");
        BswinterfacesPackage theBswinterfacesPackage = (BswinterfacesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/bm/binterfaces");
        ImplementationdatatypesPackage theImplementationdatatypesPackage = (ImplementationdatatypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/idt");
        BasetypesPackage theBasetypesPackage = (BasetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/bt");
        AnnotationPackage theAnnotationPackage = (AnnotationPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/a");
        AuxillaryobjectsPackage theAuxillaryobjectsPackage = (AuxillaryobjectsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ao");
        CalibrationparameterPackage theCalibrationparameterPackage = (CalibrationparameterPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/cp");
        GlobalconstraintsPackage theGlobalconstraintsPackage = (GlobalconstraintsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/gc");
        ConstantsPackage theConstantsPackage = (ConstantsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/c");
        RecordlayoutPackage theRecordlayoutPackage = (RecordlayoutPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/rl");
        MultidimensionaltimePackage theMultidimensionaltimePackage = (MultidimensionaltimePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/mt");
        UnitsPackage theUnitsPackage = (UnitsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/u");
        DatatypesPackage theDatatypesPackage = (DatatypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/d");
        GdatadefpropertiesPackage theGdatadefpropertiesPackage = (GdatadefpropertiesPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/ddp");
        this.valueListEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.swBitRepresentationEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.swDataDependencyEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.swDataDependencyArgsEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.swPointerTargetPropsEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.swTextPropsEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.swDataDefPropsContentEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.swDataDefPropsConditionalEClass.getESuperTypes().add((Object)this.getSwDataDefPropsContent());
        this.swDataDefPropsConditionalEClass.getESuperTypes().add((Object)theGdatadefpropertiesPackage.getGSwDataDefPropsConditional());
        this.swDataDefPropsEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.initEClass(this.valueListEClass, ValueList.class, "ValueList", false, false, true);
        this.initEReference(this.getValueList_Vfs(), (EClassifier)theVarianthandlingPackage.getNumericalValueVariationPoint(), null, "vfs", null, 0, -1, ValueList.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getValueList_Vs(), (EClassifier)thePrimitivetypesPackage.getNumerical(), "vs", "", 0, -1, ValueList.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.swBitRepresentationEClass, SwBitRepresentation.class, "SwBitRepresentation", false, false, true);
        this.initEReference(this.getSwBitRepresentation_SwDataDefPropsContent(), (EClassifier)this.getSwDataDefPropsContent(), this.getSwDataDefPropsContent_SwBitRepresentation(), "swDataDefPropsContent", null, 0, 1, SwBitRepresentation.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getSwBitRepresentation_BitPosition(), (EClassifier)thePrimitivetypesPackage.getInteger(), "bitPosition", "0", 0, 1, SwBitRepresentation.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwBitRepresentation_NumberOfBits(), (EClassifier)thePrimitivetypesPackage.getInteger(), "numberOfBits", "0", 0, 1, SwBitRepresentation.class, false, false, true, true, false, true, false, true);
        this.addEOperation(this.swBitRepresentationEClass, (EClassifier)thePrimitivetypesPackage.getIntegerDatatype(), "getBitPositionData", 0, 1, true, true);
        EOperation op = this.addEOperation(this.swBitRepresentationEClass, null, "setBitPositionData", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)thePrimitivetypesPackage.getIntegerDatatype(), "newBitPosition", 0, 1, true, true);
        this.addEOperation(this.swBitRepresentationEClass, (EClassifier)thePrimitivetypesPackage.getIntegerDatatype(), "getNumberOfBitsData", 0, 1, true, true);
        op = this.addEOperation(this.swBitRepresentationEClass, null, "setNumberOfBitsData", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)thePrimitivetypesPackage.getIntegerDatatype(), "newNumberOfBits", 0, 1, true, true);
        this.initEClass(this.swDataDependencyEClass, SwDataDependency.class, "SwDataDependency", false, false, true);
        this.initEReference(this.getSwDataDependency_SwDataDefPropsContent(), (EClassifier)this.getSwDataDefPropsContent(), this.getSwDataDefPropsContent_SwDataDependency(), "swDataDefPropsContent", null, 0, 1, SwDataDependency.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwDataDependency_SwDataDependencyFormula(), (EClassifier)theComputationmethodPackage.getCompuGenericMath(), theComputationmethodPackage.getCompuGenericMath_SwDataDependency(), "swDataDependencyFormula", null, 0, 1, SwDataDependency.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDependency_SwDataDependencyArgs(), (EClassifier)this.getSwDataDependencyArgs(), this.getSwDataDependencyArgs_SwDataDependency(), "swDataDependencyArgs", null, 0, 1, SwDataDependency.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swDataDependencyArgsEClass, SwDataDependencyArgs.class, "SwDataDependencyArgs", false, false, true);
        this.initEReference(this.getSwDataDependencyArgs_SwDataDependency(), (EClassifier)this.getSwDataDependency(), this.getSwDataDependency_SwDataDependencyArgs(), "swDataDependency", null, 0, 1, SwDataDependencyArgs.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwDataDependencyArgs_SwCalprmRefs(), (EClassifier)theDatadictionaryproxiesPackage.getSwCalprmRefProxy(), null, "swCalprmRefs", null, 0, -1, SwDataDependencyArgs.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDependencyArgs_SwVariables(), (EClassifier)theDatadictionaryproxiesPackage.getSwVariableRefProxy(), null, "swVariables", null, 0, -1, SwDataDependencyArgs.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swPointerTargetPropsEClass, SwPointerTargetProps.class, "SwPointerTargetProps", false, false, true);
        this.initEReference(this.getSwPointerTargetProps_SwDataDefPropsContent(), (EClassifier)this.getSwDataDefPropsContent(), this.getSwDataDefPropsContent_SwPointerTargetProps(), "swDataDefPropsContent", null, 0, 1, SwPointerTargetProps.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getSwPointerTargetProps_TargetCategory(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "targetCategory", "", 0, 1, SwPointerTargetProps.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwPointerTargetProps_SwDataDefProps(), (EClassifier)this.getSwDataDefProps(), null, "swDataDefProps", null, 0, 1, SwPointerTargetProps.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwPointerTargetProps_FunctionPointerSignature(), (EClassifier)theBswinterfacesPackage.getBswModuleEntry(), null, "functionPointerSignature", null, 0, 1, SwPointerTargetProps.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.swTextPropsEClass, SwTextProps.class, "SwTextProps", false, false, true);
        this.initEReference(this.getSwTextProps_SwDataDefPropsContent(), (EClassifier)this.getSwDataDefPropsContent(), this.getSwDataDefPropsContent_SwTextProps(), "swDataDefPropsContent", null, 0, 1, SwTextProps.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getSwTextProps_ArraySizeSemantics(), (EClassifier)theImplementationdatatypesPackage.getArraySizeSemanticsEnum(), "arraySizeSemantics", "FIXED-SIZE", 0, 1, SwTextProps.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwTextProps_SwMaxTextSize(), (EClassifier)theVarianthandlingPackage.getIntegerValueVariationPoint(), null, "swMaxTextSize", null, 0, 1, SwTextProps.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwTextProps_BaseType(), (EClassifier)theBasetypesPackage.getSwBaseType(), null, "baseType", null, 0, 1, SwTextProps.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getSwTextProps_SwFillCharacter(), (EClassifier)thePrimitivetypesPackage.getInteger(), "swFillCharacter", "0", 0, 1, SwTextProps.class, false, false, true, true, false, true, false, true);
        this.addEOperation(this.swTextPropsEClass, (EClassifier)thePrimitivetypesPackage.getIntegerDatatype(), "getSwFillCharacterData", 0, 1, true, true);
        op = this.addEOperation(this.swTextPropsEClass, null, "setSwFillCharacterData", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)thePrimitivetypesPackage.getIntegerDatatype(), "newSwFillCharacter", 0, 1, true, true);
        this.initEClass(this.swDataDefPropsContentEClass, SwDataDefPropsContent.class, "SwDataDefPropsContent", true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_Annotations(), (EClassifier)theAnnotationPackage.getAnnotation(), null, "annotations", null, 0, -1, SwDataDefPropsContent.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_SwAddrMethod(), (EClassifier)theAuxillaryobjectsPackage.getSwAddrMethod(), null, "swAddrMethod", null, 0, 1, SwDataDefPropsContent.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getSwDataDefPropsContent_SwAlignment(), (EClassifier)thePrimitivetypesPackage.getAlignmentType(), "swAlignment", "", 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_BaseType(), (EClassifier)theBasetypesPackage.getSwBaseType(), null, "baseType", null, 0, 1, SwDataDefPropsContent.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_SwBitRepresentation(), (EClassifier)this.getSwBitRepresentation(), this.getSwBitRepresentation_SwDataDefPropsContent(), "swBitRepresentation", null, 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSwDataDefPropsContent_SwCalibrationAccess(), (EClassifier)this.getSwCalibrationAccessEnum(), "swCalibrationAccess", "READ-ONLY", 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_SwValueBlockSize(), (EClassifier)theVarianthandlingPackage.getNumericalValueVariationPoint(), null, "swValueBlockSize", null, 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_SwCalprmAxisSet(), (EClassifier)theCalibrationparameterPackage.getSwCalprmAxisSet(), theCalibrationparameterPackage.getSwCalprmAxisSet_SwDataDefPropsContent(), "swCalprmAxisSet", null, 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_SwTextProps(), (EClassifier)this.getSwTextProps(), this.getSwTextProps_SwDataDefPropsContent(), "swTextProps", null, 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_SwComparisonVariables(), (EClassifier)theDatadictionaryproxiesPackage.getSwVariableRefProxy(), null, "swComparisonVariables", null, 0, -1, SwDataDefPropsContent.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_CompuMethod(), (EClassifier)theComputationmethodPackage.getCompuMethod(), null, "compuMethod", null, 0, 1, SwDataDefPropsContent.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_DataConstr(), (EClassifier)theGlobalconstraintsPackage.getDataConstr(), null, "dataConstr", null, 0, 1, SwDataDefPropsContent.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_SwDataDependency(), (EClassifier)this.getSwDataDependency(), this.getSwDataDependency_SwDataDefPropsContent(), "swDataDependency", null, 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSwDataDefPropsContent_DisplayFormat(), (EClassifier)thePrimitivetypesPackage.getDisplayFormatString(), "displayFormat", "", 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_ImplementationDataType(), (EClassifier)theImplementationdatatypesPackage.getImplementationDataType(), null, "implementationDataType", null, 0, 1, SwDataDefPropsContent.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_SwHostVariable(), (EClassifier)theDatadictionaryproxiesPackage.getSwVariableRefProxy(), null, "swHostVariable", null, 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSwDataDefPropsContent_SwImplPolicy(), (EClassifier)this.getSwImplPolicyEnum(), "swImplPolicy", "CONST", 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwDataDefPropsContent_AdditionalNativeTypeQualifier(), (EClassifier)thePrimitivetypesPackage.getNativeDeclarationString(), "additionalNativeTypeQualifier", "", 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwDataDefPropsContent_SwIntendedResolution(), (EClassifier)thePrimitivetypesPackage.getNumerical(), "swIntendedResolution", "", 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwDataDefPropsContent_SwInterpolationMethod(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "swInterpolationMethod", "", 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_InvalidValue(), (EClassifier)theConstantsPackage.getValueSpecification(), null, "invalidValue", null, 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSwDataDefPropsContent_McFunction(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "mcFunction", "", 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwDataDefPropsContent_SwIsVirtual(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "swIsVirtual", "false", 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_SwPointerTargetProps(), (EClassifier)this.getSwPointerTargetProps(), this.getSwPointerTargetProps_SwDataDefPropsContent(), "swPointerTargetProps", null, 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_SwRecordLayout(), (EClassifier)theRecordlayoutPackage.getSwRecordLayout(), null, "swRecordLayout", null, 0, 1, SwDataDefPropsContent.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_SwRefreshTiming(), (EClassifier)theMultidimensionaltimePackage.getMultidimensionalTime(), null, "swRefreshTiming", null, 0, 1, SwDataDefPropsContent.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_Unit(), (EClassifier)theUnitsPackage.getUnit(), null, "unit", null, 0, 1, SwDataDefPropsContent.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsContent_ValueAxisDataType(), (EClassifier)theDatatypesPackage.getApplicationPrimitiveDataType(), null, "valueAxisDataType", null, 0, 1, SwDataDefPropsContent.class, false, false, true, false, true, false, true, false, true);
        this.addEOperation(this.swDataDefPropsContentEClass, (EClassifier)this.ecorePackage.getEFloat(), "getSwIntendedResolutionAsFloat", 0, 1, true, true);
        this.addEOperation(this.swDataDefPropsContentEClass, (EClassifier)this.ecorePackage.getEInt(), "getSwIntendedResolutionAsInteger", 0, 1, true, true);
        this.addEOperation(this.swDataDefPropsContentEClass, (EClassifier)this.ecorePackage.getEInt(), "getRadixForSwIntendedResolution", 0, 1, true, true);
        op = this.addEOperation(this.swDataDefPropsContentEClass, null, "setSwIntendedResolution", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEInt(), "radix", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEString(), "value", 0, 1, true, true);
        this.initEClass(this.swDataDefPropsConditionalEClass, SwDataDefPropsConditional.class, "SwDataDefPropsConditional", false, false, true);
        this.initEReference(this.getSwDataDefPropsConditional_SwDataDefProps(), (EClassifier)this.getSwDataDefProps(), this.getSwDataDefProps_SwDataDefPropsVariants(), "swDataDefProps", null, 0, 1, SwDataDefPropsConditional.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwDataDefPropsConditional_VariationPoint(), (EClassifier)theVarianthandlingPackage.getVariationPoint(), null, "variationPoint", null, 0, 1, SwDataDefPropsConditional.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swDataDefPropsEClass, SwDataDefProps.class, "SwDataDefProps", false, false, true);
        this.initEReference(this.getSwDataDefProps_SwDataDefPropsVariants(), (EClassifier)this.getSwDataDefPropsConditional(), this.getSwDataDefPropsConditional_SwDataDefProps(), "SwDataDefPropsVariants", null, 0, -1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEEnum(this.swCalibrationAccessEnumEEnum, SwCalibrationAccessEnum.class, "SwCalibrationAccessEnum");
        this.addEEnumLiteral(this.swCalibrationAccessEnumEEnum, SwCalibrationAccessEnum.READ_ONLY);
        this.addEEnumLiteral(this.swCalibrationAccessEnumEEnum, SwCalibrationAccessEnum.NOT_ACCESSIBLE);
        this.addEEnumLiteral(this.swCalibrationAccessEnumEEnum, SwCalibrationAccessEnum.READ_WRITE);
        this.initEEnum(this.swImplPolicyEnumEEnum, SwImplPolicyEnum.class, "SwImplPolicyEnum");
        this.addEEnumLiteral(this.swImplPolicyEnumEEnum, SwImplPolicyEnum.CONST);
        this.addEEnumLiteral(this.swImplPolicyEnumEEnum, SwImplPolicyEnum.FIXED);
        this.addEEnumLiteral(this.swImplPolicyEnumEEnum, SwImplPolicyEnum.MEASUREMENT_POINT);
        this.addEEnumLiteral(this.swImplPolicyEnumEEnum, SwImplPolicyEnum.QUEUED);
        this.addEEnumLiteral(this.swImplPolicyEnumEEnum, SwImplPolicyEnum.STANDARD);
        this.initEEnum(this.swVariableAccessImplPolicyEnumEEnum, SwVariableAccessImplPolicyEnum.class, "SwVariableAccessImplPolicyEnum");
        this.addEEnumLiteral(this.swVariableAccessImplPolicyEnumEEnum, SwVariableAccessImplPolicyEnum.OPTIMIZED);
        this.addEEnumLiteral(this.swVariableAccessImplPolicyEnumEEnum, SwVariableAccessImplPolicyEnum.SELECTABLE);
        this.addEEnumLiteral(this.swVariableAccessImplPolicyEnumEEnum, SwVariableAccessImplPolicyEnum.DIRECT);
        this.createResource("http://autosar.org/schema/r4.0/autosar40/cs/ddp");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_SwDataDefPropsContentAnnotations();
        this.createTaggedValuesOfGeneralization_IsSyscondAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "DataDefProperties", "Modified", "Tue Feb 28 16:05:37 CET 2006", "Created", "Fri Dec 02 17:57:30 CET 2005", "GUID", "F9DDEC12-AC2E-4056-8837-ADB17B4998FC", "Id", "1339077473"});
        this.addAnnotation((ENamedElement)this.valueListEClass, source, new String[]{"Name", "ValueList", "Modified", "Thu Apr 23 11:10:01 CEST 2009", "Created", "Fri Nov 25 19:53:31 CET 2005", "GUID", "BC78CBD6-1D66-45a3-BD2A-49F413DCB7C1", "Id", "-394049004"});
        this.addAnnotation((ENamedElement)this.getValueList_Vfs(), source, new String[]{"Name", "vf", "GUID", "BFC37EDC-362E-422c-9285-C9DA3EEC39EB", "Id", "284691375"});
        this.addAnnotation((ENamedElement)this.getValueList_Vs(), source, new String[]{"Name", "v", "GUID", "CE98A2AC-92E6-4569-948B-F6553AD32F34", "Id", "-1859988043"});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass, source, new String[]{"Name", "SwBitRepresentation", "Modified", "Mon Aug 27 21:54:48 CEST 2007", "Created", "Fri Nov 25 19:53:03 CET 2005", "GUID", "22353C5D-DBD1-4200-8692-B0DE1495574D", "Id", "-814305585"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_BitPosition(), source, new String[]{"Name", "bitPosition", "GUID", "AADCADB6-0ABD-4aec-B49F-8101694184AF", "Id", "-195136348"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_NumberOfBits(), source, new String[]{"Name", "numberOfBits", "GUID", "8C77C182-4887-4d18-8EE1-268D98E84532", "Id", "-1128966416"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum, source, new String[]{"Name", "SwCalibrationAccessEnum", "Modified", "Thu Jul 21 16:31:34 CEST 2011", "Created", "Tue Oct 31 17:43:43 CET 2006", "GUID", "B6DCF0E5-BB4D-4572-9206-EED60652C6ED", "Id", "-253555336"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(0), source, new String[]{"Name", "readOnly", "GUID", "EE63F0AA-DE20-424b-8580-A94F291CE81D", "Id", "-1803773755"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(1), source, new String[]{"Name", "notAccessible", "GUID", "F6E9B669-B7C4-401c-83F4-39D62D5427AE", "Id", "594008226"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(2), source, new String[]{"Name", "readWrite", "GUID", "25CFE72A-4494-49b1-AEB3-1B97631F345A", "Id", "73572475"});
        this.addAnnotation((ENamedElement)this.swDataDependencyEClass, source, new String[]{"Name", "SwDataDependency", "Modified", "Mon Jun 08 19:32:10 CEST 2009", "Created", "Fri Nov 25 19:53:07 CET 2005", "GUID", "AA424E74-F150-42b8-809B-174E947EBD51", "Id", "-1300014333"});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"Name", "SwDataDependencyArgs", "Modified", "Mon Aug 27 22:09:51 CEST 2007", "Created", "Fri Nov 25 19:53:07 CET 2005", "GUID", "31457F7E-FDDC-4c0f-8BEF-4D95F902C6B3", "Id", "1844479309"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum, source, new String[]{"Name", "SwImplPolicyEnum", "Modified", "Thu Feb 25 09:32:45 CET 2010", "Created", "Tue Oct 31 18:23:24 CET 2006", "GUID", "BDBF9933-D31C-4148-B588-57097F7E1AF9", "Id", "-1085762980"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(0), source, new String[]{"Name", "const", "GUID", "8757CF60-0E8D-4f85-9764-5352828E55F5", "Id", "603842036"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(1), source, new String[]{"Name", "fixed", "GUID", "26C97541-6397-416c-B78E-F95F53224078", "Id", "1345368223"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(2), source, new String[]{"Name", "measurementPoint", "GUID", "9F61AAC4-79CF-41f0-8C80-1E4B20CB6083", "Id", "1497675680"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(3), source, new String[]{"Name", "queued", "GUID", "0B8A6922-1AC0-476b-9F20-B5E5897B1520", "Id", "-31529266"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(4), source, new String[]{"Name", "standard", "GUID", "081E1B3C-421D-4dc3-9E01-772157AAFE16", "Id", "906888993"});
        this.addAnnotation((ENamedElement)this.swPointerTargetPropsEClass, source, new String[]{"Name", "SwPointerTargetProps", "Modified", "Mon Sep 26 08:34:30 CEST 2011", "Created", "Fri Nov 25 19:53:11 CET 2005", "GUID", "C0B728AC-330C-4f58-B108-9E574B7B3F0D", "Id", "-190710395"});
        this.addAnnotation((ENamedElement)this.getSwPointerTargetProps_TargetCategory(), source, new String[]{"Name", "targetCategory", "GUID", "0BAF4893-8648-425e-A3A2-6B47E41331F4", "Id", "1228841863"});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass, source, new String[]{"Name", "SwTextProps", "Modified", "Thu Oct 27 11:01:46 CEST 2011", "Created", "Fri Sep 01 13:28:25 CEST 2006", "GUID", "67884C86-B255-4d5e-A648-2407CE0E0CE1", "Id", "323874071"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_ArraySizeSemantics(), source, new String[]{"Name", "arraySizeSemantics", "GUID", "50D50683-1E0A-4d2f-91C9-FF9E7ED853AD", "Id", "1228898486"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwMaxTextSize(), source, new String[]{"Name", "swMaxTextSize", "GUID", "6A8E2878-C7BE-4875-A75D-34DDAE92D3B8", "Id", "-983139353"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwFillCharacter(), source, new String[]{"Name", "swFillCharacter", "GUID", "35837DBA-E8F4-4d6b-9EDC-D019473656F2", "Id", "964672968"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum, source, new String[]{"Name", "SwVariableAccessImplPolicyEnum", "Modified", "Mon Aug 27 21:50:02 CEST 2007", "Created", "Tue Oct 31 18:17:52 CET 2006", "GUID", "E9F3FFB3-C9B0-43e4-B0E1-348F59C3EC2A", "Id", "-1672763849"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(0), source, new String[]{"Name", "optimized", "GUID", "AFE294B4-6824-413c-A826-22A6E5183059", "Id", "727818668"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(1), source, new String[]{"Name", "selectable", "GUID", "51CD03F8-11F4-415a-B6F3-5989DBFC2CD4", "Id", "1718219581"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(2), source, new String[]{"Name", "direct", "GUID", "A758DF2A-145B-4f55-BED8-34ED8131A06F", "Id", "-1888972870"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwAlignment(), source, new String[]{"Name", "swAlignment", "GUID", "5F749FAD-1FEE-4ab4-8D85-78B8926A2EA7", "Id", "-150849210"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwCalibrationAccess(), source, new String[]{"Name", "swCalibrationAccess", "GUID", "C72AE2C8-8ABE-459b-AC76-E0584A1EDD15", "Id", "-1068034257"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwValueBlockSize(), source, new String[]{"Name", "swValueBlockSize", "GUID", "42384002-F965-4700-89C6-5C47A9842F98", "Id", "-515923121"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_DisplayFormat(), source, new String[]{"Name", "displayFormat", "GUID", "C0C68D31-ECDA-4c4e-AEF9-E7976F478A70", "Id", "2050436215"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwImplPolicy(), source, new String[]{"Name", "swImplPolicy", "GUID", "B048780B-7ED5-4197-99E8-F0EC419C75A2", "Id", "2022404327"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_AdditionalNativeTypeQualifier(), source, new String[]{"Name", "additionalNativeTypeQualifier", "GUID", "368F9B9C-6252-4035-A0DF-D615FB694DFB", "Id", "1241355236"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwIntendedResolution(), source, new String[]{"Name", "swIntendedResolution", "GUID", "0D24B736-6910-4cde-9B91-638D02BC8E2A", "Id", "830059875"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwInterpolationMethod(), source, new String[]{"Name", "swInterpolationMethod", "GUID", "38B82FCE-58D9-4903-9A6E-904BF443FF0A", "Id", "-1690494561"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_McFunction(), source, new String[]{"Name", "mcFunction", "GUID", "250F16AA-4971-424f-A2FE-169CF7E86B6E", "Id", "-853018030"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwIsVirtual(), source, new String[]{"Name", "swIsVirtual", "GUID", "B49D530B-1D27-4e8b-969D-D0B65CEB0B61", "Id", "-224061029"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"Name", "SwDataDefProps", "Modified", "Thu Oct 27 11:01:46 CEST 2011", "Created", "Fri Nov 25 19:53:07 CET 2005", "GUID", "116B7194-57DC-47ce-8AA7-012CE3FF2DF4", "Id", "1008250382"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "DATA-DEF-PROPERTIES", "xml.namePlural", "DATA-DEF-PROPERTIESS"});
        this.addAnnotation((ENamedElement)this.valueListEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-ARRAYSIZE_TYPE\";msr.isGroupOnly=\"true\";mmt.qualifiedName=\"ValueList\"", "asam.useCase", "MDX", "msr.isGroupOnly", "true", "mmt.qualifiedName", "ValueList", "msr.id", "type__SW-ARRAYSIZE_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "VALUE-LIST", "xml.namePlural", "VALUE-LISTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getValueList_Vfs(), source, new String[]{"xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";xml.roleElement=\"true\";xml.roleWrapperElement=\"false\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";mmt.qualifiedName=\"ValueList.vf\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "mmt.qualifiedName", "ValueList.vf", "xml.roleElement", "true", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "VF", "xml.namePlural", "VFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getValueList_Vs(), source, new String[]{"xml.tags", "msr.id=\"SW-ARRAYSIZE_TYPE__V\";xml.sequenceOffset=\"30\";mmt.qualifiedName=\"ValueList.v\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "ValueList.v", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "msr.id", "SW-ARRAYSIZE_TYPE__V", "xml.name", "V", "xml.namePlural", "VS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-BIT-REPRESENTATION_TYPE\";mmt.qualifiedName=\"SwBitRepresentation\"", "asam.useCase", "MDX", "mmt.qualifiedName", "SwBitRepresentation", "msr.id", "type__SW-BIT-REPRESENTATION_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "SW-BIT-REPRESENTATION", "xml.namePlural", "SW-BIT-REPRESENTATIONS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_BitPosition(), source, new String[]{"xml.tags", "msr.id=\"SW-BIT-REPRESENTATION_TYPE__BIT-POSITION\";msr.tbdString=\"true\";xml.sequenceOffset=\"20\";mmt.qualifiedName=\"SwBitRepresentation.bitPosition\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "msr.tbdString", "true", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "mmt.qualifiedName", "SwBitRepresentation.bitPosition", "msr.id", "SW-BIT-REPRESENTATION_TYPE__BIT-POSITION", "xml.name", "BIT-POSITION", "xml.namePlural", "BIT-POSITIONS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "artop.numericalGetter", "getBitPositionData", "artop.numericalSetter", "setBitPositionData"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_NumberOfBits(), source, new String[]{"xml.tags", "msr.id=\"SW-BIT-REPRESENTATION_TYPE__NUMBER-OF-BITS\";msr.tbdString=\"true\";xml.sequenceOffset=\"30\";mmt.qualifiedName=\"SwBitRepresentation.numberOfBits\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "msr.tbdString", "true", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "1", "mmt.qualifiedName", "SwBitRepresentation.numberOfBits", "msr.id", "SW-BIT-REPRESENTATION_TYPE__NUMBER-OF-BITS", "xml.name", "NUMBER-OF-BITS", "xml.namePlural", "NUMBER-OF-BITSS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "artop.numericalGetter", "getNumberOfBitsData", "artop.numericalSetter", "setNumberOfBitsData"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum, source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwCalibrationAccessEnum\"", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::GeneralTemplateClasses::ArObject::ARObject", "mmt.qualifiedName", "SwCalibrationAccessEnum", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "SW-CALIBRATION-ACCESS-ENUM", "xml.namePlural", "SW-CALIBRATION-ACCESS-ENUMS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(0), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwCalibrationAccessEnum.readOnly\"", "mmt.qualifiedName", "SwCalibrationAccessEnum.readOnly", "xml.name", "READ-ONLY", "xml.namePlural", "READ-ONLYS"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(1), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwCalibrationAccessEnum.notAccessible\"", "mmt.qualifiedName", "SwCalibrationAccessEnum.notAccessible", "xml.name", "NOT-ACCESSIBLE", "xml.namePlural", "NOT-ACCESSIBLES"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(2), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwCalibrationAccessEnum.readWrite\"", "mmt.qualifiedName", "SwCalibrationAccessEnum.readWrite", "xml.name", "READ-WRITE", "xml.namePlural", "READ-WRITES"});
        this.addAnnotation((ENamedElement)this.swDataDependencyEClass, source, new String[]{"xml.tags", "msr.id=\"type__SW-DATA-DEPENDENCY_TYPE\";mmt.qualifiedName=\"SwDataDependency\"", "mmt.qualifiedName", "SwDataDependency", "msr.id", "type__SW-DATA-DEPENDENCY_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "SW-DATA-DEPENDENCY", "xml.namePlural", "SW-DATA-DEPENDENCYS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyFormula(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"SW-DATA-DEPENDENCY_TYPE__SW-DATA-DEPENDENCY-FORMULA\";mmt.qualifiedName=\"SwDataDependency.swDataDependencyFormula\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "0", "mmt.qualifiedName", "SwDataDependency.swDataDependencyFormula", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEPENDENCY_TYPE__SW-DATA-DEPENDENCY-FORMULA", "xml.name", "SW-DATA-DEPENDENCY-FORMULA", "xml.namePlural", "SW-DATA-DEPENDENCY-FORMULAS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyArgs(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"40\";msr.id=\"SW-DATA-DEPENDENCY_TYPE__SW-DATA-DEPENDENCY-ARGS\";mmt.qualifiedName=\"SwDataDependency.swDataDependencyArgs\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "SwDataDependency.swDataDependencyArgs", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEPENDENCY_TYPE__SW-DATA-DEPENDENCY-ARGS", "xml.name", "SW-DATA-DEPENDENCY-ARGS", "xml.namePlural", "SW-DATA-DEPENDENCY-ARGSS", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"xml.tags", "msr.id=\"type__SW-DATA-DEPENDENCY-ARGS_TYPE\";msr.isGroupOnly=\"true\";mmt.qualifiedName=\"SwDataDependencyArgs\"", "msr.isGroupOnly", "true", "mmt.qualifiedName", "SwDataDependencyArgs", "msr.id", "type__SW-DATA-DEPENDENCY-ARGS_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "SW-DATA-DEPENDENCY-ARGS", "xml.namePlural", "SW-DATA-DEPENDENCY-ARGSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwCalprmRefs(), source, new String[]{"xml.tags", "xml.roleWrapperElement=\"false\";xml.sequenceOffset=\"60\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";xml.roleElement=\"false\";mmt.qualifiedName=\"SwDataDependencyArgs.swCalprmRef\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "mmt.qualifiedName", "SwDataDependencyArgs.swCalprmRef", "xml.roleElement", "false", "xml.name", "SW-CALPRM-REF", "xml.namePlural", "SW-CALPRM-REFS", "internal-xml-sequenceOffset", "60", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwVariables(), source, new String[]{"xml.tags", "xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";xml.roleWrapperElement=\"false\";xml.roleElement=\"false\";xml.sequenceOffset=\"70\";mmt.qualifiedName=\"SwDataDependencyArgs.swVariable\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "1", "xml.typeElement", "false", "mmt.qualifiedName", "SwDataDependencyArgs.swVariable", "xml.roleElement", "false", "xml.name", "SW-VARIABLE", "xml.namePlural", "SW-VARIABLES", "internal-xml-sequenceOffset", "70", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum, source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwImplPolicyEnum\"", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::GeneralTemplateClasses::ArObject::ARObject", "mmt.qualifiedName", "SwImplPolicyEnum", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "SW-IMPL-POLICY-ENUM", "xml.namePlural", "SW-IMPL-POLICY-ENUMS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(0), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwImplPolicyEnum.const\"", "mmt.qualifiedName", "SwImplPolicyEnum.const", "xml.name", "CONST", "xml.namePlural", "CONSTS"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(1), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwImplPolicyEnum.fixed\"", "mmt.qualifiedName", "SwImplPolicyEnum.fixed", "xml.name", "FIXED", "xml.namePlural", "FIXEDS"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(2), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwImplPolicyEnum.measurementPoint\"", "mmt.qualifiedName", "SwImplPolicyEnum.measurementPoint", "xml.name", "MEASUREMENT-POINT", "xml.namePlural", "MEASUREMENT-POINTS"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(3), source, new String[]{"xml.tags", "msr.id=\"SW-IMPL-POLICY_enum_queued\";mmt.qualifiedName=\"SwImplPolicyEnum.queued\"", "mmt.qualifiedName", "SwImplPolicyEnum.queued", "msr.id", "SW-IMPL-POLICY_enum_queued", "xml.name", "QUEUED", "xml.namePlural", "QUEUEDS"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(4), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwImplPolicyEnum.standard\"", "mmt.qualifiedName", "SwImplPolicyEnum.standard", "xml.name", "STANDARD", "xml.namePlural", "STANDARDS"});
        this.addAnnotation((ENamedElement)this.swPointerTargetPropsEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-POINTER_TYPE\";mmt.qualifiedName=\"SwPointerTargetProps\"", "asam.useCase", "MDX", "mmt.qualifiedName", "SwPointerTargetProps", "msr.id", "type__SW-POINTER_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "SW-POINTER-TARGET-PROPS", "xml.namePlural", "SW-POINTER-TARGET-PROPSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwPointerTargetProps_TargetCategory(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"5\";mmt.qualifiedName=\"SwPointerTargetProps.targetCategory\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "0", "mmt.qualifiedName", "SwPointerTargetProps.targetCategory", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "TARGET-CATEGORY", "xml.namePlural", "TARGET-CATEGORYS", "internal-xml-sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwPointerTargetProps_SwDataDefProps(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"SW-POINTER_TYPE__SW-DATA-DEF-PROPS\";mmt.qualifiedName=\"SwPointerTargetProps.swDataDefProps\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "SwPointerTargetProps.swDataDefProps", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-POINTER_TYPE__SW-DATA-DEF-PROPS", "xml.name", "SW-DATA-DEF-PROPS", "xml.namePlural", "SW-DATA-DEF-PROPSS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwPointerTargetProps_FunctionPointerSignature(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"40\";mmt.qualifiedName=\"SwPointerTargetProps.functionPointerSignature\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "2", "mmt.qualifiedName", "SwPointerTargetProps.functionPointerSignature", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "FUNCTION-POINTER-SIGNATURE-REF", "xml.namePlural", "FUNCTION-POINTER-SIGNATURE-REFS", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass, source, new String[]{"xml.tags", "msr.id=\"type__SW-TEXT-PROPS_TYPE\";mmt.qualifiedName=\"SwTextProps\"", "mmt.qualifiedName", "SwTextProps", "msr.id", "type__SW-TEXT-PROPS_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "SW-TEXT-PROPS", "xml.namePlural", "SW-TEXT-PROPSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_ArraySizeSemantics(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwTextProps.arraySizeSemantics\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "SwTextProps.arraySizeSemantics", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "ARRAY-SIZE-SEMANTICS", "xml.namePlural", "ARRAY-SIZE-SEMANTICSS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwMaxTextSize(), source, new String[]{"xml.tags", "msr.id=\"SW-TEXT-PROPS_TYPE__SW-MAX-TEXT-SIZE\";Vh.latestBindingTime=\"PreCompileTime\";xml.sequenceOffset=\"20\";mmt.qualifiedName=\"SwTextProps.swMaxTextSize\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "1", "mmt.qualifiedName", "SwTextProps.swMaxTextSize", "msr.id", "SW-TEXT-PROPS_TYPE__SW-MAX-TEXT-SIZE", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "SW-MAX-TEXT-SIZE", "xml.namePlural", "SW-MAX-TEXT-SIZES", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_BaseType(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"SW-TEXT-PROPS_TYPE__BASE-TYPE-REF\";mmt.qualifiedName=\"SwTextProps.baseType\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "2", "mmt.qualifiedName", "SwTextProps.baseType", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-TEXT-PROPS_TYPE__BASE-TYPE-REF", "xml.name", "BASE-TYPE-REF", "xml.namePlural", "BASE-TYPE-REFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwFillCharacter(), source, new String[]{"xml.tags", "msr.id=\"SW-TEXT-PROPS_TYPE__SW-FILL-CHARACTER\";xml.sequenceOffset=\"40\";mmt.qualifiedName=\"SwTextProps.swFillCharacter\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "3", "mmt.qualifiedName", "SwTextProps.swFillCharacter", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-TEXT-PROPS_TYPE__SW-FILL-CHARACTER", "xml.name", "SW-FILL-CHARACTER", "xml.namePlural", "SW-FILL-CHARACTERS", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "artop.numericalGetter", "getSwFillCharacterData", "artop.numericalSetter", "setSwFillCharacterData"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum, source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwVariableAccessImplPolicyEnum\"", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::GeneralTemplateClasses::ArObject::ARObject", "mmt.qualifiedName", "SwVariableAccessImplPolicyEnum", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "SW-VARIABLE-ACCESS-IMPL-POLICY-ENUM", "xml.namePlural", "SW-VARIABLE-ACCESS-IMPL-POLICY-ENUMS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(0), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwVariableAccessImplPolicyEnum.optimized\"", "mmt.qualifiedName", "SwVariableAccessImplPolicyEnum.optimized", "xml.name", "OPTIMIZED", "xml.namePlural", "OPTIMIZEDS"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(1), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwVariableAccessImplPolicyEnum.selectable\"", "mmt.qualifiedName", "SwVariableAccessImplPolicyEnum.selectable", "xml.name", "SELECTABLE", "xml.namePlural", "SELECTABLES"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(2), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwVariableAccessImplPolicyEnum.direct\"", "mmt.qualifiedName", "SwVariableAccessImplPolicyEnum.direct", "xml.name", "DIRECT", "xml.namePlural", "DIRECTS"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsContentEClass, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "SW-DATA-DEF-PROPS-CONTENT", "xml.namePlural", "SW-DATA-DEF-PROPS-CONTENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_Annotations(), source, new String[]{"xml.tags", "xml.roleWrapperElement=\"true\";xml.sequenceOffset=\"20\";xml.typeWrapperElement=\"false\";xml.typeElement=\"false\";xml.roleElement=\"true\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__ANNOTATIONS\";mmt.qualifiedName=\"SwDataDefProps.annotation\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.roleWrapperElement", "true", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "msr.id", "SW-DATA-DEF-PROPS_TYPE__ANNOTATIONS", "mmt.qualifiedName", "SwDataDefProps.annotation", "xml.roleElement", "true", "xml.name", "ANNOTATION", "xml.namePlural", "ANNOTATIONS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwAddrMethod(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-ADDR-METHOD-REF\";mmt.qualifiedName=\"SwDataDefProps.swAddrMethod\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "SwDataDefProps.swAddrMethod", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-ADDR-METHOD-REF", "xml.name", "SW-ADDR-METHOD-REF", "xml.namePlural", "SW-ADDR-METHOD-REFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwAlignment(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"33\";mmt.qualifiedName=\"SwDataDefProps.swAlignment\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "2", "mmt.qualifiedName", "SwDataDefProps.swAlignment", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "SW-ALIGNMENT", "xml.namePlural", "SW-ALIGNMENTS", "internal-xml-sequenceOffset", "33", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_BaseType(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"50\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__BASE-TYPE-REF\";mmt.qualifiedName=\"SwDataDefProps.baseType\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "3", "mmt.qualifiedName", "SwDataDefProps.baseType", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEF-PROPS_TYPE__BASE-TYPE-REF", "xml.name", "BASE-TYPE-REF", "xml.namePlural", "BASE-TYPE-REFS", "internal-xml-sequenceOffset", "50", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwBitRepresentation(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"60\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-BIT-REPRESENTATION\";mmt.qualifiedName=\"SwDataDefProps.swBitRepresentation\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "4", "mmt.qualifiedName", "SwDataDefProps.swBitRepresentation", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-BIT-REPRESENTATION", "xml.name", "SW-BIT-REPRESENTATION", "xml.namePlural", "SW-BIT-REPRESENTATIONS", "internal-xml-sequenceOffset", "60", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwCalibrationAccess(), source, new String[]{"xml.tags", "msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-CALIBRATION-ACCESS\";msr.tbdString=\"true\";xml.sequenceOffset=\"70\";mmt.qualifiedName=\"SwDataDefProps.swCalibrationAccess\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "msr.tbdString", "true", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "5", "mmt.qualifiedName", "SwDataDefProps.swCalibrationAccess", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-CALIBRATION-ACCESS", "xml.name", "SW-CALIBRATION-ACCESS", "xml.namePlural", "SW-CALIBRATION-ACCESSS", "internal-xml-sequenceOffset", "70", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwValueBlockSize(), source, new String[]{"xml.tags", "msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-VALUE-BLOCK-SIZE\";Vh.latestBindingTime=\"PreCompileTime\";xml.sequenceOffset=\"80\";mmt.qualifiedName=\"SwDataDefProps.swValueBlockSize\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "6", "mmt.qualifiedName", "SwDataDefProps.swValueBlockSize", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-VALUE-BLOCK-SIZE", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "SW-VALUE-BLOCK-SIZE", "xml.namePlural", "SW-VALUE-BLOCK-SIZES", "internal-xml-sequenceOffset", "80", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwCalprmAxisSet(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"90\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-CALPRM-AXIS-SET\";mmt.qualifiedName=\"SwDataDefProps.swCalprmAxisSet\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "7", "mmt.qualifiedName", "SwDataDefProps.swCalprmAxisSet", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-CALPRM-AXIS-SET", "xml.name", "SW-CALPRM-AXIS-SET", "xml.namePlural", "SW-CALPRM-AXIS-SETS", "internal-xml-sequenceOffset", "90", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwTextProps(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"120\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-TEXT-PROPS\";mmt.qualifiedName=\"SwDataDefProps.swTextProps\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "8", "mmt.qualifiedName", "SwDataDefProps.swTextProps", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-TEXT-PROPS", "xml.name", "SW-TEXT-PROPS", "xml.namePlural", "SW-TEXT-PROPSS", "internal-xml-sequenceOffset", "120", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwComparisonVariables(), source, new String[]{"xml.tags", "xml.typeElement=\"false\";xml.sequenceOffset=\"170\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-COMPARISON-VARIABLES\";mmt.qualifiedName=\"SwDataDefProps.swComparisonVariable\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.sequenceOffset", "9", "xml.typeElement", "false", "mmt.qualifiedName", "SwDataDefProps.swComparisonVariable", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-COMPARISON-VARIABLES", "xml.name", "SW-COMPARISON-VARIABLE", "xml.namePlural", "SW-COMPARISON-VARIABLES", "internal-xml-sequenceOffset", "170", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_CompuMethod(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"180\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__COMPU-METHOD-REF\";mmt.qualifiedName=\"SwDataDefProps.compuMethod\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "10", "mmt.qualifiedName", "SwDataDefProps.compuMethod", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEF-PROPS_TYPE__COMPU-METHOD-REF", "xml.name", "COMPU-METHOD-REF", "xml.namePlural", "COMPU-METHOD-REFS", "internal-xml-sequenceOffset", "180", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_DataConstr(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"190\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__DATA-CONSTR-REF\";mmt.qualifiedName=\"SwDataDefProps.dataConstr\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "11", "mmt.qualifiedName", "SwDataDefProps.dataConstr", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEF-PROPS_TYPE__DATA-CONSTR-REF", "xml.name", "DATA-CONSTR-REF", "xml.namePlural", "DATA-CONSTR-REFS", "internal-xml-sequenceOffset", "190", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwDataDependency(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"200\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-DATA-DEPENDENCY\";mmt.qualifiedName=\"SwDataDefProps.swDataDependency\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "12", "mmt.qualifiedName", "SwDataDefProps.swDataDependency", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-DATA-DEPENDENCY", "xml.name", "SW-DATA-DEPENDENCY", "xml.namePlural", "SW-DATA-DEPENDENCYS", "internal-xml-sequenceOffset", "200", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_DisplayFormat(), source, new String[]{"xml.tags", "msr.id=\"SW-DATA-DEF-PROPS_TYPE__DISPLAY-FORMAT\";msr.tbdString=\"true\";xml.sequenceOffset=\"210\";mmt.qualifiedName=\"SwDataDefProps.displayFormat\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "msr.tbdString", "true", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "13", "mmt.qualifiedName", "SwDataDefProps.displayFormat", "msr.id", "SW-DATA-DEF-PROPS_TYPE__DISPLAY-FORMAT", "xml.name", "DISPLAY-FORMAT", "xml.namePlural", "DISPLAY-FORMATS", "internal-xml-sequenceOffset", "210", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_ImplementationDataType(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"215\";mmt.qualifiedName=\"SwDataDefProps.implementationDataType\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "14", "mmt.qualifiedName", "SwDataDefProps.implementationDataType", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "IMPLEMENTATION-DATA-TYPE-REF", "xml.namePlural", "IMPLEMENTATION-DATA-TYPE-REFS", "internal-xml-sequenceOffset", "215", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwHostVariable(), source, new String[]{"xml.tags", "xml.typeElement=\"false\";xml.sequenceOffset=\"220\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-HOST-VARIABLE\";mmt.qualifiedName=\"SwDataDefProps.swHostVariable\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "15", "xml.typeElement", "false", "mmt.qualifiedName", "SwDataDefProps.swHostVariable", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-HOST-VARIABLE", "xml.name", "SW-HOST-VARIABLE", "xml.namePlural", "SW-HOST-VARIABLES", "internal-xml-sequenceOffset", "220", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwImplPolicy(), source, new String[]{"xml.tags", "msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-IMPL-POLICY\";msr.tbdString=\"true\";xml.sequenceOffset=\"230\";mmt.qualifiedName=\"SwDataDefProps.swImplPolicy\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "msr.tbdString", "true", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "16", "mmt.qualifiedName", "SwDataDefProps.swImplPolicy", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-IMPL-POLICY", "xml.name", "SW-IMPL-POLICY", "xml.namePlural", "SW-IMPL-POLICYS", "internal-xml-sequenceOffset", "230", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_AdditionalNativeTypeQualifier(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"235\";mmt.qualifiedName=\"SwDataDefProps.additionalNativeTypeQualifier\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "17", "mmt.qualifiedName", "SwDataDefProps.additionalNativeTypeQualifier", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "ADDITIONAL-NATIVE-TYPE-QUALIFIER", "xml.namePlural", "ADDITIONAL-NATIVE-TYPE-QUALIFIERS", "internal-xml-sequenceOffset", "235", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwIntendedResolution(), source, new String[]{"xml.tags", "msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-INTENDED-RESOLUTION\";msr.tbdString=\"true\";xml.sequenceOffset=\"240\";mmt.qualifiedName=\"SwDataDefProps.swIntendedResolution\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "msr.tbdString", "true", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "18", "mmt.qualifiedName", "SwDataDefProps.swIntendedResolution", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-INTENDED-RESOLUTION", "xml.name", "SW-INTENDED-RESOLUTION", "xml.namePlural", "SW-INTENDED-RESOLUTIONS", "internal-xml-sequenceOffset", "240", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwInterpolationMethod(), source, new String[]{"xml.tags", "msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-INTERPOLATION-METHOD\";msr.tbdString=\"true\";xml.sequenceOffset=\"250\";mmt.qualifiedName=\"SwDataDefProps.swInterpolationMethod\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "msr.tbdString", "true", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "19", "mmt.qualifiedName", "SwDataDefProps.swInterpolationMethod", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-INTERPOLATION-METHOD", "xml.name", "SW-INTERPOLATION-METHOD", "xml.namePlural", "SW-INTERPOLATION-METHODS", "internal-xml-sequenceOffset", "250", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_InvalidValue(), source, new String[]{"xml.sequenceOffset", "20", "mmt.qualifiedName", "SwDataDefProps.invalidValue", "xml.tags", "xml.sequenceOffset=\"255\";mmt.qualifiedName=\"SwDataDefProps.invalidValue\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "INVALID-VALUE", "xml.namePlural", "INVALID-VALUES", "internal-xml-sequenceOffset", "255", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_McFunction(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"257\";mmt.qualifiedName=\"SwDataDefProps.mcFunction\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "21", "mmt.qualifiedName", "SwDataDefProps.mcFunction", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "MC-FUNCTION", "xml.namePlural", "MC-FUNCTIONS", "internal-xml-sequenceOffset", "257", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwIsVirtual(), source, new String[]{"xml.tags", "msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-IS-VIRTUAL\";msr.tbdString=\"true\";xml.sequenceOffset=\"260\";mmt.qualifiedName=\"SwDataDefProps.swIsVirtual\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "msr.tbdString", "true", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "22", "mmt.qualifiedName", "SwDataDefProps.swIsVirtual", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-IS-VIRTUAL", "xml.name", "SW-IS-VIRTUAL", "xml.namePlural", "SW-IS-VIRTUALS", "internal-xml-sequenceOffset", "260", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwPointerTargetProps(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"280\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-POINTER\";mmt.qualifiedName=\"SwDataDefProps.swPointerTargetProps\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "23", "mmt.qualifiedName", "SwDataDefProps.swPointerTargetProps", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-POINTER", "xml.name", "SW-POINTER-TARGET-PROPS", "xml.namePlural", "SW-POINTER-TARGET-PROPSS", "internal-xml-sequenceOffset", "280", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwRecordLayout(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"290\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-RECORD-LAYOUT-REF\";mmt.qualifiedName=\"SwDataDefProps.swRecordLayout\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "24", "mmt.qualifiedName", "SwDataDefProps.swRecordLayout", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-RECORD-LAYOUT-REF", "xml.name", "SW-RECORD-LAYOUT-REF", "xml.namePlural", "SW-RECORD-LAYOUT-REFS", "internal-xml-sequenceOffset", "290", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwRefreshTiming(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"300\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-REFRESH-TIMING\";mmt.qualifiedName=\"SwDataDefProps.swRefreshTiming\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "25", "mmt.qualifiedName", "SwDataDefProps.swRefreshTiming", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-REFRESH-TIMING", "xml.name", "SW-REFRESH-TIMING", "xml.namePlural", "SW-REFRESH-TIMINGS", "internal-xml-sequenceOffset", "300", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_Unit(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"350\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__UNIT-REF\";mmt.qualifiedName=\"SwDataDefProps.unit\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "26", "mmt.qualifiedName", "SwDataDefProps.unit", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEF-PROPS_TYPE__UNIT-REF", "xml.name", "UNIT-REF", "xml.namePlural", "UNIT-REFS", "internal-xml-sequenceOffset", "350", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_ValueAxisDataType(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"355\";mmt.qualifiedName=\"SwDataDefProps.valueAxisDataType\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "27", "mmt.qualifiedName", "SwDataDefProps.valueAxisDataType", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "VALUE-AXIS-DATA-TYPE-REF", "xml.namePlural", "VALUE-AXIS-DATA-TYPE-REFS", "internal-xml-sequenceOffset", "355", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsConditionalEClass, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "SW-DATA-DEF-PROPS-CONDITIONAL", "xml.namePlural", "SW-DATA-DEF-PROPS-CONDITIONALS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsConditional_VariationPoint(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10000\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "0", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "VARIATION-POINT", "xml.namePlural", "VARIATION-POINTS", "internal-xml-sequenceOffset", "10000", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-DATA-DEF-PROPS_TYPE\";msr.isCond=\"true\";Vh.latestBindingTime=\"CodeGenerationTime\";mmt.qualifiedName=\"SwDataDefProps\"", "asam.useCase", "MDX", "mmt.qualifiedName", "SwDataDefProps", "msr.isCond", "true", "msr.id", "type__SW-DATA-DEF-PROPS_TYPE", "Vh.latestBindingTime", "CodeGenerationTime", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "SW-DATA-DEF-PROPS", "xml.namePlural", "SW-DATA-DEF-PROPSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwDataDefPropsVariants(), source, new String[]{"xml.tags", "pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "-1", "xml.name", "SW-DATA-DEF-PROPS-VARIANT", "xml.namePlural", "SW-DATA-DEF-PROPS-VARIANTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.valueListEClass, source, new String[]{"name", "VALUE-LIST", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getValueList_Vfs(), source, new String[]{"name", "VF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getValueList_Vs(), source, new String[]{"name", "V", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass, source, new String[]{"name", "SW-BIT-REPRESENTATION", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_BitPosition(), source, new String[]{"name", "BIT-POSITION", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_NumberOfBits(), source, new String[]{"name", "NUMBER-OF-BITS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.swDataDependencyEClass, source, new String[]{"name", "SW-DATA-DEPENDENCY", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyFormula(), source, new String[]{"name", "SW-DATA-DEPENDENCY-FORMULA", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyArgs(), source, new String[]{"name", "SW-DATA-DEPENDENCY-ARGS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"name", "SW-DATA-DEPENDENCY-ARGS", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwCalprmRefs(), source, new String[]{"name", "SW-CALPRM-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwVariables(), source, new String[]{"name", "SW-VARIABLE", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.swPointerTargetPropsEClass, source, new String[]{"name", "SW-POINTER-TARGET-PROPS", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwPointerTargetProps_TargetCategory(), source, new String[]{"name", "TARGET-CATEGORY", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwPointerTargetProps_SwDataDefProps(), source, new String[]{"name", "SW-DATA-DEF-PROPS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwPointerTargetProps_FunctionPointerSignature(), source, new String[]{"name", "FUNCTION-POINTER-SIGNATURE-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass, source, new String[]{"name", "SW-TEXT-PROPS", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_ArraySizeSemantics(), source, new String[]{"name", "ARRAY-SIZE-SEMANTICS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwMaxTextSize(), source, new String[]{"name", "SW-MAX-TEXT-SIZE", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_BaseType(), source, new String[]{"name", "BASE-TYPE-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwFillCharacter(), source, new String[]{"name", "SW-FILL-CHARACTER", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsContentEClass, source, new String[]{"name", "SW-DATA-DEF-PROPS-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_Annotations(), source, new String[]{"name", "ANNOTATIONS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwAddrMethod(), source, new String[]{"name", "SW-ADDR-METHOD-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwAlignment(), source, new String[]{"name", "SW-ALIGNMENT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_BaseType(), source, new String[]{"name", "BASE-TYPE-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwBitRepresentation(), source, new String[]{"name", "SW-BIT-REPRESENTATION", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwCalibrationAccess(), source, new String[]{"name", "SW-CALIBRATION-ACCESS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwValueBlockSize(), source, new String[]{"name", "SW-VALUE-BLOCK-SIZE", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwCalprmAxisSet(), source, new String[]{"name", "SW-CALPRM-AXIS-SET", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwTextProps(), source, new String[]{"name", "SW-TEXT-PROPS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwComparisonVariables(), source, new String[]{"name", "SW-COMPARISON-VARIABLES", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_CompuMethod(), source, new String[]{"name", "COMPU-METHOD-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_DataConstr(), source, new String[]{"name", "DATA-CONSTR-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwDataDependency(), source, new String[]{"name", "SW-DATA-DEPENDENCY", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_DisplayFormat(), source, new String[]{"name", "DISPLAY-FORMAT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_ImplementationDataType(), source, new String[]{"name", "IMPLEMENTATION-DATA-TYPE-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwHostVariable(), source, new String[]{"name", "SW-HOST-VARIABLE", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwImplPolicy(), source, new String[]{"name", "SW-IMPL-POLICY", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_AdditionalNativeTypeQualifier(), source, new String[]{"name", "ADDITIONAL-NATIVE-TYPE-QUALIFIER", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwIntendedResolution(), source, new String[]{"name", "SW-INTENDED-RESOLUTION", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwInterpolationMethod(), source, new String[]{"name", "SW-INTERPOLATION-METHOD", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_InvalidValue(), source, new String[]{"name", "INVALID-VALUE", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_McFunction(), source, new String[]{"name", "MC-FUNCTION", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwIsVirtual(), source, new String[]{"name", "SW-IS-VIRTUAL", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwPointerTargetProps(), source, new String[]{"name", "SW-POINTER-TARGET-PROPS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwRecordLayout(), source, new String[]{"name", "SW-RECORD-LAYOUT-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwRefreshTiming(), source, new String[]{"name", "SW-REFRESH-TIMING", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_Unit(), source, new String[]{"name", "UNIT-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_ValueAxisDataType(), source, new String[]{"name", "VALUE-AXIS-DATA-TYPE-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsConditionalEClass, source, new String[]{"name", "SW-DATA-DEF-PROPS-CONDITIONAL", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsConditional_VariationPoint(), source, new String[]{"name", "VARIATION-POINT", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"name", "SW-DATA-DEF-PROPS", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwDataDefPropsVariants(), source, new String[]{"name", "SW-DATA-DEF-PROPS-VARIANTS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.valueListEClass, source, new String[]{"documentation", "This is a generic list of numerical values.\r\n"});
        this.addAnnotation((ENamedElement)this.getValueList_Vfs(), source, new String[]{"documentation", "This is one entry in the list of numerical values"});
        this.addAnnotation((ENamedElement)this.getValueList_Vs(), source, new String[]{"documentation", "This is a particular numerical value without variation.\r\n"});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass, source, new String[]{"documentation", "Description of the structure of a bit variable: Comprises of the bitPosition in a memory object (e.g. swHostVariable, which stands parallel to swBitRepresentation) and the numberOfBits . In this way, interrelated memory areas can be described. Non-related memory areas are not supported."});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass.getEOperations().get(0), source, new String[]{"body", "return (<%org.artop.aal.common.datatypes.IntegerDatatype%>)bitPosition.clone();"});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass.getEOperations().get(1), source, new String[]{"body", "bitPosition.setRadix(newBitPosition.getRadix());\nbitPosition.setNoOfDigits(newBitPosition.getNoOfDigits());\nsetBitPosition(newBitPosition.getValue());\n"});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass.getEOperations().get(2), source, new String[]{"body", "return (<%org.artop.aal.common.datatypes.IntegerDatatype%>)numberOfBits.clone();"});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass.getEOperations().get(3), source, new String[]{"body", "numberOfBits.setRadix(newNumberOfBits.getRadix());\nnumberOfBits.setNoOfDigits(newNumberOfBits.getNoOfDigits());\nsetNumberOfBits(newNumberOfBits.getValue());\n"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_BitPosition(), source, new String[]{"documentation", "If the \"bit data object\" is hosted witin another data object (e.g. if the memory can be accessed via byte as well as bit adress), this attribute specifies the position of the data object. The count starts at zero (0)."});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_NumberOfBits(), source, new String[]{"documentation", "Number of bits allocated by a \"bit data object\" within its host data object."});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum, source, new String[]{"documentation", "Determines the access rights to a data object w.r.t. measurement and calibration."});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(0), source, new String[]{"documentation", "The element will only appear as read-only in an ASAP file."});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(1), source, new String[]{"documentation", "The element will not be accessible via MCD tools, i.e. will not appear in the ASAP file."});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(2), source, new String[]{"documentation", "The element will appear in the ASAP file with both read and write access."});
        this.addAnnotation((ENamedElement)this.swDataDependencyEClass, source, new String[]{"documentation", "This element describes the interdependencies of data objects, e.g. variables and parameters. \r\n\r\nUse cases:\r\n* Calculate the value of a calibration parameter (by the MCD system) from the value(s) of other calibration parameters.\r\n* Virtual data - that means the data object is not directly in the ecu and this property describes how the \"virtual variable\" can be computed from the real ones (by the MCD system)."});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyFormula(), source, new String[]{"documentation", "This element describes the formula with which the dependencies between the participating objects are defined."});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyArgs(), source, new String[]{"documentation", "Specifies the arguments used in the data dependency. Note that this is 0..1 since the aggregated class is a container (atpMixed).\r\n"});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"documentation", "This element specifies the elements used in a SwDataDependency."});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwCalprmRefs(), source, new String[]{"documentation", "Specifies a calibration parameter as an input argument to the dependency."});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwVariables(), source, new String[]{"documentation", "Specifies a variable as an input argument to the dependency."});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum, source, new String[]{"documentation", "Specifies the implementation strategy with respect to consistency mechanisms of variables.\r\n"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(0), source, new String[]{"documentation", "forced implementation such that the  running software within the ECU  must not modify it. For example implemented with the \"const\" modifier in C.  This can be applied for parameters (not for those in NvRam) as well as argument  data prototypes.\r\n"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(1), source, new String[]{"documentation", "This data element is fixed. In particular this indicates, that it  might also be implemented  e.g. as in place data, (#DEFINE).\r\n"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(2), source, new String[]{"documentation", "The data element is created for measurement purposes only.  The data element is never read directly within the ECU software. In contrast to  a \"standard\" data element in an unconnected provide port is, this unconnection  is guaranteed for  measurementPoint data elements.\r\n"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(3), source, new String[]{"documentation", "The content of the data element is queued and the data element has 'event' semantics, i.e. data elements are stored in a queue and all data  elements are processed in 'first in first out' order. \r\nThe queuing is intended to be implemented by RTE Generator.\r\nThis value is not applicable for parameters."});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(4), source, new String[]{"documentation", "This is applicable for all kinds of data elements. For variable  data prototypes the 'last is best' semantics applies. For parameter there is no  specific implementation directive.\r\n"});
        this.addAnnotation((ENamedElement)this.swPointerTargetPropsEClass, source, new String[]{"documentation", "This element defines, that the data object (which is specified by the aggregating element) contains a reference to another data object or to a function in the CPU code. This corresponds to a pointer in the C-language.\r\n\r\nThe attributes of this element describe the category and the detailed properties of the target which is either a data description or a function signature. \r\n"});
        this.addAnnotation((ENamedElement)this.getSwPointerTargetProps_TargetCategory(), source, new String[]{"documentation", "This specifies the category of the target:\r\n\r\n* In case of a data pointer, it must specify the category of the referenced data.\r\n\r\n* In case of a function pointer, it could be used to denote the category of the referenced BswModuleEntry. Since currently no categories for BswModuleEntry are defined, it will be empty."});
        this.addAnnotation((ENamedElement)this.getSwPointerTargetProps_SwDataDefProps(), source, new String[]{"documentation", "The properties of the target data type."});
        this.addAnnotation((ENamedElement)this.getSwPointerTargetProps_FunctionPointerSignature(), source, new String[]{"documentation", "The referenced BswModuleEntry serves as the signature of a function pointer definition. Primary use case: function pointer passed as argument to other function."});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass, source, new String[]{"documentation", "This class expresses particular properties applicable to strings in variables or calibration parameters."});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass.getEOperations().get(0), source, new String[]{"body", "return (<%org.artop.aal.common.datatypes.IntegerDatatype%>)swFillCharacter.clone();"});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass.getEOperations().get(1), source, new String[]{"body", "swFillCharacter.setRadix(newSwFillCharacter.getRadix());\nswFillCharacter.setNoOfDigits(newSwFillCharacter.getNoOfDigits());\nsetSwFillCharacter(newSwFillCharacter.getValue());\n"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_ArraySizeSemantics(), source, new String[]{"documentation", "This attribute controls the semantics of the arraysize for the array representing the string in an ImplementationDataType. It is there to support a safe conversion between ApplicationDatatype and ImplementationDatatype, even for variable length strings as required e.g. for Support of SAE J1939.\r\n\r\nIn conjunction with swFillCharacter, it provides the following options:\r\n\r\n* FixedLengthString:  FixedSize - no fillcharacter\r\n* TerminatedStringFixedLengthCommunication: FixedSize - with fillcharacter\r\n* VariableLengthString: VariableSize - no fillcharacter\r\n* TerminatedStringVariableLengthCommunication: VariableSize with fillcharacter"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwMaxTextSize(), source, new String[]{"documentation", "Specifies the maximum text size in characters. Note the the size in bytes depends on the encoding in the corresponding baseType. "});
        this.addAnnotation((ENamedElement)this.getSwTextProps_BaseType(), source, new String[]{"documentation", "This is the base type of one character in the string. In particular this baseType denotes the intended encoding of the characters in the string  on level of ApplicationDataType."});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwFillCharacter(), source, new String[]{"documentation", "Filler character for text parameter to pad up to the maximum length swMaxTextSize.\r\n\r\nThe value will be interpreted according to the encoding specified in the associated base type of the data object., e.g. 0x30 (hex) represents the ASCII character zero as filler character and 0 (dez) represents an end of string as filler character.\r\n\r\nThe usage of the fill character depends on the arraySizeSemantics.\r\n"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum, source, new String[]{"documentation", "Detailed access policy for variables, for which data consistency is implemented via messages. "});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(0), source, new String[]{"documentation", "A Tool handles data consistency. \r\n\r\nIn SwService, where a message is referenced, only OPTIMIZED access (also default\r\nvalue inside SwServcie) is possible."});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(1), source, new String[]{"documentation", "The user can decide inside each single service, where these message is referenced, if\r\naccess to that shall be OPTIMIZED or DIRECT."});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(2), source, new String[]{"documentation", "Messages with DIRECT access are read but ignored by data consistency tool. Data consistency\r\nis not guaranteed."});
        this.addAnnotation((ENamedElement)this.swDataDefPropsContentEClass, source, new String[]{"documentation", "This element was generated/modified due to an atpVariation stereotype."});
        this.addAnnotation((ENamedElement)this.swDataDefPropsContentEClass.getEOperations().get(0), source, new String[]{"body", "return org.eclipse.sphinx.platform.util.RadixConverter.parseFloat(getSwIntendedResolution());"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsContentEClass.getEOperations().get(1), source, new String[]{"body", "return org.eclipse.sphinx.platform.util.RadixConverter.parseInt(getSwIntendedResolution());"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsContentEClass.getEOperations().get(2), source, new String[]{"body", "return org.eclipse.sphinx.platform.util.RadixConverter.getRadix(getSwIntendedResolution());"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsContentEClass.getEOperations().get(3), source, new String[]{"body", "String convertedValue =  org.eclipse.sphinx.platform.util.RadixConverter.convert(value, radix);\nsetSwIntendedResolution(convertedValue);"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_Annotations(), source, new String[]{"documentation", "This aggregation allows to add annotations (yellow pads ...) related to the current data object. "});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwAddrMethod(), source, new String[]{"documentation", "Addressing method related to this data object. Via an association to the same SwAddrmethod, it can be specified that several data prototypes shall be located in the same memory without already specifying the memory section itself."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwAlignment(), source, new String[]{"documentation", "The attribute describes the intended alignment of the DataPrototype. If the attribute is not defined the alignment is determined by the swBaseType size and the memoryAllocationKeywordPolicy of the referenced SwAddrMethod."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_BaseType(), source, new String[]{"documentation", "Base type associated with this data object."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwBitRepresentation(), source, new String[]{"documentation", "Description of the binary representaion in case of a bit variable."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwCalibrationAccess(), source, new String[]{"documentation", "Specifies the read or write access by MCD tools for this data object."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwValueBlockSize(), source, new String[]{"documentation", "This represents the size of a Value Block\r\n"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwCalprmAxisSet(), source, new String[]{"documentation", "This specifies the properties of the axes in case of a curve or map etc. This is mainly applicable to calibration parameters."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwTextProps(), source, new String[]{"documentation", "the specific properties if the data object is a text object."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwComparisonVariables(), source, new String[]{"documentation", "Variables used for comparison in an MCD process. "});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_CompuMethod(), source, new String[]{"documentation", "Computation method associated with the semantics of this data object."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_DataConstr(), source, new String[]{"documentation", "Data constraint for this data object."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwDataDependency(), source, new String[]{"documentation", "Describes how the value of the data object has to be calculated from the value of another data object (by the MCD system)."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_DisplayFormat(), source, new String[]{"documentation", "This property describes how a number is to be rendered e.g. in documents or in a measurement and calibration system. "});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_ImplementationDataType(), source, new String[]{"documentation", "This association denotes the implementation type of a data declaration via its aggregated SwDataDefProps. It is used whenever a data declaration is not directly referring a base type. Especially\r\n\r\n* redefinition of an ImplementationDataType via a \"typedef\" to another ImplementationDatatype\r\n* the target type of a pointer (see SwPointerTargetProps), if it does not refer to a base type directly\r\n* the data type of an array or record element within an ImplementationDataType, if it does not refer to a base type directly\r\n* the data type of an SwServiceArg, if it does not refer to a base type directly"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwHostVariable(), source, new String[]{"documentation", "Contains a reference to a variable which serves as a host-variable for a bit variable. Only applicable to bit objects."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwImplPolicy(), source, new String[]{"documentation", "Implementation policy for this data object. "});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_AdditionalNativeTypeQualifier(), source, new String[]{"documentation", "This attribute is used to declare native qualifiers of the prgramming language which can neither be deduced from the baseType (e.g. because the data object describes a pointer) nor from other more abstract attributes. Examples are qualifiers like \"volatile\" or \"strict\" of the C-language. All such declarations have to be put into one string."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwIntendedResolution(), source, new String[]{"documentation", "The purpose of this element is to describe the requested quantization of data objects early on in the design process. The resolution ultimately occurs via the conversion formula present (compuMethod), which specifies the transition from the physical world to the standardized world (and vice-versa) (here, \"the slope per bit\" is present implicitly in the conversion formula). In the case of a development phase without a fixed conversion formula, a pre-specification can occur through  swIntendedResolution. If however, a conversion formula is present, this can be checked for plausibility against swIntendedResolution.\r\n\r\nThe resolution is specified in the physical domain according to the property \"unit\"."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwInterpolationMethod(), source, new String[]{"documentation", "This is a keyword identifying the mathematical method to be applied for interpolation. The keyword needs to be related to the interpolation routine which needs to be invoked.\r\n"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_InvalidValue(), source, new String[]{"documentation", "Optional value to express invalidity of the\r\nactual data element. "});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_McFunction(), source, new String[]{"documentation", "Specifies the name of a \"Function\" (in the sense of the MC system) to which this data object belongs. This corresponds to the Function in ASAM MCD 2MC /ASAP2 which defines the characteristic resp. which provides the measurement as output.\r\n\r\nThe function name is only used for support of MC systems. It can be predefined on the level of software component design. If it  is not  predefined, it could be filled out with a reasonable name, e.g. the component  prototype name, from the ECU extract.  \r\n"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwIsVirtual(), source, new String[]{"documentation", "This element distinguishes virtual objects. Virtual objects do not appear in the memory, their derivation is much more dependent on other objects and hence they must have a swDataDependency .\r\n"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwPointerTargetProps(), source, new String[]{"documentation", "Specifies that the containing data object is a pointer to another data object."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwRecordLayout(), source, new String[]{"documentation", "Record layout for this data object."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwRefreshTiming(), source, new String[]{"documentation", "This element specifies the frequency in which the object involved shall be or is called or calculated.  This timing can be collected from the task in which write access processes to the variable run. But this cannot be done by the MCD system. \r\n\r\nSo this attribute can be used in an early phase to express the desired refresh timing and later on to specify the real refresh timing."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_Unit(), source, new String[]{"documentation", "Physical unit associated with the semantics of this data object. This attribute applies if no compuMethod is specified. If both units (this as well as via compuMethod) are specified the units must be the same."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_ValueAxisDataType(), source, new String[]{"documentation", "The referenced ApplicationPrimitiveDataType represents the primitive data type of the value axis within a compound primitive (e.g. curve, map). It supersedes CompuMethod, Unit, and BaseType."});
        this.addAnnotation((ENamedElement)this.swDataDefPropsConditionalEClass, source, new String[]{"documentation", "This element was generated/modified due to an atpVariation stereotype."});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsConditional_VariationPoint(), source, new String[]{"documentation", "This element was generated/modified due to an atpVariation stereotype."});
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"documentation", "This class is a collection of properties relevant for data objects under various aspects. One could consider this class as a \"pattern of inheritance by aggregation\". The properties can be applied to all objects of all classes in which SwDataDefProps is agrregated.\r\n\r\nNote that not all of the attributes or associated elements are useful all of the time. Hence, the process definition (e.g. expressed with an OCL or a Document Control Instance MSR-DCI) has the task of implementing limitations.\r\n\r\nSwDataDefProps covers various aspects:\r\n\r\n* Structure of the data element for calibration use cases: Is it a single value, a curve, or a map, but also the recordLayouts which specify, how such elements are mapped/converted to the DataTypes in the programming language (or in Autosar). This is mainly expressed by properties like swRecordLayout and swCalprmAxisSet \r\n\r\n* Implementation aspects, mainly expressed by swImplPolicy, swVariableAccessImplPolicy, swAddrMethod, swPointerTagetProps, baseType, implementationDataType and additionalNativeTypeQualifier\r\n\r\n* Access policy for the MCD system, mainly expressed by swCalibrationAccess \r\n\r\n* Semantics of the data element, mainly expressed by compuMethod and/or unit, dataConstr, invalidValue\r\n\r\n* Code generation policy provided by swRecordLayout"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwDataDefPropsVariants(), source, new String[]{"documentation", "This element was generated/modified due to an atpVariation stereotype."});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.valueListEClass, source, new String[]{"Stereotype", "atpMixed"});
        this.addAnnotation((ENamedElement)this.getValueList_Vfs(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"Stereotype", "atpMixed"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwMaxTextSize(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.getSwDataDefPropsContent_SwValueBlockSize(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"Stereotype", ""});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.valueListEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swDataDependencyEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swPointerTargetPropsEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsContentEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_SwDataDefPropsContentAnnotations() {
        String source = "TaggedValuesOfGeneralization_SwDataDefPropsContent";
        this.addAnnotation((ENamedElement)this.swDataDefPropsConditionalEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_IsSyscondAnnotations() {
        String source = "TaggedValuesOfGeneralization_IsSyscond";
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwDataDefProps->isSyscondType", "GUID", "92B2A6AC-96BF-4171-85B1-0F39A789CF5E", "msr.id", "SW-DATA-DEF-PROPS_TYPE_IS-SYSCOND_TYPE", "Id", "736498277"});
    }
}

