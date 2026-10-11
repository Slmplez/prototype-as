/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GParameterDataPrototype
 *  gautosar.gswcomponents.gportinterface.GParameterInterface
 *  gautosar.gswcomponents.gportinterface.GPortInterface
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.measurementandcalibration.characteristic.util;

import autosar3x.commonstructure.datadictionaryproxies.SwCalprmRefProxy;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.swcomponent.datatype.datatypes.DataPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.ArCalprmRef;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmAccess;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmInterface;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CharacteristicPackage;
import autosar3x.swcomponent.measurementandcalibration.characteristic.util.CharacteristicSwitch;
import autosar3x.swcomponent.portinterface.PortInterface;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GParameterDataPrototype;
import gautosar.gswcomponents.gportinterface.GParameterInterface;
import gautosar.gswcomponents.gportinterface.GPortInterface;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class CharacteristicAdapterFactory
extends AdapterFactoryImpl {
    protected static CharacteristicPackage modelPackage;
    protected CharacteristicSwitch<Adapter> modelSwitch = new CharacteristicSwitch<Adapter>(){

        @Override
        public Adapter caseCalprmAccess(CalprmAccess object) {
            return CharacteristicAdapterFactory.this.createCalprmAccessAdapter();
        }

        @Override
        public Adapter caseArCalprmRef(ArCalprmRef object) {
            return CharacteristicAdapterFactory.this.createArCalprmRefAdapter();
        }

        @Override
        public Adapter caseCalprmInterface(CalprmInterface object) {
            return CharacteristicAdapterFactory.this.createCalprmInterfaceAdapter();
        }

        @Override
        public Adapter caseCalprmElementPrototype(CalprmElementPrototype object) {
            return CharacteristicAdapterFactory.this.createCalprmElementPrototypeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return CharacteristicAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return CharacteristicAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return CharacteristicAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return CharacteristicAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return CharacteristicAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGParameterAccess(GParameterAccess object) {
            return CharacteristicAdapterFactory.this.createGParameterAccessAdapter();
        }

        @Override
        public Adapter caseSwCalprmRefProxy(SwCalprmRefProxy object) {
            return CharacteristicAdapterFactory.this.createSwCalprmRefProxyAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return CharacteristicAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return CharacteristicAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return CharacteristicAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseGPortInterface(GPortInterface object) {
            return CharacteristicAdapterFactory.this.createGPortInterfaceAdapter();
        }

        @Override
        public Adapter casePortInterface(PortInterface object) {
            return CharacteristicAdapterFactory.this.createPortInterfaceAdapter();
        }

        @Override
        public Adapter caseGParameterInterface(GParameterInterface object) {
            return CharacteristicAdapterFactory.this.createGParameterInterfaceAdapter();
        }

        @Override
        public Adapter caseGDataPrototype(GDataPrototype object) {
            return CharacteristicAdapterFactory.this.createGDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGAutosarDataPrototype(GAutosarDataPrototype object) {
            return CharacteristicAdapterFactory.this.createGAutosarDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGApplicationCompositeElementDataPrototype(GApplicationCompositeElementDataPrototype object) {
            return CharacteristicAdapterFactory.this.createGApplicationCompositeElementDataPrototypeAdapter();
        }

        @Override
        public Adapter caseDataPrototype(DataPrototype object) {
            return CharacteristicAdapterFactory.this.createDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGParameterDataPrototype(GParameterDataPrototype object) {
            return CharacteristicAdapterFactory.this.createGParameterDataPrototypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return CharacteristicAdapterFactory.this.createEObjectAdapter();
        }
    };

    public CharacteristicAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = CharacteristicPackage.eINSTANCE;
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

    public Adapter createCalprmAccessAdapter() {
        return null;
    }

    public Adapter createArCalprmRefAdapter() {
        return null;
    }

    public Adapter createCalprmInterfaceAdapter() {
        return null;
    }

    public Adapter createCalprmElementPrototypeAdapter() {
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

    public Adapter createGParameterAccessAdapter() {
        return null;
    }

    public Adapter createSwCalprmRefProxyAdapter() {
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

    public Adapter createGPortInterfaceAdapter() {
        return null;
    }

    public Adapter createPortInterfaceAdapter() {
        return null;
    }

    public Adapter createGParameterInterfaceAdapter() {
        return null;
    }

    public Adapter createGDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGAutosarDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGApplicationCompositeElementDataPrototypeAdapter() {
        return null;
    }

    public Adapter createDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGParameterDataPrototypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

