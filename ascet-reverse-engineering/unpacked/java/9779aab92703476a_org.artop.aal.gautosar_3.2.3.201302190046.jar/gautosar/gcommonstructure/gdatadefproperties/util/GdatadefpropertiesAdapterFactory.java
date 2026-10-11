/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gcommonstructure.gdatadefproperties.util;

import gautosar.gcommonstructure.gdatadefproperties.GSwDataDefPropsConditional;
import gautosar.gcommonstructure.gdatadefproperties.GdatadefpropertiesPackage;
import gautosar.gcommonstructure.gdatadefproperties.util.GdatadefpropertiesSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GdatadefpropertiesAdapterFactory
extends AdapterFactoryImpl {
    protected static GdatadefpropertiesPackage modelPackage;
    protected GdatadefpropertiesSwitch<Adapter> modelSwitch = new GdatadefpropertiesSwitch<Adapter>(){

        @Override
        public Adapter caseGSwDataDefPropsConditional(GSwDataDefPropsConditional object) {
            return GdatadefpropertiesAdapterFactory.this.createGSwDataDefPropsConditionalAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GdatadefpropertiesAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GdatadefpropertiesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GdatadefpropertiesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GdatadefpropertiesPackage.eINSTANCE;
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

    public Adapter createGSwDataDefPropsConditionalAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

