/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GAbstractStringParamDef
 *  gautosar.gecucparameterdef.GBooleanParamDef
 *  gautosar.gecucparameterdef.GChoiceContainerDef
 *  gautosar.gecucparameterdef.GChoiceReferenceDef
 *  gautosar.gecucparameterdef.GCommonConfigurationAttributes
 *  gautosar.gecucparameterdef.GConfigParameter
 *  gautosar.gecucparameterdef.GConfigReference
 *  gautosar.gecucparameterdef.GContainerDef
 *  gautosar.gecucparameterdef.GEnumerationLiteralDef
 *  gautosar.gecucparameterdef.GEnumerationParamDef
 *  gautosar.gecucparameterdef.GFloatParamDef
 *  gautosar.gecucparameterdef.GForeignReferenceDef
 *  gautosar.gecucparameterdef.GFunctionNameDef
 *  gautosar.gecucparameterdef.GInstanceReferenceDef
 *  gautosar.gecucparameterdef.GIntegerParamDef
 *  gautosar.gecucparameterdef.GLinkerSymbolDef
 *  gautosar.gecucparameterdef.GModuleDef
 *  gautosar.gecucparameterdef.GParamConfContainerDef
 *  gautosar.gecucparameterdef.GParamConfMultiplicity
 *  gautosar.gecucparameterdef.GReferenceDef
 *  gautosar.gecucparameterdef.GStringParamDef
 *  gautosar.gecucparameterdef.GSymbolicNameReferenceDef
 *  gautosar.ggenericstructure.gformulalanguage.GFormulaExpression
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.ecucparameterdef.util;

import autosar40.ecucparameterdef.EcucAbstractReferenceDef;
import autosar40.ecucparameterdef.EcucAbstractStringParamDef;
import autosar40.ecucparameterdef.EcucAbstractStringParamDefContent;
import autosar40.ecucparameterdef.EcucAddInfoParamDef;
import autosar40.ecucparameterdef.EcucBooleanParamDef;
import autosar40.ecucparameterdef.EcucChoiceContainerDef;
import autosar40.ecucparameterdef.EcucChoiceReferenceDef;
import autosar40.ecucparameterdef.EcucCommonAttributes;
import autosar40.ecucparameterdef.EcucConditionFormula;
import autosar40.ecucparameterdef.EcucConditionSpecification;
import autosar40.ecucparameterdef.EcucConfigurationClassAffection;
import autosar40.ecucparameterdef.EcucContainerDef;
import autosar40.ecucparameterdef.EcucDefinitionCollection;
import autosar40.ecucparameterdef.EcucDefinitionElement;
import autosar40.ecucparameterdef.EcucDerivationSpecification;
import autosar40.ecucparameterdef.EcucEnumerationLiteralDef;
import autosar40.ecucparameterdef.EcucEnumerationParamDef;
import autosar40.ecucparameterdef.EcucFloatParamDef;
import autosar40.ecucparameterdef.EcucForeignReferenceDef;
import autosar40.ecucparameterdef.EcucFunctionNameDef;
import autosar40.ecucparameterdef.EcucFunctionNameDefConditional;
import autosar40.ecucparameterdef.EcucFunctionNameDefContent;
import autosar40.ecucparameterdef.EcucImplementationConfigurationClass;
import autosar40.ecucparameterdef.EcucInstanceReferenceDef;
import autosar40.ecucparameterdef.EcucIntegerParamDef;
import autosar40.ecucparameterdef.EcucLinkerSymbolDef;
import autosar40.ecucparameterdef.EcucLinkerSymbolDefConditional;
import autosar40.ecucparameterdef.EcucLinkerSymbolDefContent;
import autosar40.ecucparameterdef.EcucModuleDef;
import autosar40.ecucparameterdef.EcucMultilineStringParamDef;
import autosar40.ecucparameterdef.EcucMultilineStringParamDefConditional;
import autosar40.ecucparameterdef.EcucMultilineStringParamDefContent;
import autosar40.ecucparameterdef.EcucParamConfContainerDef;
import autosar40.ecucparameterdef.EcucParameterDef;
import autosar40.ecucparameterdef.EcucParameterDerivationFormula;
import autosar40.ecucparameterdef.EcucQuery;
import autosar40.ecucparameterdef.EcucQueryExpression;
import autosar40.ecucparameterdef.EcucReferenceDef;
import autosar40.ecucparameterdef.EcucStringParamDef;
import autosar40.ecucparameterdef.EcucStringParamDefConditional;
import autosar40.ecucparameterdef.EcucStringParamDefContent;
import autosar40.ecucparameterdef.EcucSymbolicNameReferenceDef;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.util.EcucparameterdefSwitch;
import autosar40.genericstructure.formulalanguage.FormulaExpression;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import gautosar.gecucparameterdef.GAbstractStringParamDef;
import gautosar.gecucparameterdef.GBooleanParamDef;
import gautosar.gecucparameterdef.GChoiceContainerDef;
import gautosar.gecucparameterdef.GChoiceReferenceDef;
import gautosar.gecucparameterdef.GCommonConfigurationAttributes;
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.gecucparameterdef.GConfigReference;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.gecucparameterdef.GEnumerationLiteralDef;
import gautosar.gecucparameterdef.GEnumerationParamDef;
import gautosar.gecucparameterdef.GFloatParamDef;
import gautosar.gecucparameterdef.GForeignReferenceDef;
import gautosar.gecucparameterdef.GFunctionNameDef;
import gautosar.gecucparameterdef.GInstanceReferenceDef;
import gautosar.gecucparameterdef.GIntegerParamDef;
import gautosar.gecucparameterdef.GLinkerSymbolDef;
import gautosar.gecucparameterdef.GModuleDef;
import gautosar.gecucparameterdef.GParamConfContainerDef;
import gautosar.gecucparameterdef.GParamConfMultiplicity;
import gautosar.gecucparameterdef.GReferenceDef;
import gautosar.gecucparameterdef.GStringParamDef;
import gautosar.gecucparameterdef.GSymbolicNameReferenceDef;
import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class EcucparameterdefAdapterFactory
extends AdapterFactoryImpl {
    protected static EcucparameterdefPackage modelPackage;
    protected EcucparameterdefSwitch<Adapter> modelSwitch = new EcucparameterdefSwitch<Adapter>(){

        @Override
        public Adapter caseEcucAbstractStringParamDef(EcucAbstractStringParamDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucAbstractStringParamDefAdapter();
        }

        @Override
        public Adapter caseEcucParameterDef(EcucParameterDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucParameterDefAdapter();
        }

        @Override
        public Adapter caseEcucCommonAttributes(EcucCommonAttributes object) {
            return EcucparameterdefAdapterFactory.this.createEcucCommonAttributesAdapter();
        }

        @Override
        public Adapter caseEcucDefinitionElement(EcucDefinitionElement object) {
            return EcucparameterdefAdapterFactory.this.createEcucDefinitionElementAdapter();
        }

        @Override
        public Adapter caseEcucConditionSpecification(EcucConditionSpecification object) {
            return EcucparameterdefAdapterFactory.this.createEcucConditionSpecificationAdapter();
        }

        @Override
        public Adapter caseEcucQuery(EcucQuery object) {
            return EcucparameterdefAdapterFactory.this.createEcucQueryAdapter();
        }

        @Override
        public Adapter caseEcucQueryExpression(EcucQueryExpression object) {
            return EcucparameterdefAdapterFactory.this.createEcucQueryExpressionAdapter();
        }

        @Override
        public Adapter caseEcucConditionFormula(EcucConditionFormula object) {
            return EcucparameterdefAdapterFactory.this.createEcucConditionFormulaAdapter();
        }

        @Override
        public Adapter caseEcucImplementationConfigurationClass(EcucImplementationConfigurationClass object) {
            return EcucparameterdefAdapterFactory.this.createEcucImplementationConfigurationClassAdapter();
        }

        @Override
        public Adapter caseEcucConfigurationClassAffection(EcucConfigurationClassAffection object) {
            return EcucparameterdefAdapterFactory.this.createEcucConfigurationClassAffectionAdapter();
        }

        @Override
        public Adapter caseEcucDerivationSpecification(EcucDerivationSpecification object) {
            return EcucparameterdefAdapterFactory.this.createEcucDerivationSpecificationAdapter();
        }

        @Override
        public Adapter caseEcucParameterDerivationFormula(EcucParameterDerivationFormula object) {
            return EcucparameterdefAdapterFactory.this.createEcucParameterDerivationFormulaAdapter();
        }

        @Override
        public Adapter caseEcucAddInfoParamDef(EcucAddInfoParamDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucAddInfoParamDefAdapter();
        }

        @Override
        public Adapter caseEcucBooleanParamDef(EcucBooleanParamDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucBooleanParamDefAdapter();
        }

        @Override
        public Adapter caseEcucChoiceContainerDef(EcucChoiceContainerDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucChoiceContainerDefAdapter();
        }

        @Override
        public Adapter caseEcucContainerDef(EcucContainerDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucContainerDefAdapter();
        }

        @Override
        public Adapter caseEcucParamConfContainerDef(EcucParamConfContainerDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucParamConfContainerDefAdapter();
        }

        @Override
        public Adapter caseEcucChoiceReferenceDef(EcucChoiceReferenceDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucChoiceReferenceDefAdapter();
        }

        @Override
        public Adapter caseEcucDefinitionCollection(EcucDefinitionCollection object) {
            return EcucparameterdefAdapterFactory.this.createEcucDefinitionCollectionAdapter();
        }

        @Override
        public Adapter caseEcucModuleDef(EcucModuleDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucModuleDefAdapter();
        }

        @Override
        public Adapter caseEcucEnumerationLiteralDef(EcucEnumerationLiteralDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucEnumerationLiteralDefAdapter();
        }

        @Override
        public Adapter caseEcucEnumerationParamDef(EcucEnumerationParamDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucEnumerationParamDefAdapter();
        }

        @Override
        public Adapter caseEcucFloatParamDef(EcucFloatParamDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucFloatParamDefAdapter();
        }

        @Override
        public Adapter caseEcucForeignReferenceDef(EcucForeignReferenceDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucForeignReferenceDefAdapter();
        }

        @Override
        public Adapter caseEcucFunctionNameDef(EcucFunctionNameDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucFunctionNameDefAdapter();
        }

        @Override
        public Adapter caseEcucFunctionNameDefConditional(EcucFunctionNameDefConditional object) {
            return EcucparameterdefAdapterFactory.this.createEcucFunctionNameDefConditionalAdapter();
        }

        @Override
        public Adapter caseEcucFunctionNameDefContent(EcucFunctionNameDefContent object) {
            return EcucparameterdefAdapterFactory.this.createEcucFunctionNameDefContentAdapter();
        }

        @Override
        public Adapter caseEcucAbstractStringParamDefContent(EcucAbstractStringParamDefContent object) {
            return EcucparameterdefAdapterFactory.this.createEcucAbstractStringParamDefContentAdapter();
        }

        @Override
        public Adapter caseEcucInstanceReferenceDef(EcucInstanceReferenceDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucInstanceReferenceDefAdapter();
        }

        @Override
        public Adapter caseEcucIntegerParamDef(EcucIntegerParamDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucIntegerParamDefAdapter();
        }

        @Override
        public Adapter caseEcucLinkerSymbolDef(EcucLinkerSymbolDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucLinkerSymbolDefAdapter();
        }

        @Override
        public Adapter caseEcucLinkerSymbolDefConditional(EcucLinkerSymbolDefConditional object) {
            return EcucparameterdefAdapterFactory.this.createEcucLinkerSymbolDefConditionalAdapter();
        }

        @Override
        public Adapter caseEcucLinkerSymbolDefContent(EcucLinkerSymbolDefContent object) {
            return EcucparameterdefAdapterFactory.this.createEcucLinkerSymbolDefContentAdapter();
        }

        @Override
        public Adapter caseEcucMultilineStringParamDef(EcucMultilineStringParamDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucMultilineStringParamDefAdapter();
        }

        @Override
        public Adapter caseEcucMultilineStringParamDefConditional(EcucMultilineStringParamDefConditional object) {
            return EcucparameterdefAdapterFactory.this.createEcucMultilineStringParamDefConditionalAdapter();
        }

        @Override
        public Adapter caseEcucMultilineStringParamDefContent(EcucMultilineStringParamDefContent object) {
            return EcucparameterdefAdapterFactory.this.createEcucMultilineStringParamDefContentAdapter();
        }

        @Override
        public Adapter caseEcucReferenceDef(EcucReferenceDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucReferenceDefAdapter();
        }

        @Override
        public Adapter caseEcucStringParamDef(EcucStringParamDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucStringParamDefAdapter();
        }

        @Override
        public Adapter caseEcucStringParamDefConditional(EcucStringParamDefConditional object) {
            return EcucparameterdefAdapterFactory.this.createEcucStringParamDefConditionalAdapter();
        }

        @Override
        public Adapter caseEcucStringParamDefContent(EcucStringParamDefContent object) {
            return EcucparameterdefAdapterFactory.this.createEcucStringParamDefContentAdapter();
        }

        @Override
        public Adapter caseEcucSymbolicNameReferenceDef(EcucSymbolicNameReferenceDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucSymbolicNameReferenceDefAdapter();
        }

        @Override
        public Adapter caseEcucAbstractReferenceDef(EcucAbstractReferenceDef object) {
            return EcucparameterdefAdapterFactory.this.createEcucAbstractReferenceDefAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return EcucparameterdefAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return EcucparameterdefAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return EcucparameterdefAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return EcucparameterdefAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return EcucparameterdefAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return EcucparameterdefAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return EcucparameterdefAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGParamConfMultiplicity(GParamConfMultiplicity object) {
            return EcucparameterdefAdapterFactory.this.createGParamConfMultiplicityAdapter();
        }

        @Override
        public Adapter caseGCommonConfigurationAttributes(GCommonConfigurationAttributes object) {
            return EcucparameterdefAdapterFactory.this.createGCommonConfigurationAttributesAdapter();
        }

        @Override
        public Adapter caseGConfigParameter(GConfigParameter object) {
            return EcucparameterdefAdapterFactory.this.createGConfigParameterAdapter();
        }

        @Override
        public Adapter caseGAbstractStringParamDef(GAbstractStringParamDef object) {
            return EcucparameterdefAdapterFactory.this.createGAbstractStringParamDefAdapter();
        }

        @Override
        public Adapter caseGFormulaExpression(GFormulaExpression object) {
            return EcucparameterdefAdapterFactory.this.createGFormulaExpressionAdapter();
        }

        @Override
        public Adapter caseFormulaExpression(FormulaExpression object) {
            return EcucparameterdefAdapterFactory.this.createFormulaExpressionAdapter();
        }

        @Override
        public Adapter caseGBooleanParamDef(GBooleanParamDef object) {
            return EcucparameterdefAdapterFactory.this.createGBooleanParamDefAdapter();
        }

        @Override
        public Adapter caseGContainerDef(GContainerDef object) {
            return EcucparameterdefAdapterFactory.this.createGContainerDefAdapter();
        }

        @Override
        public Adapter caseGChoiceContainerDef(GChoiceContainerDef object) {
            return EcucparameterdefAdapterFactory.this.createGChoiceContainerDefAdapter();
        }

        @Override
        public Adapter caseGParamConfContainerDef(GParamConfContainerDef object) {
            return EcucparameterdefAdapterFactory.this.createGParamConfContainerDefAdapter();
        }

        @Override
        public Adapter caseGConfigReference(GConfigReference object) {
            return EcucparameterdefAdapterFactory.this.createGConfigReferenceAdapter();
        }

        @Override
        public Adapter caseGChoiceReferenceDef(GChoiceReferenceDef object) {
            return EcucparameterdefAdapterFactory.this.createGChoiceReferenceDefAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return EcucparameterdefAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return EcucparameterdefAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return EcucparameterdefAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return EcucparameterdefAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseAtpBlueprint(AtpBlueprint object) {
            return EcucparameterdefAdapterFactory.this.createAtpBlueprintAdapter();
        }

        @Override
        public Adapter caseAtpBlueprintable(AtpBlueprintable object) {
            return EcucparameterdefAdapterFactory.this.createAtpBlueprintableAdapter();
        }

        @Override
        public Adapter caseGModuleDef(GModuleDef object) {
            return EcucparameterdefAdapterFactory.this.createGModuleDefAdapter();
        }

        @Override
        public Adapter caseGEnumerationLiteralDef(GEnumerationLiteralDef object) {
            return EcucparameterdefAdapterFactory.this.createGEnumerationLiteralDefAdapter();
        }

        @Override
        public Adapter caseGEnumerationParamDef(GEnumerationParamDef object) {
            return EcucparameterdefAdapterFactory.this.createGEnumerationParamDefAdapter();
        }

        @Override
        public Adapter caseGFloatParamDef(GFloatParamDef object) {
            return EcucparameterdefAdapterFactory.this.createGFloatParamDefAdapter();
        }

        @Override
        public Adapter caseGForeignReferenceDef(GForeignReferenceDef object) {
            return EcucparameterdefAdapterFactory.this.createGForeignReferenceDefAdapter();
        }

        @Override
        public Adapter caseGFunctionNameDef(GFunctionNameDef object) {
            return EcucparameterdefAdapterFactory.this.createGFunctionNameDefAdapter();
        }

        @Override
        public Adapter caseGInstanceReferenceDef(GInstanceReferenceDef object) {
            return EcucparameterdefAdapterFactory.this.createGInstanceReferenceDefAdapter();
        }

        @Override
        public Adapter caseGIntegerParamDef(GIntegerParamDef object) {
            return EcucparameterdefAdapterFactory.this.createGIntegerParamDefAdapter();
        }

        @Override
        public Adapter caseGLinkerSymbolDef(GLinkerSymbolDef object) {
            return EcucparameterdefAdapterFactory.this.createGLinkerSymbolDefAdapter();
        }

        @Override
        public Adapter caseGReferenceDef(GReferenceDef object) {
            return EcucparameterdefAdapterFactory.this.createGReferenceDefAdapter();
        }

        @Override
        public Adapter caseGStringParamDef(GStringParamDef object) {
            return EcucparameterdefAdapterFactory.this.createGStringParamDefAdapter();
        }

        @Override
        public Adapter caseGSymbolicNameReferenceDef(GSymbolicNameReferenceDef object) {
            return EcucparameterdefAdapterFactory.this.createGSymbolicNameReferenceDefAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return EcucparameterdefAdapterFactory.this.createEObjectAdapter();
        }
    };

    public EcucparameterdefAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = EcucparameterdefPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createEcucAbstractStringParamDefAdapter() {
        return null;
    }

    public Adapter createEcucParameterDefAdapter() {
        return null;
    }

    public Adapter createEcucCommonAttributesAdapter() {
        return null;
    }

    public Adapter createEcucDefinitionElementAdapter() {
        return null;
    }

    public Adapter createEcucConditionSpecificationAdapter() {
        return null;
    }

    public Adapter createEcucQueryAdapter() {
        return null;
    }

    public Adapter createEcucQueryExpressionAdapter() {
        return null;
    }

    public Adapter createEcucConditionFormulaAdapter() {
        return null;
    }

    public Adapter createEcucImplementationConfigurationClassAdapter() {
        return null;
    }

    public Adapter createEcucConfigurationClassAffectionAdapter() {
        return null;
    }

    public Adapter createEcucDerivationSpecificationAdapter() {
        return null;
    }

    public Adapter createEcucParameterDerivationFormulaAdapter() {
        return null;
    }

    public Adapter createEcucAddInfoParamDefAdapter() {
        return null;
    }

    public Adapter createEcucBooleanParamDefAdapter() {
        return null;
    }

    public Adapter createEcucChoiceContainerDefAdapter() {
        return null;
    }

    public Adapter createEcucContainerDefAdapter() {
        return null;
    }

    public Adapter createEcucParamConfContainerDefAdapter() {
        return null;
    }

    public Adapter createEcucChoiceReferenceDefAdapter() {
        return null;
    }

    public Adapter createEcucDefinitionCollectionAdapter() {
        return null;
    }

    public Adapter createEcucModuleDefAdapter() {
        return null;
    }

    public Adapter createEcucEnumerationLiteralDefAdapter() {
        return null;
    }

    public Adapter createEcucEnumerationParamDefAdapter() {
        return null;
    }

    public Adapter createEcucFloatParamDefAdapter() {
        return null;
    }

    public Adapter createEcucForeignReferenceDefAdapter() {
        return null;
    }

    public Adapter createEcucFunctionNameDefAdapter() {
        return null;
    }

    public Adapter createEcucFunctionNameDefConditionalAdapter() {
        return null;
    }

    public Adapter createEcucFunctionNameDefContentAdapter() {
        return null;
    }

    public Adapter createEcucAbstractStringParamDefContentAdapter() {
        return null;
    }

    public Adapter createEcucInstanceReferenceDefAdapter() {
        return null;
    }

    public Adapter createEcucIntegerParamDefAdapter() {
        return null;
    }

    public Adapter createEcucLinkerSymbolDefAdapter() {
        return null;
    }

    public Adapter createEcucLinkerSymbolDefConditionalAdapter() {
        return null;
    }

    public Adapter createEcucLinkerSymbolDefContentAdapter() {
        return null;
    }

    public Adapter createEcucMultilineStringParamDefAdapter() {
        return null;
    }

    public Adapter createEcucMultilineStringParamDefConditionalAdapter() {
        return null;
    }

    public Adapter createEcucMultilineStringParamDefContentAdapter() {
        return null;
    }

    public Adapter createEcucReferenceDefAdapter() {
        return null;
    }

    public Adapter createEcucStringParamDefAdapter() {
        return null;
    }

    public Adapter createEcucStringParamDefConditionalAdapter() {
        return null;
    }

    public Adapter createEcucStringParamDefContentAdapter() {
        return null;
    }

    public Adapter createEcucSymbolicNameReferenceDefAdapter() {
        return null;
    }

    public Adapter createEcucAbstractReferenceDefAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createReferrableAdapter() {
        return null;
    }

    public Adapter createMultilanguageReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createGParamConfMultiplicityAdapter() {
        return null;
    }

    public Adapter createGCommonConfigurationAttributesAdapter() {
        return null;
    }

    public Adapter createGConfigParameterAdapter() {
        return null;
    }

    public Adapter createGAbstractStringParamDefAdapter() {
        return null;
    }

    public Adapter createGFormulaExpressionAdapter() {
        return null;
    }

    public Adapter createFormulaExpressionAdapter() {
        return null;
    }

    public Adapter createGBooleanParamDefAdapter() {
        return null;
    }

    public Adapter createGContainerDefAdapter() {
        return null;
    }

    public Adapter createGChoiceContainerDefAdapter() {
        return null;
    }

    public Adapter createGParamConfContainerDefAdapter() {
        return null;
    }

    public Adapter createGConfigReferenceAdapter() {
        return null;
    }

    public Adapter createGChoiceReferenceDefAdapter() {
        return null;
    }

    public Adapter createCollectableElementAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createAtpBlueprintAdapter() {
        return null;
    }

    public Adapter createAtpBlueprintableAdapter() {
        return null;
    }

    public Adapter createGModuleDefAdapter() {
        return null;
    }

    public Adapter createGEnumerationLiteralDefAdapter() {
        return null;
    }

    public Adapter createGEnumerationParamDefAdapter() {
        return null;
    }

    public Adapter createGFloatParamDefAdapter() {
        return null;
    }

    public Adapter createGForeignReferenceDefAdapter() {
        return null;
    }

    public Adapter createGFunctionNameDefAdapter() {
        return null;
    }

    public Adapter createGInstanceReferenceDefAdapter() {
        return null;
    }

    public Adapter createGIntegerParamDefAdapter() {
        return null;
    }

    public Adapter createGLinkerSymbolDefAdapter() {
        return null;
    }

    public Adapter createGReferenceDefAdapter() {
        return null;
    }

    public Adapter createGStringParamDefAdapter() {
        return null;
    }

    public Adapter createGSymbolicNameReferenceDefAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

