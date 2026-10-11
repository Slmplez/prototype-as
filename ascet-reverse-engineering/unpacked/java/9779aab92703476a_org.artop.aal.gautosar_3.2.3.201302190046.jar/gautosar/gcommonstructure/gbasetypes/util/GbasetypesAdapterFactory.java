/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gcommonstructure.gbasetypes.util;

import gautosar.gcommonstructure.gbasetypes.GBaseType;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeAbsSize;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeDirectDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeMaxSize;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition;
import gautosar.gcommonstructure.gbasetypes.GSwBaseType;
import gautosar.gcommonstructure.gbasetypes.GbasetypesPackage;
import gautosar.gcommonstructure.gbasetypes.util.GbasetypesSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GbasetypesAdapterFactory
extends AdapterFactoryImpl {
    protected static GbasetypesPackage modelPackage;
    protected GbasetypesSwitch<Adapter> modelSwitch = new GbasetypesSwitch<Adapter>(){

        @Override
        public Adapter caseGBaseType(GBaseType object) {
            return GbasetypesAdapterFactory.this.createGBaseTypeAdapter();
        }

        @Override
        public Adapter caseGBaseTypeDefinition(GBaseTypeDefinition object) {
            return GbasetypesAdapterFactory.this.createGBaseTypeDefinitionAdapter();
        }

        @Override
        public Adapter caseGBaseTypeDirectDefinition(GBaseTypeDirectDefinition object) {
            return GbasetypesAdapterFactory.this.createGBaseTypeDirectDefinitionAdapter();
        }

        @Override
        public Adapter caseGBaseTypeSizeDefinition(GBaseTypeSizeDefinition object) {
            return GbasetypesAdapterFactory.this.createGBaseTypeSizeDefinitionAdapter();
        }

        @Override
        public Adapter caseGBaseTypeAbsSize(GBaseTypeAbsSize object) {
            return GbasetypesAdapterFactory.this.createGBaseTypeAbsSizeAdapter();
        }

        @Override
        public Adapter caseGBaseTypeMaxSize(GBaseTypeMaxSize object) {
            return GbasetypesAdapterFactory.this.createGBaseTypeMaxSizeAdapter();
        }

        @Override
        public Adapter caseGSwBaseType(GSwBaseType object) {
            return GbasetypesAdapterFactory.this.createGSwBaseTypeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GbasetypesAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GbasetypesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GbasetypesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GbasetypesPackage.eINSTANCE;
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

    public Adapter createGBaseTypeAdapter() {
        return null;
    }

    public Adapter createGBaseTypeDefinitionAdapter() {
        return null;
    }

    public Adapter createGBaseTypeDirectDefinitionAdapter() {
        return null;
    }

    public Adapter createGBaseTypeSizeDefinitionAdapter() {
        return null;
    }

    public Adapter createGBaseTypeAbsSizeAdapter() {
        return null;
    }

    public Adapter createGBaseTypeMaxSizeAdapter() {
        return null;
    }

    public Adapter createGSwBaseTypeAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

