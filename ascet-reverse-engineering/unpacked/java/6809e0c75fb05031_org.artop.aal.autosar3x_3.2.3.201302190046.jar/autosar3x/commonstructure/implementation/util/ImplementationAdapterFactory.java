/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GCode
 *  gautosar.gcommonstructure.gimplementation.GImplementation
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.commonstructure.implementation.util;

import autosar3x.commonstructure.implementation.Code;
import autosar3x.commonstructure.implementation.Compiler;
import autosar3x.commonstructure.implementation.Dependency;
import autosar3x.commonstructure.implementation.DependencyOnFile;
import autosar3x.commonstructure.implementation.DependencyOnLibrary;
import autosar3x.commonstructure.implementation.Implementation;
import autosar3x.commonstructure.implementation.ImplementationPackage;
import autosar3x.commonstructure.implementation.Linker;
import autosar3x.commonstructure.implementation.XfileSo;
import autosar3x.commonstructure.implementation.util.ImplementationSwitch;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import gautosar.gcommonstructure.gimplementation.GCode;
import gautosar.gcommonstructure.gimplementation.GImplementation;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ImplementationAdapterFactory
extends AdapterFactoryImpl {
    protected static ImplementationPackage modelPackage;
    protected ImplementationSwitch<Adapter> modelSwitch = new ImplementationSwitch<Adapter>(){

        @Override
        public Adapter caseCode(Code object) {
            return ImplementationAdapterFactory.this.createCodeAdapter();
        }

        @Override
        public Adapter caseXfileSo(XfileSo object) {
            return ImplementationAdapterFactory.this.createXfileSoAdapter();
        }

        @Override
        public Adapter caseCompiler(Compiler object) {
            return ImplementationAdapterFactory.this.createCompilerAdapter();
        }

        @Override
        public Adapter caseDependency(Dependency object) {
            return ImplementationAdapterFactory.this.createDependencyAdapter();
        }

        @Override
        public Adapter caseDependencyOnFile(DependencyOnFile object) {
            return ImplementationAdapterFactory.this.createDependencyOnFileAdapter();
        }

        @Override
        public Adapter caseDependencyOnLibrary(DependencyOnLibrary object) {
            return ImplementationAdapterFactory.this.createDependencyOnLibraryAdapter();
        }

        @Override
        public Adapter caseImplementation(Implementation object) {
            return ImplementationAdapterFactory.this.createImplementationAdapter();
        }

        @Override
        public Adapter caseLinker(Linker object) {
            return ImplementationAdapterFactory.this.createLinkerAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ImplementationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ImplementationAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ImplementationAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ImplementationAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ImplementationAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGCode(GCode object) {
            return ImplementationAdapterFactory.this.createGCodeAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return ImplementationAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return ImplementationAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return ImplementationAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseGImplementation(GImplementation object) {
            return ImplementationAdapterFactory.this.createGImplementationAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ImplementationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ImplementationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ImplementationPackage.eINSTANCE;
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

    public Adapter createCodeAdapter() {
        return null;
    }

    public Adapter createXfileSoAdapter() {
        return null;
    }

    public Adapter createCompilerAdapter() {
        return null;
    }

    public Adapter createDependencyAdapter() {
        return null;
    }

    public Adapter createDependencyOnFileAdapter() {
        return null;
    }

    public Adapter createDependencyOnLibraryAdapter() {
        return null;
    }

    public Adapter createImplementationAdapter() {
        return null;
    }

    public Adapter createLinkerAdapter() {
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

    public Adapter createGCodeAdapter() {
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

    public Adapter createGImplementationAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

