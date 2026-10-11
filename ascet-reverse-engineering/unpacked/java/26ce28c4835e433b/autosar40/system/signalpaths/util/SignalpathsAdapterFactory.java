/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.system.signalpaths.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.signalpaths.CommonSignalPath;
import autosar40.system.signalpaths.ForbiddenSignalPath;
import autosar40.system.signalpaths.PermissibleSignalPath;
import autosar40.system.signalpaths.SeparateSignalPath;
import autosar40.system.signalpaths.SignalPathConstraint;
import autosar40.system.signalpaths.SignalpathsPackage;
import autosar40.system.signalpaths.SwcToSwcOperationArguments;
import autosar40.system.signalpaths.SwcToSwcSignal;
import autosar40.system.signalpaths.util.SignalpathsSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class SignalpathsAdapterFactory
extends AdapterFactoryImpl {
    protected static SignalpathsPackage modelPackage;
    protected SignalpathsSwitch<Adapter> modelSwitch = new SignalpathsSwitch<Adapter>(){

        @Override
        public Adapter caseCommonSignalPath(CommonSignalPath object) {
            return SignalpathsAdapterFactory.this.createCommonSignalPathAdapter();
        }

        @Override
        public Adapter caseSwcToSwcOperationArguments(SwcToSwcOperationArguments object) {
            return SignalpathsAdapterFactory.this.createSwcToSwcOperationArgumentsAdapter();
        }

        @Override
        public Adapter caseSwcToSwcSignal(SwcToSwcSignal object) {
            return SignalpathsAdapterFactory.this.createSwcToSwcSignalAdapter();
        }

        @Override
        public Adapter caseForbiddenSignalPath(ForbiddenSignalPath object) {
            return SignalpathsAdapterFactory.this.createForbiddenSignalPathAdapter();
        }

        @Override
        public Adapter casePermissibleSignalPath(PermissibleSignalPath object) {
            return SignalpathsAdapterFactory.this.createPermissibleSignalPathAdapter();
        }

        @Override
        public Adapter caseSeparateSignalPath(SeparateSignalPath object) {
            return SignalpathsAdapterFactory.this.createSeparateSignalPathAdapter();
        }

        @Override
        public Adapter caseSignalPathConstraint(SignalPathConstraint object) {
            return SignalpathsAdapterFactory.this.createSignalPathConstraintAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return SignalpathsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return SignalpathsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return SignalpathsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public SignalpathsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = SignalpathsPackage.eINSTANCE;
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

    public Adapter createCommonSignalPathAdapter() {
        return null;
    }

    public Adapter createSwcToSwcOperationArgumentsAdapter() {
        return null;
    }

    public Adapter createSwcToSwcSignalAdapter() {
        return null;
    }

    public Adapter createForbiddenSignalPathAdapter() {
        return null;
    }

    public Adapter createPermissibleSignalPathAdapter() {
        return null;
    }

    public Adapter createSeparateSignalPathAdapter() {
        return null;
    }

    public Adapter createSignalPathConstraintAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

