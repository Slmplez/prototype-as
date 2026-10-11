/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.amd620.util;

import com.etas.amd620.core.amd620.Amd620Package;
import com.etas.amd620.core.amd620.AscetClass;
import com.etas.amd620.core.amd620.AscetComponent;
import com.etas.amd620.core.amd620.AscetInterface;
import com.etas.amd620.core.amd620.AscetProject;
import com.etas.amd620.core.amd620.DefaultConfiguration;
import com.etas.amd620.core.amd620.util.Amd620Switch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class Amd620AdapterFactory
extends AdapterFactoryImpl {
    protected static Amd620Package modelPackage;
    protected Amd620Switch<Adapter> modelSwitch = new Amd620Switch<Adapter>(){

        @Override
        public Adapter caseAscetComponent(AscetComponent object) {
            return Amd620AdapterFactory.this.createAscetComponentAdapter();
        }

        @Override
        public Adapter caseAscetClass(AscetClass object) {
            return Amd620AdapterFactory.this.createAscetClassAdapter();
        }

        @Override
        public Adapter caseAscetProject(AscetProject object) {
            return Amd620AdapterFactory.this.createAscetProjectAdapter();
        }

        @Override
        public Adapter caseDefaultConfiguration(DefaultConfiguration object) {
            return Amd620AdapterFactory.this.createDefaultConfigurationAdapter();
        }

        @Override
        public Adapter caseAscetInterface(AscetInterface object) {
            return Amd620AdapterFactory.this.createAscetInterfaceAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return Amd620AdapterFactory.this.createEObjectAdapter();
        }
    };

    public Amd620AdapterFactory() {
        if (modelPackage == null) {
            modelPackage = Amd620Package.eINSTANCE;
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
        return (Adapter)this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createAscetComponentAdapter() {
        return null;
    }

    public Adapter createAscetClassAdapter() {
        return null;
    }

    public Adapter createAscetProjectAdapter() {
        return null;
    }

    public Adapter createDefaultConfigurationAdapter() {
        return null;
    }

    public Adapter createAscetInterfaceAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

