/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.ggenericstructure.gformulalanguage.util;

import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import gautosar.ggenericstructure.gformulalanguage.GformulalanguagePackage;
import gautosar.ggenericstructure.gformulalanguage.util.GformulalanguageSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GformulalanguageAdapterFactory
extends AdapterFactoryImpl {
    protected static GformulalanguagePackage modelPackage;
    protected GformulalanguageSwitch<Adapter> modelSwitch = new GformulalanguageSwitch<Adapter>(){

        @Override
        public Adapter caseGFormulaExpression(GFormulaExpression object) {
            return GformulalanguageAdapterFactory.this.createGFormulaExpressionAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GformulalanguageAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GformulalanguageAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GformulalanguageAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GformulalanguagePackage.eINSTANCE;
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

    public Adapter createGFormulaExpressionAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

