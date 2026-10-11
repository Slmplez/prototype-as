/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gecucparameterdef.util;

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
import gautosar.gecucparameterdef.GecucparameterdefPackage;
import gautosar.gecucparameterdef.util.GecucparameterdefSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GecucparameterdefAdapterFactory
extends AdapterFactoryImpl {
    protected static GecucparameterdefPackage modelPackage;
    protected GecucparameterdefSwitch<Adapter> modelSwitch = new GecucparameterdefSwitch<Adapter>(){

        @Override
        public Adapter caseGParamConfMultiplicity(GParamConfMultiplicity object) {
            return GecucparameterdefAdapterFactory.this.createGParamConfMultiplicityAdapter();
        }

        @Override
        public Adapter caseGContainerDef(GContainerDef object) {
            return GecucparameterdefAdapterFactory.this.createGContainerDefAdapter();
        }

        @Override
        public Adapter caseGModuleDef(GModuleDef object) {
            return GecucparameterdefAdapterFactory.this.createGModuleDefAdapter();
        }

        @Override
        public Adapter caseGCommonConfigurationAttributes(GCommonConfigurationAttributes object) {
            return GecucparameterdefAdapterFactory.this.createGCommonConfigurationAttributesAdapter();
        }

        @Override
        public Adapter caseGConfigParameter(GConfigParameter object) {
            return GecucparameterdefAdapterFactory.this.createGConfigParameterAdapter();
        }

        @Override
        public Adapter caseGConfigReference(GConfigReference object) {
            return GecucparameterdefAdapterFactory.this.createGConfigReferenceAdapter();
        }

        @Override
        public Adapter caseGParamConfContainerDef(GParamConfContainerDef object) {
            return GecucparameterdefAdapterFactory.this.createGParamConfContainerDefAdapter();
        }

        @Override
        public Adapter caseGChoiceContainerDef(GChoiceContainerDef object) {
            return GecucparameterdefAdapterFactory.this.createGChoiceContainerDefAdapter();
        }

        @Override
        public Adapter caseGBooleanParamDef(GBooleanParamDef object) {
            return GecucparameterdefAdapterFactory.this.createGBooleanParamDefAdapter();
        }

        @Override
        public Adapter caseGIntegerParamDef(GIntegerParamDef object) {
            return GecucparameterdefAdapterFactory.this.createGIntegerParamDefAdapter();
        }

        @Override
        public Adapter caseGFloatParamDef(GFloatParamDef object) {
            return GecucparameterdefAdapterFactory.this.createGFloatParamDefAdapter();
        }

        @Override
        public Adapter caseGEnumerationParamDef(GEnumerationParamDef object) {
            return GecucparameterdefAdapterFactory.this.createGEnumerationParamDefAdapter();
        }

        @Override
        public Adapter caseGEnumerationLiteralDef(GEnumerationLiteralDef object) {
            return GecucparameterdefAdapterFactory.this.createGEnumerationLiteralDefAdapter();
        }

        @Override
        public Adapter caseGAbstractStringParamDef(GAbstractStringParamDef object) {
            return GecucparameterdefAdapterFactory.this.createGAbstractStringParamDefAdapter();
        }

        @Override
        public Adapter caseGStringParamDef(GStringParamDef object) {
            return GecucparameterdefAdapterFactory.this.createGStringParamDefAdapter();
        }

        @Override
        public Adapter caseGLinkerSymbolDef(GLinkerSymbolDef object) {
            return GecucparameterdefAdapterFactory.this.createGLinkerSymbolDefAdapter();
        }

        @Override
        public Adapter caseGFunctionNameDef(GFunctionNameDef object) {
            return GecucparameterdefAdapterFactory.this.createGFunctionNameDefAdapter();
        }

        @Override
        public Adapter caseGReferenceDef(GReferenceDef object) {
            return GecucparameterdefAdapterFactory.this.createGReferenceDefAdapter();
        }

        @Override
        public Adapter caseGSymbolicNameReferenceDef(GSymbolicNameReferenceDef object) {
            return GecucparameterdefAdapterFactory.this.createGSymbolicNameReferenceDefAdapter();
        }

        @Override
        public Adapter caseGInstanceReferenceDef(GInstanceReferenceDef object) {
            return GecucparameterdefAdapterFactory.this.createGInstanceReferenceDefAdapter();
        }

        @Override
        public Adapter caseGForeignReferenceDef(GForeignReferenceDef object) {
            return GecucparameterdefAdapterFactory.this.createGForeignReferenceDefAdapter();
        }

        @Override
        public Adapter caseGChoiceReferenceDef(GChoiceReferenceDef object) {
            return GecucparameterdefAdapterFactory.this.createGChoiceReferenceDefAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GecucparameterdefAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GecucparameterdefAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GecucparameterdefAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return GecucparameterdefAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GecucparameterdefAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GecucparameterdefAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GecucparameterdefPackage.eINSTANCE;
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

    public Adapter createGParamConfMultiplicityAdapter() {
        return null;
    }

    public Adapter createGContainerDefAdapter() {
        return null;
    }

    public Adapter createGModuleDefAdapter() {
        return null;
    }

    public Adapter createGCommonConfigurationAttributesAdapter() {
        return null;
    }

    public Adapter createGConfigParameterAdapter() {
        return null;
    }

    public Adapter createGConfigReferenceAdapter() {
        return null;
    }

    public Adapter createGParamConfContainerDefAdapter() {
        return null;
    }

    public Adapter createGChoiceContainerDefAdapter() {
        return null;
    }

    public Adapter createGBooleanParamDefAdapter() {
        return null;
    }

    public Adapter createGIntegerParamDefAdapter() {
        return null;
    }

    public Adapter createGFloatParamDefAdapter() {
        return null;
    }

    public Adapter createGEnumerationParamDefAdapter() {
        return null;
    }

    public Adapter createGEnumerationLiteralDefAdapter() {
        return null;
    }

    public Adapter createGAbstractStringParamDefAdapter() {
        return null;
    }

    public Adapter createGStringParamDefAdapter() {
        return null;
    }

    public Adapter createGLinkerSymbolDefAdapter() {
        return null;
    }

    public Adapter createGFunctionNameDefAdapter() {
        return null;
    }

    public Adapter createGReferenceDefAdapter() {
        return null;
    }

    public Adapter createGSymbolicNameReferenceDefAdapter() {
        return null;
    }

    public Adapter createGInstanceReferenceDefAdapter() {
        return null;
    }

    public Adapter createGForeignReferenceDefAdapter() {
        return null;
    }

    public Adapter createGChoiceReferenceDefAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

