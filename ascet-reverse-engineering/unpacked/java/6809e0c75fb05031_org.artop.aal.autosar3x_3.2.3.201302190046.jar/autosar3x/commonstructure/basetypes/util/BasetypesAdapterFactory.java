/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseType
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeAbsSize
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeDefinition
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeDirectDefinition
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeMaxSize
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition
 *  gautosar.gcommonstructure.gbasetypes.GSwBaseType
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.commonstructure.basetypes.util;

import autosar3x.commonstructure.basetypes.BaseType;
import autosar3x.commonstructure.basetypes.BaseTypeAbsSize;
import autosar3x.commonstructure.basetypes.BaseTypeDefinition;
import autosar3x.commonstructure.basetypes.BaseTypeDirectDefinition;
import autosar3x.commonstructure.basetypes.BaseTypeIndirectDefinition;
import autosar3x.commonstructure.basetypes.BaseTypeMaxSize;
import autosar3x.commonstructure.basetypes.BaseTypeSizeDefinition;
import autosar3x.commonstructure.basetypes.BasetypesPackage;
import autosar3x.commonstructure.basetypes.SwBaseType;
import autosar3x.commonstructure.basetypes.util.BasetypesSwitch;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import gautosar.gcommonstructure.gbasetypes.GBaseType;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeAbsSize;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeDirectDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeMaxSize;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition;
import gautosar.gcommonstructure.gbasetypes.GSwBaseType;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class BasetypesAdapterFactory
extends AdapterFactoryImpl {
    protected static BasetypesPackage modelPackage;
    protected BasetypesSwitch<Adapter> modelSwitch = new BasetypesSwitch<Adapter>(){

        @Override
        public Adapter caseBaseType(BaseType object) {
            return BasetypesAdapterFactory.this.createBaseTypeAdapter();
        }

        @Override
        public Adapter caseBaseTypeDefinition(BaseTypeDefinition object) {
            return BasetypesAdapterFactory.this.createBaseTypeDefinitionAdapter();
        }

        @Override
        public Adapter caseBaseTypeAbsSize(BaseTypeAbsSize object) {
            return BasetypesAdapterFactory.this.createBaseTypeAbsSizeAdapter();
        }

        @Override
        public Adapter caseBaseTypeSizeDefinition(BaseTypeSizeDefinition object) {
            return BasetypesAdapterFactory.this.createBaseTypeSizeDefinitionAdapter();
        }

        @Override
        public Adapter caseBaseTypeDirectDefinition(BaseTypeDirectDefinition object) {
            return BasetypesAdapterFactory.this.createBaseTypeDirectDefinitionAdapter();
        }

        @Override
        public Adapter caseBaseTypeIndirectDefinition(BaseTypeIndirectDefinition object) {
            return BasetypesAdapterFactory.this.createBaseTypeIndirectDefinitionAdapter();
        }

        @Override
        public Adapter caseBaseTypeMaxSize(BaseTypeMaxSize object) {
            return BasetypesAdapterFactory.this.createBaseTypeMaxSizeAdapter();
        }

        @Override
        public Adapter caseSwBaseType(SwBaseType object) {
            return BasetypesAdapterFactory.this.createSwBaseTypeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return BasetypesAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return BasetypesAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return BasetypesAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return BasetypesAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return BasetypesAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return BasetypesAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return BasetypesAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return BasetypesAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseGBaseType(GBaseType object) {
            return BasetypesAdapterFactory.this.createGBaseTypeAdapter();
        }

        @Override
        public Adapter caseGBaseTypeDefinition(GBaseTypeDefinition object) {
            return BasetypesAdapterFactory.this.createGBaseTypeDefinitionAdapter();
        }

        @Override
        public Adapter caseGBaseTypeSizeDefinition(GBaseTypeSizeDefinition object) {
            return BasetypesAdapterFactory.this.createGBaseTypeSizeDefinitionAdapter();
        }

        @Override
        public Adapter caseGBaseTypeAbsSize(GBaseTypeAbsSize object) {
            return BasetypesAdapterFactory.this.createGBaseTypeAbsSizeAdapter();
        }

        @Override
        public Adapter caseGBaseTypeDirectDefinition(GBaseTypeDirectDefinition object) {
            return BasetypesAdapterFactory.this.createGBaseTypeDirectDefinitionAdapter();
        }

        @Override
        public Adapter caseGBaseTypeMaxSize(GBaseTypeMaxSize object) {
            return BasetypesAdapterFactory.this.createGBaseTypeMaxSizeAdapter();
        }

        @Override
        public Adapter caseGSwBaseType(GSwBaseType object) {
            return BasetypesAdapterFactory.this.createGSwBaseTypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return BasetypesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public BasetypesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = BasetypesPackage.eINSTANCE;
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

    public Adapter createBaseTypeAdapter() {
        return null;
    }

    public Adapter createBaseTypeDefinitionAdapter() {
        return null;
    }

    public Adapter createBaseTypeAbsSizeAdapter() {
        return null;
    }

    public Adapter createBaseTypeSizeDefinitionAdapter() {
        return null;
    }

    public Adapter createBaseTypeDirectDefinitionAdapter() {
        return null;
    }

    public Adapter createBaseTypeIndirectDefinitionAdapter() {
        return null;
    }

    public Adapter createBaseTypeMaxSizeAdapter() {
        return null;
    }

    public Adapter createSwBaseTypeAdapter() {
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

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createGBaseTypeAdapter() {
        return null;
    }

    public Adapter createGBaseTypeDefinitionAdapter() {
        return null;
    }

    public Adapter createGBaseTypeSizeDefinitionAdapter() {
        return null;
    }

    public Adapter createGBaseTypeAbsSizeAdapter() {
        return null;
    }

    public Adapter createGBaseTypeDirectDefinitionAdapter() {
        return null;
    }

    public Adapter createGBaseTypeMaxSizeAdapter() {
        return null;
    }

    public Adapter createGSwBaseTypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

