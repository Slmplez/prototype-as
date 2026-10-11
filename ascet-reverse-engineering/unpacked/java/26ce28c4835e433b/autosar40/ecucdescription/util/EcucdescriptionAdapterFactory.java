/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GConfigReferenceValue
 *  gautosar.gecucdescription.GContainer
 *  gautosar.gecucdescription.GInstanceReferenceValue
 *  gautosar.gecucdescription.GModuleConfiguration
 *  gautosar.gecucdescription.GParameterValue
 *  gautosar.gecucdescription.GReferenceValue
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.ecucdescription.util;

import autosar40.ecucdescription.EcucAbstractReferenceValue;
import autosar40.ecucdescription.EcucAddInfoParamValue;
import autosar40.ecucdescription.EcucContainerValue;
import autosar40.ecucdescription.EcucIndexableValue;
import autosar40.ecucdescription.EcucInstanceReferenceValue;
import autosar40.ecucdescription.EcucModuleConfigurationValues;
import autosar40.ecucdescription.EcucModuleConfigurationValuesRefConditional;
import autosar40.ecucdescription.EcucNumericalParamValue;
import autosar40.ecucdescription.EcucParameterValue;
import autosar40.ecucdescription.EcucReferenceValue;
import autosar40.ecucdescription.EcucTextualParamValue;
import autosar40.ecucdescription.EcucValueCollection;
import autosar40.ecucdescription.EcucdescriptionPackage;
import autosar40.ecucdescription.util.EcucdescriptionSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.gecucdescription.GConfigReferenceValue;
import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GInstanceReferenceValue;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucdescription.GParameterValue;
import gautosar.gecucdescription.GReferenceValue;
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
        public Adapter caseEcucAbstractReferenceValue(EcucAbstractReferenceValue object) {
            return EcucdescriptionAdapterFactory.this.createEcucAbstractReferenceValueAdapter();
        }

        @Override
        public Adapter caseEcucIndexableValue(EcucIndexableValue object) {
            return EcucdescriptionAdapterFactory.this.createEcucIndexableValueAdapter();
        }

        @Override
        public Adapter caseEcucAddInfoParamValue(EcucAddInfoParamValue object) {
            return EcucdescriptionAdapterFactory.this.createEcucAddInfoParamValueAdapter();
        }

        @Override
        public Adapter caseEcucParameterValue(EcucParameterValue object) {
            return EcucdescriptionAdapterFactory.this.createEcucParameterValueAdapter();
        }

        @Override
        public Adapter caseEcucContainerValue(EcucContainerValue object) {
            return EcucdescriptionAdapterFactory.this.createEcucContainerValueAdapter();
        }

        @Override
        public Adapter caseEcucInstanceReferenceValue(EcucInstanceReferenceValue object) {
            return EcucdescriptionAdapterFactory.this.createEcucInstanceReferenceValueAdapter();
        }

        @Override
        public Adapter caseEcucNumericalParamValue(EcucNumericalParamValue object) {
            return EcucdescriptionAdapterFactory.this.createEcucNumericalParamValueAdapter();
        }

        @Override
        public Adapter caseEcucReferenceValue(EcucReferenceValue object) {
            return EcucdescriptionAdapterFactory.this.createEcucReferenceValueAdapter();
        }

        @Override
        public Adapter caseEcucTextualParamValue(EcucTextualParamValue object) {
            return EcucdescriptionAdapterFactory.this.createEcucTextualParamValueAdapter();
        }

        @Override
        public Adapter caseEcucValueCollection(EcucValueCollection object) {
            return EcucdescriptionAdapterFactory.this.createEcucValueCollectionAdapter();
        }

        @Override
        public Adapter caseEcucModuleConfigurationValuesRefConditional(EcucModuleConfigurationValuesRefConditional object) {
            return EcucdescriptionAdapterFactory.this.createEcucModuleConfigurationValuesRefConditionalAdapter();
        }

        @Override
        public Adapter caseEcucModuleConfigurationValues(EcucModuleConfigurationValues object) {
            return EcucdescriptionAdapterFactory.this.createEcucModuleConfigurationValuesAdapter();
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
        public Adapter caseGConfigReferenceValue(GConfigReferenceValue object) {
            return EcucdescriptionAdapterFactory.this.createGConfigReferenceValueAdapter();
        }

        @Override
        public Adapter caseGParameterValue(GParameterValue object) {
            return EcucdescriptionAdapterFactory.this.createGParameterValueAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return EcucdescriptionAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return EcucdescriptionAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return EcucdescriptionAdapterFactory.this.createMultilanguageReferrableAdapter();
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
        public Adapter caseGInstanceReferenceValue(GInstanceReferenceValue object) {
            return EcucdescriptionAdapterFactory.this.createGInstanceReferenceValueAdapter();
        }

        @Override
        public Adapter caseGReferenceValue(GReferenceValue object) {
            return EcucdescriptionAdapterFactory.this.createGReferenceValueAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return EcucdescriptionAdapterFactory.this.createCollectableElementAdapter();
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
        public Adapter caseARElement(ARElement object) {
            return EcucdescriptionAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseGModuleConfiguration(GModuleConfiguration object) {
            return EcucdescriptionAdapterFactory.this.createGModuleConfigurationAdapter();
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

    public Adapter createEcucAbstractReferenceValueAdapter() {
        return null;
    }

    public Adapter createEcucIndexableValueAdapter() {
        return null;
    }

    public Adapter createEcucAddInfoParamValueAdapter() {
        return null;
    }

    public Adapter createEcucParameterValueAdapter() {
        return null;
    }

    public Adapter createEcucContainerValueAdapter() {
        return null;
    }

    public Adapter createEcucInstanceReferenceValueAdapter() {
        return null;
    }

    public Adapter createEcucNumericalParamValueAdapter() {
        return null;
    }

    public Adapter createEcucReferenceValueAdapter() {
        return null;
    }

    public Adapter createEcucTextualParamValueAdapter() {
        return null;
    }

    public Adapter createEcucValueCollectionAdapter() {
        return null;
    }

    public Adapter createEcucModuleConfigurationValuesRefConditionalAdapter() {
        return null;
    }

    public Adapter createEcucModuleConfigurationValuesAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGConfigReferenceValueAdapter() {
        return null;
    }

    public Adapter createGParameterValueAdapter() {
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

    public Adapter createGContainerAdapter() {
        return null;
    }

    public Adapter createGInstanceReferenceValueAdapter() {
        return null;
    }

    public Adapter createGReferenceValueAdapter() {
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

    public Adapter createGModuleConfigurationAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

