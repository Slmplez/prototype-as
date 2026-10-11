/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GBooleanValue
 *  gautosar.gecucdescription.GConfigReferenceValue
 *  gautosar.gecucdescription.GContainer
 *  gautosar.gecucdescription.GEnumerationValue
 *  gautosar.gecucdescription.GFloatValue
 *  gautosar.gecucdescription.GFunctionNameValue
 *  gautosar.gecucdescription.GInstanceReferenceValue
 *  gautosar.gecucdescription.GIntegerValue
 *  gautosar.gecucdescription.GLinkerSymbolValue
 *  gautosar.gecucdescription.GModuleConfiguration
 *  gautosar.gecucdescription.GParameterValue
 *  gautosar.gecucdescription.GReferenceValue
 *  gautosar.gecucdescription.GStringValue
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.ecucdescription.util;

import autosar21.ecucdescription.BooleanValue;
import autosar21.ecucdescription.ConfigReferenceValue;
import autosar21.ecucdescription.Container;
import autosar21.ecucdescription.EcuConfiguration;
import autosar21.ecucdescription.EcucElement;
import autosar21.ecucdescription.EcucdescriptionPackage;
import autosar21.ecucdescription.EnumerationValue;
import autosar21.ecucdescription.FloatValue;
import autosar21.ecucdescription.FunctionNameValue;
import autosar21.ecucdescription.InstanceReferenceValue;
import autosar21.ecucdescription.IntegerValue;
import autosar21.ecucdescription.LinkerSymbolValue;
import autosar21.ecucdescription.ModuleConfiguration;
import autosar21.ecucdescription.ParameterValue;
import autosar21.ecucdescription.ReferenceValue;
import autosar21.ecucdescription.StringValue;
import autosar21.ecucdescription.util.EcucdescriptionSwitch;
import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.SplitableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.gecucdescription.GBooleanValue;
import gautosar.gecucdescription.GConfigReferenceValue;
import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GEnumerationValue;
import gautosar.gecucdescription.GFloatValue;
import gautosar.gecucdescription.GFunctionNameValue;
import gautosar.gecucdescription.GInstanceReferenceValue;
import gautosar.gecucdescription.GIntegerValue;
import gautosar.gecucdescription.GLinkerSymbolValue;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucdescription.GParameterValue;
import gautosar.gecucdescription.GReferenceValue;
import gautosar.gecucdescription.GStringValue;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class EcucdescriptionAdapterFactory
extends AdapterFactoryImpl {
    protected static EcucdescriptionPackage modelPackage;
    protected EcucdescriptionSwitch<Adapter> modelSwitch = new EcucdescriptionSwitch<Adapter>(){

        @Override
        public Adapter caseBooleanValue(BooleanValue object) {
            return EcucdescriptionAdapterFactory.this.createBooleanValueAdapter();
        }

        @Override
        public Adapter caseParameterValue(ParameterValue object) {
            return EcucdescriptionAdapterFactory.this.createParameterValueAdapter();
        }

        @Override
        public Adapter caseConfigReferenceValue(ConfigReferenceValue object) {
            return EcucdescriptionAdapterFactory.this.createConfigReferenceValueAdapter();
        }

        @Override
        public Adapter caseContainer(Container object) {
            return EcucdescriptionAdapterFactory.this.createContainerAdapter();
        }

        @Override
        public Adapter caseEcucElement(EcucElement object) {
            return EcucdescriptionAdapterFactory.this.createEcucElementAdapter();
        }

        @Override
        public Adapter caseEcuConfiguration(EcuConfiguration object) {
            return EcucdescriptionAdapterFactory.this.createEcuConfigurationAdapter();
        }

        @Override
        public Adapter caseModuleConfiguration(ModuleConfiguration object) {
            return EcucdescriptionAdapterFactory.this.createModuleConfigurationAdapter();
        }

        @Override
        public Adapter caseEnumerationValue(EnumerationValue object) {
            return EcucdescriptionAdapterFactory.this.createEnumerationValueAdapter();
        }

        @Override
        public Adapter caseFloatValue(FloatValue object) {
            return EcucdescriptionAdapterFactory.this.createFloatValueAdapter();
        }

        @Override
        public Adapter caseFunctionNameValue(FunctionNameValue object) {
            return EcucdescriptionAdapterFactory.this.createFunctionNameValueAdapter();
        }

        @Override
        public Adapter caseLinkerSymbolValue(LinkerSymbolValue object) {
            return EcucdescriptionAdapterFactory.this.createLinkerSymbolValueAdapter();
        }

        @Override
        public Adapter caseStringValue(StringValue object) {
            return EcucdescriptionAdapterFactory.this.createStringValueAdapter();
        }

        @Override
        public Adapter caseInstanceReferenceValue(InstanceReferenceValue object) {
            return EcucdescriptionAdapterFactory.this.createInstanceReferenceValueAdapter();
        }

        @Override
        public Adapter caseIntegerValue(IntegerValue object) {
            return EcucdescriptionAdapterFactory.this.createIntegerValueAdapter();
        }

        @Override
        public Adapter caseReferenceValue(ReferenceValue object) {
            return EcucdescriptionAdapterFactory.this.createReferenceValueAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return EcucdescriptionAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return EcucdescriptionAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGParameterValue(GParameterValue object) {
            return EcucdescriptionAdapterFactory.this.createGParameterValueAdapter();
        }

        @Override
        public Adapter caseGBooleanValue(GBooleanValue object) {
            return EcucdescriptionAdapterFactory.this.createGBooleanValueAdapter();
        }

        @Override
        public Adapter caseGConfigReferenceValue(GConfigReferenceValue object) {
            return EcucdescriptionAdapterFactory.this.createGConfigReferenceValueAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return EcucdescriptionAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return EcucdescriptionAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return EcucdescriptionAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGContainer(GContainer object) {
            return EcucdescriptionAdapterFactory.this.createGContainerAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return EcucdescriptionAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return EcucdescriptionAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseSplitableElement(SplitableElement object) {
            return EcucdescriptionAdapterFactory.this.createSplitableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return EcucdescriptionAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return EcucdescriptionAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseGModuleConfiguration(GModuleConfiguration object) {
            return EcucdescriptionAdapterFactory.this.createGModuleConfigurationAdapter();
        }

        @Override
        public Adapter caseGEnumerationValue(GEnumerationValue object) {
            return EcucdescriptionAdapterFactory.this.createGEnumerationValueAdapter();
        }

        @Override
        public Adapter caseGFloatValue(GFloatValue object) {
            return EcucdescriptionAdapterFactory.this.createGFloatValueAdapter();
        }

        @Override
        public Adapter caseGStringValue(GStringValue object) {
            return EcucdescriptionAdapterFactory.this.createGStringValueAdapter();
        }

        @Override
        public Adapter caseGLinkerSymbolValue(GLinkerSymbolValue object) {
            return EcucdescriptionAdapterFactory.this.createGLinkerSymbolValueAdapter();
        }

        @Override
        public Adapter caseGFunctionNameValue(GFunctionNameValue object) {
            return EcucdescriptionAdapterFactory.this.createGFunctionNameValueAdapter();
        }

        @Override
        public Adapter caseGInstanceReferenceValue(GInstanceReferenceValue object) {
            return EcucdescriptionAdapterFactory.this.createGInstanceReferenceValueAdapter();
        }

        @Override
        public Adapter caseGIntegerValue(GIntegerValue object) {
            return EcucdescriptionAdapterFactory.this.createGIntegerValueAdapter();
        }

        @Override
        public Adapter caseGReferenceValue(GReferenceValue object) {
            return EcucdescriptionAdapterFactory.this.createGReferenceValueAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return EcucdescriptionAdapterFactory.this.createEObjectAdapter();
        }
    };

    public EcucdescriptionAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = EcucdescriptionPackage.eINSTANCE;
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

    public Adapter createBooleanValueAdapter() {
        return null;
    }

    public Adapter createParameterValueAdapter() {
        return null;
    }

    public Adapter createConfigReferenceValueAdapter() {
        return null;
    }

    public Adapter createContainerAdapter() {
        return null;
    }

    public Adapter createEcucElementAdapter() {
        return null;
    }

    public Adapter createEcuConfigurationAdapter() {
        return null;
    }

    public Adapter createModuleConfigurationAdapter() {
        return null;
    }

    public Adapter createEnumerationValueAdapter() {
        return null;
    }

    public Adapter createFloatValueAdapter() {
        return null;
    }

    public Adapter createFunctionNameValueAdapter() {
        return null;
    }

    public Adapter createLinkerSymbolValueAdapter() {
        return null;
    }

    public Adapter createStringValueAdapter() {
        return null;
    }

    public Adapter createInstanceReferenceValueAdapter() {
        return null;
    }

    public Adapter createIntegerValueAdapter() {
        return null;
    }

    public Adapter createReferenceValueAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGParameterValueAdapter() {
        return null;
    }

    public Adapter createGBooleanValueAdapter() {
        return null;
    }

    public Adapter createGConfigReferenceValueAdapter() {
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

    public Adapter createGContainerAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createSplitableElementAdapter() {
        return null;
    }

    public Adapter createNonSplitableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createGModuleConfigurationAdapter() {
        return null;
    }

    public Adapter createGEnumerationValueAdapter() {
        return null;
    }

    public Adapter createGFloatValueAdapter() {
        return null;
    }

    public Adapter createGStringValueAdapter() {
        return null;
    }

    public Adapter createGLinkerSymbolValueAdapter() {
        return null;
    }

    public Adapter createGFunctionNameValueAdapter() {
        return null;
    }

    public Adapter createGInstanceReferenceValueAdapter() {
        return null;
    }

    public Adapter createGIntegerValueAdapter() {
        return null;
    }

    public Adapter createGReferenceValueAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

