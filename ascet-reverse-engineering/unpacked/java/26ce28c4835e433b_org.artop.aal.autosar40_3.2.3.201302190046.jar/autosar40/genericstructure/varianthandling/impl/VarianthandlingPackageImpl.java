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
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package autosar40.genericstructure.varianthandling.impl;

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
import autosar40.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar40.commonstructure.datadefproperties.impl.DatadefpropertiesPackageImpl;
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
import autosar40.genericstructure.varianthandling.AbstractNumericalVariationPoint;
import autosar40.genericstructure.varianthandling.AttributeValueVariationPoint;
import autosar40.genericstructure.varianthandling.BindingTimeEnum;
import autosar40.genericstructure.varianthandling.BooleanValueVariationPoint;
import autosar40.genericstructure.varianthandling.ConditionByFormula;
import autosar40.genericstructure.varianthandling.EvaluatedVariantSet;
import autosar40.genericstructure.varianthandling.FloatValueVariationPoint;
import autosar40.genericstructure.varianthandling.IntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.genericstructure.varianthandling.PositiveIntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.PostBuildVariantCondition;
import autosar40.genericstructure.varianthandling.PostBuildVariantCriterion;
import autosar40.genericstructure.varianthandling.PostBuildVariantCriterionValue;
import autosar40.genericstructure.varianthandling.PostBuildVariantCriterionValueSet;
import autosar40.genericstructure.varianthandling.PredefinedVariant;
import autosar40.genericstructure.varianthandling.SwSystemconstDependentFormula;
import autosar40.genericstructure.varianthandling.SwSystemconstValue;
import autosar40.genericstructure.varianthandling.SwSystemconstantValueSet;
import autosar40.genericstructure.varianthandling.UnlimitedIntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.VarianthandlingFactory;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
import autosar40.genericstructure.varianthandling.VariationPoint;
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
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class VarianthandlingPackageImpl
extends EPackageImpl
implements VarianthandlingPackage {
    private EClass abstractNumericalVariationPointEClass = null;
    private EClass attributeValueVariationPointEClass = null;
    private EClass swSystemconstDependentFormulaEClass = null;
    private EClass numericalValueVariationPointEClass = null;
    private EClass positiveIntegerValueVariationPointEClass = null;
    private EClass integerValueVariationPointEClass = null;
    private EClass conditionByFormulaEClass = null;
    private EClass booleanValueVariationPointEClass = null;
    private EClass swSystemconstantValueSetEClass = null;
    private EClass swSystemconstValueEClass = null;
    private EClass floatValueVariationPointEClass = null;
    private EClass unlimitedIntegerValueVariationPointEClass = null;
    private EClass evaluatedVariantSetEClass = null;
    private EClass predefinedVariantEClass = null;
    private EClass postBuildVariantCriterionValueSetEClass = null;
    private EClass postBuildVariantCriterionValueEClass = null;
    private EClass postBuildVariantCriterionEClass = null;
    private EClass postBuildVariantConditionEClass = null;
    private EClass variationPointEClass = null;
    private EEnum bindingTimeEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private VarianthandlingPackageImpl() {
        super("http://autosar.org/schema/r4.0/autosar40/gs/vh", (EFactory)VarianthandlingFactory.eINSTANCE);
    }

    public static VarianthandlingPackage init() {
        if (isInited) {
            return (VarianthandlingPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/vh");
        }
        VarianthandlingPackageImpl theVarianthandlingPackage = (VarianthandlingPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/schema/r4.0/autosar40/gs/vh") instanceof VarianthandlingPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/schema/r4.0/autosar40/gs/vh") : new VarianthandlingPackageImpl());
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
        DatadefpropertiesPackageImpl theDatadefpropertiesPackage = (DatadefpropertiesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ddp") instanceof DatadefpropertiesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/ddp") : DatadefpropertiesPackage.eINSTANCE);
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
        autosar40.swcomponent.swcinternalbehavior.varianthandling.impl.VarianthandlingPackageImpl theVarianthandlingPackage_1 = (autosar40.swcomponent.swcinternalbehavior.varianthandling.impl.VarianthandlingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/vh") instanceof autosar40.swcomponent.swcinternalbehavior.varianthandling.impl.VarianthandlingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/vh") : autosar40.swcomponent.swcinternalbehavior.varianthandling.VarianthandlingPackage.eINSTANCE);
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
        theVarianthandlingPackage.createPackageContents();
        theEcuresourcePackage.createPackageContents();
        theHwelementcategoryPackage.createPackageContents();
        theFormulalanguagePackage.createPackageContents();
        theAbstractstructurePackage.createPackageContents();
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
        theDatadefpropertiesPackage.createPackageContents();
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
        theVarianthandlingPackage.initializePackageContents();
        theEcuresourcePackage.initializePackageContents();
        theHwelementcategoryPackage.initializePackageContents();
        theFormulalanguagePackage.initializePackageContents();
        theAbstractstructurePackage.initializePackageContents();
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
        theDatadefpropertiesPackage.initializePackageContents();
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
        theVarianthandlingPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/schema/r4.0/autosar40/gs/vh", (Object)theVarianthandlingPackage);
        return theVarianthandlingPackage;
    }

    public EClass getAbstractNumericalVariationPoint() {
        return this.abstractNumericalVariationPointEClass;
    }

    public EClass getAttributeValueVariationPoint() {
        return this.attributeValueVariationPointEClass;
    }

    public EReference getAttributeValueVariationPoint_VariationPointProxy() {
        return (EReference)this.attributeValueVariationPointEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getAttributeValueVariationPoint_BindingTime() {
        return (EAttribute)this.attributeValueVariationPointEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getAttributeValueVariationPoint_BlueprintValue() {
        return (EAttribute)this.attributeValueVariationPointEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getAttributeValueVariationPoint_Sd() {
        return (EAttribute)this.attributeValueVariationPointEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getAttributeValueVariationPoint_ShortLabel() {
        return (EAttribute)this.attributeValueVariationPointEClass.getEStructuralFeatures().get(4);
    }

    public EClass getSwSystemconstDependentFormula() {
        return this.swSystemconstDependentFormulaEClass;
    }

    public EReference getSwSystemconstDependentFormula_SyscStrings() {
        return (EReference)this.swSystemconstDependentFormulaEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwSystemconstDependentFormula_Syscs() {
        return (EReference)this.swSystemconstDependentFormulaEClass.getEStructuralFeatures().get(1);
    }

    public EClass getNumericalValueVariationPoint() {
        return this.numericalValueVariationPointEClass;
    }

    public EClass getPositiveIntegerValueVariationPoint() {
        return this.positiveIntegerValueVariationPointEClass;
    }

    public EClass getIntegerValueVariationPoint() {
        return this.integerValueVariationPointEClass;
    }

    public EClass getConditionByFormula() {
        return this.conditionByFormulaEClass;
    }

    public EAttribute getConditionByFormula_BindingTime() {
        return (EAttribute)this.conditionByFormulaEClass.getEStructuralFeatures().get(0);
    }

    public EClass getBooleanValueVariationPoint() {
        return this.booleanValueVariationPointEClass;
    }

    public EClass getSwSystemconstantValueSet() {
        return this.swSystemconstantValueSetEClass;
    }

    public EReference getSwSystemconstantValueSet_SwSystemconstantValues() {
        return (EReference)this.swSystemconstantValueSetEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSwSystemconstValue() {
        return this.swSystemconstValueEClass;
    }

    public EReference getSwSystemconstValue_SwSystemconstantValueSet() {
        return (EReference)this.swSystemconstValueEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwSystemconstValue_SwSystemconst() {
        return (EReference)this.swSystemconstValueEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwSystemconstValue_Value() {
        return (EReference)this.swSystemconstValueEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSwSystemconstValue_Annotations() {
        return (EReference)this.swSystemconstValueEClass.getEStructuralFeatures().get(3);
    }

    public EClass getFloatValueVariationPoint() {
        return this.floatValueVariationPointEClass;
    }

    public EClass getUnlimitedIntegerValueVariationPoint() {
        return this.unlimitedIntegerValueVariationPointEClass;
    }

    public EClass getEvaluatedVariantSet() {
        return this.evaluatedVariantSetEClass;
    }

    public EAttribute getEvaluatedVariantSet_ApprovalStatus() {
        return (EAttribute)this.evaluatedVariantSetEClass.getEStructuralFeatures().get(0);
    }

    public EReference getEvaluatedVariantSet_EvaluatedElements() {
        return (EReference)this.evaluatedVariantSetEClass.getEStructuralFeatures().get(1);
    }

    public EReference getEvaluatedVariantSet_EvaluatedVariants() {
        return (EReference)this.evaluatedVariantSetEClass.getEStructuralFeatures().get(2);
    }

    public EClass getPredefinedVariant() {
        return this.predefinedVariantEClass;
    }

    public EReference getPredefinedVariant_IncludedVariants() {
        return (EReference)this.predefinedVariantEClass.getEStructuralFeatures().get(0);
    }

    public EReference getPredefinedVariant_PostBuildVariantCriterionValueSets() {
        return (EReference)this.predefinedVariantEClass.getEStructuralFeatures().get(1);
    }

    public EReference getPredefinedVariant_SwSystemconstantValueSets() {
        return (EReference)this.predefinedVariantEClass.getEStructuralFeatures().get(2);
    }

    public EClass getPostBuildVariantCriterionValueSet() {
        return this.postBuildVariantCriterionValueSetEClass;
    }

    public EReference getPostBuildVariantCriterionValueSet_PostBuildVariantCriterionValues() {
        return (EReference)this.postBuildVariantCriterionValueSetEClass.getEStructuralFeatures().get(0);
    }

    public EClass getPostBuildVariantCriterionValue() {
        return this.postBuildVariantCriterionValueEClass;
    }

    public EReference getPostBuildVariantCriterionValue_PostBuildVariantCriterionValueSet() {
        return (EReference)this.postBuildVariantCriterionValueEClass.getEStructuralFeatures().get(0);
    }

    public EReference getPostBuildVariantCriterionValue_VariantCriterion() {
        return (EReference)this.postBuildVariantCriterionValueEClass.getEStructuralFeatures().get(1);
    }

    public EReference getPostBuildVariantCriterionValue_Value() {
        return (EReference)this.postBuildVariantCriterionValueEClass.getEStructuralFeatures().get(2);
    }

    public EReference getPostBuildVariantCriterionValue_Annotations() {
        return (EReference)this.postBuildVariantCriterionValueEClass.getEStructuralFeatures().get(3);
    }

    public EClass getPostBuildVariantCriterion() {
        return this.postBuildVariantCriterionEClass;
    }

    public EReference getPostBuildVariantCriterion_CompuMethod() {
        return (EReference)this.postBuildVariantCriterionEClass.getEStructuralFeatures().get(0);
    }

    public EClass getPostBuildVariantCondition() {
        return this.postBuildVariantConditionEClass;
    }

    public EReference getPostBuildVariantCondition_VariationPoint() {
        return (EReference)this.postBuildVariantConditionEClass.getEStructuralFeatures().get(0);
    }

    public EReference getPostBuildVariantCondition_MatchingCriterion() {
        return (EReference)this.postBuildVariantConditionEClass.getEStructuralFeatures().get(1);
    }

    public EReference getPostBuildVariantCondition_Value() {
        return (EReference)this.postBuildVariantConditionEClass.getEStructuralFeatures().get(2);
    }

    public EClass getVariationPoint() {
        return this.variationPointEClass;
    }

    public EAttribute getVariationPoint_ShortLabel() {
        return (EAttribute)this.variationPointEClass.getEStructuralFeatures().get(0);
    }

    public EReference getVariationPoint_Desc() {
        return (EReference)this.variationPointEClass.getEStructuralFeatures().get(1);
    }

    public EReference getVariationPoint_BlueprintCondition() {
        return (EReference)this.variationPointEClass.getEStructuralFeatures().get(2);
    }

    public EReference getVariationPoint_SwSyscond() {
        return (EReference)this.variationPointEClass.getEStructuralFeatures().get(3);
    }

    public EReference getVariationPoint_PostBuildVariantConditions() {
        return (EReference)this.variationPointEClass.getEStructuralFeatures().get(4);
    }

    public EReference getVariationPoint_Sdg() {
        return (EReference)this.variationPointEClass.getEStructuralFeatures().get(5);
    }

    public EEnum getBindingTimeEnum() {
        return this.bindingTimeEnumEEnum;
    }

    public VarianthandlingFactory getVarianthandlingFactory() {
        return (VarianthandlingFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.abstractNumericalVariationPointEClass = this.createEClass(0);
        this.attributeValueVariationPointEClass = this.createEClass(1);
        this.createEReference(this.attributeValueVariationPointEClass, 7);
        this.createEAttribute(this.attributeValueVariationPointEClass, 8);
        this.createEAttribute(this.attributeValueVariationPointEClass, 9);
        this.createEAttribute(this.attributeValueVariationPointEClass, 10);
        this.createEAttribute(this.attributeValueVariationPointEClass, 11);
        this.swSystemconstDependentFormulaEClass = this.createEClass(2);
        this.createEReference(this.swSystemconstDependentFormulaEClass, 5);
        this.createEReference(this.swSystemconstDependentFormulaEClass, 6);
        this.numericalValueVariationPointEClass = this.createEClass(3);
        this.positiveIntegerValueVariationPointEClass = this.createEClass(4);
        this.integerValueVariationPointEClass = this.createEClass(5);
        this.conditionByFormulaEClass = this.createEClass(6);
        this.createEAttribute(this.conditionByFormulaEClass, 7);
        this.booleanValueVariationPointEClass = this.createEClass(7);
        this.swSystemconstantValueSetEClass = this.createEClass(8);
        this.createEReference(this.swSystemconstantValueSetEClass, 21);
        this.swSystemconstValueEClass = this.createEClass(9);
        this.createEReference(this.swSystemconstValueEClass, 4);
        this.createEReference(this.swSystemconstValueEClass, 5);
        this.createEReference(this.swSystemconstValueEClass, 6);
        this.createEReference(this.swSystemconstValueEClass, 7);
        this.floatValueVariationPointEClass = this.createEClass(10);
        this.unlimitedIntegerValueVariationPointEClass = this.createEClass(11);
        this.evaluatedVariantSetEClass = this.createEClass(12);
        this.createEAttribute(this.evaluatedVariantSetEClass, 21);
        this.createEReference(this.evaluatedVariantSetEClass, 22);
        this.createEReference(this.evaluatedVariantSetEClass, 23);
        this.predefinedVariantEClass = this.createEClass(13);
        this.createEReference(this.predefinedVariantEClass, 21);
        this.createEReference(this.predefinedVariantEClass, 22);
        this.createEReference(this.predefinedVariantEClass, 23);
        this.postBuildVariantCriterionValueSetEClass = this.createEClass(14);
        this.createEReference(this.postBuildVariantCriterionValueSetEClass, 21);
        this.postBuildVariantCriterionValueEClass = this.createEClass(15);
        this.createEReference(this.postBuildVariantCriterionValueEClass, 4);
        this.createEReference(this.postBuildVariantCriterionValueEClass, 5);
        this.createEReference(this.postBuildVariantCriterionValueEClass, 6);
        this.createEReference(this.postBuildVariantCriterionValueEClass, 7);
        this.postBuildVariantCriterionEClass = this.createEClass(16);
        this.createEReference(this.postBuildVariantCriterionEClass, 21);
        this.postBuildVariantConditionEClass = this.createEClass(17);
        this.createEReference(this.postBuildVariantConditionEClass, 4);
        this.createEReference(this.postBuildVariantConditionEClass, 5);
        this.createEReference(this.postBuildVariantConditionEClass, 6);
        this.variationPointEClass = this.createEClass(18);
        this.createEAttribute(this.variationPointEClass, 4);
        this.createEReference(this.variationPointEClass, 5);
        this.createEReference(this.variationPointEClass, 6);
        this.createEReference(this.variationPointEClass, 7);
        this.createEReference(this.variationPointEClass, 8);
        this.createEReference(this.variationPointEClass, 9);
        this.bindingTimeEnumEEnum = this.createEEnum(19);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("varianthandling");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/schema/r4.0/autosar40/gs/vh");
        GvarianthandlingPackage theGvarianthandlingPackage = (GvarianthandlingPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/vh");
        autosar40.swcomponent.swcinternalbehavior.varianthandling.VarianthandlingPackage theVarianthandlingPackage_1 = (autosar40.swcomponent.swcinternalbehavior.varianthandling.VarianthandlingPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/sib/vh");
        FormulalanguagePackage theFormulalanguagePackage = (FormulalanguagePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/fl");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/pt");
        SystemconstantPackage theSystemconstantPackage = (SystemconstantPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/cs/sconstant");
        ArpackagePackage theArpackagePackage = (ArpackagePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/arp");
        ArobjectPackage theArobjectPackage = (ArobjectPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ao");
        AnnotationPackage theAnnotationPackage = (AnnotationPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/a");
        ElementcollectionPackage theElementcollectionPackage = (ElementcollectionPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ec");
        ComputationmethodPackage theComputationmethodPackage = (ComputationmethodPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/swc/d/cm");
        MultilanguagedataPackage theMultilanguagedataPackage = (MultilanguagedataPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/md");
        BlockelementsPackage theBlockelementsPackage = (BlockelementsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be");
        SpecialdataPackage theSpecialdataPackage = (SpecialdataPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/schema/r4.0/autosar40/gs/gtc/sd");
        this.abstractNumericalVariationPointEClass.getESuperTypes().add((Object)this.getAttributeValueVariationPoint());
        this.attributeValueVariationPointEClass.getESuperTypes().add((Object)this.getSwSystemconstDependentFormula());
        this.attributeValueVariationPointEClass.getESuperTypes().add((Object)theGvarianthandlingPackage.getGAttributeValueVariationPoint());
        this.swSystemconstDependentFormulaEClass.getESuperTypes().add((Object)theFormulalanguagePackage.getFormulaExpression());
        this.swSystemconstDependentFormulaEClass.getESuperTypes().add((Object)theGvarianthandlingPackage.getGSwSystemconstDependentFormula());
        this.numericalValueVariationPointEClass.getESuperTypes().add((Object)this.getAbstractNumericalVariationPoint());
        this.positiveIntegerValueVariationPointEClass.getESuperTypes().add((Object)this.getAttributeValueVariationPoint());
        this.integerValueVariationPointEClass.getESuperTypes().add((Object)this.getAttributeValueVariationPoint());
        this.conditionByFormulaEClass.getESuperTypes().add((Object)this.getSwSystemconstDependentFormula());
        this.booleanValueVariationPointEClass.getESuperTypes().add((Object)this.getAttributeValueVariationPoint());
        this.swSystemconstantValueSetEClass.getESuperTypes().add((Object)theArpackagePackage.getARElement());
        this.swSystemconstValueEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.floatValueVariationPointEClass.getESuperTypes().add((Object)this.getAttributeValueVariationPoint());
        this.unlimitedIntegerValueVariationPointEClass.getESuperTypes().add((Object)this.getAttributeValueVariationPoint());
        this.evaluatedVariantSetEClass.getESuperTypes().add((Object)theArpackagePackage.getARElement());
        this.predefinedVariantEClass.getESuperTypes().add((Object)theArpackagePackage.getARElement());
        this.postBuildVariantCriterionValueSetEClass.getESuperTypes().add((Object)theArpackagePackage.getARElement());
        this.postBuildVariantCriterionValueEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.postBuildVariantCriterionEClass.getESuperTypes().add((Object)theArpackagePackage.getARElement());
        this.postBuildVariantConditionEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.variationPointEClass.getESuperTypes().add((Object)theArobjectPackage.getARObject());
        this.initEClass(this.abstractNumericalVariationPointEClass, AbstractNumericalVariationPoint.class, "AbstractNumericalVariationPoint", true, false, true);
        this.initEClass(this.attributeValueVariationPointEClass, AttributeValueVariationPoint.class, "AttributeValueVariationPoint", true, false, true);
        this.initEReference(this.getAttributeValueVariationPoint_VariationPointProxy(), (EClassifier)theVarianthandlingPackage_1.getVariationPointProxy(), theVarianthandlingPackage_1.getVariationPointProxy_ValueAccess(), "variationPointProxy", null, 0, 1, AttributeValueVariationPoint.class, true, true, true, false, false, false, false, true, true);
        this.initEAttribute(this.getAttributeValueVariationPoint_BindingTime(), (EClassifier)this.getBindingTimeEnum(), "bindingTime", "SYSTEM-DESIGN-TIME", 0, 1, AttributeValueVariationPoint.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAttributeValueVariationPoint_BlueprintValue(), (EClassifier)thePrimitivetypesPackage.getString(), "blueprintValue", "", 0, 1, AttributeValueVariationPoint.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAttributeValueVariationPoint_Sd(), (EClassifier)thePrimitivetypesPackage.getString(), "sd", "", 0, 1, AttributeValueVariationPoint.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAttributeValueVariationPoint_ShortLabel(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "shortLabel", "", 0, 1, AttributeValueVariationPoint.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.swSystemconstDependentFormulaEClass, SwSystemconstDependentFormula.class, "SwSystemconstDependentFormula", true, false, true);
        this.initEReference(this.getSwSystemconstDependentFormula_SyscStrings(), (EClassifier)theSystemconstantPackage.getSwSystemconst(), null, "syscStrings", null, 0, -1, SwSystemconstDependentFormula.class, true, true, true, false, true, false, false, true, true);
        this.initEReference(this.getSwSystemconstDependentFormula_Syscs(), (EClassifier)theSystemconstantPackage.getSwSystemconst(), null, "syscs", null, 0, -1, SwSystemconstDependentFormula.class, true, true, true, false, true, false, false, true, true);
        this.initEClass(this.numericalValueVariationPointEClass, NumericalValueVariationPoint.class, "NumericalValueVariationPoint", false, false, true);
        this.initEClass(this.positiveIntegerValueVariationPointEClass, PositiveIntegerValueVariationPoint.class, "PositiveIntegerValueVariationPoint", false, false, true);
        this.initEClass(this.integerValueVariationPointEClass, IntegerValueVariationPoint.class, "IntegerValueVariationPoint", false, false, true);
        this.initEClass(this.conditionByFormulaEClass, ConditionByFormula.class, "ConditionByFormula", false, false, true);
        this.initEAttribute(this.getConditionByFormula_BindingTime(), (EClassifier)this.getBindingTimeEnum(), "bindingTime", "SYSTEM-DESIGN-TIME", 1, 1, ConditionByFormula.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.booleanValueVariationPointEClass, BooleanValueVariationPoint.class, "BooleanValueVariationPoint", false, false, true);
        this.initEClass(this.swSystemconstantValueSetEClass, SwSystemconstantValueSet.class, "SwSystemconstantValueSet", false, false, true);
        this.initEReference(this.getSwSystemconstantValueSet_SwSystemconstantValues(), (EClassifier)this.getSwSystemconstValue(), this.getSwSystemconstValue_SwSystemconstantValueSet(), "swSystemconstantValues", null, 0, -1, SwSystemconstantValueSet.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swSystemconstValueEClass, SwSystemconstValue.class, "SwSystemconstValue", false, false, true);
        this.initEReference(this.getSwSystemconstValue_SwSystemconstantValueSet(), (EClassifier)this.getSwSystemconstantValueSet(), this.getSwSystemconstantValueSet_SwSystemconstantValues(), "swSystemconstantValueSet", null, 0, 1, SwSystemconstValue.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwSystemconstValue_SwSystemconst(), (EClassifier)theSystemconstantPackage.getSwSystemconst(), null, "swSystemconst", null, 0, 1, SwSystemconstValue.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwSystemconstValue_Value(), (EClassifier)this.getNumericalValueVariationPoint(), null, "value", null, 0, 1, SwSystemconstValue.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwSystemconstValue_Annotations(), (EClassifier)theAnnotationPackage.getAnnotation(), null, "annotations", null, 0, -1, SwSystemconstValue.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.floatValueVariationPointEClass, FloatValueVariationPoint.class, "FloatValueVariationPoint", false, false, true);
        this.initEClass(this.unlimitedIntegerValueVariationPointEClass, UnlimitedIntegerValueVariationPoint.class, "UnlimitedIntegerValueVariationPoint", false, false, true);
        this.initEClass(this.evaluatedVariantSetEClass, EvaluatedVariantSet.class, "EvaluatedVariantSet", false, false, true);
        this.initEAttribute(this.getEvaluatedVariantSet_ApprovalStatus(), (EClassifier)thePrimitivetypesPackage.getNameToken(), "approvalStatus", "", 0, 1, EvaluatedVariantSet.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getEvaluatedVariantSet_EvaluatedElements(), (EClassifier)theElementcollectionPackage.getCollectableElement(), null, "evaluatedElements", null, 0, -1, EvaluatedVariantSet.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getEvaluatedVariantSet_EvaluatedVariants(), (EClassifier)this.getPredefinedVariant(), null, "evaluatedVariants", null, 0, -1, EvaluatedVariantSet.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.predefinedVariantEClass, PredefinedVariant.class, "PredefinedVariant", false, false, true);
        this.initEReference(this.getPredefinedVariant_IncludedVariants(), (EClassifier)this.getPredefinedVariant(), null, "includedVariants", null, 0, -1, PredefinedVariant.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getPredefinedVariant_PostBuildVariantCriterionValueSets(), (EClassifier)this.getPostBuildVariantCriterionValueSet(), null, "postBuildVariantCriterionValueSets", null, 0, -1, PredefinedVariant.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getPredefinedVariant_SwSystemconstantValueSets(), (EClassifier)this.getSwSystemconstantValueSet(), null, "swSystemconstantValueSets", null, 0, -1, PredefinedVariant.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.postBuildVariantCriterionValueSetEClass, PostBuildVariantCriterionValueSet.class, "PostBuildVariantCriterionValueSet", false, false, true);
        this.initEReference(this.getPostBuildVariantCriterionValueSet_PostBuildVariantCriterionValues(), (EClassifier)this.getPostBuildVariantCriterionValue(), this.getPostBuildVariantCriterionValue_PostBuildVariantCriterionValueSet(), "postBuildVariantCriterionValues", null, 0, -1, PostBuildVariantCriterionValueSet.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.postBuildVariantCriterionValueEClass, PostBuildVariantCriterionValue.class, "PostBuildVariantCriterionValue", false, false, true);
        this.initEReference(this.getPostBuildVariantCriterionValue_PostBuildVariantCriterionValueSet(), (EClassifier)this.getPostBuildVariantCriterionValueSet(), this.getPostBuildVariantCriterionValueSet_PostBuildVariantCriterionValues(), "postBuildVariantCriterionValueSet", null, 0, 1, PostBuildVariantCriterionValue.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getPostBuildVariantCriterionValue_VariantCriterion(), (EClassifier)this.getPostBuildVariantCriterion(), null, "variantCriterion", null, 0, 1, PostBuildVariantCriterionValue.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getPostBuildVariantCriterionValue_Value(), (EClassifier)this.getIntegerValueVariationPoint(), null, "value", null, 0, 1, PostBuildVariantCriterionValue.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getPostBuildVariantCriterionValue_Annotations(), (EClassifier)theAnnotationPackage.getAnnotation(), null, "annotations", null, 0, -1, PostBuildVariantCriterionValue.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.postBuildVariantCriterionEClass, PostBuildVariantCriterion.class, "PostBuildVariantCriterion", false, false, true);
        this.initEReference(this.getPostBuildVariantCriterion_CompuMethod(), (EClassifier)theComputationmethodPackage.getCompuMethod(), null, "compuMethod", null, 0, 1, PostBuildVariantCriterion.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.postBuildVariantConditionEClass, PostBuildVariantCondition.class, "PostBuildVariantCondition", false, false, true);
        this.initEReference(this.getPostBuildVariantCondition_VariationPoint(), (EClassifier)this.getVariationPoint(), this.getVariationPoint_PostBuildVariantConditions(), "variationPoint", null, 0, 1, PostBuildVariantCondition.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getPostBuildVariantCondition_MatchingCriterion(), (EClassifier)this.getPostBuildVariantCriterion(), null, "matchingCriterion", null, 0, 1, PostBuildVariantCondition.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getPostBuildVariantCondition_Value(), (EClassifier)this.getIntegerValueVariationPoint(), null, "value", null, 0, 1, PostBuildVariantCondition.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.variationPointEClass, VariationPoint.class, "VariationPoint", false, false, true);
        this.initEAttribute(this.getVariationPoint_ShortLabel(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "shortLabel", "", 0, 1, VariationPoint.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getVariationPoint_Desc(), (EClassifier)theMultilanguagedataPackage.getMultiLanguageOverviewParagraph(), null, "desc", null, 0, 1, VariationPoint.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getVariationPoint_BlueprintCondition(), (EClassifier)theBlockelementsPackage.getDocumentationBlock(), null, "blueprintCondition", null, 0, 1, VariationPoint.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getVariationPoint_SwSyscond(), (EClassifier)this.getConditionByFormula(), null, "swSyscond", null, 0, 1, VariationPoint.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getVariationPoint_PostBuildVariantConditions(), (EClassifier)this.getPostBuildVariantCondition(), this.getPostBuildVariantCondition_VariationPoint(), "postBuildVariantConditions", null, 0, -1, VariationPoint.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getVariationPoint_Sdg(), (EClassifier)theSpecialdataPackage.getSdg(), null, "sdg", null, 0, 1, VariationPoint.class, false, false, true, true, false, false, true, false, true);
        this.initEEnum(this.bindingTimeEnumEEnum, BindingTimeEnum.class, "BindingTimeEnum");
        this.addEEnumLiteral(this.bindingTimeEnumEEnum, BindingTimeEnum.SYSTEM_DESIGN_TIME);
        this.addEEnumLiteral(this.bindingTimeEnumEEnum, BindingTimeEnum.CODE_GENERATION_TIME);
        this.addEEnumLiteral(this.bindingTimeEnumEEnum, BindingTimeEnum.PRE_COMPILE_TIME);
        this.addEEnumLiteral(this.bindingTimeEnumEEnum, BindingTimeEnum.LINK_TIME);
        this.createResource("http://autosar.org/schema/r4.0/autosar40/gs/vh");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_AttributeValueVariationPointAnnotations();
        this.createTaggedValuesOfGeneralization_SwSystemconstDependentFormulaAnnotations();
        this.createTaggedValuesOfGeneralization_FormulaExpressionAnnotations();
        this.createTaggedValuesOfGeneralization_AbstractNumericalVariationPointAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "VariantHandling", "Modified", "Tue Sep 02 12:35:55 CEST 2008", "Created", "Thu Jun 05 14:17:07 CEST 2008", "GUID", "06B4858C-8D2E-4a29-A258-251DD9F475EC", "Id", "1214551536"});
        this.addAnnotation((ENamedElement)this.abstractNumericalVariationPointEClass, source, new String[]{"Name", "AbstractNumericalVariationPoint", "Modified", "Fri Jun 12 14:20:15 CEST 2009", "Created", "Fri Jun 12 14:15:56 CEST 2009", "GUID", "FA065BD1-AB70-4665-9F22-BFA45C232D1E", "Id", "1944316646"});
        this.addAnnotation((ENamedElement)this.attributeValueVariationPointEClass, source, new String[]{"Name", "AttributeValueVariationPoint", "Modified", "Thu Aug 18 09:04:33 CEST 2011", "Created", "Tue Jan 27 19:24:40 CET 2009", "GUID", "613503B8-17B9-441e-9DD8-8007D273D9CA", "Id", "2136679750"});
        this.addAnnotation((ENamedElement)this.getAttributeValueVariationPoint_BindingTime(), source, new String[]{"Name", "bindingTime", "GUID", "32B65B60-E157-402f-8ECD-DB000D1F65AB", "Id", "-319101724"});
        this.addAnnotation((ENamedElement)this.getAttributeValueVariationPoint_BlueprintValue(), source, new String[]{"Name", "blueprintValue", "GUID", "9C011D52-2886-4a3c-990E-F41AB0D33235", "Id", "524455204"});
        this.addAnnotation((ENamedElement)this.getAttributeValueVariationPoint_Sd(), source, new String[]{"Name", "sd", "GUID", "BF3DB8BE-5B75-45a5-BEBA-E50585CCA7F5", "Id", "-563276289"});
        this.addAnnotation((ENamedElement)this.getAttributeValueVariationPoint_ShortLabel(), source, new String[]{"Name", "shortLabel", "GUID", "E73EDE32-4F18-4024-AC31-04CA84FDEA7A", "Id", "1241021110"});
        this.addAnnotation((ENamedElement)this.swSystemconstDependentFormulaEClass, source, new String[]{"Name", "SwSystemconstDependentFormula", "Modified", "Mon May 25 10:53:51 CEST 2009", "Created", "Tue Aug 26 16:56:57 CEST 2008", "GUID", "9533CA41-3B4B-4104-B637-96E5E8F20931", "Id", "-2071422980"});
        this.addAnnotation((ENamedElement)this.numericalValueVariationPointEClass, source, new String[]{"Name", "NumericalValueVariationPoint", "Modified", "Thu Jul 29 08:10:27 CEST 2010", "Created", "Wed Jan 28 16:08:50 CET 2009", "GUID", "A539C229-C885-4c21-8E4D-F68B6149F521", "Id", "-442383371"});
        this.addAnnotation((ENamedElement)this.positiveIntegerValueVariationPointEClass, source, new String[]{"Name", "PositiveIntegerValueVariationPoint", "Modified", "Thu Jul 29 08:10:33 CEST 2010", "Created", "Fri Jun 05 08:27:36 CEST 2009", "GUID", "7606E3DF-1CC8-4436-9D04-E42C981EF93A", "Id", "-528589632"});
        this.addAnnotation((ENamedElement)this.integerValueVariationPointEClass, source, new String[]{"Name", "IntegerValueVariationPoint", "Modified", "Thu Jul 29 08:09:47 CEST 2010", "Created", "Tue Jan 27 19:30:01 CET 2009", "GUID", "21D2B604-C033-4529-8F9B-EBF8AB7FE5E0", "Id", "-1381767970"});
        this.addAnnotation((ENamedElement)this.conditionByFormulaEClass, source, new String[]{"Name", "ConditionByFormula", "Modified", "Thu Aug 18 09:04:33 CEST 2011", "Created", "Fri Nov 25 19:53:15 CET 2005", "GUID", "53319148-4D3A-4b43-861F-7276A695FF56", "Id", "612213533"});
        this.addAnnotation((ENamedElement)this.getConditionByFormula_BindingTime(), source, new String[]{"Name", "bindingTime", "GUID", "6214D8CC-CACB-421f-BEDC-97295F782CBA", "Id", "-672761021"});
        this.addAnnotation((ENamedElement)this.bindingTimeEnumEEnum, source, new String[]{"Name", "BindingTimeEnum", "Modified", "Fri May 06 15:41:30 CEST 2011", "Created", "Fri Jun 27 10:55:09 CEST 2008", "GUID", "3F885875-4D2F-4c81-9121-F87B5451C4B0", "Id", "-951019126"});
        this.addAnnotation((ENamedElement)this.bindingTimeEnumEEnum.getELiterals().get(0), source, new String[]{"Name", "SystemDesignTime", "GUID", "049D7AE0-8E9F-4420-A9BD-E50B3162938A", "Id", "-473716581"});
        this.addAnnotation((ENamedElement)this.bindingTimeEnumEEnum.getELiterals().get(1), source, new String[]{"Name", "CodeGenerationTime", "GUID", "33228051-95F5-412f-9D2A-99EFB87B494D", "Id", "849339712"});
        this.addAnnotation((ENamedElement)this.bindingTimeEnumEEnum.getELiterals().get(2), source, new String[]{"Name", "PreCompileTime", "GUID", "E3259A37-A529-4f23-98FC-10B7D1484772", "Id", "-1642935231"});
        this.addAnnotation((ENamedElement)this.bindingTimeEnumEEnum.getELiterals().get(3), source, new String[]{"Name", "LinkTime", "GUID", "D1ABA418-4381-40af-9DDA-EA1E96B5958F", "Id", "940592494"});
        this.addAnnotation((ENamedElement)this.booleanValueVariationPointEClass, source, new String[]{"Name", "BooleanValueVariationPoint", "Modified", "Thu Jul 29 08:09:17 CEST 2010", "Created", "Tue Jan 27 19:34:59 CET 2009", "GUID", "C220A060-93A1-4915-853D-87F7EC6889F5", "Id", "-899803773"});
        this.addAnnotation((ENamedElement)this.swSystemconstantValueSetEClass, source, new String[]{"Name", "SwSystemconstantValueSet", "Modified", "Mon Aug 08 07:10:30 CEST 2011", "Created", "Fri Jul 04 14:06:28 CEST 2008", "GUID", "C2B8A14A-C674-4f31-B94C-90879510AA56", "Id", "803780865"});
        this.addAnnotation((ENamedElement)this.swSystemconstValueEClass, source, new String[]{"Name", "SwSystemconstValue", "Modified", "Thu Jul 29 08:11:18 CEST 2010", "Created", "Wed Jul 02 09:49:03 CEST 2008", "GUID", "25307800-7D46-4e08-AA43-0C7B7AE8FF21", "Id", "-2002717316"});
        this.addAnnotation((ENamedElement)this.getSwSystemconstValue_Value(), source, new String[]{"Name", "value", "GUID", "411FFAC1-EB7C-4614-B934-EC7903EF634A", "Id", "-458337385"});
        this.addAnnotation((ENamedElement)this.floatValueVariationPointEClass, source, new String[]{"Name", "FloatValueVariationPoint", "Modified", "Thu Jul 29 08:09:37 CEST 2010", "Created", "Tue Jan 27 19:33:07 CET 2009", "GUID", "46F8A140-58C6-4156-B4F3-02D58DEF4FE8", "Id", "-1814206323"});
        this.addAnnotation((ENamedElement)this.unlimitedIntegerValueVariationPointEClass, source, new String[]{"Name", "UnlimitedIntegerValueVariationPoint", "Modified", "Thu Jul 29 08:11:30 CEST 2010", "Created", "Fri Jun 05 08:27:55 CEST 2009", "GUID", "256BA1AD-AA41-48b7-9AEA-C4193ADC6E50", "Id", "1635881198"});
        this.addAnnotation((ENamedElement)this.evaluatedVariantSetEClass, source, new String[]{"Name", "EvaluatedVariantSet", "Modified", "Thu Nov 04 14:25:31 CET 2010", "Created", "Fri May 29 10:28:36 CEST 2009", "GUID", "043B9FB3-F6DD-4d80-900D-58E4E13E7FEF", "Id", "1243585716"});
        this.addAnnotation((ENamedElement)this.getEvaluatedVariantSet_ApprovalStatus(), source, new String[]{"Name", "approvalStatus", "GUID", "C815BDC0-BF8F-493a-B35C-5D052638E1CE", "Id", "2111862409"});
        this.addAnnotation((ENamedElement)this.predefinedVariantEClass, source, new String[]{"Name", "PredefinedVariant", "Modified", "Thu Jul 29 08:11:13 CEST 2010", "Created", "Fri Oct 17 18:30:55 CEST 2008", "GUID", "A1C88512-ACF6-4eb2-A128-0E7EC7049508", "Id", "-1262066951"});
        this.addAnnotation((ENamedElement)this.postBuildVariantCriterionValueSetEClass, source, new String[]{"Name", "PostBuildVariantCriterionValueSet", "Modified", "Thu Jul 29 08:11:07 CEST 2010", "Created", "Fri Jan 23 11:21:15 CET 2009", "GUID", "BE55AC48-253A-46ba-B5D3-32D15EF86E8C", "Id", "1645652899"});
        this.addAnnotation((ENamedElement)this.postBuildVariantCriterionValueEClass, source, new String[]{"Name", "PostBuildVariantCriterionValue", "Modified", "Mon May 25 11:43:45 CEST 2009", "Created", "Mon Jun 30 12:30:34 CEST 2008", "GUID", "7C352E69-B6D3-4ecb-AA66-201C54FB684A", "Id", "749061418"});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCriterionValue_Value(), source, new String[]{"Name", "value", "GUID", "AAF74057-2248-4bb0-BC2C-C331CF660CDC", "Id", "258217947"});
        this.addAnnotation((ENamedElement)this.postBuildVariantCriterionEClass, source, new String[]{"Name", "PostBuildVariantCriterion", "Modified", "Thu Mar 12 11:37:34 CET 2009", "Created", "Mon Jun 30 12:24:32 CEST 2008", "GUID", "258CD486-4144-413e-9DEE-9464722AF857", "Id", "-441472602"});
        this.addAnnotation((ENamedElement)this.postBuildVariantConditionEClass, source, new String[]{"Name", "PostBuildVariantCondition", "Modified", "Thu Jul 02 10:09:27 CEST 2009", "Created", "Mon Jun 30 12:30:34 CEST 2008", "GUID", "A166EA78-8604-4165-9979-88557B309FB3", "Id", "1318488674"});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCondition_Value(), source, new String[]{"Name", "value", "GUID", "DA8328E5-0990-474f-AC75-7E31EE559E71", "Id", "1061838651"});
        this.addAnnotation((ENamedElement)this.variationPointEClass, source, new String[]{"Name", "VariationPoint", "Modified", "Thu Oct 07 09:51:37 CEST 2010", "Created", "Thu Jun 05 14:17:21 CEST 2008", "GUID", "73AC0E8B-73A4-474f-8E44-B5CF98BA24A7", "Id", "82011018"});
        this.addAnnotation((ENamedElement)this.getVariationPoint_ShortLabel(), source, new String[]{"Name", "shortLabel", "GUID", "C06B7FCD-0CB2-4377-A5AB-F39978006EE8", "Id", "1233054140"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "VARIANT-HANDLING", "xml.namePlural", "VARIANT-HANDLINGS"});
        this.addAnnotation((ENamedElement)this.abstractNumericalVariationPointEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"AbstractNumericalVariationPoint\"", "mmt.qualifiedName", "AbstractNumericalVariationPoint", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "ABSTRACT-NUMERICAL-VARIATION-POINT", "xml.namePlural", "ABSTRACT-NUMERICAL-VARIATION-POINTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.attributeValueVariationPointEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"AttributeValueVariationPoint\"", "mmt.qualifiedName", "AttributeValueVariationPoint", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "ATTRIBUTE-VALUE-VARIATION-POINT", "xml.namePlural", "ATTRIBUTE-VALUE-VARIATION-POINTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.getAttributeValueVariationPoint_BindingTime(), source, new String[]{"xml.tags", "xml.attribute=\"true\";mmt.qualifiedName=\"AttributeValueVariationPoint.bindingTime\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.attribute", "true", "mmt.qualifiedName", "AttributeValueVariationPoint.bindingTime", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "BINDING-TIME", "xml.namePlural", "BINDING-TIMES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.getAttributeValueVariationPoint_BlueprintValue(), source, new String[]{"xml.tags", "xml.attribute=\"true\";mmt.qualifiedName=\"AttributeValueVariationPoint.blueprintValue\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.attribute", "true", "mmt.qualifiedName", "AttributeValueVariationPoint.blueprintValue", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "BLUEPRINT-VALUE", "xml.namePlural", "BLUEPRINT-VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1"});
        this.addAnnotation((ENamedElement)this.getAttributeValueVariationPoint_Sd(), source, new String[]{"xml.tags", "xml.attribute=\"true\";mmt.qualifiedName=\"AttributeValueVariationPoint.sd\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.attribute", "true", "mmt.qualifiedName", "AttributeValueVariationPoint.sd", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "SD", "xml.namePlural", "SDS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2"});
        this.addAnnotation((ENamedElement)this.getAttributeValueVariationPoint_ShortLabel(), source, new String[]{"xml.tags", "xml.attribute=\"true\";mmt.qualifiedName=\"AttributeValueVariationPoint.shortLabel\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.attribute", "true", "mmt.qualifiedName", "AttributeValueVariationPoint.shortLabel", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "SHORT-LABEL", "xml.namePlural", "SHORT-LABELS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "3"});
        this.addAnnotation((ENamedElement)this.swSystemconstDependentFormulaEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwSystemconstDependentFormula\"", "mmt.qualifiedName", "SwSystemconstDependentFormula", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "SW-SYSTEMCONST-DEPENDENT-FORMULA", "xml.namePlural", "SW-SYSTEMCONST-DEPENDENT-FORMULAS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.getSwSystemconstDependentFormula_SyscStrings(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwSystemconstDependentFormula.syscString\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "SwSystemconstDependentFormula.syscString", "pureMM.maxOccurs", "1", "xml.name", "SYSC-STRING-REF", "xml.namePlural", "SYSC-STRING-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwSystemconstDependentFormula_Syscs(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"50\";msr.id=\"VALUE-BY-FORMULA_TYPE__SW-SYSTEMCONST-CODED-REF\";mmt.qualifiedName=\"SwSystemconstDependentFormula.sysc\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "SwSystemconstDependentFormula.sysc", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "msr.id", "VALUE-BY-FORMULA_TYPE__SW-SYSTEMCONST-CODED-REF", "xml.name", "SYSC-REF", "xml.namePlural", "SYSC-REFS", "internal-xml-sequenceOffset", "50", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.numericalValueVariationPointEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"NumericalValueVariationPoint\"", "mmt.qualifiedName", "NumericalValueVariationPoint", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "NUMERICAL-VALUE-VARIATION-POINT", "xml.namePlural", "NUMERICAL-VALUE-VARIATION-POINTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.positiveIntegerValueVariationPointEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"PositiveIntegerValueVariationPoint\"", "mmt.qualifiedName", "PositiveIntegerValueVariationPoint", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "POSITIVE-INTEGER-VALUE-VARIATION-POINT", "xml.namePlural", "POSITIVE-INTEGER-VALUE-VARIATION-POINTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.integerValueVariationPointEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"IntegerValueVariationPoint\"", "mmt.qualifiedName", "IntegerValueVariationPoint", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "INTEGER-VALUE-VARIATION-POINT", "xml.namePlural", "INTEGER-VALUE-VARIATION-POINTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.conditionByFormulaEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-SYSCOND_TYPE\";msr.isGroupOnly=\"true\";mmt.qualifiedName=\"ConditionByFormula\"", "asam.useCase", "MDX", "msr.isGroupOnly", "true", "mmt.qualifiedName", "ConditionByFormula", "msr.id", "type__SW-SYSCOND_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "CONDITION-BY-FORMULA", "xml.namePlural", "CONDITION-BY-FORMULAS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.getConditionByFormula_BindingTime(), source, new String[]{"xml.tags", "msr.id=\"conditionByFormula__bindingTime\";xml.attribute=\"true\";mmt.qualifiedName=\"ConditionByFormula.bindingTime\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.attribute", "true", "mmt.qualifiedName", "ConditionByFormula.bindingTime", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "msr.id", "conditionByFormula__bindingTime", "xml.name", "BINDING-TIME", "xml.namePlural", "BINDING-TIMES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.bindingTimeEnumEEnum, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BindingTimeEnum\"", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::GeneralTemplateClasses::ArObject::ARObject", "mmt.qualifiedName", "BindingTimeEnum", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BINDING-TIME-ENUM", "xml.namePlural", "BINDING-TIME-ENUMS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.bindingTimeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BindingTimeEnum.SystemDesignTime\"", "mmt.qualifiedName", "BindingTimeEnum.SystemDesignTime", "xml.name", "SYSTEM-DESIGN-TIME", "xml.namePlural", "SYSTEM-DESIGN-TIMES"});
        this.addAnnotation((ENamedElement)this.bindingTimeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BindingTimeEnum.CodeGenerationTime\"", "mmt.qualifiedName", "BindingTimeEnum.CodeGenerationTime", "xml.name", "CODE-GENERATION-TIME", "xml.namePlural", "CODE-GENERATION-TIMES"});
        this.addAnnotation((ENamedElement)this.bindingTimeEnumEEnum.getELiterals().get(2), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BindingTimeEnum.PreCompileTime\"", "mmt.qualifiedName", "BindingTimeEnum.PreCompileTime", "xml.name", "PRE-COMPILE-TIME", "xml.namePlural", "PRE-COMPILE-TIMES"});
        this.addAnnotation((ENamedElement)this.bindingTimeEnumEEnum.getELiterals().get(3), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BindingTimeEnum.LinkTime\"", "mmt.qualifiedName", "BindingTimeEnum.LinkTime", "xml.name", "LINK-TIME", "xml.namePlural", "LINK-TIMES"});
        this.addAnnotation((ENamedElement)this.booleanValueVariationPointEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"BooleanValueVariationPoint\"", "mmt.qualifiedName", "BooleanValueVariationPoint", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "BOOLEAN-VALUE-VARIATION-POINT", "xml.namePlural", "BOOLEAN-VALUE-VARIATION-POINTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.swSystemconstantValueSetEClass, source, new String[]{"atp.recommendedPackage", "SwSystemconstantValueSets", "xml.tags", "atp.recommendedPackage=\"SwSystemconstantValueSets\";mmt.qualifiedName=\"SwSystemconstantValueSet\"", "mmt.qualifiedName", "SwSystemconstantValueSet", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "SW-SYSTEMCONSTANT-VALUE-SET", "xml.namePlural", "SW-SYSTEMCONSTANT-VALUE-SETS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwSystemconstantValueSet_SwSystemconstantValues(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwSystemconstantValueSet.swSystemconstantValue\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "SwSystemconstantValueSet.swSystemconstantValue", "pureMM.maxOccurs", "-1", "xml.name", "SW-SYSTEMCONSTANT-VALUE", "xml.namePlural", "SW-SYSTEMCONSTANT-VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swSystemconstValueEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwSystemconstValue\"", "mmt.qualifiedName", "SwSystemconstValue", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "SW-SYSTEMCONST-VALUE", "xml.namePlural", "SW-SYSTEMCONST-VALUES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwSystemconstValue_SwSystemconst(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10\";mmt.qualifiedName=\"SwSystemconstValue.swSystemconst\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "0", "mmt.qualifiedName", "SwSystemconstValue.swSystemconst", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "SW-SYSTEMCONST-REF", "xml.namePlural", "SW-SYSTEMCONST-REFS", "internal-xml-sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwSystemconstValue_Value(), source, new String[]{"xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";xml.sequenceOffset=\"20\";mmt.qualifiedName=\"SwSystemconstValue.value\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "SwSystemconstValue.value", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "VALUE", "xml.namePlural", "VALUES", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwSystemconstValue_Annotations(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";mmt.qualifiedName=\"SwSystemconstValue.annotation\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "xml.sequenceOffset", "2", "mmt.qualifiedName", "SwSystemconstValue.annotation", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "ANNOTATION", "xml.namePlural", "ANNOTATIONS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.floatValueVariationPointEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"FloatValueVariationPoint\"", "mmt.qualifiedName", "FloatValueVariationPoint", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "FLOAT-VALUE-VARIATION-POINT", "xml.namePlural", "FLOAT-VALUE-VARIATION-POINTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.unlimitedIntegerValueVariationPointEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"UnlimitedIntegerValueVariationPoint\"", "mmt.qualifiedName", "UnlimitedIntegerValueVariationPoint", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "UNLIMITED-INTEGER-VALUE-VARIATION-POINT", "xml.namePlural", "UNLIMITED-INTEGER-VALUE-VARIATION-POINTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.evaluatedVariantSetEClass, source, new String[]{"atp.recommendedPackage", "EvaluatedVariantSets", "xml.tags", "atp.recommendedPackage=\"EvaluatedVariantSets\";mmt.qualifiedName=\"EvaluatedVariantSet\"", "mmt.qualifiedName", "EvaluatedVariantSet", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "EVALUATED-VARIANT-SET", "xml.namePlural", "EVALUATED-VARIANT-SETS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getEvaluatedVariantSet_ApprovalStatus(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"EvaluatedVariantSet.approvalStatus\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "EvaluatedVariantSet.approvalStatus", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "APPROVAL-STATUS", "xml.namePlural", "APPROVAL-STATUSS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getEvaluatedVariantSet_EvaluatedElements(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"EvaluatedVariantSet.evaluatedElement\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "EvaluatedVariantSet.evaluatedElement", "pureMM.maxOccurs", "-1", "xml.name", "EVALUATED-ELEMENT-REF", "xml.namePlural", "EVALUATED-ELEMENT-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getEvaluatedVariantSet_EvaluatedVariants(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"EvaluatedVariantSet.evaluatedVariant\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "EvaluatedVariantSet.evaluatedVariant", "pureMM.maxOccurs", "-1", "xml.name", "EVALUATED-VARIANT-REF", "xml.namePlural", "EVALUATED-VARIANT-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.predefinedVariantEClass, source, new String[]{"atp.recommendedPackage", "PredefinedVariants", "xml.tags", "atp.recommendedPackage=\"PredefinedVariants\";mmt.qualifiedName=\"PredefinedVariant\"", "mmt.qualifiedName", "PredefinedVariant", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "PREDEFINED-VARIANT", "xml.namePlural", "PREDEFINED-VARIANTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPredefinedVariant_IncludedVariants(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"PredefinedVariant.includedVariant\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "PredefinedVariant.includedVariant", "pureMM.maxOccurs", "-1", "xml.name", "INCLUDED-VARIANT-REF", "xml.namePlural", "INCLUDED-VARIANT-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPredefinedVariant_PostBuildVariantCriterionValueSets(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"PredefinedVariant.postBuildVariantCriterionValueSet\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "PredefinedVariant.postBuildVariantCriterionValueSet", "pureMM.maxOccurs", "-1", "xml.name", "POST-BUILD-VARIANT-CRITERION-VALUE-SET-REF", "xml.namePlural", "POST-BUILD-VARIANT-CRITERION-VALUE-SET-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPredefinedVariant_SwSystemconstantValueSets(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"PredefinedVariant.swSystemconstantValueSet\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "PredefinedVariant.swSystemconstantValueSet", "pureMM.maxOccurs", "-1", "xml.name", "SW-SYSTEMCONSTANT-VALUE-SET-REF", "xml.namePlural", "SW-SYSTEMCONSTANT-VALUE-SET-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.postBuildVariantCriterionValueSetEClass, source, new String[]{"atp.recommendedPackage", "PostBuildVariantCriterionValueSets", "xml.tags", "atp.recommendedPackage=\"PostBuildVariantCriterionValueSets\";mmt.qualifiedName=\"PostBuildVariantCriterionValueSet\"", "mmt.qualifiedName", "PostBuildVariantCriterionValueSet", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "POST-BUILD-VARIANT-CRITERION-VALUE-SET", "xml.namePlural", "POST-BUILD-VARIANT-CRITERION-VALUE-SETS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCriterionValueSet_PostBuildVariantCriterionValues(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"PostBuildVariantCriterionValueSet.postBuildVariantCriterionValue\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "PostBuildVariantCriterionValueSet.postBuildVariantCriterionValue", "pureMM.maxOccurs", "-1", "xml.name", "POST-BUILD-VARIANT-CRITERION-VALUE", "xml.namePlural", "POST-BUILD-VARIANT-CRITERION-VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.postBuildVariantCriterionValueEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"PostBuildVariantCriterionValue\"", "mmt.qualifiedName", "PostBuildVariantCriterionValue", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "POST-BUILD-VARIANT-CRITERION-VALUE", "xml.namePlural", "POST-BUILD-VARIANT-CRITERION-VALUES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCriterionValue_VariantCriterion(), source, new String[]{"xml.sequenceOffset", "0", "mmt.qualifiedName", "PostBuildVariantCriterionValue.variantCriterion", "xml.tags", "xml.sequenceOffset=\"10\";mmt.qualifiedName=\"PostBuildVariantCriterionValue.variantCriterion\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "VARIANT-CRITERION-REF", "xml.namePlural", "VARIANT-CRITERION-REFS", "internal-xml-sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCriterionValue_Value(), source, new String[]{"xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";xml.sequenceOffset=\"20\";mmt.qualifiedName=\"PostBuildVariantCriterionValue.value\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "PostBuildVariantCriterionValue.value", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "VALUE", "xml.namePlural", "VALUES", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCriterionValue_Annotations(), source, new String[]{"xml.sequenceOffset", "2", "mmt.qualifiedName", "PostBuildVariantCriterionValue.annotation", "xml.tags", "xml.sequenceOffset=\"30\";mmt.qualifiedName=\"PostBuildVariantCriterionValue.annotation\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "ANNOTATION", "xml.namePlural", "ANNOTATIONS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.postBuildVariantCriterionEClass, source, new String[]{"atp.recommendedPackage", "PostBuildVariantCriterions", "xml.tags", "atp.recommendedPackage=\"PostBuildVariantCriterions\";mmt.qualifiedName=\"PostBuildVariantCriterion\"", "mmt.qualifiedName", "PostBuildVariantCriterion", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "POST-BUILD-VARIANT-CRITERION", "xml.namePlural", "POST-BUILD-VARIANT-CRITERIONS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCriterion_CompuMethod(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"PostBuildVariantCriterion.compuMethod\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "PostBuildVariantCriterion.compuMethod", "pureMM.maxOccurs", "1", "xml.name", "COMPU-METHOD-REF", "xml.namePlural", "COMPU-METHOD-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.postBuildVariantConditionEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"PostBuildVariantCondition\"", "mmt.qualifiedName", "PostBuildVariantCondition", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "POST-BUILD-VARIANT-CONDITION", "xml.namePlural", "POST-BUILD-VARIANT-CONDITIONS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCondition_MatchingCriterion(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"PostBuildVariantCondition.matchingCriterion\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "PostBuildVariantCondition.matchingCriterion", "pureMM.maxOccurs", "1", "xml.name", "MATCHING-CRITERION-REF", "xml.namePlural", "MATCHING-CRITERION-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCondition_Value(), source, new String[]{"xml.tags", "Vh.latestBindingTime=\"PreCompileTime\";mmt.qualifiedName=\"PostBuildVariantCondition.value\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "mmt.qualifiedName", "PostBuildVariantCondition.value", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "Vh.latestBindingTime", "PreCompileTime", "xml.name", "VALUE", "xml.namePlural", "VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.variationPointEClass, source, new String[]{"xml.tags", "mmt.qualifiedName=\"VariationPoint\"", "mmt.qualifiedName", "VariationPoint", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/schema/r4.0", "xml.name", "VARIATION-POINT", "xml.namePlural", "VARIATION-POINTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getVariationPoint_ShortLabel(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10\";mmt.qualifiedName=\"VariationPoint.shortLabel\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "0", "mmt.qualifiedName", "VariationPoint.shortLabel", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "SHORT-LABEL", "xml.namePlural", "SHORT-LABELS", "internal-xml-sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getVariationPoint_Desc(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";mmt.qualifiedName=\"VariationPoint.desc\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "1", "mmt.qualifiedName", "VariationPoint.desc", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "DESC", "xml.namePlural", "DESCS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getVariationPoint_BlueprintCondition(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"28\";mmt.qualifiedName=\"VariationPoint.blueprintCondition\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "2", "mmt.qualifiedName", "VariationPoint.blueprintCondition", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "BLUEPRINT-CONDITION", "xml.namePlural", "BLUEPRINT-CONDITIONS", "internal-xml-sequenceOffset", "28", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getVariationPoint_SwSyscond(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";mmt.qualifiedName=\"VariationPoint.swSyscond\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "3", "mmt.qualifiedName", "VariationPoint.swSyscond", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "SW-SYSCOND", "xml.namePlural", "SW-SYSCONDS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getVariationPoint_PostBuildVariantConditions(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"40\";mmt.qualifiedName=\"VariationPoint.postBuildVariantCondition\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "xml.sequenceOffset", "4", "mmt.qualifiedName", "VariationPoint.postBuildVariantCondition", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.name", "POST-BUILD-VARIANT-CONDITION", "xml.namePlural", "POST-BUILD-VARIANT-CONDITIONS", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getVariationPoint_Sdg(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"50\";mmt.qualifiedName=\"VariationPoint.sdg\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.sequenceOffset", "5", "mmt.qualifiedName", "VariationPoint.sdg", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "SDG", "xml.namePlural", "SDGS", "internal-xml-sequenceOffset", "50", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.abstractNumericalVariationPointEClass, source, new String[]{"name", "ABSTRACT-NUMERICAL-VARIATION-POINT", "kind", "mixed", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.attributeValueVariationPointEClass, source, new String[]{"name", "ATTRIBUTE-VALUE-VARIATION-POINT", "kind", "mixed", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getAttributeValueVariationPoint_VariationPointProxy(), source, new String[]{"group", "#:mixed"});
        this.addAnnotation((ENamedElement)this.getAttributeValueVariationPoint_BindingTime(), source, new String[]{"name", "BINDING-TIME", "kind", "attribute"});
        this.addAnnotation((ENamedElement)this.getAttributeValueVariationPoint_BlueprintValue(), source, new String[]{"name", "BLUEPRINT-VALUE", "kind", "attribute"});
        this.addAnnotation((ENamedElement)this.getAttributeValueVariationPoint_Sd(), source, new String[]{"name", "SD", "kind", "attribute"});
        this.addAnnotation((ENamedElement)this.getAttributeValueVariationPoint_ShortLabel(), source, new String[]{"name", "SHORT-LABEL", "kind", "attribute"});
        this.addAnnotation((ENamedElement)this.swSystemconstDependentFormulaEClass, source, new String[]{"name", "SW-SYSTEMCONST-DEPENDENT-FORMULA", "kind", "mixed", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwSystemconstDependentFormula_SyscStrings(), source, new String[]{"name", "SYSC-STRING-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0", "group", "#:mixed"});
        this.addAnnotation((ENamedElement)this.getSwSystemconstDependentFormula_Syscs(), source, new String[]{"name", "SYSC-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0", "group", "#:mixed"});
        this.addAnnotation((ENamedElement)this.numericalValueVariationPointEClass, source, new String[]{"name", "NUMERICAL-VALUE-VARIATION-POINT", "kind", "mixed", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.positiveIntegerValueVariationPointEClass, source, new String[]{"name", "POSITIVE-INTEGER-VALUE-VARIATION-POINT", "kind", "mixed", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.integerValueVariationPointEClass, source, new String[]{"name", "INTEGER-VALUE-VARIATION-POINT", "kind", "mixed", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.conditionByFormulaEClass, source, new String[]{"name", "CONDITION-BY-FORMULA", "kind", "mixed", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getConditionByFormula_BindingTime(), source, new String[]{"name", "BINDING-TIME", "kind", "attribute"});
        this.addAnnotation((ENamedElement)this.booleanValueVariationPointEClass, source, new String[]{"name", "BOOLEAN-VALUE-VARIATION-POINT", "kind", "mixed", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.swSystemconstantValueSetEClass, source, new String[]{"name", "SW-SYSTEMCONSTANT-VALUE-SET", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwSystemconstantValueSet_SwSystemconstantValues(), source, new String[]{"name", "SW-SYSTEMCONSTANT-VALUES", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.swSystemconstValueEClass, source, new String[]{"name", "SW-SYSTEMCONST-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwSystemconstValue_SwSystemconst(), source, new String[]{"name", "SW-SYSTEMCONST-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwSystemconstValue_Value(), source, new String[]{"name", "VALUE", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getSwSystemconstValue_Annotations(), source, new String[]{"name", "ANNOTATIONS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.floatValueVariationPointEClass, source, new String[]{"name", "FLOAT-VALUE-VARIATION-POINT", "kind", "mixed", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.unlimitedIntegerValueVariationPointEClass, source, new String[]{"name", "UNLIMITED-INTEGER-VALUE-VARIATION-POINT", "kind", "mixed", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.evaluatedVariantSetEClass, source, new String[]{"name", "EVALUATED-VARIANT-SET", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getEvaluatedVariantSet_ApprovalStatus(), source, new String[]{"name", "APPROVAL-STATUS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getEvaluatedVariantSet_EvaluatedElements(), source, new String[]{"name", "EVALUATED-ELEMENT-REFS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getEvaluatedVariantSet_EvaluatedVariants(), source, new String[]{"name", "EVALUATED-VARIANT-REFS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.predefinedVariantEClass, source, new String[]{"name", "PREDEFINED-VARIANT", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPredefinedVariant_IncludedVariants(), source, new String[]{"name", "INCLUDED-VARIANT-REFS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPredefinedVariant_PostBuildVariantCriterionValueSets(), source, new String[]{"name", "POST-BUILD-VARIANT-CRITERION-VALUE-SET-REFS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPredefinedVariant_SwSystemconstantValueSets(), source, new String[]{"name", "SW-SYSTEMCONSTANT-VALUE-SET-REFS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.postBuildVariantCriterionValueSetEClass, source, new String[]{"name", "POST-BUILD-VARIANT-CRITERION-VALUE-SET", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCriterionValueSet_PostBuildVariantCriterionValues(), source, new String[]{"name", "POST-BUILD-VARIANT-CRITERION-VALUES", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.postBuildVariantCriterionValueEClass, source, new String[]{"name", "POST-BUILD-VARIANT-CRITERION-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCriterionValue_VariantCriterion(), source, new String[]{"name", "VARIANT-CRITERION-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCriterionValue_Value(), source, new String[]{"name", "VALUE", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCriterionValue_Annotations(), source, new String[]{"name", "ANNOTATIONS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.postBuildVariantCriterionEClass, source, new String[]{"name", "POST-BUILD-VARIANT-CRITERION", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCriterion_CompuMethod(), source, new String[]{"name", "COMPU-METHOD-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.postBuildVariantConditionEClass, source, new String[]{"name", "POST-BUILD-VARIANT-CONDITION", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCondition_MatchingCriterion(), source, new String[]{"name", "MATCHING-CRITERION-REF", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCondition_Value(), source, new String[]{"name", "VALUE", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.variationPointEClass, source, new String[]{"name", "VARIATION-POINT", "kind", "elementOnly", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getVariationPoint_ShortLabel(), source, new String[]{"name", "SHORT-LABEL", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getVariationPoint_Desc(), source, new String[]{"name", "DESC", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getVariationPoint_BlueprintCondition(), source, new String[]{"name", "BLUEPRINT-CONDITION", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getVariationPoint_SwSyscond(), source, new String[]{"name", "SW-SYSCOND", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getVariationPoint_PostBuildVariantConditions(), source, new String[]{"name", "POST-BUILD-VARIANT-CONDITIONS", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
        this.addAnnotation((ENamedElement)this.getVariationPoint_Sdg(), source, new String[]{"name", "SDG", "kind", "element", "namespace", "http://autosar.org/schema/r4.0"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.abstractNumericalVariationPointEClass, source, new String[]{"documentation", "This is an abstract NumericalValueVariationPoint. It is introduced to support the case that additional attributes are required for particular purposes.\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.attributeValueVariationPointEClass, source, new String[]{"documentation", "This class represents the ability to derive the value of the Attribute from a system constant (by SwSystemconstDependentFormula). It also provides a bindingTime."});
        this.addAnnotation((ENamedElement)this.getAttributeValueVariationPoint_BindingTime(), source, new String[]{"documentation", "This is the binding time in which the attribute value needs to be bound.\r\n\r\nIf this attribute is missing, the attribute is not a variation point. In particular this means that It needs to be a single value according to the type specified in the pure model. It is an error if it is still a formula.\r\n"});
        this.addAnnotation((ENamedElement)this.getAttributeValueVariationPoint_BlueprintValue(), source, new String[]{"documentation", "This represents a description that documents how the value shall be defined when deriving objects from the blueprint."});
        this.addAnnotation((ENamedElement)this.getAttributeValueVariationPoint_Sd(), source, new String[]{"documentation", "This special data is provided to allow synchronisation of Attribute value variation points with variant management systems. The usage is subject of agreement between the involved parties.\r\n"});
        this.addAnnotation((ENamedElement)this.getAttributeValueVariationPoint_ShortLabel(), source, new String[]{"documentation", "This allows to identify the variation point. It is also intended to allow RTE support for CompileTime Variation points.\r\n"});
        this.addAnnotation((ENamedElement)this.swSystemconstDependentFormulaEClass, source, new String[]{"documentation", "This class represents an expression depending on system constants."});
        this.addAnnotation((ENamedElement)this.getSwSystemconstDependentFormula_SyscStrings(), source, new String[]{"documentation", "syscString indicates that the referenced systm constant shall be evaluated as a string according to Constr_1145 (in SWCT). "});
        this.addAnnotation((ENamedElement)this.getSwSystemconstDependentFormula_Syscs(), source, new String[]{"documentation", "This refers to a system constant. The internal (coded) value of the system constant shall be used."});
        this.addAnnotation((ENamedElement)this.numericalValueVariationPointEClass, source, new String[]{"documentation", "This class represents an attribute value variation point for Numerical attributes.\r\n\r\nNote that this class might be used in the extended meta-model only."});
        this.addAnnotation((ENamedElement)this.positiveIntegerValueVariationPointEClass, source, new String[]{"documentation", "This class represents an attribute value variation point for positive Integer attributes.\r\n\r\nNote that this class might be used in the extended meta-model only."});
        this.addAnnotation((ENamedElement)this.integerValueVariationPointEClass, source, new String[]{"documentation", "This class represents an attribute value variation point for Integer attributes.\r\n\r\nNote that this class might be used in the extended meta-model only."});
        this.addAnnotation((ENamedElement)this.conditionByFormulaEClass, source, new String[]{"documentation", "This class represents a condition which is computed based on system constants according to the specified expression. The expected result is a considered as boolean value.\r\n\r\nThe result of the expression is interpreted as a condition. \r\n\r\n* \"0\" represents \"false\";  \r\n\r\n* a value greater than zero is considered \"true\""});
        this.addAnnotation((ENamedElement)this.getConditionByFormula_BindingTime(), source, new String[]{"documentation", "This attribute specifies the point in time when condition may be evaluated at earliest. At this point in time all referenced system constants must have a value."});
        this.addAnnotation((ENamedElement)this.bindingTimeEnumEEnum, source, new String[]{"documentation", "This enumerator specifies the applicable binding times for the pre build variation points."});
        this.addAnnotation((ENamedElement)this.bindingTimeEnumEEnum.getELiterals().get(0), source, new String[]{"documentation", "* Designing the VFB.\r\n* Software Component types (portinterfaces).\r\n* SWC Prototypes and the Connections between SWCprototypes.\r\n* Designing the Topology\r\n* ECUs and interconnecting Networks\r\n* Designing the Communication Matrix and Data Mapping"});
        this.addAnnotation((ENamedElement)this.bindingTimeEnumEEnum.getELiterals().get(1), source, new String[]{"documentation", "* Coding by hand, based on requirements document.\r\n* Tool based code generation, e.g. from a model.\r\n* The model may contain variants.\r\n* Only code for the selected variant(s) is actually generated."});
        this.addAnnotation((ENamedElement)this.bindingTimeEnumEEnum.getELiterals().get(2), source, new String[]{"documentation", "This is typically the C-Preprocessor.\r\nExclude parts of the code from the compilation process, e.g.,\r\nbecause they are not required for the selected variant,\r\nbecause they are incompatible with the selected variant,\r\nbecause they require resources that are not present in the selected variant.\r\nObject code is only generated for the selected variant(s).\r\nThe code that is excluded at this stage code will not be available at later stages."});
        this.addAnnotation((ENamedElement)this.bindingTimeEnumEEnum.getELiterals().get(3), source, new String[]{"documentation", "Configure what is included in object code, and what is omitted\r\nBased on which variant(s) are selected\r\nE.g. for modules that are delivered as object code (as opposed to those that are delivered as source code)\r\n"});
        this.addAnnotation((ENamedElement)this.booleanValueVariationPointEClass, source, new String[]{"documentation", "This class represents an attribute value variation point for Boolean attributes.\r\n\r\nNote that this class might be used in the extended meta-model on"});
        this.addAnnotation((ENamedElement)this.swSystemconstantValueSetEClass, source, new String[]{"documentation", "This meta-class represents the ability to specify a set of system constant values."});
        this.addAnnotation((ENamedElement)this.getSwSystemconstantValueSet_SwSystemconstantValues(), source, new String[]{"documentation", "This is one particular value of a system constant."});
        this.addAnnotation((ENamedElement)this.swSystemconstValueEClass, source, new String[]{"documentation", "This meta-class assigns a particular value to a system constant."});
        this.addAnnotation((ENamedElement)this.getSwSystemconstValue_SwSystemconst(), source, new String[]{"documentation", "This is the system constant to which the value applies."});
        this.addAnnotation((ENamedElement)this.getSwSystemconstValue_Value(), source, new String[]{"documentation", "This is the particular value of a system constant. It is specified as Numerical. Further restrictions may apply by the definition of the system constant.\r\n\r\nThe value attribute defines the internal value of the SwSystemconst as it is processed  in the Formula Language."});
        this.addAnnotation((ENamedElement)this.getSwSystemconstValue_Annotations(), source, new String[]{"documentation", "This provides the ability to add information why the value is set like it is."});
        this.addAnnotation((ENamedElement)this.floatValueVariationPointEClass, source, new String[]{"documentation", "This class represents an attribute value variation point for Float attributes.\r\n\r\nNote that this class might be used in the extended meta-model only"});
        this.addAnnotation((ENamedElement)this.unlimitedIntegerValueVariationPointEClass, source, new String[]{"documentation", "This class represents an attribute value variation point for unlimited Integer attributes.\r\n\r\nNote that this class might be used in the extended meta-model only."});
        this.addAnnotation((ENamedElement)this.evaluatedVariantSetEClass, source, new String[]{"documentation", "This meta class represents the ability to express if a set of ArElements is able to support one or more particular variants.\r\n\r\nIn other words, for a given set of evaluatedElements this meta class represents a table of evaluated variants, where each PredefinedVariant represents one column. In this colum each descendant swSystemconstantValue resp. postbuildVariantCriterionValue represents one entry.\r\n\r\nIn a graphical representation each swSystemconstantValueSet / postBuildVariantCriterionValueSet could be used as an intermediate headline in the table column.\r\n\r\nIf the approvalStatus is \"APPROVED\" it expresses that the collection of CollectableElements is known be valid for the given evaluatedVariants.\r\n\r\nNote that the EvaluatedVariantSet is a CollectableElement. This allows to establish a hierarchy of EvaluatedVariantSets. "});
        this.addAnnotation((ENamedElement)this.getEvaluatedVariantSet_ApprovalStatus(), source, new String[]{"documentation", "Defines the approval status of a predefined variant. Two values are predefined: \"APPROVED\" and \"REJECTED\":\r\n\r\n* Approved variants are known to work.\r\n* Rejected variants are known NOT to work.\r\n\r\nFurther values can be approved on a per-company basis; within AUTOSAR only \"APPROVED\" and \"REJECTED\" should be recognized."});
        this.addAnnotation((ENamedElement)this.getEvaluatedVariantSet_EvaluatedElements(), source, new String[]{"documentation", "This represents a particular element which is evaluated in context of the EvaluatedVariants. The approvalStatus applies to this element (and all of its descendants). In other words, the referenced elements are those that were considered when the predefined variant was evaluated."});
        this.addAnnotation((ENamedElement)this.getEvaluatedVariantSet_EvaluatedVariants(), source, new String[]{"documentation", "This metaclass represents one particular variant which was evaluated. LowerMultiplicity is set to 0 to support a stepwise approach."});
        this.addAnnotation((ENamedElement)this.predefinedVariantEClass, source, new String[]{"documentation", "This specifies one predefined variant. It is characterized by the union of all system constant values and post-build variant criterion values aggregated within all referenced system constant value sets and post build variant criterion value sets plus the value sets of the included variants."});
        this.addAnnotation((ENamedElement)this.getPredefinedVariant_IncludedVariants(), source, new String[]{"documentation", "The associated variants are considered part of this PredefinedVariant. This means the settings of the included variants are included in the settings of the referencing PredefinedVariant. Nevertheless the included variants might be included in several predefined variants."});
        this.addAnnotation((ENamedElement)this.getPredefinedVariant_PostBuildVariantCriterionValueSets(), source, new String[]{"documentation", "This is the postBuildVariantCriterionValueSet contributing to the predefinded variant."});
        this.addAnnotation((ENamedElement)this.getPredefinedVariant_SwSystemconstantValueSets(), source, new String[]{"documentation", "This ist the set of Systemconstant Values contributing to the predefined variant."});
        this.addAnnotation((ENamedElement)this.postBuildVariantCriterionValueSetEClass, source, new String[]{"documentation", "This meta-class represents the ability to denote one set of postBuildVariantCriterionValues."});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCriterionValueSet_PostBuildVariantCriterionValues(), source, new String[]{"documentation", "This is is one particular postbuild variant criterion/value pair being part of the PostBuildVariantSet."});
        this.addAnnotation((ENamedElement)this.postBuildVariantCriterionValueEClass, source, new String[]{"documentation", "This class specifies a the value which must be assigned to a particular variant criterion in order to bind the variation point. If multiple criterion/value pairs are specified, they all must must match to bind the variation point."});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCriterionValue_VariantCriterion(), source, new String[]{"documentation", "This association selects the variant criterion whose value is specified."});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCriterionValue_Value(), source, new String[]{"documentation", "This is the particular value of the post-build variant criterion."});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCriterionValue_Annotations(), source, new String[]{"documentation", "This provides the ability to add information why the value is set like it is."});
        this.addAnnotation((ENamedElement)this.postBuildVariantCriterionEClass, source, new String[]{"documentation", "This class specifies one particular PostBuildVariantSelector."});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCriterion_CompuMethod(), source, new String[]{"documentation", "The compuMethod specifies the possible values for the variant criterion serving as an enumerator."});
        this.addAnnotation((ENamedElement)this.postBuildVariantConditionEClass, source, new String[]{"documentation", "This class specifies the value which must be assigned to a particular variant criterion in order to bind the variation point. If multiple criterion/value pairs are specified, they all must must match to bind the variation point.\r\n\r\nIn other words binding can be represented by\r\n\r\n  (criterion1 == value1) && (condtion2 == value2) ..."});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCondition_MatchingCriterion(), source, new String[]{"documentation", "This is the criterion which needs to match the value in order to make the PostbuildVariantCondition to be true."});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCondition_Value(), source, new String[]{"documentation", "This is the particular value of the post-build variant criterion."});
        this.addAnnotation((ENamedElement)this.variationPointEClass, source, new String[]{"documentation", "This meta-class represents the ability to express a \"structural variation point\". The container of the variation point is part of the selected variant if swSyscond evaluates to true and each postBuildVariantCriterion is fulfilled."});
        this.addAnnotation((ENamedElement)this.getVariationPoint_ShortLabel(), source, new String[]{"documentation", "This provides a name to the particular variation point to support the RTE generator. It is necessary for supporting splitable aggregations and if binding time is later than CodeGenerationTime, as well as some RTE conditions. It needs to be unique with in the enclosing Identifiables with the same ShortName.\r\n"});
        this.addAnnotation((ENamedElement)this.getVariationPoint_Desc(), source, new String[]{"documentation", "This allows to describe shortly the purpose of the variation point."});
        this.addAnnotation((ENamedElement)this.getVariationPoint_BlueprintCondition(), source, new String[]{"documentation", "This represents a description that documents how the variation point shall be resolved when deriving objects from the blueprint.\r\n\r\nNote that variationPoints are not allowed within a blueprintCondition."});
        this.addAnnotation((ENamedElement)this.getVariationPoint_SwSyscond(), source, new String[]{"documentation", "This condition acts as Binding Function for the VariationPoint.\r\nNote that the mulitplicity is 0..1 in order to support pure postBuild variants."});
        this.addAnnotation((ENamedElement)this.getVariationPoint_PostBuildVariantConditions(), source, new String[]{"documentation", "This is the set of post build variant conditions which all  shall be fulfilled in order to (postbuild) bind the variation point."});
        this.addAnnotation((ENamedElement)this.getVariationPoint_Sdg(), source, new String[]{"documentation", "An optional special data group is attached to every variation point. These data can be used by external software systems to attach application specific data. For example, a variant management system might add an identifier, an URL or a specific classifier."});
    }

    protected void createTaggedValuesOfGeneralization_AttributeValueVariationPointAnnotations() {
        String source = "TaggedValuesOfGeneralization_AttributeValueVariationPoint";
        this.addAnnotation((ENamedElement)this.abstractNumericalVariationPointEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "AbstractNumericalVariationPoint->AttributeValueVariationPoint", "GUID", "BC941055-5479-42d2-9397-C6F97148229F", "Id", "545944894", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.positiveIntegerValueVariationPointEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "PositiveIntegerValueVariationPoint->AttributeValueVariationPoint", "GUID", "85DD1975-6BAA-4f6b-A731-A781DA65BD51", "Id", "-1819748148", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.integerValueVariationPointEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "IntegerValueVariationPoint->AttributeValueVariationPoint", "GUID", "8538E20D-910E-44c9-83BB-15406793EEAD", "Id", "-2142133399", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.booleanValueVariationPointEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BooleanValueVariationPoint->AttributeValueVariationPoint", "GUID", "46ED434B-D0BF-4bec-853F-DAD5EF924653", "Id", "-804734017", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.floatValueVariationPointEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "FloatValueVariationPoint->AttributeValueVariationPoint", "GUID", "C372CDE5-E2B8-4bb0-A167-7CA7B867ECA6", "Id", "1953107830", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.unlimitedIntegerValueVariationPointEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "UnlimitedIntegerValueVariationPoint->AttributeValueVariationPoint", "GUID", "5E7A0DC4-6489-46a6-A388-B570B8B92D9E", "Id", "416637917", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_SwSystemconstDependentFormulaAnnotations() {
        String source = "TaggedValuesOfGeneralization_SwSystemconstDependentFormula";
        this.addAnnotation((ENamedElement)this.attributeValueVariationPointEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "AttributeValueVariationPoint->SwSystemconstDependentFormula", "GUID", "825F6A7A-92CA-45e7-BF72-E072D7BE76C5", "Id", "-281326800", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.conditionByFormulaEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ConditionByFormula->SwSystemconstDependentFormula", "GUID", "4DFBE851-785B-4fd2-876E-AE02595081E4", "Id", "869802511", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_FormulaExpressionAnnotations() {
        String source = "TaggedValuesOfGeneralization_FormulaExpression";
        this.addAnnotation((ENamedElement)this.swSystemconstDependentFormulaEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwSystemconstDependentFormula->FormulaExpression", "GUID", "84DE4AE5-E051-4606-96F9-FBC7B76917E1", "Id", "-86238459", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_AbstractNumericalVariationPointAnnotations() {
        String source = "TaggedValuesOfGeneralization_AbstractNumericalVariationPoint";
        this.addAnnotation((ENamedElement)this.numericalValueVariationPointEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "NumericalValueVariationPoint->AbstractNumericalVariationPoint", "GUID", "BB2AEA68-07A5-4716-A3B9-EBCE7EDB6480", "Id", "1476154933", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.bindingTimeEnumEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.getSwSystemconstValue_Value(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCriterionValue_Value(), source, new String[]{"Stereotype", ""});
        this.addAnnotation((ENamedElement)this.getPostBuildVariantCondition_Value(), source, new String[]{"Stereotype", ""});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.swSystemconstantValueSetEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwSystemconstantValueSet->ARElement", "GUID", "93B8DCEB-0222-410f-91C7-617068851444", "Id", "-1914788413", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.evaluatedVariantSetEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "EvaluatedVariantSet->ARElement", "GUID", "0E3748E6-E5F7-4211-97D8-A3C6BB44AC9E", "Id", "-678813182", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.predefinedVariantEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "PredefinedVariant->ARElement", "GUID", "F6AD4579-4BA8-47dc-A343-02B594754023", "Id", "1648697117", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.postBuildVariantCriterionValueSetEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "PostBuildVariantCriterionValueSet->ARElement", "GUID", "398BAD0F-9251-4c36-9A17-93DF857CBFB0", "Id", "-551933566", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.postBuildVariantCriterionEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "PostBuildVariantCriterion->ARElement", "GUID", "BE571FDC-B8E4-4077-9826-FF6421D67A93", "Id", "-277109771", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.swSystemconstValueEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.postBuildVariantCriterionValueEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.postBuildVariantConditionEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.variationPointEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }
}

