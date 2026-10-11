/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gecucdescription.util;

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
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucdescription.util.GecucdescriptionSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GecucdescriptionAdapterFactory
extends AdapterFactoryImpl {
    protected static GecucdescriptionPackage modelPackage;
    protected GecucdescriptionSwitch<Adapter> modelSwitch = new GecucdescriptionSwitch<Adapter>(){

        @Override
        public Adapter caseGModuleConfiguration(GModuleConfiguration object) {
            return GecucdescriptionAdapterFactory.this.createGModuleConfigurationAdapter();
        }

        @Override
        public Adapter caseGContainer(GContainer object) {
            return GecucdescriptionAdapterFactory.this.createGContainerAdapter();
        }

        @Override
        public Adapter caseGParameterValue(GParameterValue object) {
            return GecucdescriptionAdapterFactory.this.createGParameterValueAdapter();
        }

        @Override
        public Adapter caseGConfigReferenceValue(GConfigReferenceValue object) {
            return GecucdescriptionAdapterFactory.this.createGConfigReferenceValueAdapter();
        }

        @Override
        public Adapter caseGReferenceValue(GReferenceValue object) {
            return GecucdescriptionAdapterFactory.this.createGReferenceValueAdapter();
        }

        @Override
        public Adapter caseGInstanceReferenceValue(GInstanceReferenceValue object) {
            return GecucdescriptionAdapterFactory.this.createGInstanceReferenceValueAdapter();
        }

        @Override
        public Adapter caseGBooleanValue(GBooleanValue object) {
            return GecucdescriptionAdapterFactory.this.createGBooleanValueAdapter();
        }

        @Override
        public Adapter caseGEnumerationValue(GEnumerationValue object) {
            return GecucdescriptionAdapterFactory.this.createGEnumerationValueAdapter();
        }

        @Override
        public Adapter caseGIntegerValue(GIntegerValue object) {
            return GecucdescriptionAdapterFactory.this.createGIntegerValueAdapter();
        }

        @Override
        public Adapter caseGStringValue(GStringValue object) {
            return GecucdescriptionAdapterFactory.this.createGStringValueAdapter();
        }

        @Override
        public Adapter caseGLinkerSymbolValue(GLinkerSymbolValue object) {
            return GecucdescriptionAdapterFactory.this.createGLinkerSymbolValueAdapter();
        }

        @Override
        public Adapter caseGFunctionNameValue(GFunctionNameValue object) {
            return GecucdescriptionAdapterFactory.this.createGFunctionNameValueAdapter();
        }

        @Override
        public Adapter caseGFloatValue(GFloatValue object) {
            return GecucdescriptionAdapterFactory.this.createGFloatValueAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GecucdescriptionAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GecucdescriptionAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GecucdescriptionAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return GecucdescriptionAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GecucdescriptionAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GecucdescriptionAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GecucdescriptionPackage.eINSTANCE;
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

    public Adapter createGModuleConfigurationAdapter() {
        return null;
    }

    public Adapter createGContainerAdapter() {
        return null;
    }

    public Adapter createGParameterValueAdapter() {
        return null;
    }

    public Adapter createGConfigReferenceValueAdapter() {
        return null;
    }

    public Adapter createGReferenceValueAdapter() {
        return null;
    }

    public Adapter createGInstanceReferenceValueAdapter() {
        return null;
    }

    public Adapter createGBooleanValueAdapter() {
        return null;
    }

    public Adapter createGEnumerationValueAdapter() {
        return null;
    }

    public Adapter createGIntegerValueAdapter() {
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

    public Adapter createGFloatValueAdapter() {
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

