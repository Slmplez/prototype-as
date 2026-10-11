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
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.ecucparameterdef.util;

import autosar3x.ecucparameterdef.BooleanParamDef;
import autosar3x.ecucparameterdef.ChoiceContainerDef;
import autosar3x.ecucparameterdef.ChoiceReferenceParamDef;
import autosar3x.ecucparameterdef.CommonConfigurationAttributes;
import autosar3x.ecucparameterdef.ConfigParameter;
import autosar3x.ecucparameterdef.ConfigReference;
import autosar3x.ecucparameterdef.ConfigurationClassAffection;
import autosar3x.ecucparameterdef.ContainerDef;
import autosar3x.ecucparameterdef.DerivedBooleanParamDef;
import autosar3x.ecucparameterdef.DerivedEnumerationParamDef;
import autosar3x.ecucparameterdef.DerivedFloatParamDef;
import autosar3x.ecucparameterdef.DerivedIntegerParamDef;
import autosar3x.ecucparameterdef.DerivedParamType;
import autosar3x.ecucparameterdef.DerivedStringParamDef;
import autosar3x.ecucparameterdef.EcuParameterDefinition;
import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.ecucparameterdef.EnumerationLiteralDef;
import autosar3x.ecucparameterdef.EnumerationParamDef;
import autosar3x.ecucparameterdef.FloatParamDef;
import autosar3x.ecucparameterdef.ForeignReferenceParamDef;
import autosar3x.ecucparameterdef.FunctionNameDef;
import autosar3x.ecucparameterdef.ImplementationConfigClass;
import autosar3x.ecucparameterdef.InstanceReferenceParamDef;
import autosar3x.ecucparameterdef.IntegerParamDef;
import autosar3x.ecucparameterdef.LinkerSymbolDef;
import autosar3x.ecucparameterdef.ModuleDef;
import autosar3x.ecucparameterdef.ParamConfContainerDef;
import autosar3x.ecucparameterdef.ParamConfMultiplicity;
import autosar3x.ecucparameterdef.ReferenceParamDef;
import autosar3x.ecucparameterdef.StringParamDef;
import autosar3x.ecucparameterdef.SymbolicNameReferenceParamDef;
import autosar3x.ecucparameterdef.util.EcucparameterdefSwitch;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
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
        public Adapter caseBooleanParamDef(BooleanParamDef object) {
            return EcucparameterdefAdapterFactory.this.createBooleanParamDefAdapter();
        }

        @Override
        public Adapter caseChoiceContainerDef(ChoiceContainerDef object) {
            return EcucparameterdefAdapterFactory.this.createChoiceContainerDefAdapter();
        }

        @Override
        public Adapter caseContainerDef(ContainerDef object) {
            return EcucparameterdefAdapterFactory.this.createContainerDefAdapter();
        }

        @Override
        public Adapter caseParamConfMultiplicity(ParamConfMultiplicity object) {
            return EcucparameterdefAdapterFactory.this.createParamConfMultiplicityAdapter();
        }

        @Override
        public Adapter caseParamConfContainerDef(ParamConfContainerDef object) {
            return EcucparameterdefAdapterFactory.this.createParamConfContainerDefAdapter();
        }

        @Override
        public Adapter caseConfigReference(ConfigReference object) {
            return EcucparameterdefAdapterFactory.this.createConfigReferenceAdapter();
        }

        @Override
        public Adapter caseCommonConfigurationAttributes(CommonConfigurationAttributes object) {
            return EcucparameterdefAdapterFactory.this.createCommonConfigurationAttributesAdapter();
        }

        @Override
        public Adapter caseConfigurationClassAffection(ConfigurationClassAffection object) {
            return EcucparameterdefAdapterFactory.this.createConfigurationClassAffectionAdapter();
        }

        @Override
        public Adapter caseImplementationConfigClass(ImplementationConfigClass object) {
            return EcucparameterdefAdapterFactory.this.createImplementationConfigClassAdapter();
        }

        @Override
        public Adapter caseChoiceReferenceParamDef(ChoiceReferenceParamDef object) {
            return EcucparameterdefAdapterFactory.this.createChoiceReferenceParamDefAdapter();
        }

        @Override
        public Adapter caseDerivedBooleanParamDef(DerivedBooleanParamDef object) {
            return EcucparameterdefAdapterFactory.this.createDerivedBooleanParamDefAdapter();
        }

        @Override
        public Adapter caseDerivedParamType(DerivedParamType object) {
            return EcucparameterdefAdapterFactory.this.createDerivedParamTypeAdapter();
        }

        @Override
        public Adapter caseDerivedEnumerationParamDef(DerivedEnumerationParamDef object) {
            return EcucparameterdefAdapterFactory.this.createDerivedEnumerationParamDefAdapter();
        }

        @Override
        public Adapter caseEnumerationParamDef(EnumerationParamDef object) {
            return EcucparameterdefAdapterFactory.this.createEnumerationParamDefAdapter();
        }

        @Override
        public Adapter caseEnumerationLiteralDef(EnumerationLiteralDef object) {
            return EcucparameterdefAdapterFactory.this.createEnumerationLiteralDefAdapter();
        }

        @Override
        public Adapter caseDerivedFloatParamDef(DerivedFloatParamDef object) {
            return EcucparameterdefAdapterFactory.this.createDerivedFloatParamDefAdapter();
        }

        @Override
        public Adapter caseFloatParamDef(FloatParamDef object) {
            return EcucparameterdefAdapterFactory.this.createFloatParamDefAdapter();
        }

        @Override
        public Adapter caseDerivedIntegerParamDef(DerivedIntegerParamDef object) {
            return EcucparameterdefAdapterFactory.this.createDerivedIntegerParamDefAdapter();
        }

        @Override
        public Adapter caseIntegerParamDef(IntegerParamDef object) {
            return EcucparameterdefAdapterFactory.this.createIntegerParamDefAdapter();
        }

        @Override
        public Adapter caseDerivedStringParamDef(DerivedStringParamDef object) {
            return EcucparameterdefAdapterFactory.this.createDerivedStringParamDefAdapter();
        }

        @Override
        public Adapter caseStringParamDef(StringParamDef object) {
            return EcucparameterdefAdapterFactory.this.createStringParamDefAdapter();
        }

        @Override
        public Adapter caseEcuParameterDefinition(EcuParameterDefinition object) {
            return EcucparameterdefAdapterFactory.this.createEcuParameterDefinitionAdapter();
        }

        @Override
        public Adapter caseModuleDef(ModuleDef object) {
            return EcucparameterdefAdapterFactory.this.createModuleDefAdapter();
        }

        @Override
        public Adapter caseForeignReferenceParamDef(ForeignReferenceParamDef object) {
            return EcucparameterdefAdapterFactory.this.createForeignReferenceParamDefAdapter();
        }

        @Override
        public Adapter caseFunctionNameDef(FunctionNameDef object) {
            return EcucparameterdefAdapterFactory.this.createFunctionNameDefAdapter();
        }

        @Override
        public Adapter caseLinkerSymbolDef(LinkerSymbolDef object) {
            return EcucparameterdefAdapterFactory.this.createLinkerSymbolDefAdapter();
        }

        @Override
        public Adapter caseInstanceReferenceParamDef(InstanceReferenceParamDef object) {
            return EcucparameterdefAdapterFactory.this.createInstanceReferenceParamDefAdapter();
        }

        @Override
        public Adapter caseReferenceParamDef(ReferenceParamDef object) {
            return EcucparameterdefAdapterFactory.this.createReferenceParamDefAdapter();
        }

        @Override
        public Adapter caseSymbolicNameReferenceParamDef(SymbolicNameReferenceParamDef object) {
            return EcucparameterdefAdapterFactory.this.createSymbolicNameReferenceParamDefAdapter();
        }

        @Override
        public Adapter caseConfigParameter(ConfigParameter object) {
            return EcucparameterdefAdapterFactory.this.createConfigParameterAdapter();
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
        public Adapter caseGEnumerationParamDef(GEnumerationParamDef object) {
            return EcucparameterdefAdapterFactory.this.createGEnumerationParamDefAdapter();
        }

        @Override
        public Adapter caseGEnumerationLiteralDef(GEnumerationLiteralDef object) {
            return EcucparameterdefAdapterFactory.this.createGEnumerationLiteralDefAdapter();
        }

        @Override
        public Adapter caseGFloatParamDef(GFloatParamDef object) {
            return EcucparameterdefAdapterFactory.this.createGFloatParamDefAdapter();
        }

        @Override
        public Adapter caseGIntegerParamDef(GIntegerParamDef object) {
            return EcucparameterdefAdapterFactory.this.createGIntegerParamDefAdapter();
        }

        @Override
        public Adapter caseGAbstractStringParamDef(GAbstractStringParamDef object) {
            return EcucparameterdefAdapterFactory.this.createGAbstractStringParamDefAdapter();
        }

        @Override
        public Adapter caseGStringParamDef(GStringParamDef object) {
            return EcucparameterdefAdapterFactory.this.createGStringParamDefAdapter();
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
        public Adapter caseGModuleDef(GModuleDef object) {
            return EcucparameterdefAdapterFactory.this.createGModuleDefAdapter();
        }

        @Override
        public Adapter caseGForeignReferenceDef(GForeignReferenceDef object) {
            return EcucparameterdefAdapterFactory.this.createGForeignReferenceDefAdapter();
        }

        @Override
        public Adapter caseGLinkerSymbolDef(GLinkerSymbolDef object) {
            return EcucparameterdefAdapterFactory.this.createGLinkerSymbolDefAdapter();
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
        public Adapter caseGReferenceDef(GReferenceDef object) {
            return EcucparameterdefAdapterFactory.this.createGReferenceDefAdapter();
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

    public Adapter createBooleanParamDefAdapter() {
        return null;
    }

    public Adapter createChoiceContainerDefAdapter() {
        return null;
    }

    public Adapter createContainerDefAdapter() {
        return null;
    }

    public Adapter createParamConfMultiplicityAdapter() {
        return null;
    }

    public Adapter createParamConfContainerDefAdapter() {
        return null;
    }

    public Adapter createConfigReferenceAdapter() {
        return null;
    }

    public Adapter createCommonConfigurationAttributesAdapter() {
        return null;
    }

    public Adapter createConfigurationClassAffectionAdapter() {
        return null;
    }

    public Adapter createImplementationConfigClassAdapter() {
        return null;
    }

    public Adapter createChoiceReferenceParamDefAdapter() {
        return null;
    }

    public Adapter createDerivedBooleanParamDefAdapter() {
        return null;
    }

    public Adapter createDerivedParamTypeAdapter() {
        return null;
    }

    public Adapter createDerivedEnumerationParamDefAdapter() {
        return null;
    }

    public Adapter createEnumerationParamDefAdapter() {
        return null;
    }

    public Adapter createEnumerationLiteralDefAdapter() {
        return null;
    }

    public Adapter createDerivedFloatParamDefAdapter() {
        return null;
    }

    public Adapter createFloatParamDefAdapter() {
        return null;
    }

    public Adapter createDerivedIntegerParamDefAdapter() {
        return null;
    }

    public Adapter createIntegerParamDefAdapter() {
        return null;
    }

    public Adapter createDerivedStringParamDefAdapter() {
        return null;
    }

    public Adapter createStringParamDefAdapter() {
        return null;
    }

    public Adapter createEcuParameterDefinitionAdapter() {
        return null;
    }

    public Adapter createModuleDefAdapter() {
        return null;
    }

    public Adapter createForeignReferenceParamDefAdapter() {
        return null;
    }

    public Adapter createFunctionNameDefAdapter() {
        return null;
    }

    public Adapter createLinkerSymbolDefAdapter() {
        return null;
    }

    public Adapter createInstanceReferenceParamDefAdapter() {
        return null;
    }

    public Adapter createReferenceParamDefAdapter() {
        return null;
    }

    public Adapter createSymbolicNameReferenceParamDefAdapter() {
        return null;
    }

    public Adapter createConfigParameterAdapter() {
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

    public Adapter createGEnumerationParamDefAdapter() {
        return null;
    }

    public Adapter createGEnumerationLiteralDefAdapter() {
        return null;
    }

    public Adapter createGFloatParamDefAdapter() {
        return null;
    }

    public Adapter createGIntegerParamDefAdapter() {
        return null;
    }

    public Adapter createGAbstractStringParamDefAdapter() {
        return null;
    }

    public Adapter createGStringParamDefAdapter() {
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

    public Adapter createGModuleDefAdapter() {
        return null;
    }

    public Adapter createGForeignReferenceDefAdapter() {
        return null;
    }

    public Adapter createGLinkerSymbolDefAdapter() {
        return null;
    }

    public Adapter createGFunctionNameDefAdapter() {
        return null;
    }

    public Adapter createGInstanceReferenceDefAdapter() {
        return null;
    }

    public Adapter createGReferenceDefAdapter() {
        return null;
    }

    public Adapter createGSymbolicNameReferenceDefAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

